import os
import sys
import math
import spiceypy as sp

doDebug = "DEBUG" in os.environ

if "__main__" == __name__:

  metaK = 'kernels/orx_base_nadirish.tm'
  CK = 'kernels/orx_nadirish.bc'
  SPK = 'kernels/100m_9101955.bsp'
  utcs = '2018-229/12:00 2019-140/12:00'.split()

  sp.furnsh(metaK)

  ets = [sp.tparse(utc,99)[0] for utc in utcs]
  dpsclks = [sp.sce2t(-64,et) for et in ets]


  ######################################################################
  if 'create' in sys.argv[1:]:

    try: os.unlink(CK)
    except: pass

    ckHandle = sp.ckopn(CK,CK,0)
    sp.ckw02(ckHandle
            , dpsclks[0], dpsclks[1]
            , -64000, 'ORX_BENNU_SUN_NADIRISH'
            , 'ORX_BENNU_SUN_NADIRISH'
            , 1
            , [dpsclks[0]], [dpsclks[1]]
            , [[1.,0.,0.,0.]]
            , [[0.,0.,0.]]
            , [(ets[1]-ets[0])/(dpsclks[1]-dpsclks[0])]
            )
    sp.ckcls(ckHandle)


  ######################################################################
  if 'test' in sys.argv[1:]:

    spd = sp.spd()
    clight = sp.clight()

    sp.furnsh(SPK)
    sp.furnsh(CK)

    et = ets[0] + 1.
    ds = []
    offsets = []

    while et < ets[1]:

      try:

        vBennu, ltBennu = sp.spkpos('BENNU', et, 'ORX_SPACECRAFT', 'NONE', 'ORX')
        vIsh, ltIsh = sp.spkpos('9101955', et, 'ORX_SPACECRAFT', 'NONE', 'ORX')
        vBennuIsh, ltBennuIsh = sp.spkpos('BENNU', et, 'J2000', 'NONE', '9101955')

        vsepBennu = sp.vsep([0.,0.,1.], vBennu)
        normBennu = ltBennu * clight
        assert normBennu < 100000
        normIsh = ltIsh * clight
        normBennuIsh = ltBennuIsh * clight

        ds.append(math.sqrt((normBennu*normBennu) + (normIsh*normIsh) - (2 * normBennu * normIsh * math.cos(vsepBennu))))
        #ds.append(math.sqrt(sp.vdot(vBennu,vBennu) + sp.vdot(vIsh,vIsh) - (2 * sp.vdot(vBennu,vIsh))))
        offsets.append(normBennuIsh)
 
      except AssertionError: pass
      except sp.stypes.SpiceyError:
        if doDebug:
          import traceback as tb
          tb.print_exc()

      et += spd / 4

    assert max(ds) < 0.1001
    assert max(offsets) < 0.10001 and max(offsets) > 0.09999


  ######################################################################
  sp.kclear()

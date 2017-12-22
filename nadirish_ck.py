import os
import sys
import math
import spiceypy as sp

doDebug = "DEBUG" in os.environ

if "__main__" == __name__:

  metaK = 'kernels/orx_base_nadirish.tm'
  CK = 'kernels/orx_nadirish.bc'
  CKcomms = 'kernels/orx_comms.bc'
  SPK = 'kernels/100m_9101955.bsp'
  utcs = '2018-229/12:00 2018-337/12:00 2019-140/12:00'.split()

  spd = sp.spd()        ### Seconds Per Day

  sp.furnsh(metaK)

  ets = [sp.tparse(utc,99)[0] for utc in utcs]  ### Convert UTCs to ETs
  dpsclks = [sp.sce2t(-64,et) for et in ets]    ### Convert ETs to encoded SCLKs


  ######################################################################
  ### Write CKs
  ### - Single segment with ORX_SPACECRAFT (-64000) frame lining lining
  ###   up with ORX_BENNU_SUN_NADIRISH frame, so actual location of
  ###   9101955 body when CK is searched will determine actual pointing
  ### - Multiple segments, 8h out of 24 aligned with ORX_RTN_EARTH,
  ###   representing ORX comms (DSN pass)
  if 'create' in sys.argv[1:]:

    try: os.unlink(CK)                                     ### Remove CK, if present
    except: pass

    ckHandle = sp.ckopn(CK,CK,0)                           ### Open CK, get handle

    sp.ckw02(ckHandle                                      ### Write type 2 segment
            , dpsclks[0], dpsclks[2]                       ### Start and stop encoded SCLKs for segement
            , -64000, 'ORX_BENNU_SUN_NADIRISH'             ### ORX_SPACECRAFT frame w.r.t. nadir-ish frame
            , 'ORX_BENNU_SUN_NADIRISH'                     ### Segment name
            , 1                                            ### One record
            , [dpsclks[0]], [dpsclks[2]]                   ### Start and stop encoded SCLK lists
            , [[1.,0.,0.,0.]]                              ### Identity quaternion
            , [[0.,0.,0.]]                                 ### Angular velocity is zero
            , [(ets[2]-ets[0])/(dpsclks[2]-dpsclks[0])]    ### Seconds per tick
            )

    sp.ckcls(ckHandle)                                     ### Close CK

    ####################################################################

    try: os.unlink(CKcomms)                                  ### Remove CK, if present
    except: pass

    ckHandle = sp.ckopn(CKcomms,CKcomms,0)                   ### Open CK, get handle

    h8 = spd / 3

    et8s = [ets[0], ets[0] + h8]

    while et8s[1] < ets[2]:
      dpsclks = [sp.sce2t(-64,et) for et in et8s]            ### Convert ETs to encoded SCLKs
      sp.ckw02(ckHandle                                      ### Write type 2 segment
              , dpsclks[0], dpsclks[1]                       ### Start and stop encoded SCLKs for segement
              , -64000, 'ORX_RTN_EARTH'                      ### ORX_SPACECRAFT frame w.r.t. nadir-ish frame
              , 'ORX_ORX_RTN_EARTH'                          ### Segment name
              , 1                                            ### One record
              , [dpsclks[0]], [dpsclks[1]]                   ### Start and stop encoded SCLK lists
              , [[1.,0.,0.,0.]]                              ### Identity quaternion
              , [[0.,0.,0.]]                                 ### Angular velocity is zero
              , [(et8s[1]-et8s[0])/(dpsclks[1]-dpsclks[0])]  ### Seconds per tick
              )
      et8s = [et+spd for et in et8s]

    sp.ckcls(ckHandle)                                     ### Close CK


  ######################################################################
  ### Test CK
  if 'test' in sys.argv[1:]:

    clight = sp.clight()  ### Speed of light, km/s

    sp.furnsh(SPK)        ### Load SPK and CK
    sp.furnsh(CK)

    et = ets[1]           ### Move away from boundary in CK
    dLocs = []            ### List of distance between Bennu and 9101955 from Law of Cosines
    offsets = []          ### List of distance between Bennu and 9101955 from SPKPOS

    while et < ets[2]:

      try:

        ### Use SPKPOS to calculate positions and light times: ORX to Bennu;
        ### ORX to 9101955; 9101955 to Bennu.
        vBennu, ltBennu = sp.spkpos('BENNU', et, 'ORX_SPACECRAFT', 'NONE', 'ORX')
        vIsh, ltIsh = sp.spkpos('9101955', et, 'ORX_SPACECRAFT', 'NONE', 'ORX')
        vBennuIsh, ltBennuIsh = sp.spkpos('BENNU', et, 'J2000', 'NONE', '9101955')

        ### Limit roundoff error, not needed for proxops (time range
        ### starting at 2018-337)
        ### assert (ltBennu * clight) < 100000

        ### Law of cosines calculation of Bennu-9101955 distatnce
        dLocs.append(math.sqrt(sp.vdot(vBennu,vBennu) + sp.vdot(vIsh,vIsh) - (2 * sp.vdot(vBennu,vIsh))))

        offsets.append(ltBennuIsh * clight)
 
      except AssertionError: pass
      except sp.stypes.SpiceyError:
        if doDebug:
          import traceback as tb
          tb.print_exc()

      et += spd / 4

    ### Tests:

    assert max(dLocs) < 0.100001
    assert max(offsets) < 0.100001 and min(offsets) > 0.099999


  ######################################################################
  ### Cleanup:  unload kernels

  sp.kclear()

\begindata

KERNELS_TO_LOAD = (

                                                              \begintext
=======================================================================
Time:
- N.B. Using version zero of the ORX SCLK; a more recent
       version is available at URL

         https://naif.jpl.nasa.gov/pub/naif/ORX/kernels/sclk/

                                                              \begindata

  'kernels/naif0012.tls'
  'kernels/ORX_SCLKSCET.00000.tsc'


                                                              \begintext
========================================================================
FKs, PCKs:
                                                              \begindata

  'kernels/orx_custom_frames_DRAFT_6.tf'
  'kernels/orx_nadirish.tf'
  'kernels/orx_v08.tf'
  'kernels/pck00010.tpc'
  'kernels/bennu_v10.tpc'


                                                              \begintext
========================================================================
SPKs:

* Solar system              :  de424.bsp                
* Bennu                     :  bennu_refdrmc_v1.bsp
  ORX spacecraft            :  orx_170117_210312_refMPRevB_v1.bsp
* ORX spacecraft (alternate):  spk_orx_160908_231024_pgaa2_day06m60_v3.bsp

- The SPKs above that are marked with an asterisk are available, as of
  December 2017, at URL

    https://naif.jpl.nasa.gov/pub/naif/ORX/kernels/spk/

- SPK orx_170117_210312_refMPRevB_v1.bsp is available in the ORXDEVFOB
  and in the SPOC TestData, which are resources only available to ORX
  personnel.

- N.B. An additional SPK, providing an ephemeris for
       synthetic body 9101955, is necessary to use the
       frame ORX_BENNU_SUN_NADIRISH, which is defined
       in orx_nadirish.tf above.
                                                              \begindata

  'kernels/de424.bsp'
  'kernels/bennu_refdrmc_v1.bsp'
  'kernels/orx_170117_210312_refMPRevB_v1.bsp'

)
\begintext

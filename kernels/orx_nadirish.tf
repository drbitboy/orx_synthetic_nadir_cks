KPL/FK


Nadir-ish OSIRIS-REx (ORX) Dynamic Frames Frames Kernel
=====================================================================

   This frame kernel (FK) provides a nadir-related, two-vector dynamic
   frame that points +Z (primary) at synthetic body 9101955, which body
   is offset from Bennu toward the Sun, and points +X (secondary) toward
   the Sun.

   The synthetic body 9101955 is in SPKs that use ORX dynamic frame
   ORX_BENNU_SUN_NORTH (-64902), which frame has its +X pointing from
   Bennu toward the Sun, and which +X is the vector along which 9101955
   is offset from Bennu.  So, to use this FK, such an SPK, along with
   the custom FK at point named kernels/orx_custom_frames_DRAFT_6.tf,
   must be FURNSHed along with this FK.
 

Version and Date
-----------------------------------------------------------

   Version 0.0 -- December 22, 2017 -- Brian Carcich, KinetX

      -  Initial version.


References
-----------------------------------------------------------

   1. ``Frames Required Reading''

   2. ``Kernel Pool Required Reading''


OSIRIS-REx Dynamic Frames Summary
-----------------------------------------------------------

   The following OSIRIS-REx dynamic frames are defined in this kernel file:

           Name                  Relative to           Type       NAIF ID
      ======================  =====================  ==========   =======
      ORX_BENNU_SUN_NADIRISH  J2000                  DYNAMIC      -64999

 
OSIRIS-REx Dynamic Frames Definitions
-----------------------------------------------------------

   The Nadir-ish-Oriented Spacecraft-Centered Frame -- ORX_BENNU_SUN_NADIRISH
   -- is defined as follows:

      -  +Z axis points from the spacecraft towards the center of body 9101955
         (primary)
 
      -  +X axis points in the direction from the spacecraft to the Sun
         (secondary)
 
      -  +Y axis completes the right handed frame
 
      -  the origin of the frame is at the spacecraft center of mass.

   This frame is defined as a two-vector style dynamic frame below.

   \begindata

      FRAME_ORX_BENNU_SUN_NADIRISH    = -64999
      FRAME_-64999_NAME               = 'ORX_BENNU_SUN_NADIRISH'
      FRAME_-64999_CLASS              = 5
      FRAME_-64999_CLASS_ID           = -64999
      FRAME_-64999_CENTER             = 'ORX'
      FRAME_-64999_RELATIVE           = 'J2000'
      FRAME_-64999_DEF_STYLE          = 'PARAMETERIZED'
      FRAME_-64999_FAMILY             = 'TWO-VECTOR'

      FRAME_-64999_PRI_AXIS           = 'Z'
      FRAME_-64999_PRI_VECTOR_DEF     = 'OBSERVER_TARGET_POSITION'
      FRAME_-64999_PRI_OBSERVER       = 'ORX'
      FRAME_-64999_PRI_TARGET         = '9101955'
      FRAME_-64999_PRI_ABCORR         = 'NONE'

      FRAME_-64999_SEC_AXIS           = 'X'
      FRAME_-64999_SEC_VECTOR_DEF     = 'OBSERVER_TARGET_POSITION'
      FRAME_-64999_SEC_OBSERVER       = 'ORX'
      FRAME_-64999_SEC_TARGET         = 'SUN'
      FRAME_-64999_SEC_ABCORR         = 'NONE'

   \begintext

End of FK.

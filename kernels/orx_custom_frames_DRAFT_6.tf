KPL/FK


Temporary OSIRIS-REx (ORX) Dynamic Frames Frames Kernel
=====================================================================

   This temporary frame kernel contains a set of dynamic frame
   definitions of interest to the ORX Science Operations Center.
 
   Once agreed upon, these frames will be moved the main ORX FK,
   orx_vVV.tf.


Version and Date
-----------------------------------------------------------

   Version 0.6 (draft) -- December 13, 2017 -- Boris Semenov, NAIF

      -  changed all frame IDs to bring all frames into the -649xx
         range
 
      -  renamed these frames to have the ORX_ prefix:

            BENNU_SUN_NORTH   -> ORX_BENNU_SUN_NORTH
            BENNU_SAM         -> ORX_BENNU_SAM
            BENNU_ORBIT_FIXED -> ORX_BENNU_ORBIT_FIXED
            SUN_PLANE_OF_SKY  -> ORX_SUN_PLANE_OF_SKY

      -  modified all frame descriptions to follow the same style
 
      -  modified preface comments to look like from from the main FK
 
      -  reformatted comments and definitions to have consistent
         indentation and keyword/value alignment

   Version 0.5 (draft) -- December 5, 2017 -- John Kidd, UofA

      -  corrections based on Dan Wibben's feedback

   Version 0.4 (draft) -- November 28, 2017 -- John Kidd, UofA

      -  additional updates

   Version 0.3 (draft) -- October 25, 2017 -- John Kidd, UofA

      -  Incorporated custom frames from FDS provided by Dan Wibben

   Version 0.2 (draft) -- December 13, 2017 -- John Kidd, UofA

      -  Incorporate input from Brian Carcich and Boris Semenov.

   Version 0.1 (draft) -- December 13, 2017 -- John Kidd, UofA

      -  Initial version.


References
-----------------------------------------------------------

   1. ``Frames Required Reading''

   2. ``Kernel Pool Required Reading''

   3. OSIRIS-REx-SPEC-0010_Rev_A_Mar2017.pdf, sections:
      -  Sun North Frame (Section 8.1.8)
      -  Sun Anti-Momentum (SAM) Frame (Section 8.1.9)
      -  Bennu Orbit-Fixed Frame (Section 8.1.10)
      -  Sun Plane-Of-Sky (POS) Frame (Section 8.1.7)


OSIRIS-REx Dynamic Frames Summary
-----------------------------------------------------------

   The following OSIRIS-REx dynamic frames are defined in this kernel file:

           Name                  Relative to           Type       NAIF ID
      ======================  =====================  ==========   =======
      ORX_BENNU_SUN           J2000                  DYNAMIC      -64901
      ORX_BENNU_SUN_NORTH     J2000                  DYNAMIC      -64902
      ORX_BENNU_SAM           J2000                  DYNAMIC      -64903
      ORX_BENNU_ORBIT_FIXED   J2000                  DYNAMIC      -64904
      ORX_SUN_PLANE_OF_SKY    J2000                  DYNAMIC      -64905
      ORX_RTN_BENNU           J2000                  DYNAMIC      -64906
      ORX_RTN_EARTH           J2000                  DYNAMIC      -64907
      ORX_RTN_SUN             J2000                  DYNAMIC      -64908
      ORX_VIEW2_BENNU         J2000                  DYNAMIC      -64909
      ORX_VIEW2_EARTH         J2000                  DYNAMIC      -64910
      ORX_VIEW2_SUN           J2000                  DYNAMIC      -64911

 
OSIRIS-REx Dynamic Frames Definitions
-----------------------------------------------------------

   The Nadir-Oriented Spacecraft-Centered Frame -- ORX_BENNU_SUN -- is 
   defined as follows:

      -  +Z axis points from the spacecraft towards the center of Bennu
         (primary)
 
      -  +X axis points in the direction from the spacecraft to the Sun
         (secondary)
 
      -  +Y axis completes the right handed frame
 
      -  the origin of the frame is at the spacecraft center of mass.

   This frame is defined as a two-vector style dynamic frame below.

   \begindata

      FRAME_ORX_BENNU_SUN             = -64901
      FRAME_-64901_NAME               = 'ORX_BENNU_SUN'
      FRAME_-64901_CLASS              = 5
      FRAME_-64901_CLASS_ID           = -64901
      FRAME_-64901_CENTER             = 'ORX'
      FRAME_-64901_RELATIVE           = 'J2000'
      FRAME_-64901_DEF_STYLE          = 'PARAMETERIZED'
      FRAME_-64901_FAMILY             = 'TWO-VECTOR'

      FRAME_-64901_PRI_AXIS           = 'Z'
      FRAME_-64901_PRI_VECTOR_DEF     = 'OBSERVER_TARGET_POSITION'
      FRAME_-64901_PRI_OBSERVER       = 'ORX'
      FRAME_-64901_PRI_TARGET         = 'BENNU'
      FRAME_-64901_PRI_ABCORR         = 'NONE'

      FRAME_-64901_SEC_AXIS           = 'X'
      FRAME_-64901_SEC_VECTOR_DEF     = 'OBSERVER_TARGET_POSITION'
      FRAME_-64901_SEC_OBSERVER       = 'ORX'
      FRAME_-64901_SEC_TARGET         = 'SUN'
      FRAME_-64901_SEC_ABCORR         = 'NONE'

   \begintext


   The Sun-North Bennu-Centered frame -- ORX_BENNU_SUN_NORTH -- is
   defined as follows:

      -  +X axis points from the center of Bennu to the center of the
         Sun (primary)
 
      -  +Z axis points in the direction of the Bennu spin axis (+Z of
         IAU_BENNU) (secondary)
 
      -  +Y axis completes the right handed frame
 
      -  the origin of the frame is at the center of Bennu.

   This frame is defined as a two-vector style dynamic frame below.

   \begindata

      FRAME_ORX_BENNU_SUN_NORTH       = -64902
      FRAME_-64902_NAME               = 'ORX_BENNU_SUN_NORTH'
      FRAME_-64902_CLASS              = 5
      FRAME_-64902_CLASS_ID           = -64902
      FRAME_-64902_CENTER             = 'BENNU'
      FRAME_-64902_RELATIVE           = 'J2000'
      FRAME_-64902_DEF_STYLE          = 'PARAMETERIZED'
      FRAME_-64902_FAMILY             = 'TWO-VECTOR'

      FRAME_-64902_PRI_AXIS           = 'X'
      FRAME_-64902_PRI_VECTOR_DEF     = 'OBSERVER_TARGET_POSITION'
      FRAME_-64902_PRI_OBSERVER       = 'BENNU'
      FRAME_-64902_PRI_TARGET         = 'SUN'
      FRAME_-64902_PRI_ABCORR         = 'NONE'

      FRAME_-64902_SEC_AXIS           = 'Z'
      FRAME_-64902_SEC_VECTOR_DEF     = 'CONSTANT'
      FRAME_-64902_SEC_SPEC           = 'RECTANGULAR' 
      FRAME_-64902_SEC_VECTOR         = ( 0.0, 0.0, 1.0 )
      FRAME_-64902_SEC_FRAME          = 'IAU_BENNU'

   \begintext


   The Sun-AntiMomentum (SAM) Bennu-Centered frame -- ORX_BENNU_SAM --
   is defined as follows:

      -  +X axis points from the center of Bennu to the center of the
         Sun (primary)
 
      -  +Y axis points in the direction of the Bennu's inertial
         velocity with respect to the Sun (secondary)
 
      -  +Z axis completes the right handed frame and is aligned with
         the Bennu's orbital angular anti-momentum
 
      -  the origin of the frame is at the center of Bennu.
 
   This frame is defined as a two-vector style dynamic frame below.

   \begindata

      FRAME_ORX_BENNU_SAM             = -64903
      FRAME_-64903_NAME               = 'ORX_BENNU_SAM'
      FRAME_-64903_CLASS              = 5
      FRAME_-64903_CLASS_ID           = -64903
      FRAME_-64903_CENTER             = 'BENNU'
      FRAME_-64903_RELATIVE           = 'J2000'
      FRAME_-64903_DEF_STYLE          = 'PARAMETERIZED'
      FRAME_-64903_FAMILY             = 'TWO-VECTOR'

      FRAME_-64903_PRI_AXIS           = 'X'
      FRAME_-64903_PRI_VECTOR_DEF     = 'OBSERVER_TARGET_POSITION'
      FRAME_-64903_PRI_OBSERVER       = 'BENNU'
      FRAME_-64903_PRI_TARGET         = 'SUN'
      FRAME_-64903_PRI_ABCORR         = 'NONE'

      FRAME_-64903_SEC_AXIS           = 'Y'
      FRAME_-64903_SEC_VECTOR_DEF     = 'OBSERVER_TARGET_VELOCITY'
      FRAME_-64903_SEC_OBSERVER       = 'SUN'
      FRAME_-64903_SEC_TARGET         = 'BENNU'
      FRAME_-64903_SEC_ABCORR         = 'NONE'
      FRAME_-64903_SEC_FRAME          = 'J2000'

   \begintext


   The Bennu Orbit-Fixed frame -- ORX_BENNU_ORBIT_FIXED -- is defined
   as follows:

      -  +X axis points from the center of Sun to the center of the
         Bennu (primary)
 
      -  +Y axis points in the direction of the Bennu's inertial
         velocity with respect to the Sun (secondary)
 
      -  +Z axis completes the right handed frame and is aligned with
         the Bennu's orbital angular momentum
 
      -  the origin of the frame is at the center of Bennu.
 
   This frame is defined as a two-vector style dynamic frame below.

   \begindata

      FRAME_ORX_BENNU_ORBIT_FIXED     = -64904
      FRAME_-64904_NAME               = 'ORX_BENNU_ORBIT_FIXED'
      FRAME_-64904_CLASS              = 5
      FRAME_-64904_CLASS_ID           = -64904
      FRAME_-64904_CENTER             = 'BENNU'
      FRAME_-64904_RELATIVE           = 'J2000'
      FRAME_-64904_DEF_STYLE          = 'PARAMETERIZED'
      FRAME_-64904_FAMILY             = 'TWO-VECTOR'

      FRAME_-64904_PRI_AXIS           = 'X'
      FRAME_-64904_PRI_VECTOR_DEF     = 'OBSERVER_TARGET_POSITION'
      FRAME_-64904_PRI_OBSERVER       = 'SUN'
      FRAME_-64904_PRI_TARGET         = 'BENNU'
      FRAME_-64904_PRI_ABCORR         = 'NONE'

      FRAME_-64904_SEC_AXIS           = 'Y'
      FRAME_-64904_SEC_VECTOR_DEF     = 'OBSERVER_TARGET_VELOCITY'
      FRAME_-64904_SEC_OBSERVER       = 'SUN'
      FRAME_-64904_SEC_TARGET         = 'BENNU'
      FRAME_-64904_SEC_ABCORR         = 'NONE'
      FRAME_-64904_SEC_FRAME          = 'J2000'

   \begintext


   The Sun Plane-Of-Sky frame -- ORX_SUN_PLANE_OF_SKY -- is defined
   as follows:

      -  +Z axis points from the center of Sun to the center of the
         Bennu (primary)
 
      -  +Y axis points in the direction of the Ecliptic South pole (-Z
         of ECLIPJ2000) (secondary)
 
      -  +X axis completes the right handed frame
 
      -  the origin of the frame is at the center of Bennu.

--------- TBC begin
 
   Because Bennu's orbital momentum is *NOT* aligned with the North
   Ecliptic pole, this definition from the version DRAFT_5:

      FRAME_ORX_SUN_PLANE_OF_SKY      = -64905
      FRAME_-64905_NAME               = 'ORX_SUN_PLANE_OF_SKY'
      FRAME_-64905_CLASS              = 5
      FRAME_-64905_CLASS_ID           = -64905
      FRAME_-64905_CENTER             = 'BENNU'
      FRAME_-64905_RELATIVE           = 'J2000'
      FRAME_-64905_DEF_STYLE          = 'PARAMETERIZED'
      FRAME_-64905_FAMILY             = 'TWO-VECTOR'

      FRAME_-64905_PRI_AXIS           = 'Z'
      FRAME_-64905_PRI_VECTOR_DEF     = 'OBSERVER_TARGET_POSITION'
      FRAME_-64905_PRI_OBSERVER       = 'SUN'
      FRAME_-64905_PRI_TARGET         = 'BENNU'
      FRAME_-64905_PRI_ABCORR         = 'NONE'

      FRAME_-64905_SEC_AXIS           = 'X'
      FRAME_-64905_SEC_VECTOR_DEF     = 'OBSERVER_TARGET_VELOCITY'
      FRAME_-64905_SEC_OBSERVER       = 'SUN'
      FRAME_-64905_SEC_TARGET         = 'BENNU'
      FRAME_-64905_SEC_ABCORR         = 'NONE'
      FRAME_-64905_SEC_FRAME          = 'J2000'

   does not corresponds to the quoted description:

       Sun Plane-Of-Sky
       -  The +Z axis is aligned from Bennu center to Sun center
       -  The +X axis is the result of the cross product of the Frame Z
          axis and the ecliptic north pole
       *  OR in other words: +X is planar aligned to the velocity of
          the Sun w.r.t. Bennu

       "The Sun POS frame is centered at Bennu with the X-Y plane
       perpendicular to the Sun-Bennu line. The frame is formed by
       taking the Sun-Bennu unit vector as the z-axis, crossing it with
       the North Ecliptic pole vector (0; 0; 1) to create the x-axis,
       and Finally the z-axis is crossed back into the x-axis to form
       the y-axis. Similarly, the Earth POS frame is formed relative to
       the Earth-Bennu unit vector. The Sun or Earth POS frames are
       illustrated in Figure 5."

   The definition above also points X in the direction of Bennu's
   velocity w.r.t. Sun instead of the Sun's velocity w.r.t. Bennu as
   specified in description.

   The definition below matches the description.

--------- TBC end
 
   This frame is defined as a two-vector style dynamic frame below.

   \begindata

      FRAME_ORX_SUN_PLANE_OF_SKY      = -64905
      FRAME_-64905_NAME               = 'ORX_SUN_PLANE_OF_SKY'
      FRAME_-64905_CLASS              = 5
      FRAME_-64905_CLASS_ID           = -64905
      FRAME_-64905_CENTER             = 'BENNU'
      FRAME_-64905_RELATIVE           = 'J2000'
      FRAME_-64905_DEF_STYLE          = 'PARAMETERIZED'
      FRAME_-64905_FAMILY             = 'TWO-VECTOR'

      FRAME_-64905_PRI_AXIS           = 'Z'
      FRAME_-64905_PRI_VECTOR_DEF     = 'OBSERVER_TARGET_POSITION'
      FRAME_-64905_PRI_OBSERVER       = 'SUN'
      FRAME_-64905_PRI_TARGET         = 'BENNU'
      FRAME_-64905_PRI_ABCORR         = 'NONE'

      FRAME_-64905_SEC_AXIS           = 'Y'
      FRAME_-64905_SEC_VECTOR_DEF     = 'CONSTANT'
      FRAME_-64905_SEC_SPEC           = 'RECTANGULAR' 
      FRAME_-64905_SEC_VECTOR         = ( 0.0, 0.0, -1.0 )
      FRAME_-64905_SEC_FRAME          = 'ECLIPJ2000'

   \begintext


   The Radial-Tangential-Normal w.r.t. Bennu frame -- ORX_RTN_BENNU -- is 
   defined as follows:

      -  +X axis points from the center of Bennu to the center of mass
         of the spacecraft (primary)
 
      -  +Y axis points in the direction of the inertial spacecraft
         velocity w.r.t. Bennu (secondary)
 
      -  +Z axis completes the right handed frame and is aligned with
         the spacecraft's orbital angular momentum w.r.t. Bennu
 
      -  the origin of the frame is at the spacecraft center of mass.

   This frame is defined as a two-vector style dynamic frame below.

   \begindata

      FRAME_ORX_RTN_BENNU             = -64906
      FRAME_-64906_NAME               = 'ORX_RTN_BENNU'
      FRAME_-64906_CLASS              = 5
      FRAME_-64906_CLASS_ID           = -64906
      FRAME_-64906_CENTER             = 'ORX'
      FRAME_-64906_RELATIVE           = 'J2000'
      FRAME_-64906_DEF_STYLE          = 'PARAMETERIZED'
      FRAME_-64906_FAMILY             = 'TWO-VECTOR'

      FRAME_-64906_PRI_AXIS           = 'X'
      FRAME_-64906_PRI_VECTOR_DEF     = 'OBSERVER_TARGET_POSITION'
      FRAME_-64906_PRI_OBSERVER       = 'BENNU'
      FRAME_-64906_PRI_TARGET         = 'ORX'
      FRAME_-64906_PRI_ABCORR         = 'NONE'

      FRAME_-64906_SEC_AXIS           = 'Y'
      FRAME_-64906_SEC_VECTOR_DEF     = 'OBSERVER_TARGET_VELOCITY'
      FRAME_-64906_SEC_OBSERVER       = 'BENNU'
      FRAME_-64906_SEC_TARGET         = 'ORX'
      FRAME_-64906_SEC_ABCORR         = 'NONE'
      FRAME_-64906_SEC_FRAME          = 'J2000'

   \begintext


   The Radial-Tangential-Normal w.r.t. Earth frame -- ORX_RTN_EARTH --
   is defined as follows:

      -  +X axis points from the center of Earth to the center of mass
         of the spacecraft (primary)
 
      -  +Y axis points in the direction of the inertial spacecraft
         velocity w.r.t. Earth (secondary)
 
      -  +Z axis completes the right handed frame and is aligned with
         the spacecraft's orbital angular momentum w.r.t. Earth
 
      -  the origin of the frame is at the spacecraft center of mass.

   This frame is defined as a two-vector style dynamic frame below.

   \begindata 

      FRAME_ORX_RTN_EARTH             = -64907
      FRAME_-64907_NAME               = 'ORX_RTN_EARTH'
      FRAME_-64907_CLASS              = 5
      FRAME_-64907_CLASS_ID           = -64907
      FRAME_-64907_CENTER             = 'ORX'
      FRAME_-64907_RELATIVE           = 'J2000'
      FRAME_-64907_DEF_STYLE          = 'PARAMETERIZED'
      FRAME_-64907_FAMILY             = 'TWO-VECTOR'

      FRAME_-64907_PRI_AXIS           = 'X'
      FRAME_-64907_PRI_VECTOR_DEF     = 'OBSERVER_TARGET_POSITION'
      FRAME_-64907_PRI_OBSERVER       = 'EARTH'
      FRAME_-64907_PRI_TARGET         = 'ORX'
      FRAME_-64907_PRI_ABCORR         = 'NONE'

      FRAME_-64907_SEC_AXIS           = 'Y'
      FRAME_-64907_SEC_VECTOR_DEF     = 'OBSERVER_TARGET_VELOCITY'
      FRAME_-64907_SEC_OBSERVER       = 'EARTH'
      FRAME_-64907_SEC_TARGET         = 'ORX'
      FRAME_-64907_SEC_ABCORR         = 'NONE'
      FRAME_-64907_SEC_FRAME          = 'J2000'

   \begintext


   The Radial-Tangential-Normal w.r.t. Sun frame -- ORX_RTN_SUN --
   is defined as follows:

      -  +X axis points from the center of Sun to the center of mass
         of the spacecraft (primary)
 
      -  +Y axis points in the direction of the inertial spacecraft
         velocity w.r.t. Sun (secondary)
 
      -  +Z axis completes the right handed frame and is aligned with
         the spacecraft's orbital angular momentum w.r.t. Sun
 
      -  the origin of the frame is at the spacecraft center of mass.

   This frame is defined as a two-vector style dynamic frame below.

   \begindata 

      FRAME_ORX_RTN_SUN               = -64908
      FRAME_-64908_NAME               = 'ORX_RTN_SUN'
      FRAME_-64908_CLASS              = 5
      FRAME_-64908_CLASS_ID           = -64908
      FRAME_-64908_CENTER             = 'ORX'
      FRAME_-64908_RELATIVE           = 'J2000'
      FRAME_-64908_DEF_STYLE          = 'PARAMETERIZED'
      FRAME_-64908_FAMILY             = 'TWO-VECTOR'

      FRAME_-64908_PRI_AXIS           = 'X'
      FRAME_-64908_PRI_VECTOR_DEF     = 'OBSERVER_TARGET_POSITION'
      FRAME_-64908_PRI_OBSERVER       = 'SUN'
      FRAME_-64908_PRI_TARGET         = 'ORX'
      FRAME_-64908_PRI_ABCORR         = 'NONE'

      FRAME_-64908_SEC_AXIS           = 'Y'
      FRAME_-64908_SEC_VECTOR_DEF     = 'OBSERVER_TARGET_VELOCITY'
      FRAME_-64908_SEC_OBSERVER       = 'SUN'
      FRAME_-64908_SEC_TARGET         = 'ORX'
      FRAME_-64908_SEC_ABCORR         = 'NONE'
      FRAME_-64908_SEC_FRAME          = 'J2000'

   \begintext


   The ``VIEW2'' w.r.t. Bennu frame -- ORX_VIEW2_BENNU -- is defined as
   follows:

      -  +Y axis points along the inertial spacecraft velocity w.r.t.
         Bennu (primary)
 
      -  +X axis points in the direction from the center of Bennu to
         the center of mass of the spacecraft (secondary)
 
      -  +Z axis completes the right handed frame and is aligned with
         the spacecraft's orbital angular momentum w.r.t. Bennu
 
      -  the origin of the frame is at the spacecraft center of mass.

   This frame is defined as a two-vector style dynamic frame below.

   \begindata

      FRAME_ORX_VIEW2_BENNU           = -64909
      FRAME_-64909_NAME               = 'ORX_VIEW2_BENNU'
      FRAME_-64909_CLASS              = 5
      FRAME_-64909_CLASS_ID           = -64909
      FRAME_-64909_CENTER             = 'ORX'
      FRAME_-64909_RELATIVE           = 'J2000'
      FRAME_-64909_DEF_STYLE          = 'PARAMETERIZED'
      FRAME_-64909_FAMILY             = 'TWO-VECTOR'

      FRAME_-64909_PRI_AXIS           = 'Y'
      FRAME_-64909_PRI_VECTOR_DEF     = 'OBSERVER_TARGET_VELOCITY'
      FRAME_-64909_PRI_OBSERVER       = 'BENNU'
      FRAME_-64909_PRI_TARGET         = 'ORX'
      FRAME_-64909_PRI_ABCORR         = 'NONE'
      FRAME_-64909_PRI_FRAME          = 'J2000'

      FRAME_-64909_SEC_AXIS           = 'X'
      FRAME_-64909_SEC_VECTOR_DEF     = 'OBSERVER_TARGET_POSITION'
      FRAME_-64909_SEC_OBSERVER       = 'BENNU'
      FRAME_-64909_SEC_TARGET         = 'ORX'
      FRAME_-64909_SEC_ABCORR         = 'NONE'

   \begintext


   The ``VIEW2'' w.r.t. Earth frame -- ORX_VIEW2_EARTH -- is defined as
   follows:

      -  +Y axis points along the inertial spacecraft velocity w.r.t.
         Earth (primary)
 
      -  +X axis points in the direction from the center of Earth to
         the center of mass of the spacecraft (secondary)
 
      -  +Z axis completes the right handed frame and is aligned with
         the spacecraft's orbital angular momentum w.r.t. Earth
 
      -  the origin of the frame is at the spacecraft center of mass.

   This frame is defined as a two-vector style dynamic frame below.

   \begindata 

      FRAME_ORX_VIEW2_EARTH           = -64910
      FRAME_-64910_NAME               = 'ORX_VIEW2_EARTH'
      FRAME_-64910_CLASS              = 5
      FRAME_-64910_CLASS_ID           = -64910
      FRAME_-64910_CENTER             = 'ORX'
      FRAME_-64910_RELATIVE           = 'J2000'
      FRAME_-64910_DEF_STYLE          = 'PARAMETERIZED'
      FRAME_-64910_FAMILY             = 'TWO-VECTOR'

      FRAME_-64910_PRI_AXIS           = 'Y'
      FRAME_-64910_PRI_VECTOR_DEF     = 'OBSERVER_TARGET_VELOCITY'
      FRAME_-64910_PRI_OBSERVER       = 'EARTH'
      FRAME_-64910_PRI_TARGET         = 'ORX'
      FRAME_-64910_PRI_ABCORR         = 'NONE'
      FRAME_-64910_PRI_FRAME          = 'J2000'

      FRAME_-64910_SEC_AXIS           = 'X'
      FRAME_-64910_SEC_VECTOR_DEF     = 'OBSERVER_TARGET_POSITION'
      FRAME_-64910_SEC_OBSERVER       = 'EARTH'
      FRAME_-64910_SEC_TARGET         = 'ORX'
      FRAME_-64910_SEC_ABCORR         = 'NONE'

   \begintext


   The ``VIEW2'' w.r.t. Sun frame -- ORX_VIEW2_SUN -- is defined as
   follows:

      -  +Y axis points along the inertial spacecraft velocity w.r.t.
         Sun (primary)
 
      -  +X axis points in the direction from the center of Sun to
         the center of mass of the spacecraft (secondary)
 
      -  +Z axis completes the right handed frame and is aligned with
         the spacecraft's orbital angular momentum w.r.t. Sun
 
      -  the origin of the frame is at the spacecraft center of mass.

   This frame is defined as a two-vector style dynamic frame below.

   \begindata 

      FRAME_ORX_VIEW2_SUN             = -64911
      FRAME_-64911_NAME               = 'ORX_VIEW2_SUN'
      FRAME_-64911_CLASS              = 5
      FRAME_-64911_CLASS_ID           = -64911
      FRAME_-64911_CENTER             = 'ORX'
      FRAME_-64911_RELATIVE           = 'J2000'
      FRAME_-64911_DEF_STYLE          = 'PARAMETERIZED'
      FRAME_-64911_FAMILY             = 'TWO-VECTOR'

      FRAME_-64911_PRI_AXIS           = 'Y'
      FRAME_-64911_PRI_VECTOR_DEF     = 'OBSERVER_TARGET_VELOCITY'
      FRAME_-64911_PRI_OBSERVER       = 'SUN'
      FRAME_-64911_PRI_TARGET         = 'ORX'
      FRAME_-64911_PRI_ABCORR         = 'NONE'
      FRAME_-64911_PRI_FRAME          = 'J2000'

      FRAME_-64911_SEC_AXIS           = 'X'
      FRAME_-64911_SEC_VECTOR_DEF     = 'OBSERVER_TARGET_POSITION'
      FRAME_-64911_SEC_OBSERVER       = 'SUN'
      FRAME_-64911_SEC_TARGET         = 'ORX'
      FRAME_-64911_SEC_ABCORR         = 'NONE'

   \begintext

End of FK.

KPL/FK


OSIRIS-REx (ORX) Frames Kernel
=====================================================================

   This frame kernel contains the complete set of frame definitions for
   the OSIRIS-REx spacecraft, its structures and science instruments.
   This frame kernel also contains name - to - NAIF ID mappings for
   OSIRIS-REx science instruments and s/c structures (see the last
   section of the file.)


Version and Date
-----------------------------------------------------------

   Version 0.8 -- July 27, 2017 -- Boris Semenov, NAIF

      Added ORX_SA_PY_IG/-64017 and ORX_SA_NY_IG/-64027 to allow
      packaging SA PY and NY inner and outer gimbal rotations in 
      separate segments.

   Version 0.7 -- June 28, 2017 -- Boris Semenov, NAIF

      Incorporated alignment DCMs from [9] into LIDAR, NAVCAM, 
      STU, OTES, OCAMS, OLA, OVIRS, and HGA frame definitions.

      Changed the relative-to frame for ORX_OLA_LOW from ORX_OLA_HIGH
      to ORX_OLA_ART per [10].

      Redefined ORX_OVIRS and ORX_OVIRS_SCI to be nominally co-aligned
      with ORX_SPACECRAFT per [11].

      Redefined ORX_OVIRS_SUN to have -Y co-aligned with the science
      port boresight (ORX_OVIRS_SCI +Z) per [11].

      Corrected OLA frames description per [10].

      Changed the order of -64000 name/ID mappings to give
      ORX_SPACECRAFT/-64000 the highest priority.

      Corrected OCAMS frames descriptions.

   Version 0.6 -- October 24, 2016 -- Boris Semenov, NAIF

      Added star tracker frames based on [4] and [7].

      Added POLYCAM focus position name-ID mappings.

   Version 0.5 -- July 6, 2016 -- Boris Semenov, NAIF

      07/01/16: Updated MapCam and SamCam frames description to
      correctly indicate how +X and +Y axes relate to CCD lines and
      columns.

      05/16/16: Updated HGA alignment angles to line up the ORX_HGA
      frame with the antenna pattern ([6]).

   Version 0.4 -- August 24, 2015 -- Boris Semenov, NAIF

      08/24/15: Updated LIDAR frames to be consistent with [4]/Rev-D

      12/18/14: Updated NAVCAM1 and NAVCAM2 nominal alignments for
      additional -90 degree rotation about boresight.

   Version 0.3 -- October 30, 2014 -- Boris Semenov, NAIF

      Replaced NAVCAM/-64070 frame and name/ID mapping with
      NAVCAM1/-64081 and NAVCAM2/-64082 frames and name/ID mappings.
      Changed NAVCAM1 and NAVCAM2 alignments to match [4].

      Added IAU_BENNU frame. Added BENNU/2101955 naif/ID mapping.

      Updated orientation of the ORX_OVIRS_SUN frame to match [4].

   Version 0.2 -- November 14, 2013 -- Boris Semenov, NAIF

      Defined nominal frames and name/ID mappings for majority of
      instruments and structures.

   Version 0.1 -- May 16, 2013 -- Boris Semenov, NAIF; John Ivens, LPL/UofA

      Pre-release, added OCAMS frames and name/ID mappings; adjusted
      ORX_OCAMS_SAMCAM angles to match description.

   Version 0.0 -- March 19, 2013 -- Boris Semenov, NAIF

      Pre-release, example version.


References
-----------------------------------------------------------

   1. ``Frames Required Reading''

   2. ``Kernel Pool Required Reading''

   3. ``C-Kernel Required Reading''

   4. ORX Coordinate Systems Document, Rev-A (02/18/13),
      Rev-B (03/18/14), Rev-D (05/20/15)

   5. "NavCam Pointing for OpNav.pptx", 06/16/14

   6. E-mail from Javier Cerna, ORX Telecom, 05/13/16

   7. Measured start tracker FRF alignments, 
      ``Measured STU1 FRF and FRF Description.docx'', 09/20/16

   8. FK_DCMs.xlsx, D. Lorenz, 03/29/17

   9. xmit.xlsx, D. Lorenz, 06/19/17

  10. Review feedback by the OLA team (orx_v07_draft_tf_w_comments.docx),
      provided by  D. Lorenz, 06/20/17

  11. Review feedback by the OVIRS team (OVIRS Frames updates.docx),
      provided by  D. Lorenz, 06/27/17


Contact Information
-----------------------------------------------------------

   Boris V. Semenov, NAIF/JPL, (818)-354-8136, Boris.Semenov@jpl.nasa.gov


Implementation Notes
-----------------------------------------------------------

   This file is used by the SPICE system as follows: programs that make
   use of this frame kernel must ``load'' the kernel, normally during
   program initialization using the SPICELIB routine FURNSH. This file
   was created and may be updated with a text editor or word processor.


OSIRIS-REx Frames Summary
-----------------------------------------------------------

   The following OSIRIS-REx frames are defined in this kernel file:

           Name                  Relative to           Type       NAIF ID
      ======================  =====================  ==========   =======

   Bennu Body-Fixed frame:
   -----------------------

      IAU_BENNU               J2000                  PCK          10106


   Spacecraft frame:
   -----------------

      ORX_SPACECRAFT          J2000                  CK            -64000


   Structure frames (solar arrays, TAGSAM, antennas, etc):
   -------------------------------------------------------

      ORX_SA_PY_BP            ORX_SPACECRAFT         FIXED         -64011
      ORX_SA_PY_IG            ORX_SA_PY_BP           CK            -64017
      ORX_SA_PY_GIM           ORX_SA_PY_BP/PY_IG     CK            -64012
      ORX_SA_PY               ORX_SA_PY_GIM          FIXED         -64010

      ORX_SA_NY_BP            ORX_SPACECRAFT         FIXED         -64021
      ORX_SA_NY_IG            ORX_SA_NY_BP           CK            -64027
      ORX_SA_NY_GIM           ORX_SA_NY_BP/NY_IG     CK            -64022
      ORX_SA_NY               ORX_SA_NY_GIM          FIXED         -64020

      ORX_TAGSAM_BP           ORX_SPACECRAFT         FIXED         -64051
      ORX_TAGSAM_SH_REF       ORX_TAGSAM_BP          FIXED         -64052
      ORX_TAGSAM_SH           ORX_TAGSAM_SH_REF      CK            -64053
      ORX_TAGSAM_EL_REF       ORX_TAGSAM_SH          FIXED         -64054
      ORX_TAGSAM_EL           ORX_TAGSAM_EL_REF      CK            -64055
      ORX_TAGSAM_WR_REF       ORX_TAGSAM_EL          FIXED         -64056
      ORX_TAGSAM_WR           ORX_TAGSAM_WR_REF      CK            -64057
      ORX_TAGSAM              ORX_TAGSAM_WR          FIXED         -64050

      ORX_HGA                 ORX_SPACECRAFT         FIXED         -64060
      ORX_MGA                 ORX_SPACECRAFT         FIXED         -64061
      ORX_LGA_PX              ORX_SPACECRAFT         FIXED         -64062
      ORX_LGA_MX              ORX_SPACECRAFT         FIXED         -64063

      ORX_STOWCAM             ORX_SPACECRAFT         FIXED         -64071
      ORX_LIDAR-1             ORX_SPACECRAFT         FIXED         -64072
      ORX_LIDAR-2             ORX_SPACECRAFT         FIXED         -64073
      ORX_LIDAR-1_CUBE        ORX_SPACECRAFT         FIXED         -64074
      ORX_LIDAR-2_CUBE        ORX_SPACECRAFT         FIXED         -64075

      ORX_NAVCAM1             ORX_SPACECRAFT         FIXED         -64081
      ORX_NAVCAM2             ORX_SPACECRAFT         FIXED         -64082

      ORX_SRC                 ORX_SPACECRAFT         FIXED         -64090

      ORX_STU1                ORX_SPACECRAFT         FIXED         -64091
      ORX_STU2                ORX_SPACECRAFT         FIXED         -64092


   Science Instruments frames:
   ---------------------------

      ORX_OTES                ORX_SPACECRAFT         FIXED         -64310

      ORX_OVIRS               ORX_SPACECRAFT         FIXED         -64320
      ORX_OVIRS_SCI           ORX_OVIRS              FIXED         -64321
      ORX_OVIRS_SUN           ORX_OVIRS              FIXED         -64322

      ORX_REXIS               ORX_SPACECRAFT         FIXED         -64330

      ORX_REXIS_SXM           ORX_SPACECRAFT         FIXED         -64340

      ORX_OCAMS_POLYCAM       ORX_SPACECRAFT         FIXED         -64360
      ORX_OCAMS_MAPCAM        ORX_SPACECRAFT         FIXED         -64361
      ORX_OCAMS_SAMCAM        ORX_SPACECRAFT         FIXED         -64362

      ORX_OLA_BASE            ORX_SPACECRAFT         FIXED         -64400
      ORX_OLA_ART             ORX_OLA_BASE           CK            -64401
      ORX_OLA_HIGH            ORX_OLA_ART            FIXED         -64402
      ORX_OLA_LOW             ORX_OLA_HIGH           FIXED         -64403


ORX Frames Hierarchy
-----------------------------------------------------------

   The diagram below shows the ORX frames hierarchy:


                                J2000  INERTIAL
        +---------------------------------------------------------------+
        |                               |                               |
        |<-pck                          |                          pck->|
        |                               |                               |
        V                               |                               V
     IAU_BENNU                          |                          IAU_EARTH
   ASTEROID BFR(*)                      |                         EARTH BFR(*)
   ---------------                      |                         ------------
                                        |
                                        |
    ORX_SA_PY                           |                            ORX_SA_NY
    ---------                           |                            ---------
        ^                               |                               ^
        |<-fxd                          |                          fxd->|
        |                               |                               |
    ORX_SA_PY_GIM                       |                        ORX_SA_NY_GIM
    -------------                       |                        -------------
     ^  ^                               |                               ^  ^
     |<-|<-ck                           |                           ck->|->|
     |  |                               |                               |  |
     | ORX_SA_PY_IG   ORX_LIDAR-1       |       ORX_LIDAR-2   ORX_SA_NY_IG |
     | ------------   -----------       |       -----------   ------------ |
     |  ^                ^              |              ^                ^  |
     |  |<-ck            |<-fxd         |         fxd->|            ck->|  |
     |  |                |              |              |                |  |
    ORX_SA_PY_BP   ORX_LIDAR-1_CUBE     |     ORX_LIDAR-2_CUBE    ORX_SA_NY_BP
    ------------   ----------------     |     ----------------    ------------
        ^                ^              |              ^                ^
        |<-fxd           |<-fxd         |         fxd->|           fxd->|
        |                |              |              |                |
        |                |              |              |                |
        | ORX_NAVCAM1/2  | ORX_STU1/2   |              |  ORX_STOWCAM   |
        | -------------  | ----------   |              |  -----------   |
        |             ^  |          ^   |              |  ^             |
        |        fxd->|  |          |   |              |  |<-fxd        |
        |             |  |          |   |              |  |             |
        |             |  |          |   |              |  |             |
        |  ORX_LGA_PX |  | ORX_HGA  |   |      ORX_MGA |  | ORX_LGA_MX  |
        |  ---------- |  | -------  |   |      ------- |  | ----------  |
        |       ^     |  |  ^       |   |           ^  |  |     ^       |
        |  fxd->|     |  |  |<-fxd  |   |      fxd->|  |  |     |<-fxd  |
        |       |     |  |  |       |   |           |  |  |     |       |
        |       |     |  |  |       |   |           |  |  |     |       |
        |       |     |  |  |       |   |<-ck       |  |  |     |       |
        |       |     |  |  |       |   |           |  |  |     |       |
        |       |     |  |  |       |   V           |  |  |     |       |
        |       |     |  |  |     ORX_SPACECRAFT    |  |  |     |       |
        +---------------------------------------------------------------+
        |   |   |   |   |   |   |       |         |                     |
        |   |   |   |   |   |   |       |         |                     |
        |   |   |   |   |   |   |<-fxd  |         |<-fxd           fxd->|
        |   |   |   |   |   |   V       |         V                     V
        |   |   |   |   |   | ORX_SRC   |    ORX_OLA_BASE        ORX_TAGSAM_BP
        |   |   |   |   |   | -------   |    ------------        -------------
        |   |   |   |   |   |           |         |                     |
        |   |   |   |   |   |<-fxd      |         |<-ck            fxd->|
        |   |   |   |   |   V           |         V                     V
        |   |   |   |   |  ORX_OTES     |     ORX_OLA_ART    ORX_TAGSAM_SH_REF
        |   |   |   |   |  --------     |    +-----------    -----------------
        |   |   |   |   |               |    |                          |
        |   |   |   |   |<-fxd          |    |<-fxd                 ck->|
        |   |   |   |   V               |    V                          V
        |   |   |   |  ORX_REXIS        |   ORX_OLA_HIGH         ORX_TAGSAM_SH
        |   |   |   |  ---------        |   ------------         -------------
        |   |   |   |                   |    |                          |
        |   |   |   |<-fxd              |    |<-fxd                fxd->|
        |   |   |   V                   |    V                          V
        |   |   |  ORX_REXIS_SXM        |   ORX_OLA_LOW      ORX_TAGSAM_EL_REF
        |   |   |  -------------        |   -----------      -----------------
        |   |   |                       |                               |
        |   |   |<-fxd                  |                           ck->|
        |   |   V                       |                               V
        |   |  ORX_OCAMS_POLYCAM        |                        ORX_TAGSAM_EL
        |   |  -----------------        |                        -------------
        |   |                           |                               |
        |   |<-fxd                      |                          fxd->|
        |   V                           V                               V
        |  ORX_OCAMS_MAPCAM         ORX_OVIRS                ORX_TAGSAM_WR_REF
        |  ----------------       +-----------+              -----------------
        |                         |           |                         |
        |<-fxd                    |<-fxd      |<-fxd                ck->|
        V                         V           V                         V
     ORX_OCAMS_SAMCAM     ORX_OVIRS_SCI     ORX_OVIRS_SUN        ORX_TAGSAM_WR
     ----------------     -------------     -------------        -------------
                                                                        |
                                                                   fxd->|
                                                                        V
                                                                    ORX_TAGSAM
                                                                    ----------
   (*) BFR -- body-fixed rotating frame


Asteroid Body-Fixed Frame
-----------------------------------------------------------

   The asteroid Bennu body-fixed frame -- IAU_BENNU -- is defined
   as follows:

      -  +Z axis is the asteroid rotation axis pointed towards the
         positive pole

      -  +X axis points towards the prime meridian

      -  +Y axis completes the right handed frame

      -  the origin of the frame is at the asteroid center of mass.

   Since the asteroid rotation data is expected to be provided in a
   text PCK in the form compliant with the IAU rotation model, the
   IAU_BENNU frame is defined below as a PCK based frame.

   \begindata

      FRAME_IAU_BENNU                =  10106
      FRAME_10106_NAME               = 'IAU_BENNU'
      FRAME_10106_CLASS              =  2
      FRAME_10106_CLASS_ID           =  2101955
      FRAME_10106_CENTER             =  2101955

      OBJECT_2101955_FRAME           = 'IAU_BENNU'

   \begintext


Spacecraft Bus Frame
-----------------------------------------------------------

   The spacecraft bus frame -- ORX_SPACECRAFT -- is defined by the s/c
   design as follows (from [4]):

      -  +X axis is parallel to the HGA boresight

      -  +Z axis is normal to the forward (payload) deck

      -  +Y axis completes the right hand frame

      -  the origin of the frame is at the center of payload deck.

   These diagrams illustrate the s/c frame:

      +X side view:
      -------------
                                  +Zsc ^
                                       |
      .------------------.             |             .------------------.
      |                  | Payload     |             |                  |
      |                  | Deck    . --|-- .         |                  |
      |                  | .-----.'    o--------> -. |                  |
      |                  | |   .` +Xsc        +Ysc | |                  |
      |                  | |   |               |   | |                  |
      |                  | |   |       o       |   | |                  |
      |                  | |   |               |   | |                  |
      | -Y solar         \ |   `.             .'   | /         +Y solar |
      |   array           || HGA `.         .'     ||            array  |
      `-------------------@`-------` ----- '-------'@-------------------'
                                  |         |
                                   `-------'
                                      \_/ Main Engine

                                                 +Xsc is out of the page.
      +Z side view:
      -------------

                           .-------.       .-------.
                           |        \.___./        |
                           |         |___| TAGSAM  |
                           |Payload                |
                           | Deck     ...          |
                           |       +Zsc  `.   +Ysc |
                           |        |  o-------->  |
                           |        `. | .'        |
                           |          `|` SRC      |
        -Y solar           |           |           |           +Y solar
          array            |      .----|----.      |             array
      ====================@`----.'     v     `.----'@====================
                               `-  +Xsc   ------'
                                  `-.     .-'
                                     `-.-'  HGA

                                                 +Zsc is out of the page.

      +Y side view:
      -------------

                                  +Zsc ^
                   +Y solar            |
                     array  | Payload  |
                            |  Deck  __|__         TAGSAM
                            |       /  |  \      ||
                          .|| <--------o ----------.
                        .' ||+Xsc       +Ysc       |
                      .'   ||                      |
                     |     ||                      |
                      `.   ||                      |
                   HGA  `. ||                      |
                          `||                      |
                           `@----------------------'
                                  |         |
                                   `-------'
                                      \_/ Main Engine

                                                 +Ysc is out of the page.

   Since the S/C bus attitude is provided by a C kernel (see [3] for
   more information), this frame is defined as a CK-based frame.

   \begindata

      FRAME_ORX_SPACECRAFT           = -64000
      FRAME_-64000_NAME              = 'ORX_SPACECRAFT'
      FRAME_-64000_CLASS             = 3
      FRAME_-64000_CLASS_ID          = -64000
      FRAME_-64000_CENTER            = -64
      CK_-64000_SCLK                 = -64
      CK_-64000_SPK                  = -64

   \begintext


Solar Array Frames
-----------------------------------------------------------

   Three frames are defined for each of the two solar arrays -- the
   baseplate frame (to establish the 0,0 reference for the gimbal
   rotations), the gimbal frame (to encapsulate the gimbal rotations),
   and the array frame (to co-align +Z with the normal on the active
   cell side).

   The baseplate frames -- ORX_SA_PY_BP and ORX_SA_NY_BP -- are defined
   as follows ([4]):

      -  +Z axis is co-aligned with -Ysc

      -  +X axis is co-aligned with -Xsc for the +Y array and
         co-aligned with +Xsc for the -Y array

      -  +Y axis completes the right hand frame

   The gimbal frames -- ORX_SA_PY_GIM and ORX_SA_NY_GIM -- are defined
   to be co-aligned with the baseplate frames in the zero gimbal
   position and are rotated from the baseplate frames first by the
   inner gimbal angle about Y, then by the outer gimbal angle about X.
   These rotations can be combined and stored in a single segment or
   stored separately in two separate segments, one for the inner gimbal 
   and one for the outer gimbal. The additional intermediate inner gimbal
   frames -- ORX_SA_PY_IG and ORX_SA_NY_IG -- are defined to support
   making two segments for the latter case, resulting in the 
   BP -> IG -> GIM frame chains.
 
   The array frames -- ORX_SA_PY and ORX_SA_NY -- are defined as
   follows:

      -  +Z axis is the normal to the array surface on the active cell
         side

      -  +X axis points along the array edge, from the outer side of the
         array towards the gimbal

      -  +Y axis completes the right hand frame

   The origins of all array frames are at the intersection of the
   corresponding inner and outer gimbal axes.

   This diagram illustrates all array frames for arrays in the inner
   gimbal (IG) = +90 degrees, outer gimbal (OG) = 0 degrees position:

      +Z side view:
      -------------

                           .-------.       .-------.
                           |        \.___./        |
                           |         |___| TAGSAM  |
                           |Payload                |
                           | Deck     ...          |
                           |       +Zsc  `.   +Ysc |
                           |        |  o-------->  |^ +Zpy_gim
                           |        `. | .'        || +Xpy_bp
                           |          `|` SRC      ||
        -Y solar           |       +Xsc|           ||          +Y solar
          array            |      .----|----.      ||            array
      =========  <--------o-------->   v  <--------'x--------> ==========
              +Zny_bp     |   +Xny_sa    +Xpy_sa    |         +Xpy_sa
                          |   +Xny_gim   +Zpy_bp    |         +Xpy_gim
                          |          `-.-'          |
                          |             HGA         |
                          v +Zny_sa                 v +Zpy_sa
                            +Zny_gim
                            +Xny_bp
                                             +Zsc is out of the page.
                                             +Ypy_* are into the page.
                                            +Yny_* are out of the page.

   As seen on the diagram, for the +Y array:

      -  two rotations are needed to co-align the s/c frame with the +Y
         array baseplate frame -- first by 180 degrees about Z, then
         by -90 degrees about X.

      -  two time-varying rotations -- first about Y by the inner
         gimbal angle (+90 degrees on the diagram), then about X by the
         outer gimbal angle (0 degrees on the diagram) -- are needed to
         co-align the baseplate frame with the gimbal frame

      -  one rotation is needed to co-align the +Y array gimbal frame
         with the +Y array frame -- by 180 degrees about Y.

   and for -Y array:

      -  one rotation is needed to co-align the s/c frame with the -Y
         array baseplate frame -- by +90 degrees about X.

      -  two time-varying rotations -- first about Y by the inner
         gimbal angle (+90 degrees on the diagram), then about X by the
         outer gimbal angle (0 degrees on the diagram) -- are needed to
         co-align the baseplate frame with the gimbal frame

      -  no rotations are needed to co-align the -Y array gimbal frame
         with the -Y array frame.

   The keyword sets below define the baseplate frames as fixed offset
   frames relative to the s/c frame, the gimbal frames as CK-based
   frames, and the array frames as fixed offset frames relative to
   their corresponding gimbal frames.

   \begindata

      FRAME_ORX_SA_PY_BP              = -64011
      FRAME_-64011_NAME               = 'ORX_SA_PY_BP'
      FRAME_-64011_CLASS              = 4
      FRAME_-64011_CLASS_ID           = -64011
      FRAME_-64011_CENTER             = -64
      TKFRAME_-64011_SPEC             = 'ANGLES'
      TKFRAME_-64011_RELATIVE         = 'ORX_SPACECRAFT'
      TKFRAME_-64011_ANGLES           = ( 0.0, 180.0, 90.0 )
      TKFRAME_-64011_AXES             = ( 2,     3,    1   )
      TKFRAME_-64011_UNITS            = 'DEGREES'

      FRAME_ORX_SA_PY_IG              = -64017
      FRAME_-64017_NAME               = 'ORX_SA_PY_IG'
      FRAME_-64017_CLASS              = 3
      FRAME_-64017_CLASS_ID           = -64017
      FRAME_-64017_CENTER             = -64
      CK_-64017_SCLK                  = -64
      CK_-64017_SPK                   = -64

      FRAME_ORX_SA_PY_GIM             = -64012
      FRAME_-64012_NAME               = 'ORX_SA_PY_GIM'
      FRAME_-64012_CLASS              = 3
      FRAME_-64012_CLASS_ID           = -64012
      FRAME_-64012_CENTER             = -64
      CK_-64012_SCLK                  = -64
      CK_-64012_SPK                   = -64

      FRAME_ORX_SA_PY                 = -64010
      FRAME_-64010_NAME               = 'ORX_SA_PY'
      FRAME_-64010_CLASS              = 4
      FRAME_-64010_CLASS_ID           = -64010
      FRAME_-64010_CENTER             = -64
      TKFRAME_-64010_SPEC             = 'ANGLES'
      TKFRAME_-64010_RELATIVE         = 'ORX_SA_PY_GIM'
      TKFRAME_-64010_ANGLES           = ( 0.0, 0.0, 180.0 )
      TKFRAME_-64010_AXES             = ( 1,   3,     2   )
      TKFRAME_-64010_UNITS            = 'DEGREES'

      FRAME_ORX_SA_NY_BP              = -64021
      FRAME_-64021_NAME               = 'ORX_SA_NY_BP'
      FRAME_-64021_CLASS              = 4
      FRAME_-64021_CLASS_ID           = -64021
      FRAME_-64021_CENTER             = -64
      TKFRAME_-64021_SPEC             = 'ANGLES'
      TKFRAME_-64021_RELATIVE         = 'ORX_SPACECRAFT'
      TKFRAME_-64021_ANGLES           = ( 0.0, 0.0, -90.0 )
      TKFRAME_-64021_AXES             = ( 2,   3,     1   )
      TKFRAME_-64021_UNITS            = 'DEGREES'

      FRAME_ORX_SA_NY_IG              = -64027
      FRAME_-64027_NAME               = 'ORX_SA_NY_IG'
      FRAME_-64027_CLASS              = 3
      FRAME_-64027_CLASS_ID           = -64027
      FRAME_-64027_CENTER             = -64
      CK_-64027_SCLK                  = -64
      CK_-64027_SPK                   = -64

      FRAME_ORX_SA_NY_GIM             = -64022
      FRAME_-64022_NAME               = 'ORX_SA_NY_GIM'
      FRAME_-64022_CLASS              = 3
      FRAME_-64022_CLASS_ID           = -64022
      FRAME_-64022_CENTER             = -64
      CK_-64022_SCLK                  = -64
      CK_-64022_SPK                   = -64

      FRAME_ORX_SA_NY                 = -64020
      FRAME_-64020_NAME               = 'ORX_SA_NY'
      FRAME_-64020_CLASS              = 4
      FRAME_-64020_CLASS_ID           = -64020
      FRAME_-64020_CENTER             = -64
      TKFRAME_-64020_SPEC             = 'ANGLES'
      TKFRAME_-64020_RELATIVE         = 'ORX_SA_NY_GIM'
      TKFRAME_-64020_ANGLES           = ( 0.0, 0.0, 0.0 )
      TKFRAME_-64020_AXES             = ( 1,   2,   3   )
      TKFRAME_-64020_UNITS            = 'DEGREES'

   \begintext


TAGSAM Frames
-----------------------------------------------------------

   The following frames are defined for TAGSAM:

      -  baseplate frame -- ORX_TAGSAM_BP -- fixed with respect to and
         nominally co-aligned with the s/c frame

      -  shoulder reference frame -- ORX_TAGSAM_SH_REF -- fixed
         with respect to the baseplate frame and rotated from it first
         by -90 degrees about X, then by -90 degrees about Z

      -  shoulder rotation frame -- ORX_TAGSAM_SH -- rotated with
         respect to the shoulder reference frame by the time-varying
         shoulder angle about Z.

      -  elbow reference frame -- ORX_TAGSAM_EL_REF -- fixed with
         respect to the shoulder rotation frame and rotated from it
         first by -90 degrees about Z, then by 180 degrees about Y

      -  elbow rotation frame -- ORX_TAGSAM_EL -- rotated with
         respect to the elbow reference frame by the time-varying
         elbow angle about Z.

      -  wrist reference frame -- ORX_TAGSAM_WR_REF -- fixed with
         respect to and nominally co-aligned with the elbow rotation
         frame

      -  wrist rotation frame -- ORX_TAGSAM_WR -- rotated with respect
         to the wrist reference frame by the time-varying wrist angle
         about Z.

      -  TAGSAM tool frame -- ORX_TAGSAM -- fixed with respect to the
         wrist rotation frame and rotated from it by +90 degrees about
         Y to co-align the +Z axis with the normal to the TAGSAM
         sampling side.

      -  the origins of the baseplate, reference, and rotation frames
         are at the corresponding intersections of the gimbal axes and
         the arm link central axes. The origin of the tool frame is at
         the center of the sampling side.

   This diagram illustrates the TAGSAM frames in the stowed (0,0,0)
   position:

      +Y side view:
      -------------

                        +Zsc ^     +Zbp   +Ywr
         +Y solar            |     +Xsh ^ +Yt
           array  | Payload  | +Xwr    ^|
                  |  Deck  _ | +Zt     ||
                  |       /  |    <----|*
                .|| <--------o   <-----o|
              .' ||+Xsc  +Ysc  +Xbp    ||
            .'   ||            +Ysh    ||
           |     ||                    ||
            `.   ||                    |^ +Yel
         HGA  `. ||                    ||
                `||                    ||
                 `@-------        <-----x
                        |     +Xel
                         `-------'
                            \_/ Main Engine


                              Reference and rotation frames are co-aligned.
                             +Ysc, +Ybp, +Zsh, and +Xt are out of the page.
                                    +Zel and +Zwr are into the page.


   This diagram illustrates the TAGSAM frames in the spacecraft inertia
   measurement (+90,180,+90) position:

      +Y side view:
      -------------

                        +Zsc ^     +Zbp
         +Y solar            |     +Xshref           +Xel            +Xwrref
           array  | Payload  |         ^            ^              ^
                  |  Deck  _ |    +90 .|            |  180         |  +90
                  |       /  |       v |          .'|'v            |`v
                .|| <--------o-  <-----o------<-----x----->--------*----->
              .' ||+Xsc  +Ysc  +Xbp    | |  +Yelref |  +Yel        |   +Ywrref
            .'   ||            +Yshref | |          |              |   +Xwr
           |     ||            +Xsh    v |          v              v   +Zt
            `.   ||                 +Ysh |  +Xelref           +Ywr
         HGA  `. ||                      |                    +Yt
                `||                      |
                 `@----------------------'
                        |     +Xel
                         `-------'
                            \_/ Main Engine


                              Reference and rotation frames are co-aligned.
                             +Ysc, +Ybp, +Zsh*, and +Xt are out of the page.
                                   +Zel* and +Zwr* are into the page.


   This diagram illustrates the TAGSAM frames in the sample acquisition
   (+225,+225,+90) position:

      +Y side view:
      -------------
                                   +Ywrref
                                 ^ +Xwr
                            +90  | +Zt
                               .>|
                           <-----*----->
                        +Xwrref  |    +Ywr
                                 |    +Yt
                                 |
                                 ^ +Yel
                                 |    ,-> +Xelref
                        +Xel     | .-'
                           <-----x`,+225
                             ^ ^--\'
         +Y solar       +Zsc |     \    +Zbp
           array  |          |      v  ^+Xshref
                  |        _ | +Yelr \ |    .->
                  |       /  |       .\| .-'   +Ysh
                .|| <--------o-  <-----o'
              .' ||+Xsc  +Ysc  +Xbp  `->\ +225
            .'   ||            +Yshref   \
           |     ||                       v +Xsh
            `.   ||                      |
         HGA  `. ||                      |
                `||                      |
                 `@----------------------'
                        |     +Xel
                         `-------'
                            \_/ Main Engine


                              Reference and rotation frames are co-aligned.
                             +Ysc, +Ybp, +Zsh*, and +Xt are out of the page.
                                   +Zel* and +Zwr* are into the page.


   The keyword sets below define the baseplate frame as a fixed offset
   frame relative to the s/c frame, the gimbal reference frames as
   fixed offset frames relative to the baseplate or the previous gimbal
   rotation frame, the gimbal rotation frames as CK-based frames, and
   the TAGSAM tool frame as a fixed offset frame relative to the wrist
   rotation frame.

   \begindata

      FRAME_ORX_TAGSAM_BP             = -64051
      FRAME_-64051_NAME               = 'ORX_TAGSAM_BP'
      FRAME_-64051_CLASS              = 4
      FRAME_-64051_CLASS_ID           = -64051
      FRAME_-64051_CENTER             = -64
      TKFRAME_-64051_SPEC             = 'ANGLES'
      TKFRAME_-64051_RELATIVE         = 'ORX_SPACECRAFT'
      TKFRAME_-64051_ANGLES           = ( 0.0, 0.0, 0.0 )
      TKFRAME_-64051_AXES             = ( 1,   2,   3   )
      TKFRAME_-64051_UNITS            = 'DEGREES'

      FRAME_ORX_TAGSAM_SH_REF         = -64052
      FRAME_-64052_NAME               = 'ORX_TAGSAM_SH_REF'
      FRAME_-64052_CLASS              = 4
      FRAME_-64052_CLASS_ID           = -64052
      FRAME_-64052_CENTER             = -64
      TKFRAME_-64052_SPEC             = 'ANGLES'
      TKFRAME_-64052_RELATIVE         = 'ORX_TAGSAM_BP'
      TKFRAME_-64052_ANGLES           = ( 0.0, 90.0, 90.0 )
      TKFRAME_-64052_AXES             = ( 2,    1,    3   )
      TKFRAME_-64052_UNITS            = 'DEGREES'

      FRAME_ORX_TAGSAM_SH             = -64053
      FRAME_-64053_NAME               = 'ORX_TAGSAM_SH'
      FRAME_-64053_CLASS              = 3
      FRAME_-64053_CLASS_ID           = -64053
      FRAME_-64053_CENTER             = -64
      CK_-64053_SCLK                  = -64
      CK_-64053_SPK                   = -64

      FRAME_ORX_TAGSAM_EL_REF         = -64054
      FRAME_-64054_NAME               = 'ORX_TAGSAM_EL_REF'
      FRAME_-64054_CLASS              = 4
      FRAME_-64054_CLASS_ID           = -64054
      FRAME_-64054_CENTER             = -64
      TKFRAME_-64054_SPEC             = 'ANGLES'
      TKFRAME_-64054_RELATIVE         = 'ORX_TAGSAM_SH'
      TKFRAME_-64054_ANGLES           = ( 0.0, 90.0, 180.0 )
      TKFRAME_-64054_AXES             = ( 1,    3,     2   )
      TKFRAME_-64054_UNITS            = 'DEGREES'

      FRAME_ORX_TAGSAM_EL             = -64055
      FRAME_-64055_NAME               = 'ORX_TAGSAM_EL'
      FRAME_-64055_CLASS              = 3
      FRAME_-64055_CLASS_ID           = -64055
      FRAME_-64055_CENTER             = -64
      CK_-64055_SCLK                  = -64
      CK_-64055_SPK                   = -64

      FRAME_ORX_TAGSAM_WR_REF         = -64056
      FRAME_-64056_NAME               = 'ORX_TAGSAM_WR_REF'
      FRAME_-64056_CLASS              = 4
      FRAME_-64056_CLASS_ID           = -64056
      FRAME_-64056_CENTER             = -64
      TKFRAME_-64056_SPEC             = 'ANGLES'
      TKFRAME_-64056_RELATIVE         = 'ORX_TAGSAM_EL'
      TKFRAME_-64056_ANGLES           = ( 0.0, 0.0, 0.0 )
      TKFRAME_-64056_AXES             = ( 1,   2,   3   )
      TKFRAME_-64056_UNITS            = 'DEGREES'

      FRAME_ORX_TAGSAM_WR             = -64057
      FRAME_-64057_NAME               = 'ORX_TAGSAM_WR'
      FRAME_-64057_CLASS              = 3
      FRAME_-64057_CLASS_ID           = -64057
      FRAME_-64057_CENTER             = -64
      CK_-64057_SCLK                  = -64
      CK_-64057_SPK                   = -64

      FRAME_ORX_TAGSAM                = -64050
      FRAME_-64050_NAME               = 'ORX_TAGSAM'
      FRAME_-64050_CLASS              = 4
      FRAME_-64050_CLASS_ID           = -64050
      FRAME_-64050_CENTER             = -64
      TKFRAME_-64050_SPEC             = 'ANGLES'
      TKFRAME_-64050_RELATIVE         = 'ORX_TAGSAM_WR'
      TKFRAME_-64050_ANGLES           = ( 0.0, 0.0, -90.0 )
      TKFRAME_-64050_AXES             = ( 1,   3,     2   )
      TKFRAME_-64050_UNITS            = 'DEGREES'

   \begintext


Antenna Frames
-----------------------------------------------------------

   The antenna frames -- ORX_HGA, ORX_MGA, ORX_LGA_PX, and ORX_LGA_MX
   -- are defined as follows:

      -  +Z axis is along the antenna boresight

      -  +X axis is along the antenna pattern clock angle reference
         axis

      -  +Y axis completes the right hand frame

      -  the origin of the frame is at the intersection of the
         boresight and the outer rim (HGA, MGA) or outer plate (LGAs)
         plane.

   This diagrams illustrate the antenna frames:

      +Y side view:
      -------------

                                  +Zsc ^      +Xlgamx    +Zlgamx
                   +Y solar            |     ^         ^
                     array  | Payload  |      `.     .'
                            |  Deck  __|__      `. .'  45 deg
                     +Xhga ^|       /  |  \       o   ---
                           || <--------o ----------.
                        .' ||+Xsc       +Ysc       |
             +Zhga    .'   ||                      |
                  <--------x|                      |
                       .    |                      |
                        `. ||                      |
                          `||                      |
                   ---   .-oo----------------------'
              16 deg  .-` .  `.  45 deg     |
                    <'  .'   ' `.       ---'  Main Engine
             +Zmga    .'      '  v +Xlgamx
                     v         v
                  +Zlgapx        +Xmga
                                            +Ysc, +Ymga, +Ylgapx,
                                          and +Ylgamx are out of the page.

                                          +Xhga is 30 deg above the page.

                                           +Yhga is into the page.

   As seen on the diagram

      -  the HGA frame is nominally rotated from the s/c frame by
         +90 degrees about Y, then by -150 about Z.

      -  the MGA frame is nominally rotated from the s/c frame by
         +106 degrees about Y.

      -  the LGA_PX frame is nominally rotated from the s/c frame by
         +135 degrees about Y.

      -  the LGA_MX frame is nominally rotated from the s/c frame by
         -45 degrees about Y.

   The set of keywords below defined the HGA frame as a fixed offset
   frame relative to the s/c frame in the FK versions 0.2-0.6:

      tkframe_-64060_spec             = 'angles'
      tkframe_-64060_relative         = 'orx_spacecraft'
      tkframe_-64060_angles           = ( 0.0, -90.0, 150.0 )
      tkframe_-64060_axes             = ( 1,     2,     3   )
      tkframe_-64060_units            = 'degrees'

   The following DCM rotating from the spacecraft frame to the HGA
   frame was provided in [9]:

   ORX_HGA (SMRF to HGA)

   -0.00136235013386834       -0.500001379261022         0.866023535903724
    0.00179421940208591       -0.866024167790371        -0.499998921578570
    0.999997462386205          0.000872662633034915      0.00207694031666228

   This DCM is incorporated in the HGA frame definition below.

   The sets of keywords below define the antenna frames as fixed offset
   frames relative to the s/c frame.

   \begindata

      FRAME_ORX_HGA                   = -64060
      FRAME_-64060_NAME               = 'ORX_HGA'
      FRAME_-64060_CLASS              = 4
      FRAME_-64060_CLASS_ID           = -64060
      FRAME_-64060_CENTER             = -64
      TKFRAME_-64060_SPEC             = 'MATRIX'
      TKFRAME_-64060_RELATIVE         = 'ORX_SPACECRAFT'
      TKFRAME_-64060_MATRIX           = (

   -0.00136235013386834       -0.500001379261022         0.866023535903724
    0.00179421940208591       -0.866024167790371        -0.499998921578570
    0.999997462386205          0.000872662633034915      0.00207694031666228

                                        )

      FRAME_ORX_MGA                   = -64061
      FRAME_-64061_NAME               = 'ORX_MGA'
      FRAME_-64061_CLASS              = 4
      FRAME_-64061_CLASS_ID           = -64061
      FRAME_-64061_CENTER             = -64
      TKFRAME_-64061_SPEC             = 'ANGLES'
      TKFRAME_-64061_RELATIVE         = 'ORX_SPACECRAFT'
      TKFRAME_-64061_ANGLES           = ( 0.0, 0.0, -106.0 )
      TKFRAME_-64061_AXES             = ( 1,   3,      2   )
      TKFRAME_-64061_UNITS            = 'DEGREES'

      FRAME_ORX_LGA_PX                = -64062
      FRAME_-64062_NAME               = 'ORX_LGA_PX'
      FRAME_-64062_CLASS              = 4
      FRAME_-64062_CLASS_ID           = -64062
      FRAME_-64062_CENTER             = -64
      TKFRAME_-64062_SPEC             = 'ANGLES'
      TKFRAME_-64062_RELATIVE         = 'ORX_SPACECRAFT'
      TKFRAME_-64062_ANGLES           = ( 0.0, 0.0, -135.0 )
      TKFRAME_-64062_AXES             = ( 1,   3,      2   )
      TKFRAME_-64062_UNITS            = 'DEGREES'

      FRAME_ORX_LGA_MX                = -64063
      FRAME_-64063_NAME               = 'ORX_LGA_MX'
      FRAME_-64063_CLASS              = 4
      FRAME_-64063_CLASS_ID           = -64063
      FRAME_-64063_CENTER             = -64
      TKFRAME_-64063_SPEC             = 'ANGLES'
      TKFRAME_-64063_RELATIVE         = 'ORX_SPACECRAFT'
      TKFRAME_-64063_ANGLES           = ( 0.0, 0.0, 45.0 )
      TKFRAME_-64063_AXES             = ( 1,   3,    2   )
      TKFRAME_-64063_UNITS            = 'DEGREES'

   \begintext


Engineering Instrument Frames
-----------------------------------------------------------

NAVCAM and STOWCAM Frames

   The engineering camera frames -- ORX_NAVCAM1, ORX_NAVCAM2, and
   ORX_STOWCAM -- are defined as follows:

      -  +Z axis is along the camera boresight

      -  +X axis is parallel to the CCD lines

      -  +Y axis completes the right hand frame and is parallel to the
         CCD columns

      -  the origin of the frame is at the camera's focal point

   This diagram illustrates the engineering camera frames:

      +Z side view:
      -------------

                           .-------.       .-------.
                           |        \.___./ TAGSAM |
                           |         |___|         |       ..--
                            .o.o                   | ..--'' 10 deg
                          .'.'\ \        +Zstc  ..o|'    ------
                        <'<'   \ \          <-''   \
                  +Xnc2 +Xnc1   v v    o-------->   \
                            +Ync2 +Ync1|+Zsc  +Ysc | v
                           |           |           | +Xstc
        -Y solar           |           |           |           +Y solar
          array            |      .----|----.      |             array
      ====================@`----.'     v     `.----'@====================
                               `-  +Xsc  ------'
                                  `-.     .-'
                                     `-.-'  HGA


                            +Zsc and +Ystc are out of the page.
                      +Znc1 is out of the page and tilted 6 deg towards +Xsc.
                      +Znc2 is out of the page and tilted 14 deg towards -Xsc.

   As seen on the diagram

      -  the NAVCAM1 frame is nominally rotated from the s/c frame by
         +6 degrees about Y, then -70 degrees about Z

      -  the NAVCAM2 frame is nominally rotated from the s/c frame by
         -14 degrees about Y, then -73 degrees about Z

      -  the STOWCAM frame is nominally rotated from the s/c frame
         first by +10 degrees about Z, then by +90 degrees about X.

   This set of angles for the STOWCAM frame is incorporated into its
   definition below.

   The sets of keywords below defined the NAVCAM frames as fixed offset
   frames relative to the s/c frame in the FK versions 0.2-0.6:

      tkframe_-64081_spec             = 'angles'
      tkframe_-64081_relative         = 'orx_spacecraft'
      tkframe_-64081_angles           = ( 0.0, -6.0,  70.0 )
      tkframe_-64081_axes             = ( 1,    2,     3   )
      tkframe_-64081_units            = 'degrees'

      tkframe_-64082_spec             = 'angles'
      tkframe_-64082_relative         = 'orx_spacecraft'
      tkframe_-64082_angles           = ( 0.0, 14.0,  73.0 )
      tkframe_-64082_axes             = ( 1,    2,     3   )
      tkframe_-64082_units            = 'degrees'

   The following DCMs (direction cosine matrices) rotating from the 
   spacecraft frame to the NAVCAM camera frames were provided in [9]:

   ORX_NAVCAM1 (SMRF to BS)

    0.345010935305354        -0.938116549358358        -0.0300797995287833
    0.934177910465257         0.346316318120028        -0.085887364626901
    0.0909894835598683        0.0015321957298265        0.995850674678565
           
   ORX_NAVCAM2 (SMRF to BS)

    0.287137101790462        -0.955410463675092         0.068870390412138
    0.925204398436251         0.295243065474203         0.238386982454180
   -0.248090922626339        -0.00473055911513514       0.968725201448207
           
   These DCMs are incorporated in the NAVCAM frame definitions below.

   \begindata

      FRAME_ORX_NAVCAM1               = -64081
      FRAME_-64081_NAME               = 'ORX_NAVCAM1'
      FRAME_-64081_CLASS              = 4
      FRAME_-64081_CLASS_ID           = -64081
      FRAME_-64081_CENTER             = -64
      TKFRAME_-64081_SPEC             = 'MATRIX'
      TKFRAME_-64081_RELATIVE         = 'ORX_SPACECRAFT'
      TKFRAME_-64081_MATRIX           = (

    0.345010935305354        -0.938116549358358        -0.0300797995287833
    0.934177910465257         0.346316318120028        -0.085887364626901
    0.0909894835598683        0.0015321957298265        0.995850674678565
                                        )

      FRAME_ORX_NAVCAM2               = -64082
      FRAME_-64082_NAME               = 'ORX_NAVCAM2'
      FRAME_-64082_CLASS              = 4
      FRAME_-64082_CLASS_ID           = -64082
      FRAME_-64082_CENTER             = -64
      TKFRAME_-64082_SPEC             = 'MATRIX'
      TKFRAME_-64082_RELATIVE         = 'ORX_SPACECRAFT'
      TKFRAME_-64082_MATRIX           = (

    0.287137101790462        -0.955410463675092         0.068870390412138
    0.925204398436251         0.295243065474203         0.238386982454180
   -0.248090922626339        -0.00473055911513514       0.968725201448207
           
                                        )

      FRAME_ORX_STOWCAM               = -64071
      FRAME_-64071_NAME               = 'ORX_STOWCAM'
      FRAME_-64071_CLASS              = 4
      FRAME_-64071_CLASS_ID           = -64071
      FRAME_-64071_CENTER             = -64
      TKFRAME_-64071_SPEC             = 'ANGLES'
      TKFRAME_-64071_RELATIVE         = 'ORX_SPACECRAFT'
      TKFRAME_-64071_ANGLES           = ( 0.0, -10.0, -90.0 )
      TKFRAME_-64071_AXES             = ( 2,     3,     1   )
      TKFRAME_-64071_UNITS            = 'DEGREES'

   \begintext


LIDAR Frames

   The LIDAR "optical" frames -- ORX_LIDAR-1 and ORX_LIDAR-2, -- and
   LIDAR "alignment cube" frames -- ORX_LIDAR-1_CUBE, and
   ORX_LIDAR-2_CUBE, -- are defined as follows:

      -  +Z axis is along the instrument boresight and co-aligned with
         with the s/c +Z axis

      -  +X axis is nominally co-aligned with the s/c +X axis

      -  +Y axis completes the right hand frame

      -  the origin of the frame is at the LIDAR receiver focal point.

   All four frames are nominally co-aligned with the spacecraft frame.

   This diagram illustrates the LIDAR frames:

      +Z side view:
      -------------

                           .-------.       .-------.
                           |        \.___./ TAGSAM |
                           |         |___|         |
                           |                       |
                           |o----->+Yldr2          |
                           |o----->+Yldr1          |
                           ||          o-------->  |
                     +Xldr2 v          |+Zsc  +Ysc |
                     +Xldr1 v          |           |
        -Y solar           |           |           |           +Y solar
          array            |      .----|----.      |             array
      ====================@`----.'     v     `.----'@====================
                               `-  +Xsc  ------'
                                  `-.     .-'
                                     `-.-'  HGA


                              +Zldr1, and +Zldr2 are out of the page.

   The sets of keywords below were used to define the LIDAR "alignment
   cube" frames as fixed offset frames relative to the s/c frame and
   the LIDAR "optical" frames as fixed offset frames relative to the
   corresponding "alignment cube" frames in the FK versions 0.2-0.6:

      tkframe_-64074_spec             = 'angles'
      tkframe_-64074_relative         = 'orx_spacecraft'
      tkframe_-64074_angles           = ( 0.0, 0.0, 0.0 )
      tkframe_-64074_axes             = ( 1,   2,   3   )
      tkframe_-64074_units            = 'degrees'

      tkframe_-64075_spec             = 'angles'
      tkframe_-64075_relative         = 'orx_spacecraft'
      tkframe_-64075_angles           = ( 0.0, 0.0, 0.0 )
      tkframe_-64075_axes             = ( 1,   2,   3   )
      tkframe_-64075_units            = 'degrees'

      tkframe_-64072_spec             = 'angles'
      tkframe_-64072_relative         = 'orx_lidar-1_cube'
      tkframe_-64072_angles           = ( 0.0, 0.0, 0.0 )
      tkframe_-64072_axes             = ( 1,   2,   3   )
      tkframe_-64072_units            = 'degrees'

      tkframe_-64073_spec             = 'angles'
      tkframe_-64073_relative         = 'orx_lidar-2_cube'
      tkframe_-64073_angles           = ( 0.0, 0.0, 0.0 )
      tkframe_-64073_axes             = ( 1,   2,   3   )
      tkframe_-64073_units            = 'degrees'

   The following DCMs rotating from the spacecraft frame to the LIDAR
   "alignment cube" frames and from the LIDAR "alignment cube" frames
   to the LIDAR "optical" frames were provided in [9]:

   ORX_LIDAR-1_CUBE (SMRF to cube)

    0.999995589927836         0.00292844618299731       0.000494295288199911
   -0.00292886509652385       0.999995350538855         0.000848911019126053
   -0.00049180699975951      -0.000850354999584183      0.999999517511008
           
   ORX_LIDAR1 (Cube to Boresight)

    0.999986569968185         0.00237953062852507      -0.00460409787586598
   -0.0023734346726179        0.999996300224219         0.0013290394005187
    0.00460724333169622      -0.00131809402594255       0.999988517902591
           
   ORX_LIDAR-2_CUBE (SMRF to cube)

    0.999987054446271         0.00508666816844123      -0.000129409481403825
   -0.00508670730223901       0.999987016444748        -0.000303892666042216
    0.000127862000057693      0.000304547000137416      0.999999945451215
           
   ORX_LIDAR2 (Cube to Boresight)

    0.999985523384945         0.00420170332723139      -0.00336135533494673
   -0.00420167820615673       0.999991172805531         0.0000145351785342687
    0.00336138673611752      -0.000000411634660088989   0.999994350523562
           
   These DCMs are incorporated in the definitions below.

   \begindata

      FRAME_ORX_LIDAR-1_CUBE          = -64074
      FRAME_-64074_NAME               = 'ORX_LIDAR-1_CUBE'
      FRAME_-64074_CLASS              = 4
      FRAME_-64074_CLASS_ID           = -64074
      FRAME_-64074_CENTER             = -64
      TKFRAME_-64074_SPEC             = 'MATRIX'
      TKFRAME_-64074_RELATIVE         = 'ORX_SPACECRAFT'
      TKFRAME_-64074_MATRIX           = (

    0.999995589927836         0.00292844618299731       0.000494295288199911
   -0.00292886509652385       0.999995350538855         0.000848911019126053
   -0.00049180699975951      -0.000850354999584183      0.999999517511008
                                        )

      FRAME_ORX_LIDAR-2_CUBE          = -64075
      FRAME_-64075_NAME               = 'ORX_LIDAR-2_CUBE'
      FRAME_-64075_CLASS              = 4
      FRAME_-64075_CLASS_ID           = -64075
      FRAME_-64075_CENTER             = -64
      TKFRAME_-64075_SPEC             = 'MATRIX'
      TKFRAME_-64075_RELATIVE         = 'ORX_SPACECRAFT'
      TKFRAME_-64075_MATRIX           = (

    0.999987054446271         0.00508666816844123      -0.000129409481403825
   -0.00508670730223901       0.999987016444748        -0.000303892666042216
    0.000127862000057693      0.000304547000137416      0.999999945451215
                                        )

      FRAME_ORX_LIDAR-1               = -64072
      FRAME_-64072_NAME               = 'ORX_LIDAR-1'
      FRAME_-64072_CLASS              = 4
      FRAME_-64072_CLASS_ID           = -64072
      FRAME_-64072_CENTER             = -64
      TKFRAME_-64072_SPEC             = 'MATRIX'
      TKFRAME_-64072_RELATIVE         = 'ORX_LIDAR-1_CUBE'
      TKFRAME_-64072_MATRIX           = (

    0.999986569968185         0.00237953062852507      -0.00460409787586598
   -0.0023734346726179        0.999996300224219         0.0013290394005187
    0.00460724333169622      -0.00131809402594255       0.999988517902591
                                        )

      FRAME_ORX_LIDAR-2               = -64073
      FRAME_-64073_NAME               = 'ORX_LIDAR-2'
      FRAME_-64073_CLASS              = 4
      FRAME_-64073_CLASS_ID           = -64073
      FRAME_-64073_CENTER             = -64
      TKFRAME_-64073_SPEC             = 'MATRIX'
      TKFRAME_-64073_RELATIVE         = 'ORX_LIDAR-2_CUBE'
      TKFRAME_-64073_MATRIX           = (

    0.999985523384945         0.00420170332723139      -0.00336135533494673
   -0.00420167820615673       0.999991172805531         0.0000145351785342687
    0.00336138673611752      -0.000000411634660088989   0.999994350523562
                                        )

   \begintext


SRC Frame
-----------------------------------------------------------

   The SRC frame -- ORX_SRC -- is defined as follows:

      -  +X axis is along the SRC axis, pointing from the lid towards
         the base

      -  +Z axis points from the lid hinge towards the SRC axis

      -  +Y axis completes the right hand frame

      -  the origin of the frame is at the center of the interface
         plate.

   This diagram illustrates the SRC frame in the attached configuration:

      +Z side view:
      -------------

                           .-------. +Zsrc .-------.
                           |        \._^_./        |
                           |         |_|_| TAGSAM  |
                           |Payload    |           |
                           | Deck     .|.          |
                           |        .' | `.   +Ysc |
                           |  <--------*-------->  |
                           |+Ysc    `. | .'        |
                           |          `|` SRC      |
        -Y solar           |           |           |           +Y solar
          array            |      .----|----.      |             array
      ====================@`----.'     v     `.----'@====================
                               `-  +Xsc   ------'
                                  `-.     .-'
                                     `-.-'  HGA

                                                 +Zsc is out of the page.
                                                 +Xsrc is into the page.

   As seen on the diagram the SRC frame is nominally rotated from the
   s/c frame first by 180 degrees about X, then by -90 degrees about Y.

   The sets of keywords below define the SRC frame as a fixed offset
   frame relative to the s/c frame.

   \begindata

      FRAME_ORX_SRC                   = -64090
      FRAME_-64090_NAME               = 'ORX_SRC'
      FRAME_-64090_CLASS              = 4
      FRAME_-64090_CLASS_ID           = -64090
      FRAME_-64090_CENTER             = -64
      TKFRAME_-64090_SPEC             = 'ANGLES'
      TKFRAME_-64090_RELATIVE         = 'ORX_SPACECRAFT'
      TKFRAME_-64090_ANGLES           = ( 0.0, 180.0, 90.0 )
      TKFRAME_-64090_AXES             = ( 3,     1,    2   )
      TKFRAME_-64090_UNITS            = 'DEGREES'

   \begintext


Star Tracker Frames
-----------------------------------------------------------

   The star tracker frames -- ORX_STU1 and ORX_STU2 -- are defined as
   follows (see [7]):

      -  +Z axis is along the star tracker boresight

      -  +X axis is parallel to the CCD rows and points in the
         direction of increasing column index

      -  +Y axis completes the right hand frame, is parallel to the CCD
         columns, and points in the direction of increasing row index

      -  the origin of the frame is at the tracker focal point

   This diagram illustrates the star tracker frames:

      +Z side view:
      -------------

               `.<-------------------->| ~42.7 deg             
                 `.       \<---------->| ~28.4 deg
                   `.      \            
                             +Zstu1
                   +Zstu2    ^        +Ystu2
                         ^.   \     .^
                           `.  \  .'  .-> +Xstu1
                             `. \' .-'
                           .---o x'        .-------.
                           |        \.___./        |
                           |         |___| TAGSAM  |
                           |                       |
                           |          ...          |
                           |       +Zsc  `.   +Ysc |
                           |        |  o-------->  |
                           |        `. | .'        |
                           | Payload  `|` SRC      |
        -Y solar           |  Deck     |           |           +Y solar
          array            |      .----|----.      |             array
      ====================@`----.'     v     `.----'@====================
                               `-  +Xsc   ------'
                                  `-.     .-'
                                     `-.-'  HGA

                                          +Zsc is out of the page.
                                    +Zstu1 points ~18.5 deg below the page.
                                    +Zstu2 points ~19.9 deg below the page.
                                  +Ystu1 is approximately into the page.
                                  +Xstu2 is approximately out of the page.


   The following DCMs rotating from the tracker functional reference 
   frames (FRF) to the spacecraft frame were provided in [7]:


                    |  -0.485020     0.261584    -0.834464  |
      M stu1->sc =  |   0.873783     0.183666    -0.450299  |
                    |   0.035472    -0.947545    -0.317649  |


                    |  -0.280952    -0.666372    -0.690662  |
      M stu2->sc =  |  -0.195928     0.744317    -0.638440  |
                    |   0.939509    -0.044051    -0.339679  |

   The sets of keywords below defined the STU frames as fixed offset
   frames relative to the s/c frame in the FK version 0.6:

      tkframe_-64091_spec             = 'matrix'
      tkframe_-64091_relative         = 'orx_spacecraft'
      tkframe_-64091_matrix           = (

                       -0.485020     0.873783     0.035472    
                        0.261584     0.183666    -0.947545    
                       -0.834464    -0.450299    -0.317649   

                                        )

      tkframe_-64092_spec             = 'matrix'
      tkframe_-64092_relative         = 'orx_spacecraft'
      tkframe_-64092_matrix           = (

                       -0.280952    -0.195928     0.939509
                       -0.666372     0.744317    -0.044051
                       -0.690662    -0.638440    -0.339679   

                                        )

   The following DCMs rotating from the spacecraft frame to the STU 
   frames were provided in [9]:

   ORX_STU1 (SMRF to STU1)

   -0.485020168492331         0.873783271279091         0.0354715518194469
    0.261583697956664         0.183665964053057        -0.947544607188379
   -0.8344635433133          -0.450299465335314        -0.317649156145176
           
   ORX_STU2 (SMRF to STU2)

   -0.280952496111228        -0.195927810109299         0.939509440162602
   -0.666372421639805         0.744316648862432        -0.0440513553038015
   -0.690661632499427        -0.638439519024296        -0.339678509684163

   These DCMs are incorporated in the STU frame definitions below.

   \begindata

      FRAME_ORX_STU1                  = -64091
      FRAME_-64091_NAME               = 'ORX_STU1'
      FRAME_-64091_CLASS              = 4
      FRAME_-64091_CLASS_ID           = -64091
      FRAME_-64091_CENTER             = -64
      TKFRAME_-64091_SPEC             = 'MATRIX'
      TKFRAME_-64091_RELATIVE         = 'ORX_SPACECRAFT'
      TKFRAME_-64091_MATRIX           = (

   -0.485020168492331         0.873783271279091         0.0354715518194469
    0.261583697956664         0.183665964053057        -0.947544607188379
   -0.8344635433133          -0.450299465335314        -0.317649156145176
                                        )

      FRAME_ORX_STU2                  = -64092
      FRAME_-64092_NAME               = 'ORX_STU2'
      FRAME_-64092_CLASS              = 4
      FRAME_-64092_CLASS_ID           = -64092
      FRAME_-64092_CENTER             = -64
      TKFRAME_-64092_SPEC             = 'MATRIX'
      TKFRAME_-64092_RELATIVE         = 'ORX_SPACECRAFT'
      TKFRAME_-64092_MATRIX           = (

   -0.280952496111228        -0.195927810109299         0.939509440162602
   -0.666372421639805         0.744316648862432        -0.0440513553038015
   -0.690661632499427        -0.638439519024296        -0.339678509684163

                                        )

   \begintext


OTES Frames
-----------------------------------------------------------

   The OTES frame -- ORX_OTES -- is defined as follows:

      -  +Z axis is along the instrument boresight and is nominally
         co-aligned with the s/c +Z

      -  +X axis is nominally co-aligned with the s/c +X

      -  Y axis completes the right hand frame

      -  the origin of the frame is TBD

   This diagram illustrates the OTES frame:

      +Z side view:
      -------------

                           .-------.   +Zotes -- +Yotes
                           | TAGSAM \.___./  o----->
                           |         |___|   |     |
                           |Payload          |
                           | Deck     ...    v +Xotes
                           |       +Zsc  `.
                           |        |  o-------->  |
                           |        `. | .'   +Ysc |
                           |          `|` SRC      |
        -Y solar           |           |           |           +Y solar
          array            |      .----|----.      |             array
      ====================@`----.'     v     `.----'@====================
                               `-  +Xsc   ------'
                                  `-.     .-'
                                     `-.-'  HGA

                                       +Zsc and +Zotes are out of the page.


   As seen on the diagram the OTES frame is nominally co-aligned with
   the s/c frame.

   The set of keywords below defined the OTES frame as a fixed offset
   frame relative to the s/c frame in the FK versions 0.2-0.6:

      tkframe_-64310_spec             = 'angles'
      tkframe_-64310_relative         = 'orx_spacecraft'
      tkframe_-64310_angles           = ( 0.0, 0.0, 0.0 )
      tkframe_-64310_axes             = ( 1,   2,   3   )
      tkframe_-64310_units            = 'degrees'

   The following DCM rotating from the spacecraft frame to the OTES
   frame was provided in [9]:

   ORX_OTES (SMRF to OTES)

    0.999999833414527         0.000464833503392833      0.000342199845865071
   -0.000464805131795556      0.999999888534893        -0.000082984299032226
   -0.000342238381604172      0.000082825228963787      0.999999938006435

   This DCM is incorporated in the definition below.

   \begindata

      FRAME_ORX_OTES                  = -64310
      FRAME_-64310_NAME               = 'ORX_OTES'
      FRAME_-64310_CLASS              = 4
      FRAME_-64310_CLASS_ID           = -64310
      FRAME_-64310_CENTER             = -64
      TKFRAME_-64310_SPEC             = 'MATRIX'
      TKFRAME_-64310_RELATIVE         = 'ORX_SPACECRAFT'
      TKFRAME_-64310_MATRIX           = (

    0.999999833414527         0.000464833503392833      0.000342199845865071
   -0.000464805131795556      0.999999888534893        -0.000082984299032226
   -0.000342238381604172      0.000082825228963787      0.999999938006435

                                        )

   \begintext


OVIRS Frames
-----------------------------------------------------------

   Three frames are defined for OVIRS -- the OVIRS base frame,
   the OVIRS science port frame, and the OVIRS Sun Calibration port
   frame.

   The OVIRS base and science port frames -- ORX_OVIRS and
   ORX_OVIRS_SCI -- are nominally co-aligned and defined as follows:

      -  +Z axis is along the science port boresight and is nominally
         co-aligned with the s/c +Z axis

      -  +X axis is nominally co-aligned with the s/c +X axis

      -  +Y axis completes the right hand frame

      -  the origin of the frame is at the science port optics focal
         point

   The OVIRS Sun calibration port frame -- ORX_OVIRS_SUN -- is defined
   as follows:

      -  +Z axis is along the Sun calibration port boresight and is
         nominally 5 degrees off the s/c +Y axis towards the s/c +X
         axis.

      -  -Y axis is nominally co-aligned with the science port
         boresight

      -  +X axis completes the right hand frame

      -  the origin of the frame is at the Sun calibration port optics
         focal point

   This diagram illustrates the OVIRS frames:

      +Z side view:
      -------------
                                                    +Ybase
                                                    +Ysci
                                              ox..-->
                           .-------.       .--| - ``->  5 deg
                           | TAGSAM \._      /|        +Zsun
                           |                v v +Xbase
                           |Payload    +Xsun    +Xsci
                           | Deck     ...          |
                           |       +Zsc  `.   +Ysc |
                           |        |  o-------->  |
                           |        `. | .'        |
                           |          `|` SRC      |
        -Y solar           |           |           |           +Y solar
          array            |      .----|----.      |             array
      ====================@`----.'     v     `.----'@====================
                               `-  +Xsc   ------'
                                  `-.     .-'
                                     `-.-'  HGA

                                           +Zsc, +Zbase, and +Zsci are
                                                 out of the page.

                                             +Ysun is into the page.

   As seen on the diagram

      -  the OVIRS base frame is co-aligned the s/c frame

      -  the OVIRS science port frame is co-aligned with the OVIRS base
         frame

      -  the OVIRS Sun calibration port frame is rotated from the
         the OVIRS base frame first by -90 degrees about X, then
         by +5 degrees about Y.

   The sets of keywords below define the OVIRS base frame as a fixed
   offset frame relative to the s/c frame, and the OVIRS science and
   Sun calibration port frames as fixed offset frames relative to the
   OVIRS base frame. The OVIRS base and Sun calibration port frame
   definitions below incorporate the nominal alignment angles.

   The sets of keywords below defined the OVIRS science frame as a fixed 
   offset frame relative to the OVIRS base frame in the FK versions 
   0.2-0.6:

      tkframe_-64321_spec             = 'angles'
      tkframe_-64321_relative         = 'orx_ovirs'
      tkframe_-64321_angles           = ( 0.0, 0.0, 0.0 )
      tkframe_-64321_axes             = ( 1,   2,   3   )
      tkframe_-64321_units            = 'degrees'

   The following DCM rotating from the OVIRS base frame to the OVIRS
   science frame was provided in [9]:

   ORX_OVIRS_SCI (OVIRS to OVIRS BS)

    0.999990380647511         -0.00422583594280137       0.00117512681531294
    0.0042272896973322         0.999990299403484        -0.00123738463937246
   -0.00116988643139772        0.00124234033801287       0.999998543977051

   This DCM is incorporated in the OVIRS science frame definition below.

   \begindata

      FRAME_ORX_OVIRS                 = -64320
      FRAME_-64320_NAME               = 'ORX_OVIRS'
      FRAME_-64320_CLASS              = 4
      FRAME_-64320_CLASS_ID           = -64320
      FRAME_-64320_CENTER             = -64
      TKFRAME_-64320_SPEC             = 'ANGLES'
      TKFRAME_-64320_RELATIVE         = 'ORX_SPACECRAFT'
      TKFRAME_-64320_ANGLES           = ( 0.0, 0.0, 0.0 )
      TKFRAME_-64320_AXES             = ( 1,   2,   3   )
      TKFRAME_-64320_UNITS            = 'DEGREES'

      FRAME_ORX_OVIRS_SCI             = -64321
      FRAME_-64321_NAME               = 'ORX_OVIRS_SCI'
      FRAME_-64321_CLASS              = 4
      FRAME_-64321_CLASS_ID           = -64321
      FRAME_-64321_CENTER             = -64
      TKFRAME_-64321_SPEC             = 'MATRIX'
      TKFRAME_-64321_RELATIVE         = 'ORX_OVIRS'
      TKFRAME_-64321_MATRIX           = ( 

    0.999990380647511         -0.00422583594280137       0.00117512681531294
    0.0042272896973322         0.999990299403484        -0.00123738463937246
   -0.00116988643139772        0.00124234033801287       0.999998543977051

                                        )

      FRAME_ORX_OVIRS_SUN             = -64322
      FRAME_-64322_NAME               = 'ORX_OVIRS_SUN'
      FRAME_-64322_CLASS              = 4
      FRAME_-64322_CLASS_ID           = -64322
      FRAME_-64322_CENTER             = -64
      TKFRAME_-64322_SPEC             = 'ANGLES'
      TKFRAME_-64322_RELATIVE         = 'ORX_OVIRS'
      TKFRAME_-64322_ANGLES           = ( 0.0,  90.0, -5.0 )
      TKFRAME_-64322_AXES             = ( 3,    1,     2   )
      TKFRAME_-64322_UNITS            = 'DEGREES'

   \begintext


REXIS Frames
-----------------------------------------------------------

   Two frames are defined for REXIS -- the spectrometer frame and Solar
   X-ray Monitor (SXM) frame.

   The REXIS spectrometer frame -- ORX_REXIS -- is defined as follows:

      -  +Z axis is along the instrument boresight and is nominally
         co-aligned with the s/c +Z axis.

      -  +X axis is nominally rotated 10 degrees off the s/c +X axis
         towards the s/c +Y axis

      -  +Y axis completes the right hand frame

      -  the origin of the frame is at the center of the spectrometer
         detector.

   The REXIS SXM frame -- ORX_REXIS_SXM -- is defined as follows:

      -  +Z axis is along the instrument boresight and is nominally
         co-aligned with the s/c +X axis.

      -  +X axis is nominally co-aligned with the s/c -Z axis.

      -  +Y axis completes the right hand frame

      -  the origin of the frame is at the center of the SXM detector.

   This diagram illustrates the REXIS frames:

      +Z side view:
      -------------

                           .-------.       .-------.
                           |        \.___./        |
                           |         |___| TAGSAM  |
                           |Payload                |
                           | Deck     ...          |     +Yrexis
                           |       +Zsc  `.   +Ysc |   .>
                           |        |  o-------->  |.-'  10 deg
                           |        `. | .'       o'    ----
                           |          `|` SRC      \
        -Y solar           |           |           |\ +Xrexis  +Y solar
          array            |      .----|----.      | v            array
      ====================@`----.'     v     `.---x-----> ==============
                               `-  +Xsc   ------' |     +Ysxm
                                  `-.     .-'     |
                                HGA  `-.-'        v +Zsxm


                                        +Zsc and +Zrexis are out of the page.
                                              +Xsxm is into the page.

   As seen on the diagram

      -  the REXIS spectrometer frame is rotated from the s/c frame by
         +10 degrees about Z

      -  the REXIS SXM frame is rotated from the s/c frame by
         +90 degrees about Y

   The sets of keywords below define the REXIS frames as fixed offset
   frames relative to the s/c frame.

   \begindata

      FRAME_ORX_REXIS                 = -64330
      FRAME_-64330_NAME               = 'ORX_REXIS'
      FRAME_-64330_CLASS              = 4
      FRAME_-64330_CLASS_ID           = -64330
      FRAME_-64330_CENTER             = -64
      TKFRAME_-64330_SPEC             = 'ANGLES'
      TKFRAME_-64330_RELATIVE         = 'ORX_SPACECRAFT'
      TKFRAME_-64330_ANGLES           = ( 0.0, 0.0, -10.0 )
      TKFRAME_-64330_AXES             = ( 1,   2,     3   )
      TKFRAME_-64330_UNITS            = 'DEGREES'

      FRAME_ORX_REXIS_SXM             = -64340
      FRAME_-64340_NAME               = 'ORX_REXIS_SXM'
      FRAME_-64340_CLASS              = 4
      FRAME_-64340_CLASS_ID           = -64340
      FRAME_-64340_CENTER             = -64
      TKFRAME_-64340_SPEC             = 'ANGLES'
      TKFRAME_-64340_RELATIVE         = 'ORX_SPACECRAFT'
      TKFRAME_-64340_ANGLES           = ( 0.0, 0.0, -90.0 )
      TKFRAME_-64340_AXES             = ( 1,   3,     2   )
      TKFRAME_-64340_UNITS            = 'DEGREES'

   \begintext


OCAMS Frames
-----------------------------------------------------------

   The OCAMS PolyCam, MapCam, and SamCam frames -- ORX_OCAMS_POLYCAM, 
   ORX_OCAMS_MAPCAM, and ORX_OCAMS_SAMCAM - are defined by the camera 
   designs as follows:

      -  +Z axis is the camera boresight

      -  +X axis is nominally co-aligned with the s/c +X axis

      -  +Y axis completes the right hand frame

      -  the origin of the frame is at the camera focal point.

   This diagram illustrates the camera frames:

      +Z side view:
      -------------

                           .-------.       .-------.
                           | TAGSAM \.___./        |
                           |         |___|         |
                           |Payload            o-------> +Ypoly
                           | Deck     ...      | o-------> +Ymap
                           |       +Zsc  `.    | |
                           |        |  o----o--->-> +Ysc
                           |    SRC `. | .' |  v |  +Ysam
                           |          `|`   |+Xp v
        -Y solar           |           |    v     +Xmap       +Y solar
          array            |      .----| +Xsam                  array
      ====================@`----.'     v     `.----'@====================
                               `-  +Xsc   ------'
                                  `-.     .-'
                                     `-.-'  HGA

                                 +Zsc, +Zpoly, and +Zmap are out of the page.

                                   +Zsam is out of the page and is tilted
                                      9.4 degrees towards s/c -Y.

   As seen on the diagram

      -  the POLYCAM frame is nominally co-aligned with the s/c frame

      -  the MAPCAM frame is nominally co-aligned with the s/c frame

      -  the SAMCAM frame is nominally rotated from the s/c frame by
         +9.4 degrees about X.

   The sets of keywords below defined the OCAMS frames as fixed offset
   frames relative to the s/c frame in the FK versions 0.1-0.6:

      tkframe_-64360_spec             = 'angles'
      tkframe_-64360_relative         = 'orx_spacecraft'
      tkframe_-64360_angles           = ( 0.0, 0.0, 0.0 )
      tkframe_-64360_axes             = ( 1,   2,   3   )
      tkframe_-64360_units            = 'degrees'

      tkframe_-64361_spec             = 'angles'
      tkframe_-64361_relative         = 'orx_spacecraft'
      tkframe_-64361_angles           = ( 0.0, 0.0, 0.0 )
      tkframe_-64361_axes             = ( 1,   2,   3   )
      tkframe_-64361_units            = 'degrees'

      tkframe_-64362_spec             = 'angles'
      tkframe_-64362_relative         = 'orx_spacecraft'
      tkframe_-64362_angles           = ( 0.0, 0.0, -9.4 )
      tkframe_-64362_axes             = ( 3,   2,    1   )
      tkframe_-64362_units            = 'degrees'

   The following DCMs rotating from the spacecraft frame to the OCAMS
   frames were provided in [9]:

   ORX_OCAMS_POLYCAM (SMRF to Polycam)

    0.999999740409513         0.000711200727811218     -0.000115647874696325
   -0.000711305783186799      0.99999933213616         -0.000910917843429874
    0.000114999952026067      0.000910999867966352      0.999999578427037
           
   ORX_OCAMS_MAPCAM (SMRF to Mapcam)

    0.999983324023583         0.00487269767051188      -0.00309975679015199
   -0.00487635958975303       0.999987420286694        -0.00117489808713995
    0.00309399287292796       0.00118999402331672       0.999994505546069
           
   ORX_OCAMS_SAMCAM (SMRF to Samcam)

    0.999997516478332         0.00135215140073223      -0.00177164436520027
   -0.00104866702547348       0.986903704297453         0.161307094516747
    0.00196655400051272      -0.161304836042056         0.986902671257307

   These DCMs are incorporated in the definitions below.

   \begindata

      FRAME_ORX_OCAMS_POLYCAM         = -64360
      FRAME_-64360_NAME               = 'ORX_OCAMS_POLYCAM'
      FRAME_-64360_CLASS              = 4
      FRAME_-64360_CLASS_ID           = -64360
      FRAME_-64360_CENTER             = -64
      TKFRAME_-64360_SPEC             = 'MATRIX'
      TKFRAME_-64360_RELATIVE         = 'ORX_SPACECRAFT'
      TKFRAME_-64360_MATRIX           = (

    0.999999740409513         0.000711200727811218     -0.000115647874696325
   -0.000711305783186799      0.99999933213616         -0.000910917843429874
    0.000114999952026067      0.000910999867966352      0.999999578427037
                                        )

      FRAME_ORX_OCAMS_MAPCAM          = -64361
      FRAME_-64361_NAME               = 'ORX_OCAMS_MAPCAM'
      FRAME_-64361_CLASS              = 4
      FRAME_-64361_CLASS_ID           = -64361
      FRAME_-64361_CENTER             = -64
      TKFRAME_-64361_SPEC             = 'MATRIX'
      TKFRAME_-64361_RELATIVE         = 'ORX_SPACECRAFT'
      TKFRAME_-64361_MATRIX           = (

    0.999983324023583         0.00487269767051188      -0.00309975679015199
   -0.00487635958975303       0.999987420286694        -0.00117489808713995
    0.00309399287292796       0.00118999402331672       0.999994505546069

                                        )

      FRAME_ORX_OCAMS_SAMCAM          = -64362
      FRAME_-64362_NAME               = 'ORX_OCAMS_SAMCAM'
      FRAME_-64362_CLASS              = 4
      FRAME_-64362_CLASS_ID           = -64362
      FRAME_-64362_CENTER             = -64
      TKFRAME_-64362_SPEC             = 'MATRIX'
      TKFRAME_-64362_RELATIVE         = 'ORX_SPACECRAFT'
      TKFRAME_-64362_MATRIX           = (

    0.999997516478332         0.00135215140073223      -0.00177164436520027
   -0.00104866702547348       0.986903704297453         0.161307094516747
    0.00196655400051272      -0.161304836042056         0.986902671257307

                                        )

   \begintext


OLA Frames
-----------------------------------------------------------

   Four frames are defined for OLA -- the OLA base frame, the
   articulating scan frame, and the high and low energy transmitter
   frames.

   Pending actual definitions, for the 0 scan position all OLA frames
   are defined to be co-aligned with each other and the s/c frame.

   The OLA base frame -- ORX_OLA_BASE -- is defined as follows:

      -  +Z axis is along the instrument boresight in the 0 scan
         position and is nominally co-aligned with the s/c +Z axis.

      -  +X axis is the azimuthal scan rotation axis and is nominally 
         co-aligned with the s/c +X axis.

      -  +Y axis completes the right hand frame  (OLA elevation)

   The OLA articulating scan frame -- ORX_OLA_ART -- is rotated from the
   OLA base frame about X by the scan angle and defined as follows:

      -  +Z axis is along the instrument boresight at any scan position

      -  +X axis is the azimuthal scan rotation axis and is nominally 
         co-aligned with the s/c +X axis.

      -  Y axis completes the right hand frame (OLA elevation)

   The OLA high and low energy transmitter frames -- ORX_OLA_HIGH and
   ORX_OLA_LOW -- are defined as follows:

      -  +Z axis is along the instrument boresight

      -  +X axis is the azimuthal scan rotation axis and is nominally 
         co-aligned with the +X s/c (OLA azimuth).

      -  Y axis completes the right hand frame (OLA elevation).

   The origin of all OLA frames is at the intersection of the scan axis
   and the optical axis.

   This diagram illustrates the OLA frames:

      +Z side view:
      -------------

                           .-------.       .-------.
                           |Payload \.___./        |
                           | Deck    |___| TAGSAM  |
                           |                       |
                           |          ...          |
                           |   +Yola*' +Zsc   +Ysc |
                           | o----->|  o-------->  |
                           | |      `. | .'        |
                           | |        `|` SRC      |
        -Y solar           | v +Xola*  |           |           +Y solar
          array            |      .----|----.      |             array
      ====================@`----.'     v     `.----'@====================
                               `-  +Xsc   ------'
                                  `-.     .-'
                                     `-.-'  HGA

                                       +Zsc and +Zola* are out of the page.

   As seen on the diagram, for 0 scan position all OLA frames are
   defined to be co-aligned with each other and the s/c frame.

   The sets of keywords below define the OLA base frame as a fixed
   offset frame relative to the s/c frame, the OLA articulating scan
   frame as a CK-based frame, the OLA high energy transmitter frame as
   a fixed offset frame relative to the OLA articulating scan frame,
   and the OLA low energy transmitter frame as a fixed offset frame
   relative to the OLA high energy transmitter frame.

   The sets of keywords below defined the OLA base frame as a fixed
   offset frame relative to the s/c frame in the FK versions 0.2-0.6:

      tkframe_-64400_spec             = 'angles'
      tkframe_-64400_relative         = 'orx_spacecraft'
      tkframe_-64400_angles           = ( 0.0, 0.0, 0.0 )
      tkframe_-64400_axes             = ( 1,   2,   3   )
      tkframe_-64400_units            = 'degrees'

   The following DCM rotating from the spacecraft frame to the OLA
   base frame was provided in [9]:

   ORX_OLA_BASE (SMRF to OLA Base)

    0.999998141206571         0.00142047884237437      -0.00130377270280556
   -0.00141930634779238       0.999998587969014         0.000899794125649581
    0.00130504900035608      -0.000897942000245002      0.999998745272848
 
   This DCM is incorporated in the OLA base frame definition below.

   \begindata

      FRAME_ORX_OLA_BASE              = -64400
      FRAME_-64400_NAME               = 'ORX_OLA_BASE'
      FRAME_-64400_CLASS              = 4
      FRAME_-64400_CLASS_ID           = -64400
      FRAME_-64400_CENTER             = -64
      TKFRAME_-64400_SPEC             = 'MATRIX'
      TKFRAME_-64400_RELATIVE         = 'ORX_SPACECRAFT'
      TKFRAME_-64400_MATRIX           = (

    0.999998141206571         0.00142047884237437      -0.00130377270280556
   -0.00141930634779238       0.999998587969014         0.000899794125649581
    0.00130504900035608      -0.000897942000245002      0.999998745272848

                                        )

      FRAME_ORX_OLA_ART               = -64401
      FRAME_-64401_NAME               = 'ORX_OLA_ART'
      FRAME_-64401_CLASS              = 3
      FRAME_-64401_CLASS_ID           = -64401
      FRAME_-64401_CENTER             = -64
      CK_-64401_SCLK                  = -64
      CK_-64401_SPK                   = -64

      FRAME_ORX_OLA_HIGH              = -64402
      FRAME_-64402_NAME               = 'ORX_OLA_HIGH'
      FRAME_-64402_CLASS              = 4
      FRAME_-64402_CLASS_ID           = -64402
      FRAME_-64402_CENTER             = -64
      TKFRAME_-64402_SPEC             = 'ANGLES'
      TKFRAME_-64402_RELATIVE         = 'ORX_OLA_ART'
      TKFRAME_-64402_ANGLES           = ( 0.0, 0.0, 0.0 )
      TKFRAME_-64402_AXES             = ( 1,   2,   3   )
      TKFRAME_-64402_UNITS            = 'DEGREES'

      FRAME_ORX_OLA_LOW               = -64403
      FRAME_-64403_NAME               = 'ORX_OLA_LOW'
      FRAME_-64403_CLASS              = 4
      FRAME_-64403_CLASS_ID           = -64403
      FRAME_-64403_CENTER             = -64
      TKFRAME_-64403_SPEC             = 'ANGLES'
      TKFRAME_-64403_RELATIVE         = 'ORX_OLA_ART'
      TKFRAME_-64403_ANGLES           = ( 0.0, 0.0, 0.0 )
      TKFRAME_-64403_AXES             = ( 1,   2,   3   )
      TKFRAME_-64403_UNITS            = 'DEGREES'

   \begintext


ORX NAIF ID Codes -- Definitions
=====================================================================

   This section contains name to NAIF ID mappings for the ORX mission.
   Once the contents of this file are loaded into the KERNEL POOL, these
   mappings become available within SPICE, making it possible to use
   names instead of ID code in high level SPICE routine calls.

         Name (primary)             NAIF ID          Synonyms
      ----------------------        -------      ------------------------

   Asteroid:
   ---------

      BENNU                         2101955      101955 BENNU (1999 RQ36)
                                                 101955 BENNU

   Spacecraft:
   -----------

      ORX                           -64

      ORX_SPACECRAFT_BUS            -64000
      ORX_SC_BUS                    -64000
      ORX_SPACECRAFT                -64000


   Structures (solar arrays, TAGSAM, antennas, etc):
   -------------------------------------------------

      ORX_SA_PY                     -64010
      ORX_SA_PY_BP                  -64011
      ORX_SA_PY_GIM                 -64012
      ORX_SA_PY_CORNER1             -64013
      ORX_SA_PY_CORNER2             -64014
      ORX_SA_PY_CORNER3             -64015
      ORX_SA_PY_CORNER4             -64016

      ORX_SA_NY                     -64020
      ORX_SA_NY_BP                  -64021
      ORX_SA_NY_GIM                 -64022
      ORX_SA_NY_CORNER1             -64023
      ORX_SA_NY_CORNER2             -64024
      ORX_SA_NY_CORNER3             -64025
      ORX_SA_NY_CORNER4             -64026

      ORX_TAGSAM                    -64050
      ORX_TAGSAM_BP                 -64051
      ORX_TAGSAM_SH                 -64053
      ORX_TAGSAM_EL                 -64055
      ORX_TAGSAM_WR                 -64057

      ORX_HGA                       -64060
      ORX_MGA                       -64061
      ORX_LGA_PX                    -64062
      ORX_LGA_MX                    -64063

      ORX_STOWCAM                   -64071
      ORX_LIDAR-1                   -64072
      ORX_LIDAR-2                   -64073

      ORX_NAVCAM1                   -64081
      ORX_NAVCAM2                   -64082

      ORX_SRC                       -64090

      ORX_STU1                      -64091
      ORX_STU2                      -64092


   Science Instruments:
   --------------------

      ORX_OTES                      -64310

      ORX_OVIRS                     -64320
      ORX_OVIRS_SCI                 -64321
      ORX_OVIRS_SUN                 -64322

      ORX_REXIS                     -64330

      ORX_REXIS_SXM                 -64340

      ORX_OCAMS_POLYCAM             -64360
      ORX_OCAMS_POLYCAM_00630       -64500
      ORX_OCAMS_POLYCAM_00810       -64501
      ORX_OCAMS_POLYCAM_00990       -64502
      ORX_OCAMS_POLYCAM_01170       -64503
      ORX_OCAMS_POLYCAM_01350       -64504
      ORX_OCAMS_POLYCAM_01530       -64505
      ORX_OCAMS_POLYCAM_01710       -64506
      ORX_OCAMS_POLYCAM_01890       -64507
      ORX_OCAMS_POLYCAM_02070       -64508
      ORX_OCAMS_POLYCAM_02249       -64509
      ORX_OCAMS_POLYCAM_02429       -64510
      ORX_OCAMS_POLYCAM_02609       -64511
      ORX_OCAMS_POLYCAM_02789       -64512
      ORX_OCAMS_POLYCAM_02969       -64513
      ORX_OCAMS_POLYCAM_03149       -64514
      ORX_OCAMS_POLYCAM_03329       -64515
      ORX_OCAMS_POLYCAM_03510       -64516
      ORX_OCAMS_POLYCAM_03691       -64517
      ORX_OCAMS_POLYCAM_03871       -64518
      ORX_OCAMS_POLYCAM_04051       -64519
      ORX_OCAMS_POLYCAM_04231       -64520
      ORX_OCAMS_POLYCAM_04410       -64521
      ORX_OCAMS_POLYCAM_04590       -64522
      ORX_OCAMS_POLYCAM_04770       -64523
      ORX_OCAMS_POLYCAM_04950       -64524
      ORX_OCAMS_POLYCAM_05130       -64525
      ORX_OCAMS_POLYCAM_05310       -64526
      ORX_OCAMS_POLYCAM_05490       -64527
      ORX_OCAMS_POLYCAM_05670       -64528
      ORX_OCAMS_POLYCAM_05850       -64529
      ORX_OCAMS_POLYCAM_06030       -64530
      ORX_OCAMS_POLYCAM_06209       -64531
      ORX_OCAMS_POLYCAM_06388       -64532
      ORX_OCAMS_POLYCAM_06568       -64533
      ORX_OCAMS_POLYCAM_06749       -64534
      ORX_OCAMS_POLYCAM_06930       -64535
      ORX_OCAMS_POLYCAM_07110       -64536
      ORX_OCAMS_POLYCAM_07290       -64537
      ORX_OCAMS_POLYCAM_07470       -64538
      ORX_OCAMS_POLYCAM_07650       -64539
      ORX_OCAMS_POLYCAM_07830       -64540
      ORX_OCAMS_POLYCAM_08010       -64541
      ORX_OCAMS_POLYCAM_08190       -64542
      ORX_OCAMS_POLYCAM_08370       -64543
      ORX_OCAMS_POLYCAM_08550       -64544
      ORX_OCAMS_POLYCAM_08730       -64545
      ORX_OCAMS_POLYCAM_08910       -64546
      ORX_OCAMS_POLYCAM_09090       -64547
      ORX_OCAMS_POLYCAM_09270       -64548
      ORX_OCAMS_POLYCAM_09450       -64549
      ORX_OCAMS_POLYCAM_09630       -64550
      ORX_OCAMS_POLYCAM_09810       -64551
      ORX_OCAMS_POLYCAM_09990       -64552
      ORX_OCAMS_POLYCAM_10170       -64553
      ORX_OCAMS_POLYCAM_10350       -64554
      ORX_OCAMS_POLYCAM_10530       -64555
      ORX_OCAMS_POLYCAM_10710       -64556
      ORX_OCAMS_POLYCAM_10889       -64557
      ORX_OCAMS_POLYCAM_11069       -64558
      ORX_OCAMS_POLYCAM_11249       -64559
      ORX_OCAMS_POLYCAM_11430       -64560
      ORX_OCAMS_POLYCAM_11610       -64561
      ORX_OCAMS_POLYCAM_11790       -64562
      ORX_OCAMS_POLYCAM_11970       -64563
      ORX_OCAMS_POLYCAM_12150       -64564
      ORX_OCAMS_POLYCAM_12330       -64565
      ORX_OCAMS_POLYCAM_12509       -64566
      ORX_OCAMS_POLYCAM_12689       -64567
      ORX_OCAMS_POLYCAM_12869       -64568
      ORX_OCAMS_POLYCAM_13050       -64569
      ORX_OCAMS_POLYCAM_13230       -64570
      ORX_OCAMS_POLYCAM_13410       -64571
      ORX_OCAMS_POLYCAM_13590       -64572
      ORX_OCAMS_POLYCAM_13770       -64573
      ORX_OCAMS_POLYCAM_13950       -64574
      ORX_OCAMS_POLYCAM_14130       -64575
      ORX_OCAMS_POLYCAM_14310       -64576
      ORX_OCAMS_POLYCAM_14490       -64577
      ORX_OCAMS_POLYCAM_14669       -64578
      ORX_OCAMS_POLYCAM_14849       -64579
      ORX_OCAMS_POLYCAM_15029       -64580
      ORX_OCAMS_POLYCAM_15210       -64581
      ORX_OCAMS_POLYCAM_15390       -64582
      ORX_OCAMS_POLYCAM_15570       -64583
      ORX_OCAMS_POLYCAM_15750       -64584
      ORX_OCAMS_POLYCAM_15930       -64585
      ORX_OCAMS_POLYCAM_16110       -64586
      ORX_OCAMS_POLYCAM_16290       -64587
      ORX_OCAMS_POLYCAM_16470       -64588
      ORX_OCAMS_POLYCAM_16650       -64589
      ORX_OCAMS_POLYCAM_16830       -64590
      ORX_OCAMS_POLYCAM_17010       -64591
      ORX_OCAMS_POLYCAM_17190       -64592
      ORX_OCAMS_POLYCAM_17371       -64593
      ORX_OCAMS_POLYCAM_17551       -64594
      ORX_OCAMS_POLYCAM_17731       -64595
      ORX_OCAMS_POLYCAM_17911       -64596
      ORX_OCAMS_POLYCAM_18091       -64597
      ORX_OCAMS_POLYCAM_18271       -64598
      ORX_OCAMS_POLYCAM_18451       -64599
      ORX_OCAMS_POLYCAM_18631       -64600
      ORX_OCAMS_POLYCAM_18811       -64601
      ORX_OCAMS_POLYCAM_18991       -64602
      ORX_OCAMS_POLYCAM_19171       -64603
      ORX_OCAMS_POLYCAM_19351       -64604
      ORX_OCAMS_POLYCAM_19530       -64605
      ORX_OCAMS_POLYCAM_19710       -64606
      ORX_OCAMS_POLYCAM_19890       -64607
      ORX_OCAMS_POLYCAM_20070       -64608
      ORX_OCAMS_POLYCAM_20250       -64609
      ORX_OCAMS_POLYCAM_20430       -64610
      ORX_OCAMS_POLYCAM_20610       -64611
      ORX_OCAMS_POLYCAM_20790       -64612
      ORX_OCAMS_POLYCAM_20970       -64613
      ORX_OCAMS_POLYCAM_21150       -64614
      ORX_OCAMS_POLYCAM_21330       -64615
      ORX_OCAMS_POLYCAM_21510       -64616

      ORX_OCAMS_MAPCAM              -64361

      ORX_OCAMS_SAMCAM              -64362

      ORX_OLA_BASE                  -64400
      ORX_OLA_ART                   -64401
      ORX_OLA_HIGH                  -64402
      ORX_OLA_LOW                   -64403


   The mappings summarized in this table are implemented by the keywords
   below.

   \begindata

      NAIF_BODY_NAME += ( '101955 BENNU (1999 RQ36)' )
      NAIF_BODY_CODE += ( 2101955 )

      NAIF_BODY_NAME += ( '101955 BENNU' )
      NAIF_BODY_CODE += ( 2101955 )

      NAIF_BODY_NAME += ( 'BENNU' )
      NAIF_BODY_CODE += ( 2101955 )

      NAIF_BODY_NAME += ( 'ORX' )
      NAIF_BODY_CODE += ( -64 )

      NAIF_BODY_NAME += ( 'ORX_SPACECRAFT_BUS' )
      NAIF_BODY_CODE += ( -64000 )

      NAIF_BODY_NAME += ( 'ORX_SC_BUS' )
      NAIF_BODY_CODE += ( -64000 )

      NAIF_BODY_NAME += ( 'ORX_SPACECRAFT' )
      NAIF_BODY_CODE += ( -64000 )

      NAIF_BODY_NAME += ( 'ORX_SA_PY' )
      NAIF_BODY_CODE += ( -64010 )

      NAIF_BODY_NAME += ( 'ORX_SA_PY_BP' )
      NAIF_BODY_CODE += ( -64011 )

      NAIF_BODY_NAME += ( 'ORX_SA_PY_GIM' )
      NAIF_BODY_CODE += ( -64012 )

      NAIF_BODY_NAME += ( 'ORX_SA_PY_CORNER1' )
      NAIF_BODY_CODE += ( -64013 )

      NAIF_BODY_NAME += ( 'ORX_SA_PY_CORNER2' )
      NAIF_BODY_CODE += ( -64014 )

      NAIF_BODY_NAME += ( 'ORX_SA_PY_CORNER3' )
      NAIF_BODY_CODE += ( -64015 )

      NAIF_BODY_NAME += ( 'ORX_SA_PY_CORNER4' )
      NAIF_BODY_CODE += ( -64016 )

      NAIF_BODY_NAME += ( 'ORX_SA_NY' )
      NAIF_BODY_CODE += ( -64020 )

      NAIF_BODY_NAME += ( 'ORX_SA_NY_BP' )
      NAIF_BODY_CODE += ( -64021 )

      NAIF_BODY_NAME += ( 'ORX_SA_NY_GIM' )
      NAIF_BODY_CODE += ( -64022 )

      NAIF_BODY_NAME += ( 'ORX_SA_NY_CORNER1' )
      NAIF_BODY_CODE += ( -64023 )

      NAIF_BODY_NAME += ( 'ORX_SA_NY_CORNER2' )
      NAIF_BODY_CODE += ( -64024 )

      NAIF_BODY_NAME += ( 'ORX_SA_NY_CORNER3' )
      NAIF_BODY_CODE += ( -64025 )

      NAIF_BODY_NAME += ( 'ORX_SA_NY_CORNER4' )
      NAIF_BODY_CODE += ( -64026 )

      NAIF_BODY_NAME += ( 'ORX_TAGSAM' )
      NAIF_BODY_CODE += ( -64050 )

      NAIF_BODY_NAME += ( 'ORX_TAGSAM_BP' )
      NAIF_BODY_CODE += ( -64051 )

      NAIF_BODY_NAME += ( 'ORX_TAGSAM_SH' )
      NAIF_BODY_CODE += ( -64053 )

      NAIF_BODY_NAME += ( 'ORX_TAGSAM_EL' )
      NAIF_BODY_CODE += ( -64055 )

      NAIF_BODY_NAME += ( 'ORX_TAGSAM_WR' )
      NAIF_BODY_CODE += ( -64057 )

      NAIF_BODY_NAME += ( 'ORX_HGA' )
      NAIF_BODY_CODE += ( -64060 )

      NAIF_BODY_NAME += ( 'ORX_MGA' )
      NAIF_BODY_CODE += ( -64061 )

      NAIF_BODY_NAME += ( 'ORX_LGA_PX' )
      NAIF_BODY_CODE += ( -64062 )

      NAIF_BODY_NAME += ( 'ORX_LGA_MX' )
      NAIF_BODY_CODE += ( -64063 )

      NAIF_BODY_NAME += ( 'ORX_STOWCAM' )
      NAIF_BODY_CODE += ( -64071 )

      NAIF_BODY_NAME += ( 'ORX_LIDAR-1' )
      NAIF_BODY_CODE += ( -64072 )

      NAIF_BODY_NAME += ( 'ORX_LIDAR-2' )
      NAIF_BODY_CODE += ( -64073 )

      NAIF_BODY_NAME += ( 'ORX_NAVCAM1' )
      NAIF_BODY_CODE += ( -64081 )

      NAIF_BODY_NAME += ( 'ORX_NAVCAM2' )
      NAIF_BODY_CODE += ( -64082 )

      NAIF_BODY_NAME += ( 'ORX_SRC' )
      NAIF_BODY_CODE += ( -64090 )

      NAIF_BODY_NAME += ( 'ORX_STU1' )
      NAIF_BODY_CODE += ( -64091 )

      NAIF_BODY_NAME += ( 'ORX_STU2' )
      NAIF_BODY_CODE += ( -64092 )

      NAIF_BODY_NAME += ( 'ORX_OTES' )
      NAIF_BODY_CODE += ( -64310 )

      NAIF_BODY_NAME += ( 'ORX_OVIRS' )
      NAIF_BODY_CODE += ( -64320 )

      NAIF_BODY_NAME += ( 'ORX_OVIRS_SCI' )
      NAIF_BODY_CODE += ( -64321 )

      NAIF_BODY_NAME += ( 'ORX_OVIRS_SUN' )
      NAIF_BODY_CODE += ( -64322 )

      NAIF_BODY_NAME += ( 'ORX_REXIS' )
      NAIF_BODY_CODE += ( -64330 )

      NAIF_BODY_NAME += ( 'ORX_REXIS_SXM' )
      NAIF_BODY_CODE += ( -64340 )

      NAIF_BODY_NAME += ( 'ORX_OCAMS_POLYCAM' )
      NAIF_BODY_CODE += ( -64360 )

      NAIF_BODY_NAME += ( 'ORX_OCAMS_POLYCAM_00630' )
      NAIF_BODY_CODE += ( -64500 )

      NAIF_BODY_NAME += ( 'ORX_OCAMS_POLYCAM_00810' )
      NAIF_BODY_CODE += ( -64501 )

      NAIF_BODY_NAME += ( 'ORX_OCAMS_POLYCAM_00990' )
      NAIF_BODY_CODE += ( -64502 )

      NAIF_BODY_NAME += ( 'ORX_OCAMS_POLYCAM_01170' )
      NAIF_BODY_CODE += ( -64503 )

      NAIF_BODY_NAME += ( 'ORX_OCAMS_POLYCAM_01350' )
      NAIF_BODY_CODE += ( -64504 )

      NAIF_BODY_NAME += ( 'ORX_OCAMS_POLYCAM_01530' )
      NAIF_BODY_CODE += ( -64505 )

      NAIF_BODY_NAME += ( 'ORX_OCAMS_POLYCAM_01710' )
      NAIF_BODY_CODE += ( -64506 )

      NAIF_BODY_NAME += ( 'ORX_OCAMS_POLYCAM_01890' )
      NAIF_BODY_CODE += ( -64507 )

      NAIF_BODY_NAME += ( 'ORX_OCAMS_POLYCAM_02070' )
      NAIF_BODY_CODE += ( -64508 )

      NAIF_BODY_NAME += ( 'ORX_OCAMS_POLYCAM_02249' )
      NAIF_BODY_CODE += ( -64509 )

      NAIF_BODY_NAME += ( 'ORX_OCAMS_POLYCAM_02429' )
      NAIF_BODY_CODE += ( -64510 )

      NAIF_BODY_NAME += ( 'ORX_OCAMS_POLYCAM_02609' )
      NAIF_BODY_CODE += ( -64511 )

      NAIF_BODY_NAME += ( 'ORX_OCAMS_POLYCAM_02789' )
      NAIF_BODY_CODE += ( -64512 )

      NAIF_BODY_NAME += ( 'ORX_OCAMS_POLYCAM_02969' )
      NAIF_BODY_CODE += ( -64513 )

      NAIF_BODY_NAME += ( 'ORX_OCAMS_POLYCAM_03149' )
      NAIF_BODY_CODE += ( -64514 )

      NAIF_BODY_NAME += ( 'ORX_OCAMS_POLYCAM_03329' )
      NAIF_BODY_CODE += ( -64515 )

      NAIF_BODY_NAME += ( 'ORX_OCAMS_POLYCAM_03510' )
      NAIF_BODY_CODE += ( -64516 )

      NAIF_BODY_NAME += ( 'ORX_OCAMS_POLYCAM_03691' )
      NAIF_BODY_CODE += ( -64517 )

      NAIF_BODY_NAME += ( 'ORX_OCAMS_POLYCAM_03871' )
      NAIF_BODY_CODE += ( -64518 )

      NAIF_BODY_NAME += ( 'ORX_OCAMS_POLYCAM_04051' )
      NAIF_BODY_CODE += ( -64519 )

      NAIF_BODY_NAME += ( 'ORX_OCAMS_POLYCAM_04231' )
      NAIF_BODY_CODE += ( -64520 )

      NAIF_BODY_NAME += ( 'ORX_OCAMS_POLYCAM_04410' )
      NAIF_BODY_CODE += ( -64521 )

      NAIF_BODY_NAME += ( 'ORX_OCAMS_POLYCAM_04590' )
      NAIF_BODY_CODE += ( -64522 )

      NAIF_BODY_NAME += ( 'ORX_OCAMS_POLYCAM_04770' )
      NAIF_BODY_CODE += ( -64523 )

      NAIF_BODY_NAME += ( 'ORX_OCAMS_POLYCAM_04950' )
      NAIF_BODY_CODE += ( -64524 )

      NAIF_BODY_NAME += ( 'ORX_OCAMS_POLYCAM_05130' )
      NAIF_BODY_CODE += ( -64525 )

      NAIF_BODY_NAME += ( 'ORX_OCAMS_POLYCAM_05310' )
      NAIF_BODY_CODE += ( -64526 )

      NAIF_BODY_NAME += ( 'ORX_OCAMS_POLYCAM_05490' )
      NAIF_BODY_CODE += ( -64527 )

      NAIF_BODY_NAME += ( 'ORX_OCAMS_POLYCAM_05670' )
      NAIF_BODY_CODE += ( -64528 )

      NAIF_BODY_NAME += ( 'ORX_OCAMS_POLYCAM_05850' )
      NAIF_BODY_CODE += ( -64529 )

      NAIF_BODY_NAME += ( 'ORX_OCAMS_POLYCAM_06030' )
      NAIF_BODY_CODE += ( -64530 )

      NAIF_BODY_NAME += ( 'ORX_OCAMS_POLYCAM_06209' )
      NAIF_BODY_CODE += ( -64531 )

      NAIF_BODY_NAME += ( 'ORX_OCAMS_POLYCAM_06388' )
      NAIF_BODY_CODE += ( -64532 )

      NAIF_BODY_NAME += ( 'ORX_OCAMS_POLYCAM_06568' )
      NAIF_BODY_CODE += ( -64533 )

      NAIF_BODY_NAME += ( 'ORX_OCAMS_POLYCAM_06749' )
      NAIF_BODY_CODE += ( -64534 )

      NAIF_BODY_NAME += ( 'ORX_OCAMS_POLYCAM_06930' )
      NAIF_BODY_CODE += ( -64535 )

      NAIF_BODY_NAME += ( 'ORX_OCAMS_POLYCAM_07110' )
      NAIF_BODY_CODE += ( -64536 )

      NAIF_BODY_NAME += ( 'ORX_OCAMS_POLYCAM_07290' )
      NAIF_BODY_CODE += ( -64537 )

      NAIF_BODY_NAME += ( 'ORX_OCAMS_POLYCAM_07470' )
      NAIF_BODY_CODE += ( -64538 )

      NAIF_BODY_NAME += ( 'ORX_OCAMS_POLYCAM_07650' )
      NAIF_BODY_CODE += ( -64539 )

      NAIF_BODY_NAME += ( 'ORX_OCAMS_POLYCAM_07830' )
      NAIF_BODY_CODE += ( -64540 )

      NAIF_BODY_NAME += ( 'ORX_OCAMS_POLYCAM_08010' )
      NAIF_BODY_CODE += ( -64541 )

      NAIF_BODY_NAME += ( 'ORX_OCAMS_POLYCAM_08190' )
      NAIF_BODY_CODE += ( -64542 )

      NAIF_BODY_NAME += ( 'ORX_OCAMS_POLYCAM_08370' )
      NAIF_BODY_CODE += ( -64543 )

      NAIF_BODY_NAME += ( 'ORX_OCAMS_POLYCAM_08550' )
      NAIF_BODY_CODE += ( -64544 )

      NAIF_BODY_NAME += ( 'ORX_OCAMS_POLYCAM_08730' )
      NAIF_BODY_CODE += ( -64545 )

      NAIF_BODY_NAME += ( 'ORX_OCAMS_POLYCAM_08910' )
      NAIF_BODY_CODE += ( -64546 )

      NAIF_BODY_NAME += ( 'ORX_OCAMS_POLYCAM_09090' )
      NAIF_BODY_CODE += ( -64547 )

      NAIF_BODY_NAME += ( 'ORX_OCAMS_POLYCAM_09270' )
      NAIF_BODY_CODE += ( -64548 )

      NAIF_BODY_NAME += ( 'ORX_OCAMS_POLYCAM_09450' )
      NAIF_BODY_CODE += ( -64549 )

      NAIF_BODY_NAME += ( 'ORX_OCAMS_POLYCAM_09630' )
      NAIF_BODY_CODE += ( -64550 )

      NAIF_BODY_NAME += ( 'ORX_OCAMS_POLYCAM_09810' )
      NAIF_BODY_CODE += ( -64551 )

      NAIF_BODY_NAME += ( 'ORX_OCAMS_POLYCAM_09990' )
      NAIF_BODY_CODE += ( -64552 )

      NAIF_BODY_NAME += ( 'ORX_OCAMS_POLYCAM_10170' )
      NAIF_BODY_CODE += ( -64553 )

      NAIF_BODY_NAME += ( 'ORX_OCAMS_POLYCAM_10350' )
      NAIF_BODY_CODE += ( -64554 )

      NAIF_BODY_NAME += ( 'ORX_OCAMS_POLYCAM_10530' )
      NAIF_BODY_CODE += ( -64555 )

      NAIF_BODY_NAME += ( 'ORX_OCAMS_POLYCAM_10710' )
      NAIF_BODY_CODE += ( -64556 )

      NAIF_BODY_NAME += ( 'ORX_OCAMS_POLYCAM_10889' )
      NAIF_BODY_CODE += ( -64557 )

      NAIF_BODY_NAME += ( 'ORX_OCAMS_POLYCAM_11069' )
      NAIF_BODY_CODE += ( -64558 )

      NAIF_BODY_NAME += ( 'ORX_OCAMS_POLYCAM_11249' )
      NAIF_BODY_CODE += ( -64559 )

      NAIF_BODY_NAME += ( 'ORX_OCAMS_POLYCAM_11430' )
      NAIF_BODY_CODE += ( -64560 )

      NAIF_BODY_NAME += ( 'ORX_OCAMS_POLYCAM_11610' )
      NAIF_BODY_CODE += ( -64561 )

      NAIF_BODY_NAME += ( 'ORX_OCAMS_POLYCAM_11790' )
      NAIF_BODY_CODE += ( -64562 )

      NAIF_BODY_NAME += ( 'ORX_OCAMS_POLYCAM_11970' )
      NAIF_BODY_CODE += ( -64563 )

      NAIF_BODY_NAME += ( 'ORX_OCAMS_POLYCAM_12150' )
      NAIF_BODY_CODE += ( -64564 )

      NAIF_BODY_NAME += ( 'ORX_OCAMS_POLYCAM_12330' )
      NAIF_BODY_CODE += ( -64565 )

      NAIF_BODY_NAME += ( 'ORX_OCAMS_POLYCAM_12509' )
      NAIF_BODY_CODE += ( -64566 )

      NAIF_BODY_NAME += ( 'ORX_OCAMS_POLYCAM_12689' )
      NAIF_BODY_CODE += ( -64567 )

      NAIF_BODY_NAME += ( 'ORX_OCAMS_POLYCAM_12869' )
      NAIF_BODY_CODE += ( -64568 )

      NAIF_BODY_NAME += ( 'ORX_OCAMS_POLYCAM_13050' )
      NAIF_BODY_CODE += ( -64569 )

      NAIF_BODY_NAME += ( 'ORX_OCAMS_POLYCAM_13230' )
      NAIF_BODY_CODE += ( -64570 )

      NAIF_BODY_NAME += ( 'ORX_OCAMS_POLYCAM_13410' )
      NAIF_BODY_CODE += ( -64571 )

      NAIF_BODY_NAME += ( 'ORX_OCAMS_POLYCAM_13590' )
      NAIF_BODY_CODE += ( -64572 )

      NAIF_BODY_NAME += ( 'ORX_OCAMS_POLYCAM_13770' )
      NAIF_BODY_CODE += ( -64573 )

      NAIF_BODY_NAME += ( 'ORX_OCAMS_POLYCAM_13950' )
      NAIF_BODY_CODE += ( -64574 )

      NAIF_BODY_NAME += ( 'ORX_OCAMS_POLYCAM_14130' )
      NAIF_BODY_CODE += ( -64575 )

      NAIF_BODY_NAME += ( 'ORX_OCAMS_POLYCAM_14310' )
      NAIF_BODY_CODE += ( -64576 )

      NAIF_BODY_NAME += ( 'ORX_OCAMS_POLYCAM_14490' )
      NAIF_BODY_CODE += ( -64577 )

      NAIF_BODY_NAME += ( 'ORX_OCAMS_POLYCAM_14669' )
      NAIF_BODY_CODE += ( -64578 )

      NAIF_BODY_NAME += ( 'ORX_OCAMS_POLYCAM_14849' )
      NAIF_BODY_CODE += ( -64579 )

      NAIF_BODY_NAME += ( 'ORX_OCAMS_POLYCAM_15029' )
      NAIF_BODY_CODE += ( -64580 )

      NAIF_BODY_NAME += ( 'ORX_OCAMS_POLYCAM_15210' )
      NAIF_BODY_CODE += ( -64581 )

      NAIF_BODY_NAME += ( 'ORX_OCAMS_POLYCAM_15390' )
      NAIF_BODY_CODE += ( -64582 )

      NAIF_BODY_NAME += ( 'ORX_OCAMS_POLYCAM_15570' )
      NAIF_BODY_CODE += ( -64583 )

      NAIF_BODY_NAME += ( 'ORX_OCAMS_POLYCAM_15750' )
      NAIF_BODY_CODE += ( -64584 )

      NAIF_BODY_NAME += ( 'ORX_OCAMS_POLYCAM_15930' )
      NAIF_BODY_CODE += ( -64585 )

      NAIF_BODY_NAME += ( 'ORX_OCAMS_POLYCAM_16110' )
      NAIF_BODY_CODE += ( -64586 )

      NAIF_BODY_NAME += ( 'ORX_OCAMS_POLYCAM_16290' )
      NAIF_BODY_CODE += ( -64587 )

      NAIF_BODY_NAME += ( 'ORX_OCAMS_POLYCAM_16470' )
      NAIF_BODY_CODE += ( -64588 )

      NAIF_BODY_NAME += ( 'ORX_OCAMS_POLYCAM_16650' )
      NAIF_BODY_CODE += ( -64589 )

      NAIF_BODY_NAME += ( 'ORX_OCAMS_POLYCAM_16830' )
      NAIF_BODY_CODE += ( -64590 )

      NAIF_BODY_NAME += ( 'ORX_OCAMS_POLYCAM_17010' )
      NAIF_BODY_CODE += ( -64591 )

      NAIF_BODY_NAME += ( 'ORX_OCAMS_POLYCAM_17190' )
      NAIF_BODY_CODE += ( -64592 )

      NAIF_BODY_NAME += ( 'ORX_OCAMS_POLYCAM_17371' )
      NAIF_BODY_CODE += ( -64593 )

      NAIF_BODY_NAME += ( 'ORX_OCAMS_POLYCAM_17551' )
      NAIF_BODY_CODE += ( -64594 )

      NAIF_BODY_NAME += ( 'ORX_OCAMS_POLYCAM_17731' )
      NAIF_BODY_CODE += ( -64595 )

      NAIF_BODY_NAME += ( 'ORX_OCAMS_POLYCAM_17911' )
      NAIF_BODY_CODE += ( -64596 )

      NAIF_BODY_NAME += ( 'ORX_OCAMS_POLYCAM_18091' )
      NAIF_BODY_CODE += ( -64597 )

      NAIF_BODY_NAME += ( 'ORX_OCAMS_POLYCAM_18271' )
      NAIF_BODY_CODE += ( -64598 )

      NAIF_BODY_NAME += ( 'ORX_OCAMS_POLYCAM_18451' )
      NAIF_BODY_CODE += ( -64599 )

      NAIF_BODY_NAME += ( 'ORX_OCAMS_POLYCAM_18631' )
      NAIF_BODY_CODE += ( -64600 )

      NAIF_BODY_NAME += ( 'ORX_OCAMS_POLYCAM_18811' )
      NAIF_BODY_CODE += ( -64601 )

      NAIF_BODY_NAME += ( 'ORX_OCAMS_POLYCAM_18991' )
      NAIF_BODY_CODE += ( -64602 )

      NAIF_BODY_NAME += ( 'ORX_OCAMS_POLYCAM_19171' )
      NAIF_BODY_CODE += ( -64603 )

      NAIF_BODY_NAME += ( 'ORX_OCAMS_POLYCAM_19351' )
      NAIF_BODY_CODE += ( -64604 )

      NAIF_BODY_NAME += ( 'ORX_OCAMS_POLYCAM_19530' )
      NAIF_BODY_CODE += ( -64605 )

      NAIF_BODY_NAME += ( 'ORX_OCAMS_POLYCAM_19710' )
      NAIF_BODY_CODE += ( -64606 )

      NAIF_BODY_NAME += ( 'ORX_OCAMS_POLYCAM_19890' )
      NAIF_BODY_CODE += ( -64607 )

      NAIF_BODY_NAME += ( 'ORX_OCAMS_POLYCAM_20070' )
      NAIF_BODY_CODE += ( -64608 )

      NAIF_BODY_NAME += ( 'ORX_OCAMS_POLYCAM_20250' )
      NAIF_BODY_CODE += ( -64609 )

      NAIF_BODY_NAME += ( 'ORX_OCAMS_POLYCAM_20430' )
      NAIF_BODY_CODE += ( -64610 )

      NAIF_BODY_NAME += ( 'ORX_OCAMS_POLYCAM_20610' )
      NAIF_BODY_CODE += ( -64611 )

      NAIF_BODY_NAME += ( 'ORX_OCAMS_POLYCAM_20790' )
      NAIF_BODY_CODE += ( -64612 )

      NAIF_BODY_NAME += ( 'ORX_OCAMS_POLYCAM_20970' )
      NAIF_BODY_CODE += ( -64613 )

      NAIF_BODY_NAME += ( 'ORX_OCAMS_POLYCAM_21150' )
      NAIF_BODY_CODE += ( -64614 )

      NAIF_BODY_NAME += ( 'ORX_OCAMS_POLYCAM_21330' )
      NAIF_BODY_CODE += ( -64615 )

      NAIF_BODY_NAME += ( 'ORX_OCAMS_POLYCAM_21510' )
      NAIF_BODY_CODE += ( -64616 )

      NAIF_BODY_NAME += ( 'ORX_OCAMS_MAPCAM' )
      NAIF_BODY_CODE += ( -64361 )

      NAIF_BODY_NAME += ( 'ORX_OCAMS_SAMCAM' )
      NAIF_BODY_CODE += ( -64362 )

      NAIF_BODY_NAME += ( 'ORX_OLA_BASE' )
      NAIF_BODY_CODE += ( -64400 )

      NAIF_BODY_NAME += ( 'ORX_OLA_ART' )
      NAIF_BODY_CODE += ( -64401 )

      NAIF_BODY_NAME += ( 'ORX_OLA_HIGH' )
      NAIF_BODY_CODE += ( -64402 )

      NAIF_BODY_NAME += ( 'ORX_OLA_LOW' )
      NAIF_BODY_CODE += ( -64403 )

   \begintext

End of FK File.

# orx_synthetic_nadir_cks
Make synthetic nadir-ish-pointing CKs for OSIRIS-REx 


### Meta-kernel to load misc kernels and SPK:

    kernels/orx_base_nadirish.tm


### CKs

    orx_nadirish.bc   ### Nadir-offset pointing; use one of the offset SPKs below
    orx_comms.bc      ### Simulated comms pointing (ORX_RTN_EARTH; 8h out of every 24h)


### Offset SPKs created here and used by nadir-ish CK (load one):

    000m_9101955.bsp
    025m_9101955.bsp
    050m_9101955.bsp
    075m_9101955.bsp
    100m_9101955.bsp
    125m_9101955.bsp
    150m_9101955.bsp
    175m_9101955.bsp
    200m_9101955.bsp
    225m_9101955.bsp


### FK used by nadirish CK

    orx_nadirish.tf   ### Nadir-offset frame ORX_BENNU_SUN_NADIRISH


### Misc kernels

    ORX_SCLKSCET.00000.tsc
    bennu_v10.tpc
    naif0012.tls
    orx_custom_frames_DRAFT_6.tf
    orx_v08.tf
    pck00010.tpc


### SPKs required (but not in repo or in kernels.tar.gz); obtain from NAIF or FOB or SPOC

    de424.bsp                
    bennu_refdrmc_v1.bsp
    orx_170117_210312_refMPRevB_v1.bsp
    spk_orx_160908_231024_pgaa2_day06m60_v3.bsp    (alternate for refMPRevB))

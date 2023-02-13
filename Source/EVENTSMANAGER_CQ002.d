func void EVENTSMANAGER_CQ002() {
    var int CQ002_AFTERQUEST_SPAWNMONSTERS_CHAPTER_3;
    var int CQ002_AFTERQUEST_SPAWNMONSTERS_CHAPTER_5;
    if (((LOG_GETSTATUS(MIS_CQ002)) != (LOG_SUCCESS)) || ((CQ002_AFTERQUEST_SPAWNMONSTERS_CHAPTER_5) == (TRUE))) {
        return;
    };
    if ((KAPITEL) >= (3)) {
        if ((CQ002_AFTERQUEST_SPAWNMONSTERS_CHAPTER_3) == (FALSE)) {
            if ((NPC_GETDISTTOWP(HERO, "PART3_MOB_31")) >= (12000)) {
                CQ002_AFTERQUEST_SPAWNMONSTERS_CHAPTER_3 = TRUE;
                WLD_INSERTNPC(51070, "FP_ROAM_PART3_33");
                WLD_INSERTNPC(51050, "FP_ROAM_PART3_138");
                WLD_INSERTNPC(51070, "FP_ROAM_PART3_139");
                WLD_INSERTNPC(51050, "FP_ROAM_PART3_43");
                WLD_INSERTNPC(51070, "FP_ROAM_PART3_35");
                WLD_INSERTNPC(51050, "FP_ROAM_PART3_40");
            };
        };
    };
    if ((CQ002_AFTERQUEST_SPAWNMONSTERS_CHAPTER_3) == (TRUE)) {
        if ((KAPITEL) == (5)) {
            if ((CQ002_AFTERQUEST_SPAWNMONSTERS_CHAPTER_5) == (FALSE)) {
                if ((NPC_GETDISTTOWP(HERO, "PART3_MOB_31")) >= (12000)) {
                    CQ002_AFTERQUEST_SPAWNMONSTERS_CHAPTER_5 = TRUE;
                    WLD_INSERTNPC(51048, "FP_ROAM_PART3_37");
                    WLD_INSERTNPC(51048, "FP_ROAM_PART3_36");
                    WLD_INSERTNPC(51048, "FP_ROAM_PART3_43");
                    WLD_INSERTNPC(51048, "FP_ROAM_PART3_143");
                };
            };
        };
    };
}


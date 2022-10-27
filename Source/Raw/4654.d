func void EVENTSMANAGER_CQ002() {
    if (((LOG_GETSTATUS(MIS_CQ002)) != (LOG_SUCCESS)) || ((CQ002_AFTERQUEST_SPAWNMONSTERS_CHAPTER_5) == (TRUE))) {
        return;
    };
    if ((KAPITEL) >= (3)) {
        if ((CQ002_AFTERQUEST_SPAWNMONSTERS_CHAPTER_3) == (FALSE)) {
            if ((NPC_GETDISTTOWP(HERO, "PART3_MOB_31")) >= (0x2ee0)) {
                CQ002_AFTERQUEST_SPAWNMONSTERS_CHAPTER_3 = TRUE;
                WLD_INSERTNPC(0xc77e, "FP_ROAM_PART3_33");
                WLD_INSERTNPC(0xc76a, "FP_ROAM_PART3_138");
                WLD_INSERTNPC(0xc77e, "FP_ROAM_PART3_139");
                WLD_INSERTNPC(0xc76a, "FP_ROAM_PART3_43");
                WLD_INSERTNPC(0xc77e, "FP_ROAM_PART3_35");
                WLD_INSERTNPC(0xc76a, "FP_ROAM_PART3_40");
            };
        };
    };
    if ((CQ002_AFTERQUEST_SPAWNMONSTERS_CHAPTER_3) == (TRUE)) {
        if ((KAPITEL) == (5)) {
            if ((CQ002_AFTERQUEST_SPAWNMONSTERS_CHAPTER_5) == (FALSE)) {
                if ((NPC_GETDISTTOWP(HERO, "PART3_MOB_31")) >= (0x2ee0)) {
                    CQ002_AFTERQUEST_SPAWNMONSTERS_CHAPTER_5 = TRUE;
                    WLD_INSERTNPC(0xc768, "FP_ROAM_PART3_37");
                    WLD_INSERTNPC(0xc768, "FP_ROAM_PART3_36");
                    WLD_INSERTNPC(0xc768, "FP_ROAM_PART3_43");
                    WLD_INSERTNPC(0xc768, "FP_ROAM_PART3_143");
                };
            };
        };
    };
}

var int EVENTSMANAGER_CQ002.CQ002_AFTERQUEST_SPAWNMONSTERS_CHAPTER_3 = 0;
var int EVENTSMANAGER_CQ002.CQ002_AFTERQUEST_SPAWNMONSTERS_CHAPTER_5 = 0;

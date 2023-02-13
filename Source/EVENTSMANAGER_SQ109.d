func void EVENTSMANAGER_SQ109() {
    var int SQ109_CHAPTER4_SPAWNMONSTERS;
    if ((SQ109_CHAPTER4_SPAWNMONSTERS) == (TRUE)) {
        return;
    };
    if ((LOG_GETSTATUS(MIS_SQ109)) == (LOG_RUNNING)) {
        if ((SQ109_FOUNDBOAT_LOGENTRY) == (FALSE)) {
            if (((((NPC_GETDISTTOWP(HERO, "PART15_PATH_09")) < (500)) && ((SQ109_ROLFPARTY) == (FALSE))) && ((Q105_JORNVINETRIP) == (FALSE))) && ((SQ109_ROLFFOUNDDEAD) == (FALSE))) {
                WLD_SENDTRIGGER("SQ109_ROLF_HELPME");
                B_LOGENTRY(TOPIC_SQ109, LOG_SQ109_FOUNDBOAT);
                SQ109_FOUNDBOAT_LOGENTRY = TRUE;
            };
        };
        if ((SQ109_GOTALLITEMS_LOGENTRY) == (FALSE)) {
            if ((((NPC_HASITEMS(HERO, 37033)) >= (1)) && ((NPC_HASITEMS(HERO, 37034)) >= (1))) && ((NPC_HASITEMS(HERO, 36391)) >= (1))) {
                B_LOGENTRY(TOPIC_SQ109, LOG_SQ109_FOUNDALLITEMS);
                SQ109_GOTALLITEMS_LOGENTRY = TRUE;
            };
        };
        if ((SQ109_ROLFISSAFE) == (FALSE)) {
            if (((NPC_ISDEAD(YWOLF_ROLF_01)) && (NPC_ISDEAD(YWOLF_ROLF_02))) && (NPC_ISDEAD(YWOLF_ROLF_03))) {
                if (((SQ109_ROLFSTATUS) != (3)) && ((NPC_ISINSTATE(BAU_11044_ROLF, 61599)) == (FALSE))) {
                    WLD_SENDUNTRIGGER("SQ109_ROLF_HELPME");
                    SQ109_ROLFISSAFE = TRUE;
                    BAU_11044_ROLF.AIVAR[4] = FALSE;
                    B_STARTOTHERROUTINE(BAU_11044_ROLF, "AfterYWolf");
                    NPC_REFRESH(BAU_11044_ROLF);
                    B_LOGENTRY(TOPIC_SQ109, LOG_SQ109_ROLFISSAFE);
                };
            };
        };
        if ((HLP_ISVALIDNPC(BAU_11044_ROLF)) && (!(NPC_ISDEAD(BAU_11044_ROLF)))) {
            if (((SQ109_ROLFSTATUS_DAY) <= ((WLD_GETDAY()) - (1))) && ((SQ109_ROLFSTATUS) == (1))) {
                B_LOGENTRY(TOPIC_SQ109, LOG_SQ109_MISSINGROLF_DAY1);
                SQ109_ROLFSTATUS = 2;
            };
            if (((SQ109_ROLFSTATUS_DAY) <= ((WLD_GETDAY()) - (2))) && ((SQ109_ROLFSTATUS) == (2))) {
                B_REMOVENPC(58010);
                WLD_INSERTNPC(58017, "PART15_PATH_ROLF_02");
                B_KILLNPC(58017);
                B_LOGENTRY(TOPIC_SQ109, LOG_SQ109_MISSINGROLF_DAY2);
                SQ109_ROLFSTATUS = 3;
            };
        };
        if ((SQ109_ROLFFOUNDDEAD) == (FALSE)) {
            if (((SQ109_ROLFSTATUS) == (3)) && ((NPC_GETDISTTOWP(HERO, "PART15_PATH_ROLF_02")) <= (400))) {
                B_LOGENTRY(TOPIC_SQ109, LOG_SQ109_ROLFDEADBODY);
                SQ109_ROLFFOUNDDEAD = TRUE;
            };
        };
        if ((SQ109_ROLFPARTY) == (TRUE)) {
            if (NPC_ISDEAD(BAU_11044_ROLF)) {
                if ((SQ109_ROLFDIED) == (FALSE)) {
                    B_LOGENTRY(TOPIC_SQ109, LOG_SQ109_ROLFDIED);
                    SQ109_ROLFDIED = TRUE;
                };
            };
        };
    };
    if ((LOG_GETSTATUS(MIS_SQ109)) == (LOG_SUCCESS)) {
        if ((KAPITEL) >= (4)) {
            if ((NPC_GETDISTTOWP(HERO, "PART15_PATH_ROLF_03")) >= (5000)) {
                SQ109_CHAPTER4_SPAWNMONSTERS = TRUE;
                WLD_INSERTNPC(51050, "FP_ROAM_PART15_106");
                WLD_INSERTNPC(51050, "FP_ROAM_PART15_107");
                WLD_INSERTNPC(51048, "FP_ROAM_PART15_141");
                WLD_INSERTNPC(51048, "FP_ROAM_PART15_140");
            };
        };
    };
}


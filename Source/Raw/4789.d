func void EVENTSMANAGER_SQ312() {
    if (((SQ312_FINISH) == (2)) || ((LOG_GETSTATUS(MIS_SQ312)) == (0))) {
        return;
    };
    if ((LOG_GETSTATUS(MIS_SQ312)) == (LOG_RUNNING)) {
        if ((SQ312_ALLGOLEMSDEAD_LOGENTRY) == (FALSE)) {
            if ((((NPC_ISDEAD(SQ312_STONEGOLEM_01)) && (NPC_ISDEAD(SQ312_STONEGOLEM_02))) && (NPC_ISDEAD(SQ312_STONEGOLEM_03))) && (NPC_ISDEAD(SQ312_STONEGOLEM_04))) {
                SQ312_ALLGOLEMSDEAD_LOGENTRY = TRUE;
                if (NPC_ISDEAD(MIL_11130_LEWKO)) {
                    B_LOGENTRY(TOPIC_SQ312, LOG_SQ312_GOLEMDEAD_V2);
                } else {
                    B_LOGENTRY(TOPIC_SQ312, LOG_SQ312_GOLEMDEAD_V1);
                };
            };
        };
    };
    if ((LOG_GETSTATUS(MIS_SQ312)) == (LOG_SUCCESS)) {
        if ((SQ312_FINISH) == (1)) {
            if ((SQ312_FINISH_DAY) == ((WLD_GETDAY()) - (1))) {
                SQ312_REMOVECORPSES();
                SQ312_FINISH = 2;
            };
        };
    };
}

var int EVENTSMANAGER_SQ312.SQ312_ALLGOLEMSDEAD_LOGENTRY = 0;

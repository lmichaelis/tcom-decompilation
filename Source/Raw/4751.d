func void EVENTSMANAGER_SQ113() {
    if (HLP_ISVALIDNPC(NONE_10024_FANE)) {
        if ((SQ113_FANEISDEAD) == (FALSE)) {
            if ((Q509_FANEVOLFZACKE) != (3)) {
                if (((SQ113_FANEISIMMORTALTRUE) == (FALSE)) && ((SQ113_FANEISIMMORTAL) == (FALSE))) {
                    if ((NONE_10024_FANE.ATTRIBUTE[0]) != (NONE_10024_FANE.ATTRIBUTE[1])) {
                        NONE_10024_FANE.ATTRIBUTE[0] = NONE_10024_FANE.ATTRIBUTE[1];
                        NPC_CLEARAIQUEUE(NONE_10024_FANE);
                        NPC_SETATTITUDE(NONE_10024_FANE, ATT_FRIENDLY);
                        NPC_SETTEMPATTITUDE(NONE_10024_FANE, ATT_FRIENDLY);
                        NONE_10024_FANE.AIVAR[1] = CRIME_NONE;
                        NONE_10024_FANE.AIVAR[0] = FIGHT_NONE;
                        SQ113_FANEISIMMORTAL = TRUE;
                    };
                };
            };
            if (NPC_ISDEAD(NONE_10024_FANE)) {
                if ((Q509_FANEVOLFZACKE) == (3)) {
                    Q509_FANEVOLFZACKE = 4;
                } else {
                    Q509_FANEVOLFZACKE = 0;
                } else if ((LOG_GETSTATUS(MIS_SQ113)) == (LOG_RUNNING)) {
                    if ((Q509_FANEVOLFZACKE) != (4)) {
                        LOG_SETSTATUS(_@(MIS_SQ113), TOPIC_SQ113, LOG_SUCCESS);
                        B_LOGENTRY(TOPIC_SQ113, LOG_SQ113_FANEISDEAD);
                        B_GIVEPLAYERXP(XP_SQ113_FANEDEAD_TIER1);
                    };
                } else {
                    B_GIVEPLAYERXP(XP_SQ113_FANEDEAD_TIER2);
                } else {
                    SQ113_FANEISDEAD = TRUE;
                };
            };
        };
    };
}


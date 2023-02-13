func void EVENTSMANAGER_SQ509() {
    var int SQ509_GOTBODOWINPLANT_USED_LOGENTRY;
    var int SQ509_GOTBODOWINPLANT_LOGENTRY;
    var int SQ509_INSIDEBODOWINHOUSE_LOGENTRY;
    var int SQ509_NEARBODOWINHOUSE_LOGENTRY;
    if ((SQ509_FINISHQUESTSTATUS) == (2)) {
        return;
    };
    if ((LOG_GETSTATUS(MIS_SQ509)) == (LOG_RUNNING)) {
        if ((SQ509_SPAWNEVENTS) == (1)) {
            if ((SQ509_KILLEDSCAVENGERS_CITY) == (FALSE)) {
                if ((SQ509_SCAVENGERSAREDEAD_CITY()) == (TRUE)) {
                    SQ509_KILLEDSCAVENGERS_CITY = TRUE;
                    B_LOGENTRY(TOPIC_SQ509, LOG_SQ509_SCAVENGERSAREDEAD_CITY);
                };
            };
            if ((SQ509_KILLEDSCAVENGERS_VILLAGE) == (FALSE)) {
                if ((SQ509_SCAVENGERSAREDEAD_VILLAGE()) == (TRUE)) {
                    SQ509_KILLEDSCAVENGERS_VILLAGE = TRUE;
                    B_LOGENTRY(TOPIC_SQ509, LOG_SQ509_SCAVENGERSAREDEAD_VILLAGE);
                };
            };
            if ((SQ509_KILLEDSCAVENGERS_VINEYARD) == (FALSE)) {
                if ((SQ509_SCAVENGERSAREDEAD_VINEYARD()) == (TRUE)) {
                    SQ509_KILLEDSCAVENGERS_VINEYARD = TRUE;
                    B_LOGENTRY(TOPIC_SQ509, LOG_SQ509_SCAVENGERSAREDEAD_VINEYARD);
                };
            };
            if ((SQ509_KILLEDSCAVENGERS_BODOWIN) == (FALSE)) {
                if ((SQ509_SCAVENGERSAREDEAD_BODOWIN()) == (TRUE)) {
                    SQ509_KILLEDSCAVENGERS_BODOWIN = TRUE;
                    B_LOGENTRY(TOPIC_SQ509, LOG_SQ509_SCAVENGERSAREDEAD_BODOWIN);
                };
            };
            if ((SQ509_NEARBODOWINHOUSE_LOGENTRY) == (FALSE)) {
                if ((NPC_GETDISTTOWP(HERO, "PART3_BODOWINHOUSE")) <= (400)) {
                    SQ509_NEARBODOWINHOUSE_LOGENTRY = TRUE;
                    B_LOGENTRY(TOPIC_SQ509, LOG_SQ509_BODOWINHOUSECLOSED);
                };
            };
            if ((SQ509_INSIDEBODOWINHOUSE_LOGENTRY) == (FALSE)) {
                if ((NPC_GETDISTTOWP(HERO, "PART3_BODOWINHOUSE_PATH03")) <= (400)) {
                    SQ509_INSIDEBODOWINHOUSE_LOGENTRY = TRUE;
                    B_LOGENTRY(TOPIC_SQ509, LOG_SQ509_INSIDEBODOWINHOUSE);
                };
            };
            if ((SQ509_INSIDEBODOWINHOUSE_SCROLLS) == (FALSE)) {
                if ((NPC_GETDISTTOWP(HERO, "PART3_BODOWINHOUSE_SCROLLS")) <= (250)) {
                    SQ509_INSIDEBODOWINHOUSE_SCROLLS = TRUE;
                    B_LOGENTRY(TOPIC_SQ509, LOG_SQ509_SCROLLS);
                };
            };
            if ((SQ509_GOTBODOWINPLANT_LOGENTRY) == (FALSE)) {
                if ((NPC_HASITEMS(HERO, 37477)) >= (1)) {
                    SQ509_GOTBODOWINPLANT_LOGENTRY = TRUE;
                    B_LOGENTRY(TOPIC_SQ509, LOG_SQ509_FOUNDPLANT);
                };
            };
            if ((SQ509_GOTBODOWINPLANT_USED_LOGENTRY) == (FALSE)) {
                if ((NPC_HASITEMS(HERO, 37479)) >= (1)) {
                    SQ509_GOTBODOWINPLANT_USED_LOGENTRY = TRUE;
                    B_LOGENTRY(TOPIC_SQ509, LOG_SQ509_FOUNDUSEDPLANT);
                };
            };
            if ((SQ509_POTIONINUSE) == (1)) {
                if ((VLK_2261_BODOWIN.ATTRIBUTE[0]) != (VLK_2261_BODOWIN.ATTRIBUTE[1])) {
                    VLK_2261_BODOWIN.ATTRIBUTE[0] = VLK_2261_BODOWIN.ATTRIBUTE[1];
                    if ((SQ509_BODOWINISIMMORTAL_LOGENTRY) == (FALSE)) {
                        SQ509_BODOWINISIMMORTAL_LOGENTRY = TRUE;
                        B_LOGENTRY(TOPIC_SQ509, LOG_SQ509_BODOWINNODAMAGE);
                    };
                };
            } else if ((SQ509_POTIONINUSE) == (2)) {
                if ((NPC_ISINSTATE(VLK_2261_BODOWIN, 61603)) == (FALSE)) {
                    if ((VLK_2261_BODOWIN.ATTRIBUTE[0]) >= (30)) {
                        PRINTD("DAMAGE BODOWIN");
                        VLK_2261_BODOWIN.AIVAR[19] += 1;
                        if ((VLK_2261_BODOWIN.AIVAR[19]) >= (2)) {
                            VLK_2261_BODOWIN.ATTRIBUTE[0] -= 25;
                            VLK_2261_BODOWIN.AIVAR[19] = 0;
                        };
                    };
                } else {
                    SQ509_POTIONINUSE = 3;
                    PRINTD("Stop fight");
                    NPC_SETATTITUDE(VLK_2261_BODOWIN, ATT_NEUTRAL);
                    NPC_SETTEMPATTITUDE(VLK_2261_BODOWIN, ATT_NEUTRAL);
                    VLK_2261_BODOWIN.AIVAR[1] = CRIME_NONE;
                    VLK_2261_BODOWIN.AIVAR[0] = FIGHT_NONE;
                };
            };
            if ((SQ509_FOUNDBODOWINMASTER) == (FALSE)) {
                if (((NPC_HASITEMS(HERO, 35746)) >= (1)) && ((NPC_HASITEMS(HERO, 37503)) >= (1))) {
                    SQ509_FOUNDBODOWINMASTER = TRUE;
                    B_LOGENTRY(TOPIC_SQ509, LOG_SQ509_FOUNDBODOWINMASTER);
                };
            };
        };
    };
    if ((LOG_GETSTATUS(MIS_SQ509)) == (LOG_SUCCESS)) {
        if ((SQ509_FINISHQUESTSTATUS) == (1)) {
            if ((NPC_GETDISTTOWP(HERO, "PART8_MONASTERY_GARDEN_13")) >= (2500)) {
                SQ509_FINISHQUESTSTATUS = 2;
                FF_APPLYONCEEXTGT(47034, 0, -(1));
            };
        };
    };
}


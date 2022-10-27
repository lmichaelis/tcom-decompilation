func void EVENTSMANAGER_Q201() {
    if ((LOG_GETSTATUS(MIS_Q201)) == (LOG_RUNNING)) {
        if ((GQ001_CANTRYENTERCITY) == (TRUE)) {
            if ((Q201_MARVINIDEAWOODCUTTERARMOR) == (FALSE)) {
                if (NPC_HASEQUIPPEDARMOR(HERO)) {
                    HEROARMOR = NPC_GETEQUIPPEDARMOR(HERO);
                    if (HLP_ISITEM(HEROARMOR, 0x8afd)) {
                        Q201_MARVINIDEAWOODCUTTERARMOR = TRUE;
                        B_LOGENTRY(TOPIC_Q201, LOG_Q201_WOODCUTTERARMOR);
                    };
                };
            };
            if ((Q201_SEWERSWAY) == (TRUE)) {
                if ((NPC_GETDISTTOWP(HERO, "HARBOUR_PATH_365")) <= (0xfa0)) {
                    Q201_SEWERSWAY = 2;
                    WLD_SENDTRIGGER("CITYEASTGATEOPEN");
                    WLD_SENDTRIGGER("WESTCITYGATE");
                    CITYENTERED = TRUE;
                    Q201_FINISHQUEST();
                    B_STARTOTHERROUTINE(VLK_3018_OLAF, "Q201_SEWERS");
                    NPC_REFRESH(VLK_3018_OLAF);
                    TELEPORTNPCTOWP(0xd500, VLK_3018_OLAF.WP);
                };
            };
        };
    };
    if ((LOG_GETSTATUS(MIS_Q201)) == (LOG_SUCCESS)) {
        if ((Q201_REMOVEKURT) == (FALSE)) {
            PRINTD("Remove Kurt");
            Q201_REMOVEKURT = TRUE;
            B_STARTOTHERROUTINE(BAU_701_KURT, TOT);
            NPC_REFRESH(BAU_701_KURT);
            TELEPORTNPCTOWP(0xe0a6, BAU_701_KURT.WP);
            FF_APPLYONCEEXTGT(0xf213, 0, -(1));
            if (HLP_ISVALIDNPC(ALLIGATOR_Q201)) {
                if ((NPC_ISDEAD(ALLIGATOR_Q201)) == (FALSE)) {
                    B_REMOVENPC(0xc3ea);
                };
            };
        };
    };
}

instance EVENTSMANAGER_Q201.HEROARMOR(C_ITEM)

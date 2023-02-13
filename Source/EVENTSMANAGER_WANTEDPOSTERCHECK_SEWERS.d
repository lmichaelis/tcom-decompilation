func void EVENTSMANAGER_WANTEDPOSTERCHECK_SEWERS() {
    if ((BOUNTY_SEWERS_SPAWN) == (TRUE)) {
        if ((BOUNTY_SEWERS_SPAWNINSEWERS) == (2)) {
            if ((NPC_ISDEAD(BDT_8004_SEWERBOY)) && (NPC_ISDEAD(BDT_8005_SEWERBOY))) {
                BOUNTY_SEWERS_SPAWNINSEWERS = 3;
                PRINTD("Kanalarze nie ¿yj¹");
                LOG_CREATETOPIC(TOPIC_WANTEDPOSTERDONE, LOG_NOTE);
                B_LOGENTRY(TOPIC_WANTEDPOSTERDONE, LOG_WANTEDPOSTER_SEWERS_DONE);
            };
        };
    };
    if ((BOUNTY_BAT_SPAWN) == (TRUE)) {
        if ((BOUNTY_BAT_SPAWNINARCHOLOS) == (2)) {
            if (NPC_ISDEAD(BDT_8022_BAT)) {
                BOUNTY_BAT_SPAWNINARCHOLOS = 3;
                PRINTD("Nietoperz nie ¿yje");
                LOG_CREATETOPIC(TOPIC_WANTEDPOSTERDONE, LOG_NOTE);
                B_LOGENTRY(TOPIC_WANTEDPOSTERDONE, LOG_WANTEDPOSTER_BAT_DONE);
            };
        };
    };
    if ((BOUNTY_RAT_SPAWN) == (TRUE)) {
        if ((BOUNTY_RAT_SPAWNINARCHOLOS) == (2)) {
            if (((NPC_ISDEAD(BDT_8028_RAT)) && (NPC_ISDEAD(BDT_8029_RAT))) && (NPC_ISDEAD(BDT_8030_RAT))) {
                BOUNTY_RAT_SPAWNINARCHOLOS = 3;
                PRINTD("Szczury nie ¿yj¹");
                LOG_CREATETOPIC(TOPIC_WANTEDPOSTERDONE, LOG_NOTE);
                B_LOGENTRY(TOPIC_WANTEDPOSTERDONE, LOG_WANTEDPOSTER_RAT_DONE);
            };
        };
    };
}


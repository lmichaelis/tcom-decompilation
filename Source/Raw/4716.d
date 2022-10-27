func void EVENTSMANAGER_Q504() {
    if ((LOG_GETSTATUS(MIS_Q504)) != (LOG_RUNNING)) {
        return;
    };
    if ((Q504_TAKEWORKERS) == (1)) {
        if ((NPC_GETDISTTONPC(HERO, NONE_202_KESSEL)) >= (0x1194)) {
            if ((Q504_TAKEWORKERS_DAY) <= ((WLD_GETDAY()) - (1))) {
                PRINTD("Ekipa gotowa");
                Q504_TAKEWORKERS = 2;
                Q504_PREPAREWORKERSVOLFZACKE();
            };
        };
    };
}


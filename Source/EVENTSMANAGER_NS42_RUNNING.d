func void EVENTSMANAGER_NS42_RUNNING() {
    if ((NS42_SPAWNED) == (TRUE)) {
        if ((NPC_ISINSTATE(NOV_13682_RUNNINGNOVIZE, 61599)) == (FALSE)) {
            if (((NPC_GETDISTTOWP(NOV_13682_RUNNINGNOVIZE, "PART8_MONASTERY_39")) <= (300)) && ((NS42_RUNORDER) == (0))) {
                NPC_EXCHANGEROUTINE(NOV_13682_RUNNINGNOVIZE, "START5");
                NPC_REFRESH(NOV_13682_RUNNINGNOVIZE);
                NS42_RUNORDER = 1;
                PRINTD("Run order ->1");
            };
            if (((NPC_GETDISTTOWP(NOV_13682_RUNNINGNOVIZE, "PART8_MONASTERY_34")) <= (300)) && ((NS42_RUNORDER) == (1))) {
                NPC_EXCHANGEROUTINE(NOV_13682_RUNNINGNOVIZE, "START2");
                NPC_REFRESH(NOV_13682_RUNNINGNOVIZE);
                NS42_RUNORDER = 2;
                PRINTD("Run order ->2");
            };
            if (((NPC_GETDISTTOWP(NOV_13682_RUNNINGNOVIZE, "PART8_MONASTERY_21")) <= (300)) && ((NS42_RUNORDER) == (2))) {
                NPC_EXCHANGEROUTINE(NOV_13682_RUNNINGNOVIZE, "START3");
                NPC_REFRESH(NOV_13682_RUNNINGNOVIZE);
                NS42_RUNORDER = 3;
                PRINTD("Run order ->3");
            };
            if (((NPC_GETDISTTOWP(NOV_13682_RUNNINGNOVIZE, "PART8_MONASTERY_23")) <= (300)) && ((NS42_RUNORDER) == (3))) {
                NPC_EXCHANGEROUTINE(NOV_13682_RUNNINGNOVIZE, "START4");
                NPC_REFRESH(NOV_13682_RUNNINGNOVIZE);
                NS42_RUNORDER = 4;
                PRINTD("Run order ->4");
            };
            if (((NPC_GETDISTTOWP(NOV_13682_RUNNINGNOVIZE, "PART8_MONASTERY_28")) <= (300)) && ((NS42_RUNORDER) == (4))) {
                NPC_EXCHANGEROUTINE(NOV_13682_RUNNINGNOVIZE, START);
                NPC_REFRESH(NOV_13682_RUNNINGNOVIZE);
                NS42_RUNORDER = 0;
                PRINTD("Run order ->0");
            };
        };
    };
}


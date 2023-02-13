func void EVENTSMANAGER_KQ403() {
    if ((LOG_GETSTATUS(MIS_KQ403)) != (LOG_RUNNING)) {
        return;
    };
    if ((KQ403_GOTBONES) == (1)) {
        if ((NPC_HASITEMS(HERO, 33875)) >= (3)) {
            KQ403_GOTBONES = 2;
            B_LOGENTRY(TOPIC_KQ403, LOG_KQ403_BONES);
        };
    };
    if ((KQ403_GOTEVERYTHING) == (FALSE)) {
        if (NPC_KNOWSINFO(HERO, 70377)) {
            if ((((NPC_HASITEMS(HERO, 33875)) >= (3)) && ((NPC_HASITEMS(HERO, 37328)) >= (1))) && ((NPC_HASITEMS(HERO, 39536)) >= (1))) {
                KQ403_GOTEVERYTHING = 1;
                B_LOGENTRY(TOPIC_KQ403, LOG_KQ403_GOTEVERYTHING);
            };
        };
    };
    if ((KQ403_READYFORDEMOLISHHOUSE) == (1)) {
        if (WLD_ISTIME(6, 0, 22, 0)) {
            if ((NPC_GETDISTTOWP(HERO, "HARBOUR_HOUSE01_37")) <= (250)) {
                KQ403_HOUSEENTER_STOP();
            };
        };
    };
    if ((KQ403_READYFORDEMOLISHHOUSE) == (2)) {
        if (WLD_ISTIME(6, 0, 22, 0)) {
            KQ403_PREPARELASTEVENT();
            KQ403_READYFORDEMOLISHHOUSE = 3;
        };
    };
    if (((KQ403_READYFORDEMOLISHHOUSE) >= (1)) && ((KQ403_READYFORDEMOLISHHOUSE) < (3))) {
        if (WLD_ISTIME(22, 0, 4, 0)) {
            if ((NPC_GETDISTTOWP(HERO, "HARBOUR_HOUSE01_13")) <= (350)) {
                KQ403_HOUSEENTER_FLOOR_STOP();
            };
        };
    };
    if ((KQ403_GHOSTCOUNT) == (3)) {
        KQ403_GHOSTCOUNT = 4;
        KQ403_READYFORDEMOLISHHOUSE = 2;
        AI_OUTPUT(HERO, HERO, "DIA_MARVIN_KQ403_HOUSE_15_01");
        B_LOGENTRY(TOPIC_KQ403, LOG_KQ403_HOUSEDONE);
    };
    if ((KQ403_KALEBCUTSCENE) == (1)) {
        if ((NPC_GETDISTTONPC(HERO, VLK_6003_KALEB)) <= (700)) {
            KQ403_KALEBCUTSCENE = 2;
            CUTSCENE_START(92337);
        };
    };
}


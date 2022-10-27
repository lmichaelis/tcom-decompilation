func void EVENTSMANAGER_SQ408() {
    if ((LOG_GETSTATUS(MIS_SQ408)) == (LOG_RUNNING)) {
        if ((SQ408_CANUSECANON) == (4)) {
            if ((NPC_GETDISTTOWP(HERO, "P17_HAVEN_HUT1_03")) <= (350)) {
                SQ408_CANUSECANON = 5;
                PRINTD("O kurczê.");
                AI_OUTPUT(HERO, HERO, "DIA_Marvin_SQ408_SaulDead_15_01");
            };
        };
    };
    if ((LOG_GETSTATUS(MIS_SQ408)) == (LOG_SUCCESS)) {
        if ((SQ408_CLEANUPSAUL) == (TRUE)) {
            if ((SQ408_CLEANUPSAUL_DAY) == ((WLD_GETDAY()) - (1))) {
                PRINTD("Saul posprz¹tany");
                SQ408_CLEANUPSAUL = 2;
                FF_APPLYONCEEXTGT(0xf41d, 0, -(1));
            };
        };
        if ((SQ408_REMOVEBERTER) == (1)) {
            if ((NPC_GETDISTTONPC(PIR_11125_BERTER, HERO)) >= (0xbb8)) {
                SQ408_REMOVEBERTER = 2;
                PRINTD("Berter mówi papa");
                B_REMOVENPC(0xe4fb);
            };
        };
    };
}


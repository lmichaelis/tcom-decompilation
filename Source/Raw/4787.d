func void EVENTSMANAGER_SQ310() {
    if ((SQ310_PREPARENEWQUEST) == (1)) {
        return;
    };
    if ((LOG_GETSTATUS(MIS_SQ310)) == (LOG_SUCCESS)) {
        if ((KAPITEL) >= (4)) {
            if ((NPC_GETDISTTONPC(HERO, PIR_1329_SAUL)) >= (0xdac)) {
                if ((SQ310_PREPARENEWQUEST) == (0)) {
                    SQ310_PREPARENEWQUEST = 1;
                    FF_APPLYONCEEXTGT(0xfae7, 0, -(1));
                    B_STARTOTHERROUTINE(PIR_1329_SAUL, "SQ408");
                    WLD_INSERTNPC(0xe4fb, "PART17_SQ408_BERTER");
                    WLD_INSERTITEM(0x9064, "FP_PART17_SQ408_CANONBALL_01");
                    WLD_INSERTITEM(0x9064, "FP_PART17_SQ408_CANONBALL_02");
                    WLD_INSERTITEM(0x9064, "FP_PART17_SQ408_CANONBALL_03");
                    WLD_INSERTITEM(0x9064, "FP_PART17_SQ408_CANONBALL_04");
                    WLD_INSERTITEM(0x9064, "FP_PART17_SQ408_CANONBALL_05");
                };
            };
        };
    };
}


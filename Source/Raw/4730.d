func void EVENTSMANAGER_QA304() {
    if ((LOG_GETSTATUS(MIS_QA304)) != (LOG_RUNNING)) {
        return;
    };
    if ((QA304_STOPTIME) == (TRUE)) {
        if (((((((((((((((NPC_GETDISTTOWP(HERO, "HARBOUR_PATH_239")) <= (0x5dc)) || ((NPC_GETDISTTOWP(HERO, "HARBOUR_PATH_404")) <= (0x5dc))) || ((NPC_GETDISTTOWP(HERO, "HARBOUR_PATH_274")) <= (1000))) || ((NPC_GETDISTTOWP(HERO, "SLUMS_PATH_05")) <= (500))) || ((NPC_GETDISTTOWP(HERO, "SLUMS_PATH_282")) <= (0x4b0))) || ((NPC_GETDISTTOWP(HERO, "SLUMS_PATH_138")) <= (0x4b0))) || ((NPC_GETDISTTOWP(HERO, "SLUMS_PATH_96")) <= (0x4b0))) || ((NPC_GETDISTTOWP(HERO, "SLUMS_PATH_95")) <= (0x4b0))) || ((NPC_GETDISTTOWP(HERO, "SLUMS_PATH_100")) <= (0x4b0))) || ((NPC_GETDISTTOWP(HERO, "SLUMS_PATH_149")) <= (0x5dc))) || (C_BODYSTATECONTAINS(HERO, BS_SWIM))) || (C_BODYSTATECONTAINS(HERO, BS_DIVE))) || ((NPC_GETDISTTOWP(HERO, "SLUMS_PATH_54")) >= (0x3a98))) || ((NPC_GETDISTTOWP(HERO, "SLUMS_PATH_210")) >= (0x3a98))) {
            QA304_STOPTIME = 2;
            FADESCREENTOBLACKF(1, 0xf72e, 1000);
        };
    };
    if ((QA304_TAKECHESTSTATUS) == (1)) {
        if (((((NPC_HASITEMS(HERO, 0x915c)) >= (1)) && ((NPC_HASITEMS(HERO, 0x915d)) >= (1))) || (((NPC_HASITEMS(HERO, 0x915e)) >= (1)) && ((NPC_HASITEMS(HERO, 0x915f)) >= (1)))) || (((NPC_HASITEMS(HERO, 0x9160)) >= (1)) && ((NPC_HASITEMS(HERO, 0x9161)) >= (1)))) {
            if ((((NPC_ISINSTATE(VLK_13504_FULKO, 0xf09f)) == (FALSE)) && ((NPC_ISINSTATE(VLK_13505_WORKER, 0xf09f)) == (FALSE))) && ((NPC_ISINSTATE(VLK_10095_OTMAR, 0xf09f)) == (FALSE))) {
                PRINTD("Do slumsów");
                QA304_TAKECHESTSTATUS = 2;
                if ((QA304_FULKOGONE) == (FALSE)) {
                    MDL_APPLYOVERLAYMDS(VLK_13504_FULKO, "HUMANS_BARREL.mds");
                    B_STARTOTHERROUTINE(VLK_13504_FULKO, "QA304_SLUMS");
                    NPC_REFRESH(VLK_13504_FULKO);
                };
                MDL_APPLYOVERLAYMDS(VLK_13505_WORKER, "HUMANS_BARREL.mds");
                if ((QA304_FULKOGONE) == (FALSE)) {
                    B_STARTOTHERROUTINE(VLK_13505_WORKER, "QA304_SLUMS");
                    NPC_REFRESH(VLK_13505_WORKER);
                } else {
                    B_STARTOTHERROUTINE(VLK_13505_WORKER, "QA304_SLUMSV2");
                    B_STARTOTHERROUTINE(VLK_10095_OTMAR, "QA304_SLUMSV2");
                    TELEPORTNPCTOWP(0xcb7c, VLK_10095_OTMAR.WP);
                    NPC_REFRESH(VLK_13505_WORKER);
                    NPC_REFRESH(VLK_10095_OTMAR);
                };
            };
        };
    };
    if ((QA304_TAKECHESTSTATUS) == (2)) {
        if (((((QA304_FULKOGONE) == (FALSE)) && ((NPC_GETDISTTOWP(VLK_13504_FULKO, "SLUMS_QA304_SPOT_01")) <= (450))) && ((NPC_GETDISTTOWP(VLK_13505_WORKER, "SLUMS_QA304_SPOT_02")) <= (450))) || ((((QA304_FULKOGONE) == (TRUE)) && ((NPC_GETDISTTOWP(VLK_13505_WORKER, "SLUMS_QA304_SPOT_02")) <= (450))) && ((QA304_FINISHJOB) == (TRUE)))) {
            if (((NPC_ISINSTATE(VLK_13504_FULKO, 0xf09f)) == (FALSE)) && ((NPC_ISINSTATE(VLK_13505_WORKER, 0xf09f)) == (FALSE))) {
                PRINTD("Pracuj¹");
                QA304_TAKECHESTSTATUS = 3;
                if ((QA304_TELEPORTWORKERS) == (TRUE)) {
                    QA304_TELEPORTWORKERS = FALSE;
                };
                if ((QA304_FULKOGONE) == (FALSE)) {
                    NPC_REFRESH(VLK_13504_FULKO);
                };
                NPC_REFRESH(VLK_13505_WORKER);
                FF_APPLYONCEEXT(0xf662, 75, 5);
            };
        };
    };
    if ((QA304_TELEPORTWORKERS2) == (1)) {
        if ((NPC_GETDISTTONPC(HERO, VLK_10095_OTMAR)) <= (0x5dc)) {
            if (((NPC_GETDISTTONPC(HERO, VLK_13504_FULKO)) >= (0xdac)) && ((NPC_GETDISTTONPC(HERO, VLK_13505_WORKER)) >= (0xdac))) {
                QA304_TELEPORTWORKERS2 = 2;
                PRINTD("Teleport");
                if ((NPC_KNOWSINFO(HERO, 0x11cbf)) == (FALSE)) {
                    TELEPORTNPCTOWP(0xd4e6, "PARTM6_FASTTRAVEL_HERO_01");
                    AI_TELEPORTALWAYS(VLK_13504_FULKO, "PARTM6_FASTTRAVEL_HERO_01", TRUE);
                    if ((NPC_HASITEMS(VLK_13504_FULKO, 0x8cf4)) >= (1)) {
                        NPC_REMOVEINVITEMS(VLK_13504_FULKO, 0x8cf4, 1);
                    };
                };
                TELEPORTNPCTOWP(0xd4ef, "PARTM6_FASTTRAVEL_HERO_01");
                AI_TELEPORTALWAYS(VLK_13505_WORKER, "PARTM6_FASTTRAVEL_HERO_01", TRUE);
                if ((NPC_HASITEMS(VLK_13505_WORKER, 0x8cf4)) >= (1)) {
                    NPC_REMOVEINVITEMS(VLK_13505_WORKER, 0x8cf4, 1);
                };
            };
        };
    };
    if ((QA304_TELEPORTWORKERS) == (FALSE)) {
        if ((QA304_TAKECHESTSTATUS) == (2)) {
            if ((NPC_GETDISTTOWP(HERO, "SLUMS_QA304_SPOT_01")) <= (700)) {
                if (((NPC_GETDISTTONPC(HERO, VLK_13504_FULKO)) >= (0xdac)) && ((NPC_GETDISTTONPC(HERO, VLK_13505_WORKER)) >= (0xdac))) {
                    PRINTD("Teleport");
                    QA304_TELEPORTWORKERS = TRUE;
                    if ((QA304_FULKOGONE) == (FALSE)) {
                        TELEPORTNPCTOWP(0xd4e6, "SLUMS_PATH_53");
                    };
                    TELEPORTNPCTOWP(0xd4ef, "SLUMS_PATH_52");
                };
            };
        };
    };
    if ((QA304_WAREHOUSE_LOGENTRY) == (FALSE)) {
        if (((((NPC_HASITEMS(HERO, 0x915c)) >= (1)) && ((NPC_HASITEMS(HERO, 0x915d)) >= (1))) || (((NPC_HASITEMS(HERO, 0x915e)) >= (1)) && ((NPC_HASITEMS(HERO, 0x915f)) >= (1)))) || (((NPC_HASITEMS(HERO, 0x9160)) >= (1)) && ((NPC_HASITEMS(HERO, 0x9161)) >= (1)))) {
            if ((NPC_GETDISTTOWP(HERO, "SLUMS_QA304_SPOT_01")) <= (750)) {
                QA304_WAREHOUSE_LOGENTRY = TRUE;
                B_LOGENTRY(TOPIC_QA304, LOG_QA304_FIRSTROUND_WAREHOUSE);
            };
        };
    };
    if ((QA304_WOODCHESTSTATUS) == (0)) {
        if (((MOB_HASITEMS("QA304_WOODCHEST_01", 0x915c)) >= (1)) && ((MOB_HASITEMS("QA304_WOODCHEST_01", 0x915d)) >= (1))) {
            PRINTD("Itemy w skrzynce");
            QA304_WOODCHESTSTATUS = 1;
            QA304_GIVEWOODCHESTEXP();
        };
    };
    if ((QA304_WOODCHESTSTATUS) == (1)) {
        if (((MOB_HASITEMS("QA304_WOODCHEST_01", 0x915e)) >= (1)) && ((MOB_HASITEMS("QA304_WOODCHEST_01", 0x915f)) >= (1))) {
            PRINTD("Itemy w skrzynce");
            QA304_WOODCHESTSTATUS = 2;
            QA304_GIVEWOODCHESTEXP();
        };
    };
    if ((QA304_WOODCHESTSTATUS) == (2)) {
        if (((MOB_HASITEMS("QA304_WOODCHEST_02", 0x9160)) >= (1)) && ((MOB_HASITEMS("QA304_WOODCHEST_02", 0x9161)) >= (1))) {
            PRINTD("Itemy w skrzynce");
            QA304_WOODCHESTSTATUS = 3;
            QA304_GIVEWOODCHESTEXP();
            B_LOGENTRY(TOPIC_QA304, LOG_QA304_FINALCRATESREADY);
        };
    };
}


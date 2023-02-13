func void RESTOREROUTINE_DETLOW() {
    if ((((((LOG_GETSTATUS(MIS_SQ204)) == (LOG_RUNNING)) && ((SQ204_DETLOW_RTNCHECK) >= (1))) && ((SQ204_DETLOW_RTNCHECK) < (11))) || (((LOG_GETSTATUS(MIS_QM302)) == (LOG_RUNNING)) && ((QM302_DETLOW_RTNCHECK) >= (1)))) || (((LOG_GETSTATUS(MIS_SQ416)) == (LOG_RUNNING)) && ((SQ416_DETLOW_RTNCHECK) >= (1)))) {
        if (((LOG_GETSTATUS(MIS_SQ204)) == (LOG_RUNNING)) && ((SQ204_DETLOW_RTNCHECK) < (11))) {
            if ((SQ204_DETLOW_RTNCHECK) == (1)) {
                NPC_EXCHANGEROUTINE(VLK_3015_DETLOW, "InnosWait");
            } else if ((SQ204_DETLOW_RTNCHECK) == (2)) {
                NPC_EXCHANGEROUTINE(VLK_3015_DETLOW, "WolfPhase01");
            } else if ((SQ204_DETLOW_RTNCHECK) == (3)) {
                NPC_EXCHANGEROUTINE(VLK_3015_DETLOW, "AfterWolfPhase01");
            } else if ((SQ204_DETLOW_RTNCHECK) == (4)) {
                NPC_EXCHANGEROUTINE(VLK_3015_DETLOW, "RUNTOWOLFPHASE01");
            } else if ((SQ204_DETLOW_RTNCHECK) == (5)) {
                NPC_EXCHANGEROUTINE(VLK_3015_DETLOW, "WOLFPHASE02");
            } else if ((SQ204_DETLOW_RTNCHECK) == (6)) {
                NPC_EXCHANGEROUTINE(VLK_3015_DETLOW, "AFTERWOLFPHASE02");
            } else if ((SQ204_DETLOW_RTNCHECK) == (7)) {
                NPC_EXCHANGEROUTINE(VLK_3015_DETLOW, "AFTERWOLFPHASE02RUNTOHERO");
            } else if ((SQ204_DETLOW_RTNCHECK) == (8)) {
                NPC_EXCHANGEROUTINE(VLK_3015_DETLOW, "WOLFPHASE03");
            } else if ((SQ204_DETLOW_RTNCHECK) == (9)) {
                NPC_EXCHANGEROUTINE(VLK_3015_DETLOW, "WOLFPHASE03WAIT");
            } else if ((SQ204_DETLOW_RTNCHECK) == (10)) {
                NPC_EXCHANGEROUTINE(VLK_3015_DETLOW, "WOLFPHASE03FIGHT");
            };
            return;
        };
        if (((LOG_GETSTATUS(MIS_QM302)) == (LOG_RUNNING)) && ((QM302_DETLOW_RTNCHECK) >= (1))) {
            if ((QM302_DETLOW_RTNCHECK) == (1)) {
                PRINTD("Idzie pod winnice");
                NPC_EXCHANGEROUTINE(VLK_3015_DETLOW, "QM302_SEARCH");
            } else if ((QM302_DETLOW_RTNCHECK) == (2)) {
                PRINTD("Idzie do koszar");
                NPC_EXCHANGEROUTINE(VLK_3015_DETLOW, "QM302_BARRACK");
            };
            return;
        };
        if (((LOG_GETSTATUS(MIS_SQ416)) == (LOG_RUNNING)) && ((SQ416_DETLOW_RTNCHECK) >= (1))) {
            if ((SQ416_DETLOW_RTNCHECK) == (1)) {
                NPC_EXCHANGEROUTINE(VLK_3015_DETLOW, "SQ416_RAMSEYHOUSE");
            } else if ((SQ416_DETLOW_RTNCHECK) == (2)) {
                NPC_EXCHANGEROUTINE(VLK_3015_DETLOW, "SQ416_VILLAGE_INN");
            } else if ((SQ416_DETLOW_RTNCHECK) == (3)) {
                NPC_EXCHANGEROUTINE(VLK_3015_DETLOW, "SQ416_VILLAGE_SLEEP");
            } else if ((SQ416_DETLOW_RTNCHECK) == (4)) {
                NPC_EXCHANGEROUTINE(VLK_3015_DETLOW, TOT);
            } else if ((SQ416_DETLOW_RTNCHECK) == (5)) {
                NPC_EXCHANGEROUTINE(VLK_3015_DETLOW, "SQ416_ALLANBODY");
            } else if ((SQ416_DETLOW_RTNCHECK) == (6)) {
                NPC_EXCHANGEROUTINE(VLK_3015_DETLOW, "SQ416_CAVE_FOLLOW");
            } else if ((SQ416_DETLOW_RTNCHECK) == (7)) {
                NPC_EXCHANGEROUTINE(VLK_3015_DETLOW, "SQ416_CAVE_TIRED");
            } else if ((SQ416_DETLOW_RTNCHECK) == (8)) {
                NPC_EXCHANGEROUTINE(VLK_3015_DETLOW, "SQ416_RAMSEY_WAIT");
            } else if ((SQ416_DETLOW_RTNCHECK) == (9)) {
                NPC_EXCHANGEROUTINE(VLK_3015_DETLOW, "SQ416_RAMSEY_PARTY");
            };
            return;
        };
    };
    PRINTD("Idzie do miasta");
    NPC_EXCHANGEROUTINE(VLK_3015_DETLOW, START);
}


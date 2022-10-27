func void RESTOREROUTINE_GAROS() {
    if (((((LOG_GETSTATUS(MIS_SQ503)) == (LOG_RUNNING)) && ((SQ503_GAROS_RTNCHECK) >= (1))) || (((LOG_GETSTATUS(MIS_KQ407)) == (LOG_RUNNING)) && ((KQ407_GAROS_RTNCHECK) >= (1)))) || (((MARVIN_ARAXOSSPECIALIZATION) == (ARAXOS_SPECIALIZATION_MASTERARCHER)) && ((PROMOTION_GAROS_RTNCHECK) >= (1)))) {
        if (((LOG_GETSTATUS(MIS_SQ503)) == (LOG_RUNNING)) && ((SQ503_GAROS_RTNCHECK) >= (1))) {
            if ((SQ503_GAROS_RTNCHECK) == (1)) {
                NPC_EXCHANGEROUTINE(SLD_1017_GAROS, "SQ503_CITY_SMALLTALK");
            } else if ((SQ503_GAROS_RTNCHECK) == (2)) {
                NPC_EXCHANGEROUTINE(SLD_1017_GAROS, "SQ503_HAVEN");
            };
            return;
        };
        if (((LOG_GETSTATUS(MIS_KQ407)) == (LOG_RUNNING)) && ((KQ407_GAROS_RTNCHECK) >= (1))) {
            if ((KQ407_GAROS_RTNCHECK) == (1)) {
                NPC_EXCHANGEROUTINE(SLD_1017_GAROS, "KQ407_KALEB");
            } else if ((KQ407_GAROS_RTNCHECK) == (2)) {
                NPC_EXCHANGEROUTINE(SLD_1017_GAROS, "KQ407_ORCFIGHT_WAIT");
            } else if ((KQ407_GAROS_RTNCHECK) == (3)) {
                NPC_EXCHANGEROUTINE(SLD_1017_GAROS, "KQ407_ORCFIGHT");
            } else if ((KQ407_GAROS_RTNCHECK) == (4)) {
                NPC_EXCHANGEROUTINE(SLD_1017_GAROS, "KQ407_ORCFIGHT_PLUNDER");
            };
            return;
        };
        if (((MARVIN_ARAXOSSPECIALIZATION) == (ARAXOS_SPECIALIZATION_MASTERARCHER)) && ((PROMOTION_GAROS_RTNCHECK) >= (1))) {
            if ((PROMOTION_GAROS_RTNCHECK) == (1)) {
                NPC_EXCHANGEROUTINE(SLD_1017_GAROS, "PROMOTION");
            };
            return;
        };
    };
    NPC_EXCHANGEROUTINE(SLD_1017_GAROS, START);
    PRINTD("Wraca do miasta");
}


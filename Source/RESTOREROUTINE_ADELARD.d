func void RESTOREROUTINE_ADELARD() {
    if (((((((LOG_GETSTATUS(MIS_Q204)) == (LOG_RUNNING)) && ((Q204_ADELARD_RTNCHECK) >= (1))) || (((LOG_GETSTATUS(MIS_QA305)) == (LOG_RUNNING)) && ((QA305_ADELARD_RTNCHECK) >= (1)))) || (((LOG_GETSTATUS(MIS_QA401)) == (LOG_RUNNING)) && ((QA401_ADELARD_RTNCHECK) >= (1)))) || (((LOG_GETSTATUS(MIS_KQ407)) == (LOG_RUNNING)) && ((KQ407_ADELARD_RTNCHECK) >= (1)))) || (((MARVIN_ARAXOSSPECIALIZATION) == (ARAXOS_SPECIALIZATION_MASTERFIGHTER)) && ((PROMOTION_ADELARD_RTNCHECK) >= (1)))) {
        if (((LOG_GETSTATUS(MIS_Q204)) == (LOG_RUNNING)) && ((Q204_ADELARD_RTNCHECK) >= (1))) {
            if ((Q204_ADELARD_RTNCHECK) == (1)) {
                NPC_EXCHANGEROUTINE(SLD_1000_ADELARD, "Q204_JOIN");
            } else if ((Q204_ADELARD_RTNCHECK) == (2)) {
                NPC_EXCHANGEROUTINE(SLD_1000_ADELARD, "Q204_JOINWAIT");
            };
            return;
        };
        if (((LOG_GETSTATUS(MIS_QA305)) == (LOG_RUNNING)) && ((QA305_ADELARD_RTNCHECK) >= (1))) {
            if ((QA305_ADELARD_RTNCHECK) == (1)) {
                NPC_EXCHANGEROUTINE(SLD_1000_ADELARD, "QA305_SMALLTALK");
            };
            return;
        };
        if (((LOG_GETSTATUS(MIS_QA401)) == (LOG_RUNNING)) && ((QA401_ADELARD_RTNCHECK) >= (1))) {
            if ((QA401_ADELARD_RTNCHECK) == (1)) {
                NPC_EXCHANGEROUTINE(SLD_1000_ADELARD, "QA401_OTMAR");
            } else if ((QA401_ADELARD_RTNCHECK) == (2)) {
                NPC_EXCHANGEROUTINE(SLD_1000_ADELARD, "QA401_BEACH_WAIT");
            } else if ((QA401_ADELARD_RTNCHECK) == (3)) {
                NPC_EXCHANGEROUTINE(SLD_1000_ADELARD, "QA401_BEACH_WAIT2");
            } else if ((QA401_ADELARD_RTNCHECK) == (4)) {
                NPC_EXCHANGEROUTINE(SLD_1000_ADELARD, "QA401_SMUGGLERS_WAIT");
            } else if ((QA401_ADELARD_RTNCHECK) == (5)) {
                NPC_EXCHANGEROUTINE(SLD_1000_ADELARD, "QA401_SMUGGLERS_FIGHT");
            } else if ((QA401_ADELARD_RTNCHECK) == (6)) {
                NPC_EXCHANGEROUTINE(SLD_1000_ADELARD, "QA401_SMUGGLERS_FIGHT_REST");
            } else if ((QA401_ADELARD_RTNCHECK) == (7)) {
                NPC_EXCHANGEROUTINE(SLD_1000_ADELARD, "QA401_FIGHT_CUTSCENE_FINAL");
            } else if ((QA401_ADELARD_RTNCHECK) == (8)) {
                NPC_EXCHANGEROUTINE(SLD_1000_ADELARD, "QA401_FIGHT_CUTSCENE_FINAL_AFTER");
            };
            return;
        };
        if (((LOG_GETSTATUS(MIS_KQ407)) == (LOG_RUNNING)) && ((KQ407_ADELARD_RTNCHECK) >= (1))) {
            if ((KQ407_ADELARD_RTNCHECK) == (1)) {
                NPC_EXCHANGEROUTINE(SLD_1000_ADELARD, "KQ407_KALEB");
            } else if ((KQ407_ADELARD_RTNCHECK) == (2)) {
                NPC_EXCHANGEROUTINE(SLD_1000_ADELARD, "KQ407_ORCFIGHT_WAIT");
            } else if ((KQ407_ADELARD_RTNCHECK) == (3)) {
                NPC_EXCHANGEROUTINE(SLD_1000_ADELARD, "KQ407_ORCFIGHT");
            };
            return;
        };
        if (((MARVIN_ARAXOSSPECIALIZATION) == (ARAXOS_SPECIALIZATION_MASTERFIGHTER)) && ((PROMOTION_ADELARD_RTNCHECK) >= (1))) {
            if ((PROMOTION_ADELARD_RTNCHECK) == (1)) {
                NPC_EXCHANGEROUTINE(SLD_1000_ADELARD, "PROMOTION");
            };
            return;
        };
    };
    NPC_EXCHANGEROUTINE(SLD_1000_ADELARD, START);
}

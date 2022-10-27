func void RESTOREROUTINE_CARAMON() {
    if ((((((LOG_GETSTATUS(MIS_Q206)) == (LOG_RUNNING)) && ((Q206_CARAMON_RTNCHECK) >= (1))) || (((LOG_GETSTATUS(MIS_QA302)) == (LOG_RUNNING)) && ((QA302_CARAMON_RTNCHECK) >= (1)))) || (((LOG_GETSTATUS(MIS_KQ403)) == (LOG_RUNNING)) && ((KQ403_CARAMON_RTNCHECK) >= (1)))) || (((LOG_GETSTATUS(MIS_QA401)) == (LOG_RUNNING)) && ((QA401_CARAMON_RTNCHECK) >= (1)))) {
        if (((LOG_GETSTATUS(MIS_Q206)) == (LOG_RUNNING)) && ((Q206_CARAMON_RTNCHECK) >= (1))) {
            if ((Q206_CARAMON_RTNCHECK) == (1)) {
                NPC_EXCHANGEROUTINE(SLD_1009_CARAMON, "Q206");
            } else if ((Q206_CARAMON_RTNCHECK) == (2)) {
                NPC_EXCHANGEROUTINE(SLD_1009_CARAMON, "Q206_GUIDE_INGOR");
            } else if ((Q206_CARAMON_RTNCHECK) == (3)) {
                NPC_EXCHANGEROUTINE(SLD_1009_CARAMON, "Q206_WAITING_ARAXOS");
            } else if ((Q206_CARAMON_RTNCHECK) == (4)) {
                NPC_EXCHANGEROUTINE(SLD_1009_CARAMON, "Q206_GUIDE_TAVERNE");
            } else if ((Q206_CARAMON_RTNCHECK) == (5)) {
                NPC_EXCHANGEROUTINE(SLD_1009_CARAMON, "Q206_WAITING_TAVERNE2");
            } else if ((Q206_CARAMON_RTNCHECK) == (6)) {
                NPC_EXCHANGEROUTINE(SLD_1009_CARAMON, "Q206_SEARCH_HARBOUR");
            } else if ((Q206_CARAMON_RTNCHECK) == (7)) {
                NPC_EXCHANGEROUTINE(SLD_1009_CARAMON, "Q206_SEARCH_HARBOUR2");
            } else if ((Q206_CARAMON_RTNCHECK) == (8)) {
                NPC_EXCHANGEROUTINE(SLD_1009_CARAMON, "Q206_BEACH_WAITFORFIGHT");
            } else if ((Q206_CARAMON_RTNCHECK) == (9)) {
                NPC_EXCHANGEROUTINE(SLD_1009_CARAMON, "Q206_BEACH_FIGHT");
            } else if ((Q206_CARAMON_RTNCHECK) == (10)) {
                NPC_EXCHANGEROUTINE(SLD_1009_CARAMON, "Q206_BEACH_TALK");
            } else if ((Q206_CARAMON_RTNCHECK) == (11)) {
                NPC_EXCHANGEROUTINE(SLD_1009_CARAMON, "Q206_BEACH_BOAT");
            } else if ((Q206_CARAMON_RTNCHECK) == (12)) {
                NPC_EXCHANGEROUTINE(SLD_1009_CARAMON, "Q206_BEACH_FISHER");
            } else if ((Q206_CARAMON_RTNCHECK) == (13)) {
                NPC_EXCHANGEROUTINE(SLD_1009_CARAMON, "Q206_GUIDE_DOOR");
            } else if ((Q206_CARAMON_RTNCHECK) == (14)) {
                NPC_EXCHANGEROUTINE(SLD_1009_CARAMON, "Q206_DOOR");
            };
            return;
        };
        if (((LOG_GETSTATUS(MIS_QA302)) == (LOG_RUNNING)) && ((QA302_CARAMON_RTNCHECK) >= (1))) {
            if ((QA302_CARAMON_RTNCHECK) == (1)) {
                NPC_EXCHANGEROUTINE(SLD_1009_CARAMON, "QA302_GERSTAND_GUIDE");
            } else if ((QA302_CARAMON_RTNCHECK) == (2)) {
                NPC_EXCHANGEROUTINE(SLD_1009_CARAMON, "QA302_GERSTAND_INN");
            } else if ((QA302_CARAMON_RTNCHECK) == (3)) {
                NPC_EXCHANGEROUTINE(SLD_1009_CARAMON, "QA302_GERSTAND_WAIT");
            } else if ((QA302_CARAMON_RTNCHECK) == (4)) {
                NPC_EXCHANGEROUTINE(SLD_1009_CARAMON, "QA302_GERSTAND_FOLLOW_V1");
            } else if ((QA302_CARAMON_RTNCHECK) == (5)) {
                NPC_EXCHANGEROUTINE(SLD_1009_CARAMON, "QA302_GERSTAND_FOLLOW_V2");
            } else if ((QA302_CARAMON_RTNCHECK) == (6)) {
                NPC_EXCHANGEROUTINE(SLD_1009_CARAMON, "QA302_HARBOUR");
            } else if ((QA302_CARAMON_RTNCHECK) == (7)) {
                NPC_EXCHANGEROUTINE(SLD_1009_CARAMON, "QA302_BANDIT_FIGHT");
            } else if ((QA302_CARAMON_RTNCHECK) == (8)) {
                NPC_EXCHANGEROUTINE(SLD_1009_CARAMON, "QA302_BANDIT_GAROS");
            };
            return;
        };
        if (((LOG_GETSTATUS(MIS_KQ403)) == (LOG_RUNNING)) && ((KQ403_CARAMON_RTNCHECK) >= (1))) {
            if ((KQ403_CARAMON_RTNCHECK) == (1)) {
                NPC_EXCHANGEROUTINE(SLD_1009_CARAMON, "KQ403_GUIDE");
            } else if ((KQ403_CARAMON_RTNCHECK) == (2)) {
                NPC_EXCHANGEROUTINE(SLD_1009_CARAMON, "KQ403_WAITHOUSE");
            } else if ((KQ403_CARAMON_RTNCHECK) == (3)) {
                NPC_EXCHANGEROUTINE(SLD_1009_CARAMON, "KQ403_INSIDEHOUSE");
            } else if ((KQ403_CARAMON_RTNCHECK) == (4)) {
                NPC_EXCHANGEROUTINE(SLD_1009_CARAMON, "KQ403_FLEE");
            } else if ((KQ403_CARAMON_RTNCHECK) == (5)) {
                NPC_EXCHANGEROUTINE(SLD_1009_CARAMON, "KQ403_HARBOUR");
            } else if ((KQ403_CARAMON_RTNCHECK) == (6)) {
                NPC_EXCHANGEROUTINE(SLD_1009_CARAMON, "KQ403_TAVERN");
            } else if ((KQ403_CARAMON_RTNCHECK) == (7)) {
                NPC_EXCHANGEROUTINE(SLD_1009_CARAMON, "KQ403_WAIT");
            } else if ((KQ403_CARAMON_RTNCHECK) == (8)) {
                NPC_EXCHANGEROUTINE(SLD_1009_CARAMON, "KQ403_EVENT");
            };
            return;
        };
        if (((LOG_GETSTATUS(MIS_QA401)) == (LOG_RUNNING)) && ((QA401_CARAMON_RTNCHECK) >= (1))) {
            if ((QA401_CARAMON_RTNCHECK) == (1)) {
                NPC_EXCHANGEROUTINE(SLD_1009_CARAMON, "QA401_BEACH_WAIT");
            } else if ((QA401_CARAMON_RTNCHECK) == (2)) {
                NPC_EXCHANGEROUTINE(SLD_1009_CARAMON, "QA401_BEACH_WAIT2");
            } else if ((QA401_CARAMON_RTNCHECK) == (3)) {
                NPC_EXCHANGEROUTINE(SLD_1009_CARAMON, "QA401_SMUGGLERS_WAIT");
            } else if ((QA401_CARAMON_RTNCHECK) == (4)) {
                NPC_EXCHANGEROUTINE(SLD_1009_CARAMON, "QA401_SMUGGLERS_FIGHT");
            } else if ((QA401_CARAMON_RTNCHECK) == (5)) {
                NPC_EXCHANGEROUTINE(SLD_1009_CARAMON, "QA401_SMUGGLERS_FIGHT_FOLLOW");
            } else if ((QA401_CARAMON_RTNCHECK) == (6)) {
                NPC_EXCHANGEROUTINE(SLD_1009_CARAMON, "QA401_FIGHT_CUTSCENE_FINAL");
            };
            return;
        };
    };
    if ((Q509_CARAMONVOLFZACKE) == (1)) {
        PRINTD("Caramon idzie pod Vardhal");
        NPC_EXCHANGEROUTINE(SLD_1009_CARAMON, "Q509_WAIT");
    };
    NPC_EXCHANGEROUTINE(SLD_1009_CARAMON, START);
}


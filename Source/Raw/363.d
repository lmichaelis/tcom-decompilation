func void RESTOREROUTINE_SUNDER() {
    if ((((((LOG_GETSTATUS(MIS_FAQ001)) == (LOG_RUNNING)) && ((FAQ001_SUNDER_RTNCHECK) >= (1))) && ((SQ416_HUNTERSSLEEP) != (2))) || (((LOG_GETSTATUS(MIS_SQ416)) == (LOG_RUNNING)) && ((SQ416_SUNDER_RTNCHECK) >= (1)))) || (((LOG_GETSTATUS(MIS_QA401)) == (LOG_RUNNING)) && ((QA401_SUNDER_RTNCHECK) >= (1)))) {
        if (((LOG_GETSTATUS(MIS_FAQ001)) == (LOG_RUNNING)) && ((FAQ001_SUNDER_RTNCHECK) >= (1))) {
            if ((FAQ001_SUNDER_RTNCHECK) == (1)) {
                NPC_EXCHANGEROUTINE(SLD_5002_SUNDER, "FAQ001_PUB");
            } else if ((FAQ001_SUNDER_RTNCHECK) == (2)) {
                NPC_EXCHANGEROUTINE(SLD_5002_SUNDER, "FAQ001_GUIDE");
            } else if ((FAQ001_SUNDER_RTNCHECK) == (3)) {
                NPC_EXCHANGEROUTINE(SLD_5002_SUNDER, "FAQ001_WAIT");
            } else if ((FAQ001_SUNDER_RTNCHECK) == (4)) {
                NPC_EXCHANGEROUTINE(SLD_5002_SUNDER, "FAQ001_SMALLTALK");
            };
            return;
        };
        if (((LOG_GETSTATUS(MIS_QA401)) == (LOG_RUNNING)) && ((QA401_SUNDER_RTNCHECK) >= (1))) {
            if ((QA401_SUNDER_RTNCHECK) == (1)) {
                NPC_EXCHANGEROUTINE(SLD_5002_SUNDER, "QA401_BEACH_WAIT");
            } else if ((QA401_SUNDER_RTNCHECK) == (2)) {
                NPC_EXCHANGEROUTINE(SLD_5002_SUNDER, "QA401_BEACH_GUIDE");
            } else if ((QA401_SUNDER_RTNCHECK) == (3)) {
                NPC_EXCHANGEROUTINE(SLD_5002_SUNDER, "QA401_BEACH_WAIT2");
            } else if ((QA401_SUNDER_RTNCHECK) == (4)) {
                NPC_EXCHANGEROUTINE(SLD_5002_SUNDER, "QA401_BEACH_WAIT3");
            } else if ((QA401_SUNDER_RTNCHECK) == (5)) {
                NPC_EXCHANGEROUTINE(SLD_5002_SUNDER, "QA401_SMUGGLERS_WAIT");
            } else if ((QA401_SUNDER_RTNCHECK) == (6)) {
                NPC_EXCHANGEROUTINE(SLD_5002_SUNDER, "QA401_SMUGGLERS_FIGHT");
            } else if ((QA401_SUNDER_RTNCHECK) == (7)) {
                NPC_EXCHANGEROUTINE(SLD_5002_SUNDER, "QA401_SMUGGLERS_FIGHT_REST");
            } else if ((QA401_SUNDER_RTNCHECK) == (8)) {
                NPC_EXCHANGEROUTINE(SLD_5002_SUNDER, "QA401_FIGHT_CUTSCENE_FINAL");
            };
            return;
        };
        if ((((LOG_GETSTATUS(MIS_SQ416)) == (LOG_RUNNING)) && ((SQ416_SUNDER_RTNCHECK) >= (1))) && ((SQ416_HUNTERSSLEEP) != (2))) {
            if ((SQ416_SUNDER_RTNCHECK) == (1)) {
                NPC_EXCHANGEROUTINE(SLD_5002_SUNDER, "SQ416_VILLAGE_INN");
            };
            return;
        };
    };
    if ((FAQ001_TELEPORTSUNDERTOARAXOS) == (2)) {
        NPC_EXCHANGEROUTINE(SLD_5002_SUNDER, "ARAXOS");
    };
    NPC_EXCHANGEROUTINE(SLD_5002_SUNDER, START);
}


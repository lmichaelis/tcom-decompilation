func void RESTOREROUTINE_ARWID() {
    if (((((LOG_GETSTATUS(MIS_QM202)) == (LOG_RUNNING)) && ((QM202_ARWID_RTNCHECK) >= (1))) || (((LOG_GETSTATUS(MIS_QM301)) == (LOG_RUNNING)) && ((QM301_ARWID_RTNCHECK) >= (1)))) || (((LOG_GETSTATUS(MIS_KQ402)) == (LOG_RUNNING)) && ((KQ402_ARWID_RTNCHECK) >= (1)))) {
        if (((LOG_GETSTATUS(MIS_KQ402)) == (LOG_RUNNING)) && ((KQ402_ARWID_RTNCHECK) >= (1))) {
            if ((KQ402_ARWID_RTNCHECK) == (1)) {
                NPC_EXCHANGEROUTINE(MIL_4017_ARWID, "KQ402_FINAL");
            };
            if ((KQ402_ARWID_RTNCHECK) == (2)) {
                NPC_EXCHANGEROUTINE(MIL_4017_ARWID, "KQ402_FINAL");
            };
            return;
        };
        if (((LOG_GETSTATUS(MIS_QM202)) == (LOG_RUNNING)) && ((QM202_ARWID_RTNCHECK) >= (1))) {
            if ((QM202_ARWID_RTNCHECK) == (1)) {
                NPC_EXCHANGEROUTINE(MIL_4017_ARWID, "QM202_GUIDE");
            } else if ((QM202_ARWID_RTNCHECK) == (2)) {
                NPC_EXCHANGEROUTINE(MIL_4017_ARWID, "QM202_GUIDE_V2");
            } else if ((QM202_ARWID_RTNCHECK) == (3)) {
                NPC_EXCHANGEROUTINE(MIL_4017_ARWID, "QM202_GUIDE_V3");
            } else if ((QM202_ARWID_RTNCHECK) == (4)) {
                NPC_EXCHANGEROUTINE(MIL_4017_ARWID, "QM202_INN");
            } else if ((QM202_ARWID_RTNCHECK) == (5)) {
                NPC_EXCHANGEROUTINE(MIL_4017_ARWID, "QM202_WAIT");
            } else if ((QM202_ARWID_RTNCHECK) == (6)) {
                NPC_EXCHANGEROUTINE(MIL_4017_ARWID, "QM202_FIELD");
            } else if ((QM202_ARWID_RTNCHECK) == (7)) {
                NPC_EXCHANGEROUTINE(MIL_4017_ARWID, "QM202_FIELD_FIGHT");
            } else if ((QM202_ARWID_RTNCHECK) == (8)) {
                NPC_EXCHANGEROUTINE(MIL_4017_ARWID, "QM202_FIELD_WAIT");
            } else if ((QM202_ARWID_RTNCHECK) == (9)) {
                NPC_EXCHANGEROUTINE(MIL_4017_ARWID, "QM202_FINISH");
            };
            return;
        };
        if (((LOG_GETSTATUS(MIS_QM301)) == (LOG_RUNNING)) && ((QM301_ARWID_RTNCHECK) >= (1))) {
            if ((QM301_ARWID_RTNCHECK) == (1)) {
                NPC_EXCHANGEROUTINE(MIL_4017_ARWID, "QM301_GUIDE");
            } else if ((QM301_ARWID_RTNCHECK) == (2)) {
                NPC_EXCHANGEROUTINE(MIL_4017_ARWID, "QM301_CUTSCENCE_THIEF");
            } else if ((QM301_ARWID_RTNCHECK) == (3)) {
                NPC_EXCHANGEROUTINE(MIL_4017_ARWID, "QM301_CHASE");
            } else if ((QM301_ARWID_RTNCHECK) == (4)) {
                NPC_EXCHANGEROUTINE(MIL_4017_ARWID, "QM301_GUARD");
            } else if ((QM301_ARWID_RTNCHECK) == (5)) {
                NPC_EXCHANGEROUTINE(MIL_4017_ARWID, "QM301_GUIDE2");
            };
            return;
        };
    };
    if ((Q509_ARWIDVOLFZACKE) == (TRUE)) {
        NPC_EXCHANGEROUTINE(MIL_4017_ARWID, "Q509_WAIT");
    };
    NPC_EXCHANGEROUTINE(MIL_4017_ARWID, START);
}


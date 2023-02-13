func void RESTOREROUTINE_FIGARO() {
    if ((((LOG_GETSTATUS(MIS_CQ006)) == (LOG_RUNNING)) && ((CQ006_FIGARO_RTNCHECK) >= (1))) || (((LOG_GETSTATUS(MIS_QA202)) == (LOG_RUNNING)) && ((QA202_FIGARO_RTNCHECK) >= (1)))) {
        if (((LOG_GETSTATUS(MIS_CQ006)) == (LOG_RUNNING)) && ((CQ006_FIGARO_RTNCHECK) >= (1))) {
            if ((CQ006_FIGARO_RTNCHECK) == (1)) {
                NPC_EXCHANGEROUTINE(VLK_6284_FIGARO, "GUIDE");
            } else if ((CQ006_FIGARO_RTNCHECK) == (2)) {
                NPC_EXCHANGEROUTINE(VLK_6284_FIGARO, "SHIPYARD");
            };
            return;
        };
        if (((LOG_GETSTATUS(MIS_QA202)) == (LOG_RUNNING)) && ((QA202_FIGARO_RTNCHECK) >= (1))) {
            if ((QA202_FIGARO_RTNCHECK) == (1)) {
                NPC_EXCHANGEROUTINE(VLK_6284_FIGARO, "QA202_NEARMINE");
            } else if ((QA202_FIGARO_RTNCHECK) == (2)) {
                NPC_EXCHANGEROUTINE(VLK_6284_FIGARO, "QA202_FOLLOW");
            } else if ((QA202_FIGARO_RTNCHECK) == (3)) {
                NPC_EXCHANGEROUTINE(VLK_6284_FIGARO, "QA202_RUNTORAMHA");
            } else if ((QA202_FIGARO_RTNCHECK) == (4)) {
                NPC_EXCHANGEROUTINE(VLK_6284_FIGARO, "QA202_WAIT");
            };
            return;
        };
    };
    NPC_EXCHANGEROUTINE(VLK_6284_FIGARO, START);
}


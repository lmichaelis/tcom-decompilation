func void RESTOREROUTINE_BEINARD() {
    if ((((LOG_GETSTATUS(MIS_CQ006)) == (LOG_RUNNING)) && ((CQ006_BEINARD_RTNCHECK) >= (1))) || (((LOG_GETSTATUS(MIS_QA401)) == (LOG_RUNNING)) && ((QA401_BEINARD_RTNCHECK) >= (1)))) {
        if (((LOG_GETSTATUS(MIS_CQ006)) == (LOG_RUNNING)) && ((CQ006_BEINARD_RTNCHECK) >= (1))) {
            if ((CQ006_BEINARD_RTNCHECK) == (1)) {
                NPC_EXCHANGEROUTINE(VLK_6283_BEINARD, "CQ006_GUIDE");
            } else if ((CQ006_BEINARD_RTNCHECK) == (2)) {
                NPC_EXCHANGEROUTINE(VLK_6283_BEINARD, "CQ006_SHIPYARD");
            };
            return;
        };
        if (((LOG_GETSTATUS(MIS_QA401)) == (LOG_RUNNING)) && ((QA401_BEINARD_RTNCHECK) >= (1))) {
            if ((QA401_BEINARD_RTNCHECK) == (1)) {
                NPC_EXCHANGEROUTINE(VLK_6283_BEINARD, "QA401_WAIT");
            };
            return;
        };
    };
    NPC_EXCHANGEROUTINE(VLK_6283_BEINARD, START);
}


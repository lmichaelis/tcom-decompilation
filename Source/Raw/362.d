func void RESTOREROUTINE_SALL() {
    if ((((LOG_GETSTATUS(MIS_CQ004)) == (LOG_RUNNING)) && ((CQ004_SALL_RTNCHECK) >= (1))) || (((LOG_GETSTATUS(MIS_QM401)) == (LOG_RUNNING)) && ((QM401_SALL_RTNCHECK) >= (1)))) {
        if (((LOG_GETSTATUS(MIS_CQ004)) == (LOG_RUNNING)) && ((CQ004_SALL_RTNCHECK) >= (1))) {
            if ((CQ004_SALL_RTNCHECK) == (1)) {
                NPC_EXCHANGEROUTINE(MIL_4044_SALL, "CQ004_BARRACK");
            } else if ((CQ004_SALL_RTNCHECK) == (2)) {
                NPC_EXCHANGEROUTINE(MIL_4044_SALL, "CQ004_BARRACKJUDGMENT");
            };
            return;
        };
        if (((LOG_GETSTATUS(MIS_QM401)) == (LOG_RUNNING)) && ((QM401_SALL_RTNCHECK) >= (1))) {
            if ((QM401_SALL_RTNCHECK) == (1)) {
                NPC_EXCHANGEROUTINE(MIL_4044_SALL, "QM401_VIENYARD");
            } else if ((QM401_SALL_RTNCHECK) == (2)) {
                NPC_EXCHANGEROUTINE(MIL_4044_SALL, "QM401_VIENYARD_GUIDE");
            } else if ((QM401_SALL_RTNCHECK) == (3)) {
                NPC_EXCHANGEROUTINE(MIL_4044_SALL, "QM401_VIENYARD_SEARCH");
            } else if ((QM401_SALL_RTNCHECK) == (4)) {
                NPC_EXCHANGEROUTINE(MIL_4044_SALL, "QM401_VIENYARD_FIREPLACE");
            } else if ((QM401_SALL_RTNCHECK) == (5)) {
                NPC_EXCHANGEROUTINE(MIL_4044_SALL, "QM401_VIENYARD_WAIT");
            } else if ((QM401_SALL_RTNCHECK) == (6)) {
                NPC_EXCHANGEROUTINE(MIL_4044_SALL, "QM401_VIENYARD_FIGHT");
            } else if ((QM401_SALL_RTNCHECK) == (7)) {
                NPC_EXCHANGEROUTINE(MIL_4044_SALL, "QM401_VIENYARD_TIRED");
            };
            return;
        };
    };
    NPC_EXCHANGEROUTINE(MIL_4044_SALL, START);
}


func void RESTOREROUTINE_WINSTAN() {
    if ((((LOG_GETSTATUS(MIS_QM401)) == (LOG_RUNNING)) && ((QM401_WINSTAN_RTNCHECK) >= (1))) || (((LOG_GETSTATUS(MIS_SQ503)) == (LOG_RUNNING)) && ((SQ503_WINSTAN_RTNCHECK) >= (1)))) {
        if (((LOG_GETSTATUS(MIS_QM401)) == (LOG_RUNNING)) && ((QM401_WINSTAN_RTNCHECK) >= (1))) {
            if ((QM401_WINSTAN_RTNCHECK) == (1)) {
                NPC_EXCHANGEROUTINE(MIL_924_WINSTAN, "QM401_VIENYARD");
            } else if ((QM401_WINSTAN_RTNCHECK) == (2)) {
                NPC_EXCHANGEROUTINE(MIL_924_WINSTAN, "QM401_VIENYARD_SCYTHE");
            } else if ((QM401_WINSTAN_RTNCHECK) == (3)) {
                NPC_EXCHANGEROUTINE(MIL_924_WINSTAN, "QM401_VINEYARD_SMALLTALK");
            } else if ((QM401_WINSTAN_RTNCHECK) == (4)) {
                NPC_EXCHANGEROUTINE(MIL_924_WINSTAN, "QM401_VINEYARD_PREPAREATTACK");
            } else if ((QM401_WINSTAN_RTNCHECK) == (5)) {
                NPC_EXCHANGEROUTINE(MIL_924_WINSTAN, "QM401_VIENYARD_WAIT");
            } else if ((QM401_WINSTAN_RTNCHECK) == (6)) {
                NPC_EXCHANGEROUTINE(MIL_924_WINSTAN, "QM401_VIENYARD_FIGHT");
            } else if ((QM401_WINSTAN_RTNCHECK) == (7)) {
                NPC_EXCHANGEROUTINE(MIL_924_WINSTAN, "QM401_VIENYARD_TIRED");
            };
            return;
        };
        if (((LOG_GETSTATUS(MIS_SQ503)) == (LOG_RUNNING)) && ((SQ503_WINSTAN_RTNCHECK) >= (1))) {
            if ((SQ503_WINSTAN_RTNCHECK) == (1)) {
                NPC_EXCHANGEROUTINE(MIL_924_WINSTAN, "QM401_VIENYARD");
            } else if ((QM401_SALL_RTNCHECK) == (2)) {
                NPC_EXCHANGEROUTINE(MIL_924_WINSTAN, "QM401_VIENYARD_GUIDE");
            } else if ((QM401_SALL_RTNCHECK) == (3)) {
                NPC_EXCHANGEROUTINE(MIL_924_WINSTAN, "QM401_VIENYARD_SEARCH");
            } else if ((QM401_SALL_RTNCHECK) == (4)) {
                NPC_EXCHANGEROUTINE(MIL_924_WINSTAN, "QM401_VIENYARD_FIREPLACE");
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
    NPC_EXCHANGEROUTINE(MIL_924_WINSTAN, START);
}

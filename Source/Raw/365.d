func void RESTOREROUTINE_WEIGAR() {
    if (((((LOG_GETSTATUS(MIS_QM402)) == (LOG_RUNNING)) && ((QM402_WEIGAR_RTNCHECK) >= (1))) || (((LOG_GETSTATUS(MIS_KQ407)) == (LOG_RUNNING)) && ((KQ407_WEIGAR_RTNCHECK) >= (1)))) || (((MARVIN_MILITIASPECIALIZATION) == (MILITIA_SPECIALIZATION_MASTERCROSSBOWMAN)) && ((PROMOTION_WEIGAR_RTNCHECK) >= (1)))) {
        if (((LOG_GETSTATUS(MIS_QM402)) == (LOG_RUNNING)) && ((QM402_WEIGAR_RTNCHECK) >= (1))) {
            if ((QM402_WEIGAR_RTNCHECK) == (1)) {
                NPC_EXCHANGEROUTINE(MIL_4016_WEGAR, "QM402_GUIDE_SLUMS");
            } else if ((QM402_WEIGAR_RTNCHECK) == (2)) {
                NPC_EXCHANGEROUTINE(MIL_4016_WEGAR, "QM402_GUIDE_ADANOS");
            } else if ((QM402_WEIGAR_RTNCHECK) == (3)) {
                NPC_EXCHANGEROUTINE(MIL_4016_WEGAR, "QM402_GUIDE_BARRACK_WAIT");
            } else if ((QM402_WEIGAR_RTNCHECK) == (4)) {
                NPC_EXCHANGEROUTINE(MIL_4016_WEGAR, "QM402_GUIDE_BARRACK_CUTSCENE");
            } else if ((QM402_WEIGAR_RTNCHECK) == (5)) {
                NPC_EXCHANGEROUTINE(MIL_4016_WEGAR, "QM402_GUIDE_BARRACK_FIGHT");
            };
            return;
        };
        if (((LOG_GETSTATUS(MIS_KQ407)) == (LOG_RUNNING)) && ((KQ407_WEIGAR_RTNCHECK) >= (1))) {
            if ((KQ407_WEIGAR_RTNCHECK) == (1)) {
                NPC_EXCHANGEROUTINE(MIL_4016_WEGAR, "KQ407_KALEB");
            } else if ((KQ407_WEIGAR_RTNCHECK) == (2)) {
                NPC_EXCHANGEROUTINE(MIL_4016_WEGAR, "KQ407_ORCFIGHT_WAIT");
            } else if ((KQ407_WEIGAR_RTNCHECK) == (3)) {
                NPC_EXCHANGEROUTINE(MIL_4016_WEGAR, "KQ407_ORCFIGHT");
            } else if ((KQ407_WEIGAR_RTNCHECK) == (4)) {
                NPC_EXCHANGEROUTINE(MIL_4016_WEGAR, "KQ407_ORCFIGHT_TELEPORT");
            };
            return;
        };
        if (((MARVIN_MILITIASPECIALIZATION) == (MILITIA_SPECIALIZATION_MASTERCROSSBOWMAN)) && ((PROMOTION_WEIGAR_RTNCHECK) >= (1))) {
            if ((PROMOTION_WEIGAR_RTNCHECK) == (1)) {
                NPC_EXCHANGEROUTINE(MIL_4016_WEGAR, "PROMOTION");
            };
            return;
        };
    };
    NPC_EXCHANGEROUTINE(MIL_4016_WEGAR, "MasterCrossbow");
    PRINTD("Wraca do miasta");
}


func void RESTOREROUTINE_OKTAV() {
    if (((((((((LOG_GETSTATUS(MIS_Q203)) == (LOG_RUNNING)) && ((Q203_OKTAV_RTNCHECK) >= (1))) && ((BECOMEAGUARD_TAVERNPART) != (2))) || (((LOG_GETSTATUS(MIS_Q308)) != (LOG_SUCCESS)) && ((Q308_OKTAV_RTNCHECK) >= (1)))) || (((LOG_GETSTATUS(MIS_QM202)) == (LOG_RUNNING)) && ((QM202_OKTAV_RTNCHECK) >= (1)))) || (((LOG_GETSTATUS(MIS_QM401)) == (LOG_RUNNING)) && ((QM401_OKTAV_RTNCHECK) >= (1)))) || (((LOG_GETSTATUS(MIS_SQ505)) == (LOG_RUNNING)) && ((SQ505_OKTAV_RTNCHECK) >= (1)))) || (((LOG_GETSTATUS(MIS_KQ407)) == (LOG_RUNNING)) && ((KQ407_OKTAV_RTNCHECK) >= (1)))) {
        if ((((LOG_GETSTATUS(MIS_Q203)) == (LOG_RUNNING)) && ((Q203_OKTAV_RTNCHECK) >= (1))) && ((BECOMEAGUARD_TAVERNPART) != (2))) {
            if ((Q203_OKTAV_RTNCHECK) == (1)) {
                NPC_EXCHANGEROUTINE(MIL_4001_OKTAV, "JOININGMILITIA");
            } else if ((Q203_OKTAV_RTNCHECK) == (2)) {
                NPC_EXCHANGEROUTINE(MIL_4001_OKTAV, "JOININGMILITIA_TAVERN");
            };
            return;
        };
        if (((LOG_GETSTATUS(MIS_Q308)) != (LOG_SUCCESS)) && ((Q308_OKTAV_RTNCHECK) >= (1))) {
            if ((Q308_OKTAV_RTNCHECK) == (1)) {
                NPC_EXCHANGEROUTINE(MIL_4001_OKTAV, "PRISON");
            } else if ((Q308_OKTAV_RTNCHECK) == (2)) {
                NPC_EXCHANGEROUTINE(MIL_4001_OKTAV, "PRISONCUTSCENE");
            } else if ((KQ407_WEIGAR_RTNCHECK) == (3)) {
                NPC_EXCHANGEROUTINE(MIL_4001_OKTAV, START);
            };
            return;
        };
        if (((LOG_GETSTATUS(MIS_QM401)) == (LOG_RUNNING)) && ((QM401_OKTAV_RTNCHECK) >= (1))) {
            if ((QM401_OKTAV_RTNCHECK) == (1)) {
                NPC_EXCHANGEROUTINE(MIL_4001_OKTAV, "QM401_BARRACK");
            } else if ((QM401_OKTAV_RTNCHECK) == (2)) {
                NPC_EXCHANGEROUTINE(MIL_4001_OKTAV, "QM401_CAVEATTACK_BEFORE_V1");
            } else if ((QM401_OKTAV_RTNCHECK) == (3)) {
                NPC_EXCHANGEROUTINE(MIL_4001_OKTAV, "QM401_CAVEATTACK_BEFORE_V2");
            } else if ((QM401_OKTAV_RTNCHECK) == (4)) {
                NPC_EXCHANGEROUTINE(MIL_4001_OKTAV, "QM401_CAVEATTACK");
            } else if ((QM401_OKTAV_RTNCHECK) == (5)) {
                NPC_EXCHANGEROUTINE(MIL_4001_OKTAV, "QM401_CAVESEARCH");
            } else if ((QM401_OKTAV_RTNCHECK) == (6)) {
                NPC_EXCHANGEROUTINE(MIL_4001_OKTAV, "QM401_CAVEATTACK_AFTER");
            } else if ((QM401_OKTAV_RTNCHECK) == (7)) {
                NPC_EXCHANGEROUTINE(MIL_4001_OKTAV, "QM401_VIENYARD");
            } else if ((QM401_OKTAV_RTNCHECK) == (8)) {
                NPC_EXCHANGEROUTINE(MIL_4001_OKTAV, "QM401_VIENYARD_PATROL");
            } else if ((QM401_OKTAV_RTNCHECK) == (9)) {
                NPC_EXCHANGEROUTINE(MIL_4001_OKTAV, "QM401_VIENYARD_STONES");
            } else if ((QM401_OKTAV_RTNCHECK) == (10)) {
                NPC_EXCHANGEROUTINE(MIL_4001_OKTAV, "QM401_VINEYARD_PREPAREATTACK");
            } else if ((QM401_OKTAV_RTNCHECK) == (11)) {
                NPC_EXCHANGEROUTINE(MIL_4001_OKTAV, "QM401_VIENYARD_WAIT");
            } else if ((QM401_OKTAV_RTNCHECK) == (12)) {
                NPC_EXCHANGEROUTINE(MIL_4001_OKTAV, "QM401_VIENYARD_FIGHT");
            } else if ((QM401_OKTAV_RTNCHECK) == (13)) {
                NPC_EXCHANGEROUTINE(MIL_4001_OKTAV, "QM401_VIENYARD_TIRED");
            };
            return;
        };
        if (((LOG_GETSTATUS(MIS_SQ505)) == (LOG_RUNNING)) && ((SQ505_OKTAV_RTNCHECK) >= (1))) {
            if ((SQ505_OKTAV_RTNCHECK) == (1)) {
                NPC_EXCHANGEROUTINE(MIL_4001_OKTAV, "SQ505_BRIDGE");
            } else if ((SQ505_OKTAV_RTNCHECK) == (2)) {
                NPC_EXCHANGEROUTINE(MIL_4001_OKTAV, "SQ505_TRACE");
            };
            return;
        };
        if (((LOG_GETSTATUS(MIS_KQ407)) == (LOG_RUNNING)) && ((KQ407_OKTAV_RTNCHECK) >= (1))) {
            if ((KQ407_OKTAV_RTNCHECK) == (1)) {
                NPC_EXCHANGEROUTINE(MIL_4001_OKTAV, "KQ407_KALEB");
            } else if ((KQ407_OKTAV_RTNCHECK) == (2)) {
                NPC_EXCHANGEROUTINE(MIL_4001_OKTAV, "KQ407_ORCFIGHT_WAIT");
            } else if ((KQ407_OKTAV_RTNCHECK) == (2)) {
                NPC_EXCHANGEROUTINE(MIL_4001_OKTAV, "KQ407_ORCFIGHT");
            };
            return;
        };
        if (((LOG_GETSTATUS(MIS_QM202)) == (LOG_RUNNING)) && ((QM202_OKTAV_RTNCHECK) >= (1))) {
            if ((QM202_OKTAV_RTNCHECK) == (1)) {
                NPC_EXCHANGEROUTINE(MIL_4001_OKTAV, "QM202_FINISH");
            };
            return;
        };
    };
    NPC_EXCHANGEROUTINE(MIL_4001_OKTAV, START);
    PRINTD("Wraca do miasta");
}


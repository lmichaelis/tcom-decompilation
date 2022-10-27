func void RESTOREROUTINE_RODERICH() {
    if ((((((((LOG_GETSTATUS(MIS_FMQ003)) == (LOG_RUNNING)) && ((FMQ003_RODERICH_RTNCHECK) >= (1))) || (((LOG_GETSTATUS(MIS_CQ005)) == (LOG_RUNNING)) && ((CQ005_RODERICH_RTNCHECK) >= (1)))) || (((LOG_GETSTATUS(MIS_CQ004)) == (LOG_RUNNING)) && ((CQ004_RODERICH_RTNCHECK) >= (1)))) || ((((LOG_GETSTATUS(MIS_Q203)) == (LOG_RUNNING)) && ((Q203_RODERICH_RTNCHECK) >= (1))) && ((BECOMEAGUARD_TAVERNPART) != (2)))) || ((((LOG_GETSTATUS(MIS_Q308)) == (LOG_RUNNING)) && ((Q308_FINALCUTSCENE) != (3))) && ((Q308_RODERICH_RTNCHECK) >= (1)))) || (((LOG_GETSTATUS(MIS_KQ402)) == (LOG_RUNNING)) && ((KQ402_RODERICH_RTNCHECK) >= (1)))) {
        if (((LOG_GETSTATUS(MIS_CQ004)) == (LOG_RUNNING)) && ((CQ004_RODERICH_RTNCHECK) >= (1))) {
            if ((CQ004_RODERICH_RTNCHECK) == (1)) {
                NPC_EXCHANGEROUTINE(MIL_4000_RODERICH, "CQ004_BARRACKJUDGMENT");
            };
            return;
        };
        if (((LOG_GETSTATUS(MIS_CQ005)) == (LOG_RUNNING)) && ((CQ005_RODERICH_RTNCHECK) >= (1))) {
            if ((CQ005_RODERICH_RTNCHECK) == (1)) {
                NPC_EXCHANGEROUTINE(MIL_4000_RODERICH, "CQ005_SMALLTALK");
            };
            return;
        };
        if (((LOG_GETSTATUS(MIS_FMQ003)) == (LOG_RUNNING)) && ((FMQ003_RODERICH_RTNCHECK) >= (1))) {
            if ((FMQ003_RODERICH_RTNCHECK) == (1)) {
                NPC_EXCHANGEROUTINE(MIL_4000_RODERICH, "FMQ003_RoderichWait");
            };
            return;
        };
        if ((((LOG_GETSTATUS(MIS_Q203)) == (LOG_RUNNING)) && ((Q203_RODERICH_RTNCHECK) >= (1))) && ((BECOMEAGUARD_TAVERNPART) != (2))) {
            if ((Q203_RODERICH_RTNCHECK) == (1)) {
                NPC_EXCHANGEROUTINE(MIL_4000_RODERICH, "SPEACH");
            } else if ((Q203_RODERICH_RTNCHECK) == (2)) {
                NPC_EXCHANGEROUTINE(MIL_4000_RODERICH, "JOININGMILITIA_TAVERN");
            };
            return;
        };
        if ((((LOG_GETSTATUS(MIS_Q308)) == (LOG_RUNNING)) && ((Q308_FINALCUTSCENE) != (3))) && ((Q308_RODERICH_RTNCHECK) >= (1))) {
            if ((Q308_RODERICH_RTNCHECK) == (1)) {
                NPC_EXCHANGEROUTINE(MIL_4000_RODERICH, "Q308");
            } else if ((Q308_RODERICH_RTNCHECK) == (2)) {
                NPC_EXCHANGEROUTINE(MIL_4000_RODERICH, "TOWNHALL");
            };
            return;
        };
        if (((LOG_GETSTATUS(MIS_KQ402)) == (LOG_RUNNING)) && ((KQ402_RODERICH_RTNCHECK) >= (1))) {
            if ((KQ402_RODERICH_RTNCHECK) == (1)) {
                NPC_EXCHANGEROUTINE(MIL_4000_RODERICH, "KQ402_BARRACK");
            } else if ((KQ402_RODERICH_RTNCHECK) == (2)) {
                NPC_EXCHANGEROUTINE(MIL_4000_RODERICH, "KQ402_FINAL");
            };
            return;
        };
    };
    NPC_EXCHANGEROUTINE(MIL_4000_RODERICH, START);
}


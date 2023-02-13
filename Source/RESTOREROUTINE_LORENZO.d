func void RESTOREROUTINE_LORENZO() {
    if ((((LOG_GETSTATUS(MIS_QA304)) == (LOG_RUNNING)) && ((QA304_LORENZO_RTNCHECK) >= (1))) || ((((LOG_GETSTATUS(MIS_Q308)) == (LOG_RUNNING)) && ((Q308_LORENZO_RTNCHECK) >= (1))) && ((Q308_FINALCUTSCENE) != (3)))) {
        if ((LOG_GETSTATUS(MIS_QA304)) == (LOG_RUNNING)) {
            if (((QA304_LORENZO_RTNCHECK) == (1)) && ((QA304_LORENZO_RTNCHECK) >= (1))) {
                NPC_EXCHANGEROUTINE(SLD_5000_LORENZO, "QA304_FINISH");
            };
            return;
        };
        if ((((LOG_GETSTATUS(MIS_Q308)) == (LOG_RUNNING)) && ((Q308_LORENZO_RTNCHECK) >= (1))) && ((Q308_FINALCUTSCENE) != (3))) {
            if ((Q308_LORENZO_RTNCHECK) == (1)) {
                NPC_EXCHANGEROUTINE(SLD_5000_LORENZO, "Q308");
            } else if ((Q308_LORENZO_RTNCHECK) == (2)) {
                NPC_EXCHANGEROUTINE(SLD_5000_LORENZO, "TOWNHALL");
            };
            return;
        };
    };
    NPC_EXCHANGEROUTINE(SLD_5000_LORENZO, START);
}


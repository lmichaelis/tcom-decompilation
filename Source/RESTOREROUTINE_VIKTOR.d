func void RESTOREROUTINE_VIKTOR() {
    if ((((LOG_GETSTATUS(MIS_SQ410)) == (LOG_RUNNING)) && ((SQ410_VIKTOR_RTNCHECK) >= (1))) && ((SQ410_ENDING_V1) != (3))) {
        if ((((LOG_GETSTATUS(MIS_SQ410)) == (LOG_RUNNING)) && ((SQ410_VIKTOR_RTNCHECK) >= (1))) && ((SQ410_ENDING_V1) != (3))) {
            if ((SQ410_VIKTOR_RTNCHECK) == (1)) {
                NPC_EXCHANGEROUTINE(BAU_702_VIKTOR, "SQ410_INN");
            } else if ((SQ410_VIKTOR_RTNCHECK) == (2)) {
                NPC_EXCHANGEROUTINE(BAU_702_VIKTOR, "SQ410_OUTSIDEINN");
            } else if ((SQ410_VIKTOR_RTNCHECK) == (3)) {
                NPC_EXCHANGEROUTINE(BAU_702_VIKTOR, "SQ410_FIGHT");
            };
            return;
        };
    };
    if ((KAPITEL) == (5)) {
        NPC_EXCHANGEROUTINE(BAU_702_VIKTOR, "Q505_WAREHOUSE");
        PRINTD("Wraca pod magazyn");
    };
    NPC_EXCHANGEROUTINE(BAU_702_VIKTOR, START);
    PRINTD("Wraca do karczmy");
}


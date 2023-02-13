func void RESTOREROUTINE_GUMBERT() {
    if ((((LOG_GETSTATUS(MIS_SQ127)) == (LOG_RUNNING)) && ((SQ127_GUMBERT_RTNCHECK) >= (1))) || (((LOG_GETSTATUS(MIS_SQ116)) == (LOG_RUNNING)) && ((SQ116_GUMBERT_RTNCHECK) >= (1)))) {
        PRINTD("Gumbertowi przywraca siê RTN");
        if (((LOG_GETSTATUS(MIS_SQ127)) == (LOG_RUNNING)) && ((SQ127_GUMBERT_RTNCHECK) >= (1))) {
            if ((SQ127_GUMBERT_RTNCHECK) == (1)) {
                NPC_EXCHANGEROUTINE(BAU_2243_GUMBERT, "SQ127_WORK");
            } else if ((SQ127_GUMBERT_RTNCHECK) == (2)) {
                NPC_EXCHANGEROUTINE(BAU_2243_GUMBERT, "SQ127_LIST");
            };
            return;
        };
        if (((LOG_GETSTATUS(MIS_SQ116)) == (LOG_RUNNING)) && ((SQ116_GUMBERT_RTNCHECK) >= (1))) {
            if ((SQ116_GUMBERT_RTNCHECK) == (1)) {
                NPC_EXCHANGEROUTINE(BAU_2243_GUMBERT, "SQ116_PLAN");
            } else if ((SQ116_GUMBERT_RTNCHECK) == (2)) {
                NPC_EXCHANGEROUTINE(BAU_2243_GUMBERT, "SQ116_KITCHEN");
            } else if ((SQ116_GUMBERT_RTNCHECK) == (3)) {
                NPC_EXCHANGEROUTINE(BAU_2243_GUMBERT, "SQ116_KITCHEN_OBSERVE");
            } else if ((SQ116_GUMBERT_RTNCHECK) == (4)) {
                NPC_EXCHANGEROUTINE(BAU_2243_GUMBERT, "SQ116_SEARCH");
            } else if ((SQ116_GUMBERT_RTNCHECK) == (5)) {
                NPC_EXCHANGEROUTINE(BAU_2243_GUMBERT, "SQ116_DRINK");
            } else if ((SQ116_GUMBERT_RTNCHECK) == (6)) {
                NPC_EXCHANGEROUTINE(BAU_2243_GUMBERT, "SQ116_CUTSCENE_TERRYDEAD");
            } else if ((SQ116_GUMBERT_RTNCHECK) == (7)) {
                NPC_EXCHANGEROUTINE(BAU_2243_GUMBERT, "SQ116_CUTSCENE_GUMBERT_WAIT");
            } else if ((SQ116_GUMBERT_RTNCHECK) == (8)) {
                NPC_EXCHANGEROUTINE(BAU_2243_GUMBERT, "SQ116_CUTSCENE_GUMBERT");
            };
            return;
        };
    };
    PRINTD("Gumbert wraca na START");
    NPC_EXCHANGEROUTINE(BAU_2243_GUMBERT, START);
}


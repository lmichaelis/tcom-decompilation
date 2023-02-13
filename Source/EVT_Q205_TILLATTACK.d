func void EVT_Q205_TILLATTACK() {
    if ((Q205_TILLKILLSMARVIN) == (1)) {
        if (((NPC_ISINSTATE(MIL_6276_TILL, 61599)) == (FALSE)) && ((NPC_ISINSTATE(HERO, 61599)) == (FALSE))) {
            FF_APPLYONCEEXT(62228, 300, 4);
            HERO.AIVAR[4] = TRUE;
        } else {
            PRINTD("Nie spe³niasz warunków");
            PRINTD("Till cie nie zabije");
        };
    };
    PRINTD("Nie spe³niasz warunków");
    PRINTD("Till cie nie zabije");
}

func void EVT_Q205_FALLDOWNCHECK() {
    if ((Q205_TREEHEROFELL) == (1)) {
        PRINTD("Zabezpieczenie");
        CHANGEVOBCOLLISION("Q205_FALLDOWNCHECK", FALSE, FALSE, FALSE, FALSE);
        Q205_TREEHEROFELL = 2;
        Q205_MARVINCANOPENSACK = TRUE;
        WLD_SENDUNTRIGGER("KM_TREE_01");
        B_LOGENTRY(TOPIC_Q205, LOG_Q205_BRANCHBROKE_V1);
        Q205_TILLKILLSMARVIN = 0;
        Q205_BERTOHELP();
        HERO.AIVAR[4] = FALSE;
        FF_APPLYONCEEXT(62272, 1000, 3);
    };
}


func void KQ406_SAW_FADESCREEN() {
    HERO.AIVAR[4] = FALSE;
    AI_USEMOB(HERO, NPC_GETDETECTEDMOB(HERO), -(1));
    B_PASSTIME(5);
    KQ406_DESTROYWOOD = TRUE;
    FADESCREENFROMBLACK(1);
    B_LOGENTRY(TOPIC_KQ406, LOG_KQ406_WOODDESTROYED);
    KQ406_COUNTPOINTS();
    NPC_REMOVEINVITEM(HERO, 37436);
}

func void KQ406_SAW_S1() {
    var C_NPC HER;
    HER = HLP_GETNPC(50091);
    if ((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(HER))) {
        if ((KQ406_DESTROYWOOD) == (FALSE)) {
            if ((NPC_HASITEMS(HERO, 37436)) >= (1)) {
                FADESCREENTOBLACKF(1, 49041, 1000);
            };
        };
    };
}

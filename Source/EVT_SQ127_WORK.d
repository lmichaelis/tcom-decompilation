func void EVT_SQ127_WORK() {
    var C_NPC HER;
    HER = HLP_GETNPC(50091);
    if ((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(HER))) {
        if ((SQ127_WORKWITHGUMBERT) == (1)) {
            SQ127_WORKWITHGUMBERT = 2;
            FADESCREENTOBLACKF(1, 92046, 1000);
        };
    };
}

func void SQ127_WORKWITHGUMBERT_FADESCREEN() {
    AI_WAIT(HERO, 1065353216);
    AI_USEMOB(HERO, NPC_GETDETECTEDMOB(HERO), -(1));
    B_PASSTIME(3);
    FADESCREENFROMBLACK(1);
    HERO.AIVAR[4] = FALSE;
}


const int FARN_DAMAGE = 10;
var int Q304_FARN_MARVINDIALOGUE = 0;
func void Q304_FARN_S0() {
    HER = HLP_GETNPC(0xc3ab);
    if ((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(HER))) {
        B_ENDPRODUCTIONDIALOG();
        HERO.AIVAR[4] = FALSE;
        if ((HERO.ATTRIBUTE[0]) > ((FARN_DAMAGE) + (2))) {
            HERO.ATTRIBUTE[0] -= FARN_DAMAGE;
        } else {
            HERO.ATTRIBUTE[0] = 2;
        } else if ((Q304_FARN_MARVINDIALOGUE) == (FALSE)) {
            AI_OUTPUT(HERO, HERO, "DIA_MARVIN_FARN_15_01");
            Q304_FARN_MARVINDIALOGUE = TRUE;
        };
    };
}

instance Q304_FARN_S0.HER(C_NPC)

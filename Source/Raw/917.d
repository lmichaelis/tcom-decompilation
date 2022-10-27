func void PUTOUTFIRE_EFFECTS() {
    SND_PLAY("Forge_Water");
    SND_PLAY("MFX_Waterfist_Collide");
    AI_USEMOB(HERO, NPC_GETDETECTEDMOB(HERO), -(1));
}

func void PUTOUTFIRE_S1() {
    HER = HLP_GETNPC(0xc3ab);
    if ((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(HER))) {
        if (HLP_STRCMP(NPC_GETNEARESTWP(HERO), "PARTE2_FIREDOOR_01")) {
            if ((Q602_PUTOUTFIRE_V1) == (0)) {
                Q602_PUTOUTFIRE_V1 = 1;
                WLD_SENDTRIGGER("KM_Q602_FIREHERLSHLIK_01");
                PUTOUTFIRE_EFFECTS();
            };
        } else if (HLP_STRCMP(NPC_GETNEARESTWP(HERO), "PARTE2_FIREDOOR_02")) {
            if ((Q602_PUTOUTFIRE_V2) == (0)) {
                Q602_PUTOUTFIRE_V2 = 1;
                WLD_SENDTRIGGER("KM_Q602_FIREHERLSHLIK_02");
                PUTOUTFIRE_EFFECTS();
            };
        };
    };
}

instance PUTOUTFIRE_S1.HER(C_NPC)
func void PUTOUTFIRE_S0() {
    HERO.AIVAR[4] = FALSE;
    B_ENDPRODUCTIONDIALOG();
}


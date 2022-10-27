var int SQ117CORPSE_DIALOGUE_01 = 0;
var int SQ117CORPSE_DIALOGUE_02 = 0;
var int SQ117CORPSE_COUNT = 0;
func void SQ117CORPSE_STARTCOUNT() {
    SQ117CORPSE_COUNT = (SQ117CORPSE_COUNT) + (1);
    if ((SQ117CORPSE_COUNT) == (1)) {
        if ((SQ117_HELMUD_ASKHUNTERS) == (1)) {
            AI_OUTPUT(HERO, HERO, "DIA_MARVIN_SQ117_Hunter_15_01");
        };
    };
}

func void SQ117CORPSE_S1() {
    HER = HLP_GETNPC(0xc3ab);
    if ((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(HER))) {
        if (HLP_STRCMP(NPC_GETNEARESTWP(HERO), "PART16_SQ117_CORPSE_01")) {
            if ((SQ117CORPSE_DIALOGUE_01) == (0)) {
                SQ117CORPSE_DIALOGUE_01 = 1;
                SQ117CORPSE_STARTCOUNT();
            };
        } else if (HLP_STRCMP(NPC_GETNEARESTWP(HERO), "PART16_SQ117_CORPSE_02")) {
            if ((SQ117CORPSE_DIALOGUE_02) == (0)) {
                SQ117CORPSE_DIALOGUE_02 = 1;
                SQ117CORPSE_STARTCOUNT();
            };
        };
    };
}

instance SQ117CORPSE_S1.HER(C_NPC)
func void SQ117CORPSE_S0() {
    if ((SQ117CORPSE_COUNT) == (2)) {
        SQ117CORPSE_COUNT = 3;
        WLD_INSERTNPC(0xc6cc, "FP_ROAM_PART16_53");
    };
    HERO.AIVAR[4] = FALSE;
    B_ENDPRODUCTIONDIALOG();
}


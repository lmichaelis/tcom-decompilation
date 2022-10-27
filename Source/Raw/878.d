func void ARENAREADY_STARTFIGHT() {
    Q306_LOSTWEAPONINTOURNAMENT = 1;
    WLD_SENDTRIGGER("KM_Q306_ARENAFIGHT");
    Q306_READYFORFIGHT = 2;
}

instance PC_ARENA_END(C_INFO) {
    NPC = 0xc3ab;
    NR = 999;
    CONDITION = PC_ARENA_END_CONDITION;
    INFORMATION = PC_ARENA_END_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int PC_ARENA_END_CONDITION() {
    if ((PLAYER_MOBSI_PRODUCTION) == (MOBSI_ARENA)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void PC_ARENA_END_INFO() {
    B_ENDPRODUCTIONDIALOG();
    HERO.AIVAR[4] = FALSE;
}

instance PC_ARENAREADY(C_INFO) {
    NPC = 0xc3ab;
    CONDITION = PC_ARENAREADY_CONDITION;
    INFORMATION = PC_ARENAREADY_INFO;
    PERMANENT = TRUE;
}

func int PC_ARENAREADY_CONDITION() {
    if ((PLAYER_MOBSI_PRODUCTION) == (MOBSI_ARENA)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void PC_ARENAREADY_INFO() {
    B_ENDPRODUCTIONDIALOG();
    HERO.AIVAR[4] = FALSE;
    ARENAREADY_STARTFIGHT();
}

func void ARENA_S1() {
    HER = HLP_GETNPC(0xc3ab);
    if ((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(HER))) {
        SELF.AIVAR[4] = TRUE;
        PLAYER_MOBSI_PRODUCTION = MOBSI_ARENA;
        AI_PROCESSINFOS(HER);
    };
    PC_ARENAREADY.DESCRIPTION = DIALOG_GOTOARENA;
}

instance ARENA_S1.HER(C_NPC)
func void ARENA_S0() {
    HERO.AIVAR[4] = FALSE;
}

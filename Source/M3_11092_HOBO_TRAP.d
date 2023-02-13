func void M3_11092_HOBO_TRAP() {
    B_IMMEDIATEATTACKPLAYER(VLK_11092_HOBO, AR_KILL);
    VLK_11092_HOBO.FLAGS = 0;
    VLK_11092_HOBO.AIVAR[52] = TRUE;
    NPC_REFRESH(VLK_11093_HOBO);
    B_IMMEDIATEATTACKPLAYER(VLK_11093_HOBO, AR_KILL);
    VLK_11093_HOBO.FLAGS = 0;
    VLK_11093_HOBO.AIVAR[52] = TRUE;
    NPC_REFRESH(VLK_11094_HOBO);
    B_IMMEDIATEATTACKPLAYER(VLK_11094_HOBO, AR_KILL);
    VLK_11094_HOBO.FLAGS = 0;
    VLK_11094_HOBO.AIVAR[52] = TRUE;
}

instance DIA_11092_HOBO_EXIT(C_INFO) {
    NPC = 57798;
    NR = 999;
    CONDITION = DIA_11092_HOBO_EXIT_CONDITION;
    INFORMATION = DIA_11092_HOBO_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_11092_HOBO_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_11092_HOBO_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_11092_HOBO_HELLO_HOBO(C_INFO) {
    NPC = 57798;
    NR = 1;
    CONDITION = DIA_11092_HOBO_HELLO_HOBO_CONDITION;
    INFORMATION = DIA_11092_HOBO_HELLO_HOBO_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_11092_HOBO_HELLO_HOBO_CONDITION() {
    if (((TRAP03_SPAWNED) == (1)) && (NPC_ISDEAD(VLK_11095_BEATENCITIZEN))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_11092_HOBO_HELLO_HOBO_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_11092_Hobo_HELLO_Hobo_03_01");
    AI_STOPPROCESSINFOS(SELF);
    AI_FUNCTION(HERO, 71943);
}

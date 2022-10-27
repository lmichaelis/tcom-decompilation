func void M3_11084_HOBO_TRAP() {
    RND_PROVOCATION_M3_CH2_ATTACK = TRUE;
    B_IMMEDIATEATTACKPLAYER(VLK_11084_HOBO, AR_KILL);
    VLK_11084_HOBO.FLAGS = 0;
    VLK_11084_HOBO.AIVAR[52] = TRUE;
    NPC_REFRESH(VLK_11085_HOBO);
    B_IMMEDIATEATTACKPLAYER(VLK_11085_HOBO, AR_KILL);
    VLK_11085_HOBO.FLAGS = 0;
    VLK_11085_HOBO.AIVAR[52] = TRUE;
    NPC_REFRESH(VLK_11086_HOBO);
    B_IMMEDIATEATTACKPLAYER(VLK_11086_HOBO, AR_KILL);
    VLK_11086_HOBO.FLAGS = 0;
    VLK_11086_HOBO.AIVAR[52] = TRUE;
}

instance DIA_11084_HOBO_EXIT(C_INFO) {
    NPC = 0xcdbd;
    NR = 999;
    CONDITION = DIA_11084_HOBO_EXIT_CONDITION;
    INFORMATION = DIA_11084_HOBO_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_11084_HOBO_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_11084_HOBO_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_11084_HOBO_HELLO_HOBO(C_INFO) {
    NPC = 0xcdbd;
    NR = 1;
    CONDITION = DIA_11084_HOBO_HELLO_HOBO_CONDITION;
    INFORMATION = DIA_11084_HOBO_HELLO_HOBO_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_11084_HOBO_HELLO_HOBO_CONDITION() {
    if ((((RND_PROVOCATION_M3_CH2) == (1)) && ((LOG_GETSTATUS(MIS_FMQ003)) != (LOG_RUNNING))) && ((RND_PROVOCATION_M3_CH2_ATTACK) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_11084_HOBO_HELLO_HOBO_INFO() {
    RND_TODAYSPAWNED = (RND_TODAYSPAWNED) + (1);
    RND_TOTALSPAWNED = (RND_TOTALSPAWNED) + (1);
    AI_OUTPUT(SELF, OTHER, "DIA_11084_Hobo_HELLO_Hobo_03_01");
    AI_STOPPROCESSINFOS(SELF);
    AI_FUNCTION(HERO, 0x118fd);
}

instance DIA_11084_HOBO_JUSTINCASE(C_INFO) {
    NPC = 0xcd77;
    NR = 1;
    CONDITION = DIA_11084_HOBO_JUSTINCASE_CONDITION;
    INFORMATION = DIA_11084_HOBO_JUSTINCASE_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_11084_HOBO_JUSTINCASE_CONDITION() {
    if ((((RND_PROVOCATION_M3_CH2) == (1)) && ((LOG_GETSTATUS(MIS_FMQ003)) != (LOG_RUNNING))) && ((RND_PROVOCATION_M3_CH2_ATTACK) == (FALSE))) {
        return FALSE;
    };
    if (NPC_ISINSTATE(SELF, 0xf09f)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_11084_HOBO_JUSTINCASE_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_11084_Hobo_JustInCase_03_01");
    AI_STOPPROCESSINFOS(SELF);
}

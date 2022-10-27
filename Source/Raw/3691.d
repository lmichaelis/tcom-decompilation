func void M6_11152_THUG_TRAP() {
    RND_PROVOCATION_M6_CH3_ATTACK = TRUE;
    B_IMMEDIATEATTACKPLAYER(NONE_11152_THUG, AR_KILL);
    NONE_11152_THUG.FLAGS = 0;
    NPC_REFRESH(NONE_11151_THUG);
    B_IMMEDIATEATTACKPLAYER(NONE_11151_THUG, AR_KILL);
    NONE_11151_THUG.FLAGS = 0;
}

instance DIA_11152_THUG_EXIT(C_INFO) {
    NPC = 0xd28c;
    NR = 999;
    CONDITION = DIA_11152_THUG_EXIT_CONDITION;
    INFORMATION = DIA_11152_THUG_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_11152_THUG_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_11152_THUG_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_11152_THUG_HELLO_M6(C_INFO) {
    NPC = 0xd28c;
    NR = 1;
    CONDITION = DIA_11152_THUG_HELLO_M6_CONDITION;
    INFORMATION = DIA_11152_THUG_HELLO_M6_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_11152_THUG_HELLO_M6_CONDITION() {
    if ((((RND_PROVOCATION_M6_CH3) == (1)) && ((KAPITEL) >= (3))) && ((RND_PROVOCATION_M6_CH3_ATTACK) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_11152_THUG_HELLO_M6_INFO() {
    RND_TODAYSPAWNED = (RND_TODAYSPAWNED) + (1);
    RND_TOTALSPAWNED = (RND_TOTALSPAWNED) + (1);
    AI_OUTPUT(SELF, OTHER, "DIA_11152_Thug_HELLO_M6_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_11152_Thug_HELLO_M6_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_11152_Thug_HELLO_M6_03_03");
    AI_STOPPROCESSINFOS(SELF);
    AI_FUNCTION(HERO, 0x1098f);
}

instance DIA_11152_THUG_JUSTINCASE(C_INFO) {
    NPC = 0xd28c;
    NR = 1;
    CONDITION = DIA_11152_THUG_JUSTINCASE_CONDITION;
    INFORMATION = DIA_11152_THUG_JUSTINCASE_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_11152_THUG_JUSTINCASE_CONDITION() {
    if ((((RND_PROVOCATION_M6_CH3) == (1)) && ((KAPITEL) >= (3))) && ((RND_PROVOCATION_M6_CH3_ATTACK) == (FALSE))) {
        return FALSE;
    };
    if (NPC_ISINSTATE(SELF, 0xf09f)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_11152_THUG_JUSTINCASE_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_11152_Thug_JustInCase_03_01");
    AI_STOPPROCESSINFOS(SELF);
}


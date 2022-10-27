func void M1_11070_THUG_TRAP() {
    B_IMMEDIATEATTACKPLAYER(NONE_11070_THUG, AR_KILL);
    NONE_11070_THUG.FLAGS = 0;
    NPC_REFRESH(NONE_11071_THUG);
    B_IMMEDIATEATTACKPLAYER(NONE_11071_THUG, AR_KILL);
    NONE_11071_THUG.FLAGS = 0;
    NPC_REFRESH(NONE_11072_THUG);
    B_IMMEDIATEATTACKPLAYER(NONE_11072_THUG, AR_KILL);
    NONE_11072_THUG.FLAGS = 0;
    TRAP01_ATTACK = TRUE;
}

instance DIA_NONE_11070_THUG_EXIT(C_INFO) {
    NPC = 0xcc25;
    NR = 999;
    CONDITION = DIA_NONE_11070_THUG_EXIT_CONDITION;
    INFORMATION = DIA_NONE_11070_THUG_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_NONE_11070_THUG_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_NONE_11070_THUG_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_NONE_11070_THUG_ITISATRAP(C_INFO) {
    NPC = 0xcc25;
    NR = 1;
    CONDITION = DIA_NONE_11070_THUG_ITISATRAP_CONDITION;
    INFORMATION = DIA_NONE_11070_THUG_ITISATRAP_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_NONE_11070_THUG_ITISATRAP_CONDITION() {
    if ((TRAP01_ATTACK) == (FALSE)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_NONE_11070_THUG_ITISATRAP_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_NONE_11070_Thug_ItIsATrap_03_01");
    AI_STOPPROCESSINFOS(SELF);
    AI_FUNCTION(HERO, 0x10954);
}

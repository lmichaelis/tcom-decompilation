instance DIA_NONE_11073_THUG_EXIT(C_INFO) {
    NPC = 0xcf55;
    NR = 999;
    CONDITION = DIA_NONE_11073_THUG_EXIT_CONDITION;
    INFORMATION = DIA_NONE_11073_THUG_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_NONE_11073_THUG_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_NONE_11073_THUG_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_NONE_11073_THUG_TRAP_M3(C_INFO) {
    NPC = 0xcf55;
    NR = 1;
    CONDITION = DIA_NONE_11073_THUG_TRAP_M3_CONDITION;
    INFORMATION = DIA_NONE_11073_THUG_TRAP_M3_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_NONE_11073_THUG_TRAP_M3_CONDITION() {
    return TRUE;
}

func void DIA_NONE_11073_THUG_TRAP_M3_INFO() {
    AI_OUTPUT(SELF, OTHER, "Dia_NONE_11073_Thug_TRAP_M3_03_01");
    AI_OUTPUT(SELF, OTHER, "Dia_NONE_11073_Thug_TRAP_M3_03_02");
    INFO_CLEARCHOICES(0x1095e);
    INFO_ADDCHOICE(0x1095e, "Yes.", 0x10961);
    INFO_ADDCHOICE(0x1095e, "No.", 0x10962);
}

func void DIA_NONE_11073_THUG_TRAP_M3_YES() {
    AI_OUTPUT(OTHER, SELF, "Dia_NONE_11073_Thug_TRAP_M3_YES_15_01");
    AI_OUTPUT(SELF, OTHER, "Dia_NONE_11073_Thug_TRAP_M3_YES_03_02");
    AI_STOPPROCESSINFOS(SELF);
    B_ATTACK(SELF, OTHER, AR_KILL, 1);
}

func void DIA_NONE_11073_THUG_TRAP_M3_NO() {
    AI_OUTPUT(OTHER, SELF, "Dia_NONE_11073_Thug_TRAP_M3_NO_15_01");
    AI_OUTPUT(SELF, OTHER, "Dia_NONE_11073_Thug_TRAP_M3_NO_03_02");
    AI_STOPPROCESSINFOS(SELF);
    B_ATTACK(SELF, OTHER, AR_KILL, 1);
}


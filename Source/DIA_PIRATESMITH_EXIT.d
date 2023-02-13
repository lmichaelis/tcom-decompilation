instance DIA_PIRATESMITH_EXIT(C_INFO) {
    NPC = 58908;
    NR = 999;
    CONDITION = DIA_PIRATESMITH_EXIT_CONDITION;
    INFORMATION = DIA_PIRATESMITH_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_PIRATESMITH_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_PIRATESMITH_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_PIRATESMITH_TRAP59_START(C_INFO) {
    NPC = 58908;
    NR = 1;
    CONDITION = DIA_PIRATESMITH_TRAP59_START_CONDITION;
    INFORMATION = DIA_PIRATESMITH_TRAP59_START_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Will you let me use the anvil?";
}

func int DIA_PIRATESMITH_TRAP59_START_CONDITION() {
    return TRUE;
}

func void DIA_PIRATESMITH_TRAP59_START_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_PirateSmith_Trap59_Start_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_PirateSmith_Trap59_Start_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_PirateSmith_Trap59_Start_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_PirateSmith_Trap59_Start_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_PirateSmith_Trap59_Start_03_05");
    AI_STOPPROCESSINFOS(SELF);
    B_ATTACK(SELF, OTHER, AR_KILL, 1);
}


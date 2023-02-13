instance DIA_RENEGADE_EXIT2(C_INFO) {
    NPC = 57095;
    NR = 999;
    CONDITION = DIA_RENEGADE_EXIT2_CONDITION;
    INFORMATION = DIA_RENEGADE_EXIT2_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_RENEGADE_EXIT2_CONDITION() {
    return TRUE;
}

func void DIA_RENEGADE_EXIT2_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_RENEGADE_RENEGADE2HELLO(C_INFO) {
    NPC = 57095;
    NR = 1;
    CONDITION = DIA_RENEGADE_RENEGADE2HELLO_CONDITION;
    INFORMATION = DIA_RENEGADE_RENEGADE2HELLO_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "What's the city guard doing here?";
}

func int DIA_RENEGADE_RENEGADE2HELLO_CONDITION() {
    return TRUE;
}

func void DIA_RENEGADE_RENEGADE2HELLO_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Renegade_Renegade2Hello_15_01");
    AI_WAITTILLEND(SELF, OTHER);
    AI_STOPPROCESSINFOS(SELF);
    AI_FUNCTION(SELF, 94661);
}


instance DIA_13873_FARMER_EXIT(C_INFO) {
    NPC = 0xd5eb;
    NR = 999;
    CONDITION = DIA_13873_FARMER_EXIT_CONDITION;
    INFORMATION = DIA_13873_FARMER_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_13873_FARMER_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_13873_FARMER_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_13873_FARMER_HORNYFARMESAFTER(C_INFO) {
    NPC = 0xd5eb;
    NR = 6;
    CONDITION = DIA_13873_FARMER_HORNYFARMESAFTER_CONDITION;
    INFORMATION = DIA_13873_FARMER_HORNYFARMESAFTER_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_13873_FARMER_HORNYFARMESAFTER_CONDITION() {
    if (NPC_ISINSTATE(SELF, 0xf09f)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_13873_FARMER_HORNYFARMESAFTER_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_13873_Farmer_HornyFarmesAfter_03_01");
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_13873_FARMER_YOUWILLHAVETROUBLE(C_INFO) {
    NPC = 0xd5eb;
    NR = 3;
    CONDITION = DIA_13873_FARMER_YOUWILLHAVETROUBLE_CONDITION;
    INFORMATION = DIA_13873_FARMER_YOUWILLHAVETROUBLE_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_13873_FARMER_YOUWILLHAVETROUBLE_CONDITION() {
    if ((SELF.AIVAR[66]) == (TRUE)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_13873_FARMER_YOUWILLHAVETROUBLE_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_13873_Farmer_YouWillHaveTrouble_03_01");
    AI_STOPPROCESSINFOS(SELF);
}


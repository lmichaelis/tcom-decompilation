instance DIA_DRUNKENSAILOR_EXIT_02(C_INFO) {
    NPC = 0xd60c;
    NR = 999;
    CONDITION = DIA_DRUNKENSAILOR_EXIT_02_CONDITION;
    INFORMATION = DIA_DRUNKENSAILOR_EXIT_02_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_DRUNKENSAILOR_EXIT_02_CONDITION() {
    return TRUE;
}

func void DIA_DRUNKENSAILOR_EXIT_02_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_DRUNKENSAILOR_DRUNKEN_SAILOR_02(C_INFO) {
    NPC = 0xd60c;
    NR = 1;
    CONDITION = DIA_DRUNKENSAILOR_DRUNKEN_SAILOR_02_CONDITION;
    INFORMATION = DIA_DRUNKENSAILOR_DRUNKEN_SAILOR_02_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_DRUNKENSAILOR_DRUNKEN_SAILOR_02_CONDITION() {
    if (WLD_ISTIME(22, 0, 5, 0)) {
        if (NPC_KNOWSINFO(OTHER, 0x11926)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_DRUNKENSAILOR_DRUNKEN_SAILOR_02_INFO() {
    CREATEINVITEMS(SELF, 0x84c0, 2);
    B_GIVEINVITEMS(SELF, OTHER, 0x84c0, 1);
    AI_OUTPUT(SELF, OTHER, "DIA_DrunkenSailor_DRUNKEN_SAILOR_02_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_DrunkenSailor_DRUNKEN_SAILOR_02_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_DrunkenSailor_DRUNKEN_SAILOR_02_03_03");
    AI_WAITTILLEND(OTHER, SELF);
    AI_WAITTILLEND(SELF, OTHER);
    AI_STOPLOOKAT(SELF);
    AI_USEITEM(SELF, 0x84c0);
    AI_WAITTILLEND(OTHER, SELF);
    AI_WAITTILLEND(SELF, OTHER);
    AI_LOOKATNPC(SELF, OTHER);
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_DRUNKENSAILOR_AMBIENT_SAILOR_02(C_INFO) {
    NPC = 0xd60c;
    NR = 3;
    CONDITION = DIA_DRUNKENSAILOR_AMBIENT_SAILOR_02_CONDITION;
    INFORMATION = DIA_DRUNKENSAILOR_AMBIENT_SAILOR_02_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_DRUNKENSAILOR_AMBIENT_SAILOR_02_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 0x11929)) && (NPC_ISINSTATE(SELF, 0xf09f))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_DRUNKENSAILOR_AMBIENT_SAILOR_02_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_DrunkenSailor_DRUNKEN_SAILOR_02_03_03");
    AI_STOPPROCESSINFOS(SELF);
}

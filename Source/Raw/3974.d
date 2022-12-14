instance DIA_JOE_GIVEBEER(C_INFO) {
    NPC = 0xcd32;
    NR = 850;
    CONDITION = DIA_JOE_GIVEBEER_CONDITION;
    INFORMATION = DIA_JOE_GIVEBEER_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Do you have anything to drink?";
}

func int DIA_JOE_GIVEBEER_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x110a4)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_JOE_GIVEBEER_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Bastian_Beer_15_00");
    AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
    B_SAY(SELF, OTHER, "$REWARD_CALM");
    CREATEINVITEMS(SELF, 0x8e10, 2);
    B_GIVEINVITEMS(SELF, OTHER, 0x8e10, 1);
    AI_WAITTILLEND(OTHER, SELF);
    AI_STOPLOOKAT(SELF);
    AI_STOPLOOKAT(OTHER);
    AI_USEITEM(SELF, 0x8e10);
    AI_WAIT(OTHER, 0x3e4ccccd);
    AI_USEITEM(OTHER, 0x8e10);
    B_GIVEPLAYERXP(XP_READBOOKITEM);
}


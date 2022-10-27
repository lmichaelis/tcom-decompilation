instance DIA_SCAMPIRATE_EXIT(C_INFO) {
    NPC = 0xe622;
    NR = 999;
    CONDITION = DIA_SCAMPIRATE_EXIT_CONDITION;
    INFORMATION = DIA_SCAMPIRATE_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_SCAMPIRATE_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_SCAMPIRATE_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_SCAMPIRATE_NS58_SCAM(C_INFO) {
    NPC = 0xe622;
    NR = 1;
    CONDITION = DIA_SCAMPIRATE_NS58_SCAM_CONDITION;
    INFORMATION = DIA_SCAMPIRATE_NS58_SCAM_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_SCAMPIRATE_NS58_SCAM_CONDITION() {
    return TRUE;
}

func void DIA_SCAMPIRATE_NS58_SCAM_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_ScamPirate_NS58_Scam_03_01");
    AI_OUTPUT(OTHER, SELF, "DIA_ScamPirate_NS58_Scam_15_02");
    AI_OUTPUT(SELF, OTHER, "DIA_ScamPirate_NS58_Scam_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_ScamPirate_NS58_Scam_03_04");
    NPC_EXCHANGEROUTINE(SELF, TOT);
    INFO_CLEARCHOICES(0x14c65);
    INFO_ADDCHOICE(0x14c65, "I think you're not serious.", 0x14c68);
    if ((NPC_HASITEMS(OTHER, 0x859b)) >= (NS58_SCAMGOLD)) {
        INFO_ADDCHOICE(0x14c65, "Well... so be it.", 0x14c69);
    };
}

func void DIA_SCAMPIRATE_NS58_YOUFUCKER() {
    AI_OUTPUT(OTHER, SELF, "DIA_ScamPirate_NS58_YouFucker_15_01");
    AI_OUTPUT(OTHER, SELF, "DIA_ScamPirate_NS58_YouFucker_15_02");
    AI_OUTPUT(SELF, OTHER, "DIA_ScamPirate_NS58_YouFucker_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_ScamPirate_NS58_YouFucker_03_04");
    AI_STOPPROCESSINFOS(SELF);
}

func void DIA_SCAMPIRATE_NS58_MARVINIDIOT() {
    AI_OUTPUT(OTHER, SELF, "DIA_ScamPirate_NS58_MarvinIdiot_15_01");
    B_GIVEINVITEMS(OTHER, SELF, 0x859b, NS58_SCAMGOLD);
    CREATEINVITEMS(SELF, 0x837c, NS58_SCAMOLDGOLD);
    B_GIVEINVITEMS(SELF, OTHER, 0x837c, NS58_SCAMOLDGOLD);
    AI_OUTPUT(SELF, OTHER, "DIA_ScamPirate_NS58_MarvinIdiot_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_ScamPirate_NS58_MarvinIdiot_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_ScamPirate_NS58_MarvinIdiot_03_04");
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_SCAMPIRATE_NS58_AFTEREVENT(C_INFO) {
    NPC = 0xe622;
    NR = 4;
    CONDITION = DIA_SCAMPIRATE_NS58_AFTEREVENT_CONDITION;
    INFORMATION = DIA_SCAMPIRATE_NS58_AFTEREVENT_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_SCAMPIRATE_NS58_AFTEREVENT_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 0x14c65)) && (NPC_ISINSTATE(SELF, 0xf09f))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_SCAMPIRATE_NS58_AFTEREVENT_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_ScamPirate_NS58_AfterEvent_03_01");
    AI_STOPPROCESSINFOS(SELF);
}

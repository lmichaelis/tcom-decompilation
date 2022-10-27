instance DIA_11303_OLDMAN_EXIT(C_INFO) {
    NPC = 0xd12b;
    NR = 999;
    CONDITION = DIA_11303_OLDMAN_EXIT_CONDITION;
    INFORMATION = DIA_11303_OLDMAN_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_11303_OLDMAN_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_11303_OLDMAN_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_11303_OLDMAN_ITISAROBBERY(C_INFO) {
    NPC = 0xd12b;
    NR = 1;
    CONDITION = DIA_11303_OLDMAN_ITISAROBBERY_CONDITION;
    INFORMATION = DIA_11303_OLDMAN_ITISAROBBERY_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_11303_OLDMAN_ITISAROBBERY_CONDITION() {
    return TRUE;
}

func void DIA_11303_OLDMAN_ITISAROBBERY_INFO() {
    AI_LOGENTRY(TOPIC_SQ314, LOG_SQ314_IAMBANDIT);
    INFO_CLEARCHOICES(0x11b51);
    INFO_ADDCHOICE(0x11b51, "Give me the gold, you old bastard!", 0x11b56);
    INFO_ADDCHOICE(0x11b51, "This is a robbery!", 0x11b55);
}

func void DIA_11303_OLDMAN_ITISAROBBERY_HELPME() {
    AI_OUTPUT(SELF, OTHER, "DIA_11303_OldMan_ItIsARobbery_HelpMe_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_11303_OldMan_ItIsARobbery_HelpMe_03_02");
    AI_STOPPROCESSINFOS(SELF);
}

func void DIA_11303_OLDMAN_ITISAROBBERYREALLY() {
    AI_OUTPUT(OTHER, SELF, "DIA_11303_OldMan_ItIsARobberyReally_15_01");
    DIA_11303_OLDMAN_ITISAROBBERY_HELPME();
}

func void DIA_11303_OLDMAN_GIVEGOLDBOOMER() {
    AI_OUTPUT(OTHER, SELF, "DIA_11303_OldMan_GiveGoldBoomer_15_01");
    DIA_11303_OLDMAN_ITISAROBBERY_HELPME();
}

instance DIA_11303_OLDMAN_IWILLGIVEYOUMYGOLD(C_INFO) {
    NPC = 0xd12b;
    NR = 1;
    CONDITION = DIA_11303_OLDMAN_IWILLGIVEYOUMYGOLD_CONDITION;
    INFORMATION = DIA_11303_OLDMAN_IWILLGIVEYOUMYGOLD_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_11303_OLDMAN_IWILLGIVEYOUMYGOLD_CONDITION() {
    if (((TRAP17_OUTCOME) == (0)) && ((TRAP17_OLDMAN_PANIC) == (TRUE))) {
        if (NPC_KNOWSINFO(OTHER, 0x11b3f)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_11303_OLDMAN_IWILLGIVEYOUMYGOLD_INFO() {
    HERO.AIVAR[95] = FALSE;
    HERO.AIVAR[94] = FALSE;
    VLK_11302_BODYGUARD.AIVAR[94] = FALSE;
    AI_OUTPUT(SELF, OTHER, "DIA_11303_OldMan_IWillGiveYouMyGold_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_11303_OldMan_IWillGiveYouMyGold_03_02");
    CREATEINVITEMS(SELF, 0x859b, EVENT_TRAP17_OLDMAN);
    B_GIVEINVITEMS(SELF, OTHER, 0x859b, EVENT_TRAP17_OLDMAN);
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_11303_OLDMAN_AMBIENT(C_INFO) {
    NPC = 0xd12b;
    NR = 2;
    CONDITION = DIA_11303_OLDMAN_AMBIENT_CONDITION;
    INFORMATION = DIA_11303_OLDMAN_AMBIENT_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_11303_OLDMAN_AMBIENT_CONDITION() {
    if ((NPC_ISINSTATE(SELF, 0xf09f)) && ((TRAP17_OUTCOME) != (0))) {
        if (NPC_KNOWSINFO(OTHER, 0x11b3f)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_11303_OLDMAN_AMBIENT_INFO() {
    HERO.AIVAR[95] = FALSE;
    HERO.AIVAR[94] = FALSE;
    VLK_11302_BODYGUARD.AIVAR[94] = FALSE;
    AI_OUTPUT(SELF, OTHER, "DIA_11303_OldMan_Ambient_03_01");
    AI_STOPPROCESSINFOS(SELF);
}


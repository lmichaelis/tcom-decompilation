instance DIA_FINJA_EXIT(C_INFO) {
    NPC = 0xe0fa;
    NR = 999;
    CONDITION = DIA_FINJA_EXIT_CONDITION;
    INFORMATION = DIA_FINJA_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_FINJA_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_FINJA_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_FINJA_HELLO(C_INFO) {
    NPC = 0xe0fa;
    NR = 1;
    CONDITION = DIA_FINJA_HELLO_CONDITION;
    INFORMATION = DIA_FINJA_HELLO_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_FINJA_HELLO_CONDITION() {
    return TRUE;
}

func void DIA_FINJA_HELLO_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_Finja_Hello_16_01");
    INFO_CLEARCHOICES(0x15aa2);
    INFO_ADDCHOICE(0x15aa2, "And you're a curse.", 0x15aa6);
    INFO_ADDCHOICE(0x15aa2, "What is it?", 0x15aa8);
    INFO_ADDCHOICE(0x15aa2, "You know, it depends on what you mean.", 0x15aa9);
}

var int FINJA_SQ106_TAKEQUEST = 0;
func void DIA_FINJA_HELLO_FUKOFF() {
    FINJA_SQ106_TAKEQUEST = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Finja_Hello_fukoff_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Finja_Hello_fukoff_16_01");
    AI_STOPPROCESSINFOS(SELF);
}

func void DIA_FINJA_HELLO_NEXT() {
    AI_OUTPUT(SELF, OTHER, "DIA_Finja_Hello_what_16_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Finja_Hello_what_16_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Finja_Hello_what_16_03");
    INFO_CLEARCHOICES(0x15aa2);
    INFO_ADDCHOICE(0x15aa2, "I don't have time right now.", 0x15aab);
    INFO_ADDCHOICE(0x15aa2, "I can try, but I don't know much about cooking or farming.", 0x15aaa);
}

func void DIA_FINJA_HELLO_WHAT() {
    AI_OUTPUT(OTHER, SELF, "DIA_Finja_Hello_what_15_00");
    DIA_FINJA_HELLO_NEXT();
}

func void DIA_FINJA_HELLO_DEPENDS() {
    AI_OUTPUT(OTHER, SELF, "DIA_Finja_Hello_depends_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Finja_Hello_depends_16_01");
    DIA_FINJA_HELLO_NEXT();
}

func void DIA_FINJA_HELLO_IDONTKNOW() {
    AI_OUTPUT(OTHER, SELF, "DIA_Finja_Hello_idontknow_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Finja_Hello_idontknow_16_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Finja_Hello_idontknow_16_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Finja_Hello_idontknow_16_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Finja_Hello_idontknow_16_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Finja_Hello_idontknow_16_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Finja_Hello_idontknow_16_06");
    INFO_CLEARCHOICES(0x15aa2);
    INFO_ADDCHOICE(0x15aa2, "I don't have time right now.", 0x15aab);
    INFO_ADDCHOICE(0x15aa2, "I'd be happy to help you.", 0x15aac);
}

func void DIA_FINJA_HELLO_NOTIME() {
    FINJA_SQ106_TAKEQUEST = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Finja_Hello_notime_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Finja_Hello_notime_16_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Finja_Hello_notime_16_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Finja_Hello_notime_16_04");
    INFO_CLEARCHOICES(0x15aa2);
}

func void DIA_FINJA_HELLO_ILLHELP() {
    SELF.AIVAR[15] = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Finja_Hello_illhelp_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Finja_Hello_illhelp_16_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Finja_Hello_illhelp_16_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Finja_Hello_illhelp_16_04");
    B_GIVEINVITEMS(SELF, OTHER, 0x858a, 1);
    FINJA_SQ106_TAKEQUEST = FALSE;
    FINJASBROOMING = TRUE;
    LOG_CREATETOPIC(TOPIC_SQ106, LOG_MISSION);
    LOG_SETSTATUS(_@(MIS_SQ106), TOPIC_SQ106, LOG_RUNNING);
    AI_LOGENTRY(TOPIC_SQ106, LOG_SQ106_START);
    AI_STOPPROCESSINFOS(SELF);
    NPC_EXCHANGEROUTINE(SELF, "SQ106_WORK");
}

instance DIA_FINJA_SQ106_TAKEQUEST(C_INFO) {
    NPC = 0xe0fa;
    NR = 1;
    CONDITION = DIA_FINJA_SQ106_TAKEQUEST_CONDITION;
    INFORMATION = DIA_FINJA_SQ106_TAKEQUEST_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I'd be happy to help you.";
}

func int DIA_FINJA_SQ106_TAKEQUEST_CONDITION() {
    if (((FINJA_SQ106_TAKEQUEST) == (TRUE)) && (NPC_KNOWSINFO(OTHER, 0x15aa2))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_FINJA_SQ106_TAKEQUEST_INFO() {
    DIA_FINJA_HELLO_ILLHELP();
}

instance DIA_FINJA_SWEEPED(C_INFO) {
    NPC = 0xe0fa;
    NR = 1;
    CONDITION = DIA_FINJA_SWEEPED_CONDITION;
    INFORMATION = DIA_FINJA_SWEEPED_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_FINJA_SWEEPED_CONDITION() {
    if ((((KITCHENBROOM) == (TRUE)) && ((ENTERANCEBROOM) == (TRUE))) && ((BEDROOMBROOM) == (TRUE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void FINJA_SQ106_FINISHQUEST() {
    LOG_SETSTATUS(_@(MIS_SQ106), TOPIC_SQ106, LOG_SUCCESS);
    B_GIVEPLAYERXP(XP_SQ106_FINISH);
    GIVEREPUTATION_SILBACH();
}

func void DIA_FINJA_SWEEPED_INFO() {
    SELF.AIVAR[15] = FALSE;
    NPC_EXCHANGEROUTINE(SELF, START);
    AI_OUTPUT(SELF, OTHER, "DIA_Finja_Sweeped_16_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Finja_Sweeped_16_02");
    INFO_CLEARCHOICES(0x15ab0);
    INFO_ADDCHOICE(0x15ab0, "I can't wait to try it.", 0x15ab4);
    INFO_ADDCHOICE(0x15ab0, "The soup smells delicious, but I could use the gold more.", 0x15ab5);
}

func void DIA_FINJA_SWEEPED_THANKS() {
    AI_OUTPUT(OTHER, SELF, "DIA_Finja_Sweeped_thanks_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Finja_Sweeped_thanks_16_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Finja_Sweeped_thanks_16_03");
    CREATEINVITEMS(SELF, 0x8f3e, 1);
    B_GIVEINVITEMS(SELF, OTHER, 0x8f3e, 1);
    LOG_CREATETOPIC(TOPIC_SQ106, LOG_MISSION);
    FINJA_SQ106_FINISHQUEST();
    AI_LOGENTRY(TOPIC_SQ106, LOG_SQ106_ENDSOUP);
    AI_STOPPROCESSINFOS(SELF);
}

func void DIA_FINJA_SWEEPED_MONEY() {
    AI_OUTPUT(OTHER, SELF, "DIA_Finja_Sweeped_money_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Finja_Sweeped_money_16_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Finja_Sweeped_money_16_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Finja_Sweeped_money_16_04");
    B_GIVEINVITEMS(SELF, OTHER, 0x859b, SQ106_REWARD);
    LOG_CREATETOPIC(TOPIC_SQ106, LOG_MISSION);
    FINJA_SQ106_FINISHQUEST();
    AI_LOGENTRY(TOPIC_SQ106, LOG_SQ106_ENDMONEY);
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_FINJA_BROOM(C_INFO) {
    NPC = 0xe0fa;
    NR = 1;
    CONDITION = DIA_FINJA_BROOM_CONDITION;
    INFORMATION = DIA_FINJA_BROOM_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_FINJA_BROOM_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x15ab0)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_FINJA_BROOM_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_Finja_Broom_16_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Finja_Broom_16_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Finja_Broom_16_03");
    INFO_CLEARCHOICES(0x15ab6);
    if ((NPC_HASITEMS(OTHER, 0x858a)) >= (1)) {
        INFO_ADDCHOICE(0x15ab6, "Of course, here it is.", 0x15ab9);
    };
    INFO_ADDCHOICE(0x15ab6, "Unfortunately, I must have lost it somewhere.", 0x15aba);
}

func void DIA_FINJA_BROOM_HEREUGO() {
    B_GIVEPLAYERXP(XP_SQ106_CLEANUP);
    AI_OUTPUT(OTHER, SELF, "DIA_Finja_Broom_hereugo_15_01");
    B_GIVEINVITEMS(OTHER, SELF, 0x858a, 1);
    AI_OUTPUT(SELF, OTHER, "DIA_Finja_Broom_hereugo_16_02");
    AI_STOPPROCESSINFOS(SELF);
}

func void DIA_FINJA_BROOM_ILOSTIT() {
    AI_OUTPUT(OTHER, SELF, "DIA_Finja_Broom_ilostit_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Finja_Broom_ilostit_16_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Finja_Broom_ilostit_16_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Finja_Broom_ilostit_16_04");
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_FINJA_AMBIENT(C_INFO) {
    NPC = 0xe0fa;
    NR = 997;
    CONDITION = DIA_FINJA_AMBIENT_CONDITION;
    INFORMATION = DIA_FINJA_AMBIENT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "How are you doing?";
}

func int DIA_FINJA_AMBIENT_CONDITION() {
    return TRUE;
}

func void DIA_FINJA_AMBIENT_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Finja_Ambient_15_00");
    if ((LOG_GETSTATUS(MIS_SQ106)) != (LOG_SUCCESS)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Finja_Ambient_13_01");
    };
    if ((LOG_GETSTATUS(MIS_SQ106)) == (LOG_SUCCESS)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Finja_Ambient_13_02");
    };
}

instance DIA_FINJA_PICKPOCKET(C_INFO) {
    NPC = 0xe0fa;
    NR = 900;
    CONDITION = DIA_FINJA_PICKPOCKET_CONDITION;
    INFORMATION = DIA_FINJA_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_40_FEMALE;
}

func int DIA_FINJA_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_FINJA_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(0x15abe);
    INFO_ADDCHOICE(0x15abe, DIALOG_BACK, 0x15ac2);
    INFO_ADDCHOICE(0x15abe, DIALOG_PICKPOCKET, 0x15ac1);
}

func void DIA_FINJA_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) {
        B_PICKPOCKET_AMBIENT_TIER_1();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(0x15abe);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(0x15abe);
}

func void DIA_FINJA_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(0x15abe);
}


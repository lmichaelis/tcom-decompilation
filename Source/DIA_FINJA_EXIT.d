instance DIA_FINJA_EXIT(C_INFO) {
    NPC = 57594;
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
    NPC = 57594;
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
    INFO_CLEARCHOICES(88738);
    INFO_ADDCHOICE(88738, "And you're a curse.", 88742);
    INFO_ADDCHOICE(88738, "What is it?", 88744);
    INFO_ADDCHOICE(88738, "You know, it depends on what you mean.", 88745);
}

var int FINJA_SQ106_TAKEQUEST;
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
    INFO_CLEARCHOICES(88738);
    INFO_ADDCHOICE(88738, "I don't have time right now.", 88747);
    INFO_ADDCHOICE(88738, "I can try, but I don't know much about cooking or farming.", 88746);
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
    INFO_CLEARCHOICES(88738);
    INFO_ADDCHOICE(88738, "I don't have time right now.", 88747);
    INFO_ADDCHOICE(88738, "I'd be happy to help you.", 88748);
}

func void DIA_FINJA_HELLO_NOTIME() {
    FINJA_SQ106_TAKEQUEST = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Finja_Hello_notime_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Finja_Hello_notime_16_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Finja_Hello_notime_16_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Finja_Hello_notime_16_04");
    INFO_CLEARCHOICES(88738);
}

func void DIA_FINJA_HELLO_ILLHELP() {
    SELF.AIVAR[15] = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Finja_Hello_illhelp_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Finja_Hello_illhelp_16_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Finja_Hello_illhelp_16_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Finja_Hello_illhelp_16_04");
    B_GIVEINVITEMS(SELF, OTHER, 34186, 1);
    FINJA_SQ106_TAKEQUEST = FALSE;
    FINJASBROOMING = TRUE;
    LOG_CREATETOPIC(TOPIC_SQ106, LOG_MISSION);
    LOG_SETSTATUS(_@(MIS_SQ106), TOPIC_SQ106, LOG_RUNNING);
    AI_LOGENTRY(TOPIC_SQ106, LOG_SQ106_START);
    AI_STOPPROCESSINFOS(SELF);
    NPC_EXCHANGEROUTINE(SELF, "SQ106_WORK");
}

instance DIA_FINJA_SQ106_TAKEQUEST(C_INFO) {
    NPC = 57594;
    NR = 1;
    CONDITION = DIA_FINJA_SQ106_TAKEQUEST_CONDITION;
    INFORMATION = DIA_FINJA_SQ106_TAKEQUEST_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I'd be happy to help you.";
}

func int DIA_FINJA_SQ106_TAKEQUEST_CONDITION() {
    if (((FINJA_SQ106_TAKEQUEST) == (TRUE)) && (NPC_KNOWSINFO(OTHER, 88738))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_FINJA_SQ106_TAKEQUEST_INFO() {
    DIA_FINJA_HELLO_ILLHELP();
}

instance DIA_FINJA_SWEEPED(C_INFO) {
    NPC = 57594;
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
    INFO_CLEARCHOICES(88752);
    INFO_ADDCHOICE(88752, "I can't wait to try it.", 88756);
    INFO_ADDCHOICE(88752, "The soup smells delicious, but I could use the gold more.", 88757);
}

func void DIA_FINJA_SWEEPED_THANKS() {
    AI_OUTPUT(OTHER, SELF, "DIA_Finja_Sweeped_thanks_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Finja_Sweeped_thanks_16_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Finja_Sweeped_thanks_16_03");
    CREATEINVITEMS(SELF, 36670, 1);
    B_GIVEINVITEMS(SELF, OTHER, 36670, 1);
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
    B_GIVEINVITEMS(SELF, OTHER, 34203, SQ106_REWARD);
    LOG_CREATETOPIC(TOPIC_SQ106, LOG_MISSION);
    FINJA_SQ106_FINISHQUEST();
    AI_LOGENTRY(TOPIC_SQ106, LOG_SQ106_ENDMONEY);
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_FINJA_BROOM(C_INFO) {
    NPC = 57594;
    NR = 1;
    CONDITION = DIA_FINJA_BROOM_CONDITION;
    INFORMATION = DIA_FINJA_BROOM_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_FINJA_BROOM_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 88752)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_FINJA_BROOM_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_Finja_Broom_16_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Finja_Broom_16_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Finja_Broom_16_03");
    INFO_CLEARCHOICES(88758);
    if ((NPC_HASITEMS(OTHER, 34186)) >= (1)) {
        INFO_ADDCHOICE(88758, "Of course, here it is.", 88761);
    };
    INFO_ADDCHOICE(88758, "Unfortunately, I must have lost it somewhere.", 88762);
}

func void DIA_FINJA_BROOM_HEREUGO() {
    B_GIVEPLAYERXP(XP_SQ106_CLEANUP);
    AI_OUTPUT(OTHER, SELF, "DIA_Finja_Broom_hereugo_15_01");
    B_GIVEINVITEMS(OTHER, SELF, 34186, 1);
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
    NPC = 57594;
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
    NPC = 57594;
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
    INFO_CLEARCHOICES(88766);
    INFO_ADDCHOICE(88766, DIALOG_BACK, 88770);
    INFO_ADDCHOICE(88766, DIALOG_PICKPOCKET, 88769);
}

func void DIA_FINJA_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) {
        B_PICKPOCKET_AMBIENT_TIER_1();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(88766);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(88766);
}

func void DIA_FINJA_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(88766);
}

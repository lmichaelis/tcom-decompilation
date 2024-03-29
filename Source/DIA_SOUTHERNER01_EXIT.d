instance DIA_SOUTHERNER01_EXIT(C_INFO) {
    NPC = 52686;
    NR = 999;
    CONDITION = DIA_SOUTHERNER01_EXIT_CONDITION;
    INFORMATION = DIA_SOUTHERNER01_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_SOUTHERNER01_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_SOUTHERNER01_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_SOUTHERNER01_SQ413_START(C_INFO) {
    NPC = 52686;
    NR = 1;
    CONDITION = DIA_SOUTHERNER01_SQ413_START_CONDITION;
    INFORMATION = DIA_SOUTHERNER01_SQ413_START_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_SOUTHERNER01_SQ413_START_CONDITION() {
    if ((NPC_HASEQUIPPEDARMOR(HERO)) == (TRUE)) {
        if ((NPC_HASGUILDARMOREQUIPPED(HERO, GIL_MIL)) == (TRUE)) {
            return FALSE;
        };
        return TRUE;
    };
    return TRUE;
}

func void DIA_SOUTHERNER01_SQ413_NOARMOR() {
    AI_OUTPUT(SELF, OTHER, "DIA_Southerner01_SQ413_Start_03_02");
}

func void DIA_SOUTHERNER01_SQ413_START_INFO() {
    if ((NPC_HASEQUIPPEDARMOR(OTHER)) == (TRUE)) {
        if ((NPC_HASGUILDARMOREQUIPPED(OTHER, GIL_SLD)) == (TRUE)) {
            AI_OUTPUT(SELF, OTHER, "DIA_Southerner01_SQ413_Start_03_01");
        } else {
            DIA_SOUTHERNER01_SQ413_NOARMOR();
        };
    };
    DIA_SOUTHERNER01_SQ413_NOARMOR();
    AI_OUTPUT(SELF, OTHER, "DIA_Southerner01_SQ413_Start_03_03");
    INFO_CLEARCHOICES(72544);
    INFO_ADDCHOICE(72544, "I don't have time to run around with packages right now.", 72549);
    INFO_ADDCHOICE(72544, "Sounds interesting, no gold stinks.", 72550);
}

var int SOUTHERNER01_TAKEQUEST;
func void DIA_SOUTHERNER01_SQ413_START_NO() {
    SOUTHERNER01_TAKEQUEST = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Southerner01_SQ413_Start_No_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Southerner01_SQ413_Start_No_03_02");
    INFO_CLEARCHOICES(72544);
}

func void DIA_SOUTHERNER01_SQ413_START_YES() {
    AI_OUTPUT(OTHER, SELF, "DIA_Southerner01_SQ413_Start_Yes_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Southerner01_SQ413_Start_Yes_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Southerner01_SQ413_Start_Yes_03_03");
    CREATEINVITEMS(SELF, 37378, 1);
    B_GIVEINVITEMS(SELF, OTHER, 37378, 1);
    LOG_CREATETOPIC(TOPIC_SQ413, LOG_MISSION);
    LOG_SETSTATUS(_@(MIS_SQ413), TOPIC_SQ413, LOG_RUNNING);
    AI_LOGENTRY(TOPIC_SQ413, LOG_SQ413_START);
    INFO_CLEARCHOICES(72544);
    WLD_SENDTRIGGER("SQ413_MOVER_PLUNDER");
}

instance DIA_SOUTHERNER_SQ413_TAKEQUEST(C_INFO) {
    NPC = 52686;
    NR = 1;
    CONDITION = DIA_SOUTHERNER_SQ413_TAKEQUEST_CONDITION;
    INFORMATION = DIA_SOUTHERNER_SQ413_TAKEQUEST_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Sounds interesting, no gold stinks.";
}

func int DIA_SOUTHERNER_SQ413_TAKEQUEST_CONDITION() {
    if ((SOUTHERNER01_TAKEQUEST) == (1)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_SOUTHERNER_SQ413_TAKEQUEST_INFO() {
    DIA_SOUTHERNER01_SQ413_START_YES();
}

instance DIA_SOUTHERNER01_SQ413_INSIDE(C_INFO) {
    NPC = 52686;
    NR = 1;
    CONDITION = DIA_SOUTHERNER01_SQ413_INSIDE_CONDITION;
    INFORMATION = DIA_SOUTHERNER01_SQ413_INSIDE_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "What's in that box?";
}

func int DIA_SOUTHERNER01_SQ413_INSIDE_CONDITION() {
    if ((LOG_GETSTATUS(MIS_SQ413)) == (LOG_RUNNING)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_SOUTHERNER01_SQ413_INSIDE_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Southerner01_SQ413_Inside_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Southerner01_SQ413_Inside_03_02");
}


var int SMUGGLER_MARVINISBRAINLET = 0;
instance DIA_SMUGGLER_EXIT(C_INFO) {
    NPC = 0xe44c;
    NR = 999;
    CONDITION = DIA_SMUGGLER_EXIT_CONDITION;
    INFORMATION = DIA_SMUGGLER_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_SMUGGLER_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_SMUGGLER_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_SMUGGLER_HELLO(C_INFO) {
    NPC = 0xe44c;
    NR = 1;
    CONDITION = DIA_SMUGGLER_HELLO_CONDITION;
    INFORMATION = DIA_SMUGGLER_HELLO_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_SMUGGLER_HELLO_CONDITION() {
    if ((LOG_GETSTATUS(MIS_Q304)) == (LOG_RUNNING)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_SMUGGLER_HELLO_INFO() {
    B_STANDUP();
    AI_OUTPUT(OTHER, SELF, "DIA_Smuggler_HELLO_15_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Smuggler_HELLO_15_02");
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Smuggler_HELLO_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Smuggler_HELLO_03_04");
    INFO_CLEARCHOICES(0x14584);
    INFO_ADDCHOICE(0x14584, "Apparently they've always sent Antonio so far.", 0x14587);
    INFO_ADDCHOICE(0x14584, "Coyote?", 0x14588);
    INFO_ADDCHOICE(0x14584, "Are you a guard?", 0x14589);
}

func void DIA_SMUGGLER_HELLO_ANTONIO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Smuggler_HELLO_Antonio_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Smuggler_HELLO_Antonio_03_02");
    AI_TURNTONPC(SELF, BAU_6287_GONZALO);
    AI_OUTPUT(SELF, OTHER, "DIA_Smuggler_HELLO_Antonio_03_03");
    AI_TURNTONPC(SELF, HERO);
    INFO_CLEARCHOICES(0x14584);
    INFO_ADDCHOICE(0x14584, "Here's the money from Cortez.", 0x1458b);
    INFO_ADDCHOICE(0x14584, "I'm supposed to give the money directly to Antonio.", 0x1458c);
}

func void DIA_SMUGGLER_HELLO_SMUGGLER() {
    AI_OUTPUT(OTHER, SELF, "DIA_Smuggler_HELLO_Smuggler_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Smuggler_HELLO_Smuggler_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Smuggler_HELLO_Smuggler_03_03");
}

func void DIA_SMUGGLER_HELLO_MILITIA() {
    Q304_SMUGGLERARMOR = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Smuggler_HELLO_Militia_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Smuggler_HELLO_Militia_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Smuggler_HELLO_Militia_03_03");
    if ((NPC_HASEQUIPPEDARMOR(OTHER)) == (TRUE)) {
        if (NPC_HASGUILDARMOREQUIPPED(OTHER, GIL_SLD)) {
            AI_OUTPUT(SELF, OTHER, "DIA_Smuggler_HELLO_Militia_03_05");
            AI_OUTPUT(OTHER, SELF, "DIA_Smuggler_HELLO_Militia_15_06");
            AI_OUTPUT(SELF, OTHER, "DIA_Smuggler_HELLO_Militia_03_07");
        };
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Smuggler_HELLO_Militia_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Smuggler_HELLO_Militia_03_08");
}

func void DIA_SMUGGLER_NOGOLDFROMCORTEZ() {
    AI_OUTPUT(OTHER, SELF, "DIA_Smuggler_HELLO_Cortez_15_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Smuggler_HELLO_Cortez_03_05");
    AI_FUNCTION(SELF, 0x14590);
}

func void DIA_SMUGGLER_HELLO_ANTONIO_CORTEZ() {
    AI_OUTPUT(OTHER, SELF, "DIA_Smuggler_HELLO_Cortez_15_01");
    if ((NPC_HASITEMS(OTHER, 0x917f)) >= (1)) {
        SMUGGLER_MARVINISBRAINLET = TRUE;
        Q304_POCKETGIVEN = TRUE;
        B_GIVEINVITEMS(OTHER, SELF, 0x917f, 1);
        AI_OUTPUT(SELF, OTHER, "DIA_Smuggler_HELLO_Cortez_03_02");
        AI_OUTPUT(SELF, OTHER, "DIA_Smuggler_HELLO_Cortez_03_03");
        AI_LOGENTRY(TOPIC_Q304, LOG_Q304_SMUGGLERHELLO);
        INFO_CLEARCHOICES(0x14584);
        AI_STOPPROCESSINFOS(SELF);
        NPC_EXCHANGEROUTINE(SELF, "SMALLTALK");
        B_STARTOTHERROUTINE(NONE_6337_BODYGUARD, "SMALLTALK");
    };
    DIA_SMUGGLER_NOGOLDFROMCORTEZ();
}

func void DIA_SMUGGLER_HELLO_ANTONIO_GIVEANTONIO() {
    Q304_SMUGGLERQUESTIONCOUNT = (Q304_SMUGGLERQUESTIONCOUNT) + (1);
    AI_OUTPUT(OTHER, SELF, "DIA_Smuggler_HELLO_GiveAntonio_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Smuggler_HELLO_GiveAntonio_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Smuggler_HELLO_GiveAntonio_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Smuggler_HELLO_GiveAntonio_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Smuggler_HELLO_GiveAntonio_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Smuggler_HELLO_GiveAntonio_03_07");
    INFO_CLEARCHOICES(0x14584);
    INFO_ADDCHOICE(0x14584, "Okay, it's none of my business. The important thing is that everything checks out.", 0x1458d);
    INFO_ADDCHOICE(0x14584, "Hey, Antonio! Can you confirm that?", 0x1458e);
}

func void DIA_SMUGGLER_HELLO_ANTONIO_GIVEANTONIO_NOTMYPROBLEM() {
    AI_OUTPUT(OTHER, SELF, "DIA_Smuggler_HELLO_NotMyProblem_15_01");
    if ((NPC_HASITEMS(OTHER, 0x917f)) >= (1)) {
        Q304_POCKETGIVEN = TRUE;
        B_GIVEINVITEMS(OTHER, SELF, 0x917f, 1);
        CREATEINVITEMS(SELF, 0x9181, 1);
        B_GIVEINVITEMS(SELF, OTHER, 0x9181, 1);
        AI_OUTPUT(SELF, OTHER, "DIA_Smuggler_HELLO_NotMyProblem_03_02");
        B_USEFAKEBAG();
        AI_OUTPUT(SELF, OTHER, "DIA_Smuggler_HELLO_NotMyProblem_03_03");
        AI_OUTPUT(SELF, OTHER, "DIA_Smuggler_HELLO_NotMyProblem_03_04");
        AI_OUTPUT(SELF, OTHER, "DIA_Smuggler_HELLO_NotMyProblem_03_05");
        AI_LOGENTRY(TOPIC_Q304, LOG_Q304_SMUGGLERHELLOV2);
        INFO_CLEARCHOICES(0x14584);
        AI_STOPPROCESSINFOS(SELF);
        NPC_EXCHANGEROUTINE(SELF, "SMALLTALK");
        B_STARTOTHERROUTINE(NONE_6337_BODYGUARD, "SMALLTALK");
    };
    DIA_SMUGGLER_NOGOLDFROMCORTEZ();
}

func void DIA_SMUGGLER_HELLO_ANTONIO_GIVEANTONIO_ANTONIOHELP() {
    Q304_SMUGGLERQUESTIONCOUNT = (Q304_SMUGGLERQUESTIONCOUNT) + (1);
    AI_OUTPUT(OTHER, SELF, "DIA_Smuggler_HELLO_AntonioHelp_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Smuggler_HELLO_AntonioHelp_03_02");
    INFO_ADDCHOICE(0x14584, "Or? (Provoke)", 0x1458f);
}

func void DIA_SMUGGLER_HELLO_ANTONIO_GIVEANTONIO_ANTONIOHELP_FIGHT() {
    AI_OUTPUT(OTHER, SELF, "DIA_Smuggler_HELLO_Fight_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Smuggler_HELLO_Fight_03_02");
    AI_LOGENTRY(TOPIC_Q304, LOG_Q304_SMUGGLERMURDERATTEMPT);
    AI_FUNCTION(SELF, 0x14590);
}

func void SMUGGLER_KILLMARVIN() {
    AI_DRAWWEAPON(NONE_6340_SMUGGLER);
    INFO_CLEARCHOICES(0x14584);
    INFO_CLEARCHOICES(0x14597);
    AI_STOPPROCESSINFOS(NONE_6340_SMUGGLER);
    Q304KILLMARVINCAVE();
    HERO.AIVAR[4] = FALSE;
}

instance DIA_SMUGGLER_WAITASEC(C_INFO) {
    NPC = 0xe44c;
    NR = 1;
    CONDITION = DIA_SMUGGLER_WAITASEC_CONDITION;
    INFORMATION = DIA_SMUGGLER_WAITASEC_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_SMUGGLER_WAITASEC_CONDITION() {
    if (((NPC_KNOWSINFO(OTHER, 0x14584)) && ((LOG_GETSTATUS(MIS_Q304)) == (LOG_RUNNING))) && ((SMUGGLER_MARVINISBRAINLET) == (TRUE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_SMUGGLER_WAITASEC_INFO() {
    B_STANDUP();
    AI_OUTPUT(SELF, OTHER, "DIA_Smuggler_WaitASec_03_01");
    B_USEFAKEBAG();
    AI_OUTPUT(SELF, OTHER, "DIA_Smuggler_WaitASec_03_02");
    INFO_CLEARCHOICES(0x14591);
    INFO_ADDCHOICE(0x14591, "If there's no other option, though, I'll pay.", 0x14595);
    if ((Q304_WATCHOUTMONEY) == (TRUE)) {
        INFO_ADDCHOICE(0x14591, "I'm sorry, but I got clear instructions.", 0x14596);
    };
}

func void DIA_SMUGGLER_WAITASEC_END() {
    CREATEINVITEMS(SELF, 0x9181, 1);
    B_GIVEINVITEMS(SELF, OTHER, 0x9181, 1);
    INFO_CLEARCHOICES(0x14591);
    AI_STOPPROCESSINFOS(SELF);
    NPC_EXCHANGEROUTINE(SELF, "SMALLTALK");
    B_STARTOTHERROUTINE(NONE_6337_BODYGUARD, "SMALLTALK");
}

func void DIA_SMUGGLER_WAITASEC_PAYDUMB() {
    AI_OUTPUT(OTHER, SELF, "DIA_Smuggler_WaitASec_PayDumb_15_01");
    if ((NPC_HASITEMS(OTHER, 0x859b)) >= (Q304_SMUGGLERPRANK)) {
        Q304_MARVINGIVEMONEY = TRUE;
        AI_OUTPUT(SELF, OTHER, "DIA_Smuggler_WaitASec_PayDumb_03_02");
        B_GIVEINVITEMS(OTHER, SELF, 0x859b, Q304_SMUGGLERPRANK);
        AI_OUTPUT(SELF, OTHER, "DIA_Smuggler_WaitASec_PayDumb_03_05");
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Smuggler_WaitASec_PayDumb_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Smuggler_WaitASec_PayDumb_03_04");
    AI_LOGENTRY(TOPIC_Q304, LOG_Q304_SMUGGLERDOC);
    DIA_SMUGGLER_WAITASEC_END();
}

func void DIA_SMUGGLER_WAITASEC_CORTEZ() {
    AI_OUTPUT(OTHER, SELF, "DIA_Smuggler_WaitASec_Cortez_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Smuggler_WaitASec_Cortez_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Smuggler_WaitASec_Cortez_03_03");
    AI_LOGENTRY(TOPIC_Q304, LOG_Q304_SMUGGLERDOC);
    DIA_SMUGGLER_WAITASEC_END();
}

instance DIA_SMUGGLER_KILLFOOL(C_INFO) {
    NPC = 0xe44c;
    NR = 1;
    CONDITION = DIA_SMUGGLER_KILLFOOL_CONDITION;
    INFORMATION = DIA_SMUGGLER_KILLFOOL_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_SMUGGLER_KILLFOOL_CONDITION() {
    if (((LOG_GETSTATUS(MIS_Q304)) == (LOG_RUNNING)) && ((Q304_CUTSCENEENDING) == (1))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_SMUGGLER_KILLFOOL_INFO() {
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Smuggler_KillFool_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Smuggler_KillFool_03_02");
    AI_FUNCTION(SELF, 0x14590);
}

instance DIA_SMUGGLER_CUTSCENEAMBIENT(C_INFO) {
    NPC = 0xe44c;
    NR = 1;
    CONDITION = DIA_SMUGGLER_CUTSCENEAMBIENT_CONDITION;
    INFORMATION = DIA_SMUGGLER_CUTSCENEAMBIENT_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_SMUGGLER_CUTSCENEAMBIENT_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_Q304)) == (LOG_RUNNING)) && ((Q304_CUTSCENEENDING) == (2))) && (NPC_ISINSTATE(SELF, 0xf09f))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_SMUGGLER_CUTSCENEAMBIENT_INFO() {
    NPC_INITAMBIENTS(SELF, 3);
    if ((NPC_GETLASTAMBIENT(SELF)) == (1)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Smuggler_CutsceneAmbient_03_01");
    };
    if ((NPC_GETLASTAMBIENT(SELF)) == (2)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Smuggler_CutsceneAmbient_03_02");
    };
    if ((NPC_GETLASTAMBIENT(SELF)) == (3)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Smuggler_CutsceneAmbient_03_03");
    };
    AI_STOPPROCESSINFOS(SELF);
}


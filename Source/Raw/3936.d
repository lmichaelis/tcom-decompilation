instance DIA_BEINARD_EXIT(C_INFO) {
    NPC = 0xd778;
    NR = 999;
    CONDITION = DIA_BEINARD_EXIT_CONDITION;
    INFORMATION = DIA_BEINARD_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_BEINARD_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_BEINARD_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_BEINARD_HELLO(C_INFO) {
    NPC = 0xd778;
    NR = 1;
    CONDITION = DIA_BEINARD_HELLO_CONDITION;
    INFORMATION = DIA_BEINARD_HELLO_INFO;
    DESCRIPTION = "A bit of a strange place for a lumberjack.";
}

func int DIA_BEINARD_HELLO_CONDITION() {
    return TRUE;
}

var int BEINARD_HELLO_HOWTOBE = 0;
var int BEINARD_HELLO_HOWLONG = 0;
var int BEINARD_HELLO_KILLFAMOUS = 0;
func void DIA_BEINARD_HELLO_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Beinard_Hello_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Beinard_Hello_14_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Beinard_Hello_15_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Beinard_Hello_14_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Beinard_Hello_14_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Beinard_Hello_14_05");
    INFO_CLEARCHOICES(0x127a5);
    INFO_ADDCHOICE(0x127a5, "I have to go now.", 0x127ae);
    INFO_ADDCHOICE(0x127a5, "How does it feel to be an executioner, good?", 0x127ad);
    INFO_ADDCHOICE(0x127a5, "Have you been working as an executioner for a long time?", 0x127ab);
    INFO_ADDCHOICE(0x127a5, "Have you ever killed someone famous?", 0x127ac);
}

func void DIA_BEINARD_HELLO_HOWLONG() {
    BEINARD_HELLO_HOWLONG = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Beinard_Hello_HowLong_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Beinard_Hello_HowLong_14_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Beinard_Hello_HowLong_14_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Beinard_Hello_HowLong_14_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Beinard_Hello_HowLong_14_04");
}

func void DIA_BEINARD_HELLO_KILLFAMOUS() {
    BEINARD_HELLO_KILLFAMOUS = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Beinard_Hello_KillFamous_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Beinard_Hello_KillFamous_14_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Beinard_Hello_KillFamous_15_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Beinard_Hello_KillFamous_14_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Beinard_Hello_KillFamous_14_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Beinard_Hello_KillFamous_14_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Beinard_Hello_KillFamous_14_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Beinard_Hello_KillFamous_14_07");
}

func void DIA_BEINARD_HELLO_HOWTOBE() {
    BEINARD_HELLO_HOWTOBE = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Beinard_Hello_HowToBe_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Beinard_Hello_HowToBe_14_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Beinard_Hello_HowToBe_14_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Beinard_Hello_HowToBe_14_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Beinard_Hello_HowToBe_14_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Beinard_Hello_HowToBe_14_05");
}

func void DIA_BEINARD_HELLO_EXIT() {
    AI_OUTPUT(OTHER, SELF, "DIA_Beinard_Hello_Exit_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Beinard_Hello_Exit_13_01");
    INFO_CLEARCHOICES(0x127a5);
}

instance DIA_BEINARD_HOWLONG(C_INFO) {
    NPC = 0xd778;
    NR = 15;
    CONDITION = DIA_BEINARD_HOWLONG_CONDITION;
    INFORMATION = DIA_BEINARD_HOWLONG_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Have you been working as an executioner for a long time?";
}

func int DIA_BEINARD_HOWLONG_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 0x127a5)) && ((BEINARD_HELLO_HOWLONG) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_BEINARD_HOWLONG_INFO() {
    DIA_BEINARD_HELLO_HOWLONG();
}

instance DIA_BEINARD_HOWTOBE(C_INFO) {
    NPC = 0xd778;
    NR = 14;
    CONDITION = DIA_BEINARD_HOWTOBE_CONDITION;
    INFORMATION = DIA_BEINARD_HOWTOBE_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "How does it feel to be an executioner, good?";
}

func int DIA_BEINARD_HOWTOBE_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 0x127a5)) && ((BEINARD_HELLO_KILLFAMOUS) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_BEINARD_HOWTOBE_INFO() {
    DIA_BEINARD_HELLO_HOWTOBE();
}

instance DIA_BEINARD_KILLFAMOUS(C_INFO) {
    NPC = 0xd778;
    NR = 16;
    CONDITION = DIA_BEINARD_KILLFAMOUS_CONDITION;
    INFORMATION = DIA_BEINARD_KILLFAMOUS_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Have you ever killed someone famous?";
}

func int DIA_BEINARD_KILLFAMOUS_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 0x127a5)) && ((BEINARD_HELLO_KILLFAMOUS) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_BEINARD_KILLFAMOUS_INFO() {
    DIA_BEINARD_HELLO_KILLFAMOUS();
}

instance DIA_BEINARD_AMBIENT(C_INFO) {
    NPC = 0xd778;
    NR = 998;
    CONDITION = DIA_BEINARD_AMBIENT_CONDITION;
    INFORMATION = DIA_BEINARD_AMBIENT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "How are you doing?";
}

var int BEINARD_RUUDAMBIENTSAID = 0;
func int DIA_BEINARD_AMBIENT_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x127a5)) {
        if ((((BEINARD_HELLO_HOWTOBE) == (TRUE)) && ((BEINARD_HELLO_HOWLONG) == (TRUE))) && ((BEINARD_HELLO_KILLFAMOUS) == (TRUE))) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_BEINARD_AMBIENT_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Beinard_Ambient_15_00");
    if ((((CQ006_BEINARDHELP) == (3)) && ((LOG_GETSTATUS(MIS_CQ006)) == (LOG_SUCCESS))) && ((BEINARD_RUUDAMBIENTSAID) == (FALSE))) {
        AI_OUTPUT(SELF, OTHER, "DIA_Beinard_Ambient_14_01");
        BEINARD_RUUDAMBIENTSAID = TRUE;
    };
    NPC_INITAMBIENTS(SELF, 3);
    if ((NPC_GETLASTAMBIENT(SELF)) == (1)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Beinard_Ambient_01_14_00");
    };
    if ((NPC_GETLASTAMBIENT(SELF)) == (2)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Beinard_Ambient_02_14_00");
    };
    if ((NPC_GETLASTAMBIENT(SELF)) == (3)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Beinard_Ambient_03_14_00");
    };
}

instance DIA_BEINARD_CQ006(C_INFO) {
    NPC = 0xd778;
    NR = 1;
    CONDITION = DIA_BEINARD_CQ006_CONDITION;
    INFORMATION = DIA_BEINARD_CQ006_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Do you know anything about setting bones?";
}

func int DIA_BEINARD_CQ006_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_CQ006)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 0x1276d))) && (NPC_KNOWSINFO(OTHER, 0x127a5))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_BEINARD_CQ006_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Beinard_CQ006_15_01");
    AI_STARTFACEANI(VLK_6283_BEINARD, S_ANGRY, 0, 1);
    AI_OUTPUT(SELF, OTHER, "DIA_Beinard_CQ006_03_02");
    AI_RESETFACEANI(VLK_6283_BEINARD);
    AI_OUTPUT(SELF, OTHER, "DIA_Beinard_CQ006_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Beinard_CQ006_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Beinard_CQ006_03_05");
}

instance DIA_BEINARD_HELP(C_INFO) {
    NPC = 0xd778;
    NR = 2;
    CONDITION = DIA_BEINARD_HELP_CONDITION;
    INFORMATION = DIA_BEINARD_HELP_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Could you help Ruud?";
}

func int DIA_BEINARD_HELP_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 0x127bc)) && ((LOG_GETSTATUS(MIS_CQ006)) == (LOG_RUNNING))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_BEINARD_HELP_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Beinard_Help_15_01");
    AI_STARTFACEANI(VLK_6283_BEINARD, S_WHAT, 0, 1);
    AI_OUTPUT(SELF, OTHER, "DIA_Beinard_Help_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Beinard_Help_15_03");
    AI_RESETFACEANI(VLK_6283_BEINARD);
    AI_OUTPUT(SELF, OTHER, "DIA_Beinard_Help_03_04");
    AI_OUTPUT(OTHER, SELF, "DIA_Beinard_Help_15_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Beinard_Help_03_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Beinard_Help_03_07");
    INFO_CLEARCHOICES(0x127bf);
    INFO_ADDCHOICE(0x127bf, "True, it's better not to take any chances.", 0x127c3);
    INFO_ADDCHOICE(0x127bf, "How much would you take that risk for?", 0x127c2);
}

func void DIA_BEINARD_HELP_GOLD() {
    AI_OUTPUT(OTHER, SELF, "DIA_Beinard_Help_Gold_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Beinard_Help_Gold_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Beinard_Help_Gold_15_03");
    AI_STARTFACEANI(VLK_6283_BEINARD, S_SERIOUS, 0, 1);
    AI_OUTPUT(SELF, OTHER, "DIA_Beinard_Help_Gold_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Beinard_Help_Gold_03_05");
    AI_OUTPUT(OTHER, SELF, "DIA_Beinard_Help_Gold_15_06");
    AI_RESETFACEANI(VLK_6283_BEINARD);
    AI_LOGENTRY(TOPIC_CQ006, LOG_CQ006_SIGNATUREFROMRUUD);
    CQ006_BEINARDHELP = 2;
    INFO_CLEARCHOICES(0x127bf);
}

func void DIA_BEINARD_HELP_RIGHT() {
    AI_OUTPUT(OTHER, SELF, "DIA_Beinard_Help_Right_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Beinard_Help_Right_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Beinard_Help_Right_15_03");
    CQ006_BEINARDHELP = 1;
    INFO_CLEARCHOICES(0x127bf);
}

instance DIA_BEINARD_HELPAGAIN(C_INFO) {
    NPC = 0xd778;
    NR = 3;
    CONDITION = DIA_BEINARD_HELPAGAIN_CONDITION;
    INFORMATION = DIA_BEINARD_HELPAGAIN_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I came up with an idea.";
}

func int DIA_BEINARD_HELPAGAIN_CONDITION() {
    if (((LOG_GETSTATUS(MIS_CQ006)) == (LOG_RUNNING)) && ((CQ006_BEINARDHELP) == (1))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_BEINARD_HELPAGAIN_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Beinard_HelpAgain_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Beinard_HelpAgain_03_02");
    AI_STARTFACEANI(VLK_6283_BEINARD, S_SERIOUS, 0, 1);
    AI_OUTPUT(SELF, OTHER, "DIA_Beinard_Help_Gold_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Beinard_Help_Gold_03_05");
    AI_OUTPUT(OTHER, SELF, "DIA_Beinard_Help_Gold_15_06");
    AI_RESETFACEANI(VLK_6283_BEINARD);
    CQ006_BEINARDHELP = 2;
}

instance DIA_BEINARD_RUUDLETTER(C_INFO) {
    NPC = 0xd778;
    NR = 1;
    CONDITION = DIA_BEINARD_RUUDLETTER_CONDITION;
    INFORMATION = DIA_BEINARD_RUUDLETTER_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Here's the writing you wanted.";
}

func int DIA_BEINARD_RUUDLETTER_CONDITION() {
    if (((LOG_GETSTATUS(MIS_CQ006)) == (LOG_RUNNING)) && ((NPC_HASITEMS(OTHER, 0x9127)) >= (1))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_BEINARD_RUUDLETTER_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Beinard_RuudLetter_15_01");
    B_GIVEINVITEMS(OTHER, SELF, 0x9127, 1);
    B_USEFAKESCROLL();
    AI_OUTPUT(SELF, OTHER, "DIA_Beinard_RuudLetter_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Beinard_RuudLetter_15_03");
    AI_STOPPROCESSINFOS(SELF);
    CQ006_BEINARD_RTNCHECK = 1;
    NPC_EXCHANGEROUTINE(SELF, "CQ006_GUIDE");
    CQ006_PREPARERUUD();
}

instance DIA_BEINARD_PATIENT(C_INFO) {
    NPC = 0xd778;
    NR = 1;
    CONDITION = DIA_BEINARD_PATIENT_CONDITION;
    INFORMATION = DIA_BEINARD_PATIENT_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "How's the patient?";
}

func int DIA_BEINARD_PATIENT_CONDITION() {
    if (((LOG_GETSTATUS(MIS_CQ006)) == (LOG_SUCCESS)) && ((CQ006_BEINARDHELP) == (3))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_BEINARD_PATIENT_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Beinard_Patient_15_01");
    AI_STARTFACEANI(VLK_6283_BEINARD, S_SMUG, 0, 1);
    AI_OUTPUT(SELF, OTHER, "DIA_Beinard_Patient_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Beinard_Patient_03_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Beinard_Patient_15_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Beinard_Patient_03_05");
    AI_RESETFACEANI(VLK_6283_BEINARD);
}

instance DIA_BEINARD_SORRY(C_INFO) {
    NPC = 0xd778;
    NR = 1;
    CONDITION = DIA_BEINARD_SORRY_CONDITION;
    INFORMATION = DIA_BEINARD_SORRY_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_BEINARD_SORRY_CONDITION() {
    if (((LOG_GETSTATUS(MIS_CQ006)) == (LOG_RUNNING)) && ((CQ006_RUUDRUNAWAY_CHECK) == (TRUE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_BEINARD_SORRY_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Beinard_Sorry_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Beinard_Sorry_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Beinard_Sorry_15_03");
    AI_STOPPROCESSINFOS(SELF);
    NPC_EXCHANGEROUTINE(SELF, START);
}

instance DIA_BEINARD_PICKPOCKET(C_INFO) {
    NPC = 0xd778;
    NR = 900;
    CONDITION = DIA_BEINARD_PICKPOCKET_CONDITION;
    INFORMATION = DIA_BEINARD_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_40;
}

func int DIA_BEINARD_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_BEINARD_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(0x127d0);
    INFO_ADDCHOICE(0x127d0, DIALOG_BACK, 0x127d4);
    INFO_ADDCHOICE(0x127d0, DIALOG_PICKPOCKET, 0x127d3);
}

func void DIA_BEINARD_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) {
        B_PICKPOCKET_AMBIENT_TIER_1();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(0x127d0);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(0x127d0);
}

func void DIA_BEINARD_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(0x127d0);
}


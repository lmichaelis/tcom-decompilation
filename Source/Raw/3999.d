var int RANDHAL_FISHERMANCHEST = 0;
instance DIA_RANDHAL_EXIT(C_INFO) {
    NPC = 0xda30;
    NR = 999;
    CONDITION = DIA_RANDHAL_EXIT_CONDITION;
    INFORMATION = DIA_RANDHAL_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_RANDHAL_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_RANDHAL_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_RANDHAL_Q208_HELLO(C_INFO) {
    NPC = 0xda30;
    NR = 1;
    CONDITION = DIA_RANDHAL_Q208_HELLO_CONDITION;
    INFORMATION = DIA_RANDHAL_Q208_HELLO_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_RANDHAL_Q208_HELLO_CONDITION() {
    if (NPC_ISINSTATE(SELF, 0xf09f)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_RANDHAL_Q208_HELLO_INFO() {
    if ((NPC_HASGUILDARMOREQUIPPED(OTHER, GIL_SLD)) == (FALSE)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Randhal_Q208_HELLO_03_01");
        if (((Q208_RANDHALNOTIME) == (FALSE)) && (NPC_KNOWSINFO(OTHER, 0x13077))) {
            Q208_RANDHALNOTIME = TRUE;
            AI_LOGENTRY(TOPIC_Q208, LOG_Q208_RANDHAL_WRONGARMOR);
        };
    };
}

var int DIA_RANDHAL_Q208_HELLO_INFO.Q208_RANDHALNOTIME = 0;
instance DIA_RANDHAL_Q208_WHAT(C_INFO) {
    NPC = 0xda30;
    NR = 1;
    CONDITION = DIA_RANDHAL_Q208_WHAT_CONDITION;
    INFORMATION = DIA_RANDHAL_Q208_WHAT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "What are you doing here?";
}

func int DIA_RANDHAL_Q208_WHAT_CONDITION() {
    if (((NPC_KNOWSINFO(OTHER, 0x13077)) && ((Q208_MILITIAFINISHWAY) == (0))) && ((Q208_WHYMILITIAISHERE) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_RANDHAL_Q208_WHAT_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Randhal_Q208_What_15_01");
    if ((NPC_HASGUILDARMOREQUIPPED(OTHER, GIL_SLD)) == (FALSE)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Randhal_Q208_What_03_02");
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Randhal_Q208_What_03_03");
    INFO_CLEARCHOICES(0x12f30);
    INFO_ADDCHOICE(0x12f30, "I'm on some very secret mission.", 0x12f34);
}

func void DIA_RANDHAL_Q208_WHAT_NEEDHELP() {
    Q208_WHYMILITIAISHERE = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Randhal_Q208_What_NeedHelp_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Randhal_Q208_What_NeedHelp_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Randhal_Q208_What_NeedHelp_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Randhal_Q208_What_NeedHelp_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Randhal_Q208_What_NeedHelp_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Randhal_Q208_What_NeedHelp_03_06");
    AI_LOGENTRY(TOPIC_Q208, LOG_Q208_RANDHAL_IDEA);
    INFO_CLEARCHOICES(0x12f30);
}

func void DIA_RANDHAL_Q208_WHAT_MISSION() {
    AI_OUTPUT(OTHER, SELF, "DIA_Randhal_Q208_What_Mission_15_01");
    AI_WAITTILLEND(SELF, OTHER);
    AI_PLAYANI(SELF, T_LAUGH);
    AI_OUTPUT(SELF, OTHER, "DIA_Randhal_Q208_What_Mission_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Randhal_Q208_What_Mission_03_03");
    INFO_CLEARCHOICES(0x12f30);
    INFO_ADDCHOICE(0x12f30, "Maybe I can be of some use to you?", 0x12f33);
}

instance DIA_RANDHAL_Q208_FIGHT(C_INFO) {
    NPC = 0xda30;
    NR = 900;
    CONDITION = DIA_RANDHAL_Q208_FIGHT_CONDITION;
    INFORMATION = DIA_RANDHAL_Q208_FIGHT_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = DIALOG_PROVOKE;
}

func int DIA_RANDHAL_Q208_FIGHT_CONDITION() {
    if (((NPC_KNOWSINFO(OTHER, 0x13077)) && ((Q208_WHYMILITIAISHERE) == (TRUE))) && ((Q208_MILITIAFINISHWAY) == (0))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_RANDHAL_Q208_FIGHT_INFO() {
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_TURNTONPC(MIL_6353_MILITIA, HERO);
    AI_OUTPUT(OTHER, SELF, "DIA_Randhal_Q208_What_Dare_15_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Randhal_Q208_What_Dare_15_02");
    AI_DRAWWEAPON(OTHER);
    AI_OUTPUT(SELF, OTHER, "DIA_Randhal_Q208_What_Dare_03_03");
    AI_STOPPROCESSINFOS(SELF);
    AI_FUNCTION(SELF, 0x12f38);
}

func void RANDHAL_ATTACKMARVIN() {
    Q208_FIGHTWITHMILITIA = 1;
    MIL_6352_RANDHAL.AIVAR[96] = -(1);
    MIL_6353_MILITIA.AIVAR[96] = -(1);
    MIL_6352_RANDHAL.AIVAR[45] = AF_RUNNING;
    MIL_6353_MILITIA.AIVAR[45] = AF_RUNNING;
    B_IMMEDIATEATTACKPLAYER(MIL_6352_RANDHAL, AR_KILL);
    B_IMMEDIATEATTACKPLAYER(MIL_6353_MILITIA, AR_KILL);
}

instance DIA_RANDHAL_Q208_AFTERFIGHT(C_INFO) {
    NPC = 0xda30;
    NR = 1;
    CONDITION = DIA_RANDHAL_Q208_AFTERFIGHT_CONDITION;
    INFORMATION = DIA_RANDHAL_Q208_AFTERFIGHT_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_RANDHAL_Q208_AFTERFIGHT_CONDITION() {
    if (((((LOG_GETSTATUS(MIS_Q208)) == (LOG_RUNNING)) && ((Q208_MILITIAFINISHWAY) == (0))) && ((Q208_FIGHTWITHMILITIA) == (2))) && (NPC_ISINSTATE(SELF, 0xf09f))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_RANDHAL_Q208_AFTERFIGHT_INFO() {
    if ((Q208_FIGHTWITHMILITIA) == (2)) {
        Q208_FIGHTWITHMILITIA = 3;
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Randhal_Q208_AfterFight_03_01");
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_RANDHAL_Q208_HOD(C_INFO) {
    NPC = 0xda30;
    NR = 2;
    CONDITION = DIA_RANDHAL_Q208_HOD_CONDITION;
    INFORMATION = DIA_RANDHAL_Q208_HOD_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I found a body not far from here.";
}

func int DIA_RANDHAL_Q208_HOD_CONDITION() {
    if ((((Q208_WHYMILITIAISHERE) == (TRUE)) && (NPC_KNOWSINFO(OTHER, 0x13077))) && ((Q208_MILITIAFINISHWAY) == (0))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_RANDHAL_Q208_HOD_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Randhal_Q208_Hod_15_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Randhal_Q208_Hod_15_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Randhal_Q208_Hod_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Randhal_Q208_Hod_03_04");
    INFO_CLEARCHOICES(0x12f3c);
    INFO_ADDCHOICE(0x12f3c, "It could have been murder.", 0x12f3f);
    if ((BENGARFARM_ORCENCOUNTER) == (2)) {
        INFO_ADDCHOICE(0x12f3c, "I'm sure an orc killed him!", 0x12f40);
    };
}

func void DIA_RANDHAL_Q208_HOD_MURDER() {
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Randhal_Q208_Hod_Murder_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Randhal_Q208_Hod_Murder_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Randhal_Q208_Hod_Murder_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Randhal_Q208_Hod_Murder_03_04");
    AI_RESETFACEANI(SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Randhal_Q208_Hod_Murder_03_05");
    AI_LOGENTRY(TOPIC_Q208, LOG_Q208_RANDHAL_HODCORPSE);
    INFO_CLEARCHOICES(0x12f3c);
}

func void DIA_RANDHAL_Q208_HOD_ORC() {
    Q208_MILITIAFINISHWAY = 3;
    TRIA_INVITE(MIL_6353_MILITIA);
    TRIA_START();
    AI_LOOKATNPC(OTHER, SELF);
    AI_STOPLOOKAT(SELF);
    AI_OUTPUT(OTHER, SELF, "DIA_Randhal_Q208_Hod_Orc_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Randhal_Q208_Hod_Orc_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Randhal_Q208_Hod_Orc_03_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Randhal_Q208_Hod_Orc_03_07");
    AI_OUTPUT(OTHER, SELF, "DIA_Randhal_Q208_Hod_Orc_15_08");
    AI_OUTPUT(SELF, OTHER, "DIA_Randhal_Q208_Hod_Orc_03_09");
    AI_LOGENTRY(TOPIC_GQ001, LOG_Q208_RANDHAL_MOVEOUT);
    TRIA_FINISH();
    AI_STOPLOOKAT(SELF);
    AI_STOPLOOKAT(OTHER);
    INFO_CLEARCHOICES(0x12f3c);
    AI_STOPPROCESSINFOS(SELF);
    AI_FUNCTION(SELF, 0x12f41);
}

func void RANDHAL_GOTOORC() {
    NPC_EXCHANGEROUTINE(MIL_6352_RANDHAL, "FARMPART6");
    NPC_EXCHANGEROUTINE(MIL_6353_MILITIA, "FARMPART6");
}

instance DIA_RANDHAL_Q208_JOINTFOUND(C_INFO) {
    NPC = 0xda30;
    NR = 2;
    CONDITION = DIA_RANDHAL_Q208_JOINTFOUND_CONDITION;
    INFORMATION = DIA_RANDHAL_Q208_JOINTFOUND_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I have information about swampweed.";
}

func int DIA_RANDHAL_Q208_JOINTFOUND_CONDITION() {
    if (((((Q208_WHYMILITIAISHERE) == (TRUE)) && ((LOG_GETSTATUS(MIS_Q208)) == (LOG_RUNNING))) && ((Q208_MILITIAFINISHWAY) == (0))) && ((NPC_HASITEMS(OTHER, 0x911f)) >= (1))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_RANDHAL_Q208_JOINTFOUND_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Randhal_Q208_JointFound_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Randhal_Q208_JointFound_03_02");
    if ((NPC_HASITEMS(OTHER, 0x911f)) >= (1)) {
        MIL_6352_RANDHAL.FLAGS = 2;
        MIL_6353_MILITIA.FLAGS = 2;
        Q208_MILITIAFINISHWAY = 1;
        AI_OUTPUT(OTHER, SELF, "DIA_Randhal_Q208_JointFound_15_03");
        NPC_REMOVEINVITEM(SELF, 0x911f);
        B_STANDUP();
        B_GIVEINVITEMS(OTHER, SELF, 0x911f, 1);
        B_USEFAKEPACKET();
        AI_OUTPUT(SELF, OTHER, "DIA_Randhal_Q208_JointFound_03_04");
        AI_OUTPUT(SELF, OTHER, "DIA_Randhal_Q208_JointFound_03_05");
        AI_OUTPUT(SELF, OTHER, "DIA_Randhal_Q208_JointFound_03_06");
        CREATEINVITEMS(SELF, 0x87af, 1);
        B_GIVEINVITEMS(SELF, OTHER, 0x87af, 1);
        AI_LOGENTRY(TOPIC_Q208, LOG_Q208_RANDHAL_JOINTPACK);
        AI_STOPPROCESSINFOS(SELF);
        AI_FUNCTION(SELF, 0xf350);
    };
}

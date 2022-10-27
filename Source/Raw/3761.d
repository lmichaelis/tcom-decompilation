instance DIA_VOLKERGUARD03_EXIT(C_INFO) {
    NPC = 0xcfcd;
    NR = 999;
    CONDITION = DIA_VOLKERGUARD03_EXIT_CONDITION;
    INFORMATION = DIA_VOLKERGUARD03_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_VOLKERGUARD03_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_VOLKERGUARD03_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_VOLKERGUARD03_INTRUDER(C_INFO) {
    NPC = 0xcfcd;
    NR = 1;
    CONDITION = DIA_VOLKERGUARD03_INTRUDER_CONDITION;
    INFORMATION = DIA_VOLKERGUARD03_INTRUDER_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_VOLKERGUARD03_INTRUDER_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_Q405)) == (LOG_RUNNING)) && ((Q405_VOLKERGUARDSATTACK) == (0))) && ((Q405_DIALOGUEWITHVOLKERGUARDS) == (0))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_VOLKERGUARD03_INTRUDER_INFO() {
    INFO_CLEARCHOICES(0x10e35);
    INFO_ADDCHOICE(0x10e35, "Who are you?", 0x10e39);
    INFO_ADDCHOICE(0x10e35, "What are you doing here?", 0x10e3a);
    INFO_ADDCHOICE(0x10e35, "I work for Volker, too.", 0x10e3b);
}

func void DIA_VOLKERGUARD03_BADCHOICE() {
    AI_PLAYANI(SELF, T_SEARCH);
    AI_OUTPUT(SELF, OTHER, "DIA_VolkerGuard03_Intruder_Works_03_04");
    INFO_CLEARCHOICES(0x10e35);
    AI_STOPPROCESSINFOS(SELF);
    AI_FUNCTION(SELF, 0xf951);
    AI_FUNCTION(SELF, 0xf952);
}

func void DIA_VOLKERGUARD03_INTRUDER_WHO() {
    AI_OUTPUT(OTHER, SELF, "DIA_VolkerGuard03_Intruder_Who_15_01");
    DIA_VOLKERGUARD03_BADCHOICE();
}

func void DIA_VOLKERGUARD03_INTRUDER_WHAT() {
    AI_OUTPUT(OTHER, SELF, "DIA_VolkerGuard03_Intruder_What_15_01");
    DIA_VOLKERGUARD03_BADCHOICE();
}

func void DIA_VOLKERGUARD03_INTRUDER_WORKS() {
    AI_OUTPUT(OTHER, SELF, "DIA_VolkerGuard03_Intruder_Works_15_01");
    if ((NPC_HASEQUIPPEDARMOR(OTHER)) == (TRUE)) {
        ITM = NPC_GETEQUIPPEDARMOR(OTHER);
        if (((HLP_ISITEM(ITM, 0x8a97)) == (TRUE)) || ((HLP_ISITEM(ITM, 0x8a96)) == (TRUE))) {
            Q405_DIALOGUEWITHVOLKERGUARDS = 1;
            AI_OUTPUT(SELF, OTHER, "DIA_VolkerGuard03_Intruder_Works_03_02");
            AI_OUTPUT(SELF, OTHER, "DIA_VolkerGuard03_Intruder_Works_03_03");
            AI_LOGENTRY(TOPIC_Q405, LOG_Q405_VOLKERGUARDSNOATTACK);
            INFO_CLEARCHOICES(0x10e35);
            AI_STOPPROCESSINFOS(SELF);
        } else {
            DIA_VOLKERGUARD03_BADCHOICE();
        } else {
            /* set_instance(0) */;
        };
    };
    DIA_VOLKERGUARD03_BADCHOICE();
}

instance DIA_VOLKERGUARD03_INTRUDER_WORKS.ITM(C_ITEM)
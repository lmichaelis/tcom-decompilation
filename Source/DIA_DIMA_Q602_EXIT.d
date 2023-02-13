instance DIA_DIMA_Q602_EXIT(C_INFO) {
    NPC = 60029;
    NR = 999;
    CONDITION = DIA_DIMA_Q602_EXIT_CONDITION;
    INFORMATION = DIA_DIMA_Q602_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_DIMA_Q602_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_DIMA_Q602_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_DIMA_Q602_HELP(C_INFO) {
    NPC = 60029;
    NR = 1;
    CONDITION = DIA_DIMA_Q602_HELP_CONDITION;
    INFORMATION = DIA_DIMA_Q602_HELP_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_DIMA_Q602_HELP_CONDITION() {
    if (((LOG_GETSTATUS(MIS_Q602)) == (LOG_RUNNING)) && ((Q602_DIMACUTSCENE_ENABLE) == (4))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_DIMA_Q602_HELP_INFO() {
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Dima_Q602_Help_03_01");
    INFO_CLEARCHOICES(90658);
    INFO_ADDCHOICE(90658, "I have some unfinished business with the Usurer's men.", 90663);
    INFO_ADDCHOICE(90658, "I couldn't leave you here like this.", 90662);
}

func void DIA_DIMA_Q602_HELP_NEXT() {
    AI_OUTPUT(OTHER, SELF, "DIA_Dima_Q602_Help_Next_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Dima_Q602_Help_Next_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Dima_Q602_Help_Next_03_03");
    CREATEINVITEMS(SELF, 34709, 3);
    B_GIVEINVITEMS(SELF, OTHER, 34709, 3);
    INFO_CLEARCHOICES(90658);
    AI_STOPPROCESSINFOS(SELF);
    AI_FUNCTION(SELF, 90664);
}

func void DIA_DIMA_Q602_HELP_NOPROBLEM() {
    AI_OUTPUT(OTHER, SELF, "DIA_Dima_Q602_Help_NoProblem_15_01");
    DIA_DIMA_Q602_HELP_NEXT();
}

func void DIA_DIMA_Q602_HELP_VOLKER() {
    AI_OUTPUT(OTHER, SELF, "DIA_Dima_Q602_Help_Volker_15_01");
    DIA_DIMA_Q602_HELP_NEXT();
}

func void DIMA_Q602_CHANGERTN() {
    NPC_EXCHANGEROUTINE(SLD_5001_DIMA_Q602, "Q602_OUTSIDE");
    if (!(NPC_ISDEAD(SLD_1017_ARAXOS_Q602))) {
        B_STARTOTHERROUTINE(SLD_1017_ARAXOS_Q602, "Q602_OUTSIDE");
    };
}

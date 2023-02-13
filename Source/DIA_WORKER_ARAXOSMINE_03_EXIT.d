instance DIA_WORKER_ARAXOSMINE_03_EXIT(C_INFO) {
    NPC = 56373;
    NR = 999;
    CONDITION = DIA_WORKER_ARAXOSMINE_03_EXIT_CONDITION;
    INFORMATION = DIA_WORKER_ARAXOSMINE_03_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_WORKER_ARAXOSMINE_03_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_WORKER_ARAXOSMINE_03_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_WORKER_ARAXOSMINE_03_QA306_SEARCH(C_INFO) {
    NPC = 56373;
    NR = 1;
    CONDITION = DIA_WORKER_ARAXOSMINE_03_QA306_SEARCH_CONDITION;
    INFORMATION = DIA_WORKER_ARAXOSMINE_03_QA306_SEARCH_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_WORKER_ARAXOSMINE_03_QA306_SEARCH_CONDITION() {
    if (((LOG_GETSTATUS(MIS_QA306)) == (LOG_RUNNING)) && ((QA306_BLOODWYNCUTSCENESTATUS) == (3))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_WORKER_ARAXOSMINE_03_QA306_SEARCH_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_Worker_AraxosMine_03_QA306_Search_03_01");
    INFO_CLEARCHOICES(78994);
    INFO_ADDCHOICE(78994, "Me? What is it?", 78997);
}

func void DIA_WORKER_ARAXOSMINE_03_QA306_SEARCH_WHAT() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Worker_AraxosMine_03_QA306_Search_What_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Worker_AraxosMine_03_QA306_Search_What_03_02");
    INFO_CLEARCHOICES(78994);
    AI_RESETFACEANI(OTHER);
    AI_STOPPROCESSINFOS(SELF);
    SELF.AIVAR[15] = TRUE;
    NPC_EXCHANGEROUTINE(SELF, "QA306_GUIDE");
    AI_FUNCTION(SELF, 63254);
}


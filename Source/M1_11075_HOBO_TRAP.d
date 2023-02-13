func void M1_11075_HOBO_TRAP() {
    B_IMMEDIATEATTACKPLAYER(VLK_11075_HOBO, AR_KILL);
    VLK_11075_HOBO.FLAGS = 0;
    VLK_11075_HOBO.AIVAR[52] = TRUE;
    NPC_REFRESH(VLK_11076_HOBO);
    B_IMMEDIATEATTACKPLAYER(VLK_11076_HOBO, AR_KILL);
    VLK_11076_HOBO.FLAGS = 0;
    VLK_11076_HOBO.AIVAR[52] = TRUE;
    NPC_REFRESH(VLK_11077_HOBO);
    B_IMMEDIATEATTACKPLAYER(VLK_11077_HOBO, AR_KILL);
    VLK_11077_HOBO.FLAGS = 0;
    VLK_11077_HOBO.AIVAR[52] = TRUE;
}

instance DIA_HOBO_EXIT(C_INFO) {
    NPC = 51891;
    NR = 999;
    CONDITION = DIA_HOBO_EXIT_CONDITION;
    INFORMATION = DIA_HOBO_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_HOBO_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_HOBO_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_HOBO_HELLOHOBO(C_INFO) {
    NPC = 51891;
    NR = 1;
    CONDITION = DIA_HOBO_HELLOHOBO_CONDITION;
    INFORMATION = DIA_HOBO_HELLOHOBO_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_HOBO_HELLOHOBO_CONDITION() {
    if (((KAPITEL) >= (3)) && ((LOG_GETSTATUS(MIS_FMQ003)) != (LOG_RUNNING))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_HOBO_HELLOHOBO_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_Hobo_HelloHobo_03_01");
    AI_STOPPROCESSINFOS(SELF);
    AI_FUNCTION(HERO, 71913);
}

instance DIA_11075_HOBO_JUSTINCASE(C_INFO) {
    NPC = 51891;
    NR = 1;
    CONDITION = DIA_11075_HOBO_JUSTINCASE_CONDITION;
    INFORMATION = DIA_11075_HOBO_JUSTINCASE_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_11075_HOBO_JUSTINCASE_CONDITION() {
    if (((KAPITEL) >= (3)) && ((LOG_GETSTATUS(MIS_FMQ003)) != (LOG_RUNNING))) {
        return FALSE;
    };
    if (NPC_ISINSTATE(SELF, 61599)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_11075_HOBO_JUSTINCASE_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_11075_Hobo_JustInCase_03_01");
    AI_STOPPROCESSINFOS(SELF);
}

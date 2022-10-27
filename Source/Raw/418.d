instance DIA_SQ505_VOLKERGUARD_M3_EXIT(C_INFO) {
    NR = 999;
    CONDITION = DIA_SQ505_VOLKERGUARD_M3_EXIT_CONDITION;
    INFORMATION = DIA_SQ505_VOLKERGUARD_M3_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_SQ505_VOLKERGUARD_M3_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_SQ505_VOLKERGUARD_M3_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_SQ505_VOLKERGUARD_M3_BUSY(C_INFO) {
    NR = 1;
    CONDITION = DIA_SQ505_VOLKERGUARD_M3_BUSY_CONDITION;
    INFORMATION = DIA_SQ505_VOLKERGUARD_M3_BUSY_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_SQ505_VOLKERGUARD_M3_BUSY_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_SQ505)) == (LOG_RUNNING)) && (WLD_ISTIME(21, 0, 8, 0))) && ((NPC_GETDISTTOWP(SELF, SELF.WP)) <= (500))) {
        return FALSE;
    };
    if (NPC_ISINSTATE(SELF, 0xf09f)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_SQ505_VOLKERGUARD_M3_BUSY_INFO() {
    DIA_IMBUSY_ANGRY();
}

instance DIA_SQ505_VOLKERGUARD_M3_WHAT(C_INFO) {
    NR = 1;
    CONDITION = DIA_SQ505_VOLKERGUARD_M3_WHAT_CONDITION;
    INFORMATION = DIA_SQ505_VOLKERGUARD_M3_WHAT_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_SQ505_VOLKERGUARD_M3_WHAT_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_SQ505)) == (LOG_RUNNING)) && (WLD_ISTIME(21, 0, 8, 0))) && ((NPC_GETDISTTOWP(SELF, SELF.WP)) <= (500))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void SQ505_VOLKERGUARD_M3_KILLHERO() {
    B_IMMEDIATEATTACKPLAYER(NONE_13398_VOLKERGUARD, AR_KILL);
    B_IMMEDIATEATTACKPLAYER(NONE_13399_VOLKERGUARD, AR_KILL);
    B_IMMEDIATEATTACKPLAYER(NONE_13400_VOLKERGUARD, AR_KILL);
    LOG_SETSTATUS(_@(MIS_SQ505), TOPIC_SQ505, LOG_FAILED);
    B_LOGENTRY(TOPIC_SQ505, LOG_SQ505_FAILED);
}

func void DIA_SQ505_VOLKERGUARD_M3_WHAT_INFO() {
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    B_SAY(SELF, OTHER, "$Alarm");
    AI_STOPPROCESSINFOS(SELF);
    AI_FUNCTION(SELF, 0xa6fe);
}

func void B_ASSIGNAMBIENTINFOS_SQ505_VOLKERGUARD_M3(var C_NPC SLF) {
    DIA_SQ505_VOLKERGUARD_M3_EXIT.NPC = HLP_GETINSTANCEID(SLF);
    DIA_SQ505_VOLKERGUARD_M3_WHAT.NPC = HLP_GETINSTANCEID(SLF);
    DIA_SQ505_VOLKERGUARD_M3_BUSY.NPC = HLP_GETINSTANCEID(SLF);
}


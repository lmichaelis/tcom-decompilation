instance DIA_CITIZEN03_Q602_EXIT(C_INFO) {
    NPC = 60080;
    NR = 999;
    CONDITION = DIA_CITIZEN03_Q602_EXIT_CONDITION;
    INFORMATION = DIA_CITIZEN03_Q602_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_CITIZEN03_Q602_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_CITIZEN03_Q602_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_CITIZEN03_Q602_HELP(C_INFO) {
    NPC = 60080;
    NR = 1;
    CONDITION = DIA_CITIZEN03_Q602_HELP_CONDITION;
    INFORMATION = DIA_CITIZEN03_Q602_HELP_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_CITIZEN03_Q602_HELP_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_Q602)) == (LOG_RUNNING)) && (NPC_ISINSTATE(SELF, 61599))) && ((Q602_FIGHTWITHFABIOEVENTS) == (2))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_CITIZEN03_Q602_HELP_INFO() {
    if (HLP_ISVALIDNPC(VLK_10093_CITIZEN_Q602)) {
        if (!(NPC_ISDEAD(VLK_10093_CITIZEN_Q602))) {
            TRIA_INVITE(VLK_10093_CITIZEN_Q602);
        };
    };
    if (HLP_ISVALIDNPC(VLK_10094_CITIZEN_Q602)) {
        if (!(NPC_ISDEAD(VLK_10094_CITIZEN_Q602))) {
            TRIA_INVITE(VLK_10094_CITIZEN_Q602);
        };
    };
    if ((HLP_ISVALIDNPC(VLK_10093_CITIZEN_Q602)) || (HLP_ISVALIDNPC(VLK_10094_CITIZEN_Q602))) {
        if ((!(NPC_ISDEAD(VLK_10093_CITIZEN_Q602))) || (!(NPC_ISDEAD(VLK_10094_CITIZEN_Q602)))) {
            TRIA_START();
        };
    };
    Q602_FABIOVICITIMSDIALOGUE();
    if ((HLP_ISVALIDNPC(VLK_10093_CITIZEN_Q602)) || (HLP_ISVALIDNPC(VLK_10094_CITIZEN_Q602))) {
        if ((!(NPC_ISDEAD(VLK_10093_CITIZEN_Q602))) || (!(NPC_ISDEAD(VLK_10094_CITIZEN_Q602)))) {
            TRIA_FINISH();
        };
    };
    AI_STOPPROCESSINFOS(SELF);
}


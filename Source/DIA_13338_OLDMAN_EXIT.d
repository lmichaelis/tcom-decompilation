instance DIA_13338_OLDMAN_EXIT(C_INFO) {
    NPC = 57232;
    NR = 999;
    CONDITION = DIA_13338_OLDMAN_EXIT_CONDITION;
    INFORMATION = DIA_13338_OLDMAN_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_13338_OLDMAN_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_13338_OLDMAN_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_13338_OLDMAN_CALLANAMBULANCE(C_INFO) {
    NPC = 57232;
    NR = 2;
    CONDITION = DIA_13338_OLDMAN_CALLANAMBULANCE_CONDITION;
    INFORMATION = DIA_13338_OLDMAN_CALLANAMBULANCE_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_13338_OLDMAN_CALLANAMBULANCE_CONDITION() {
    return TRUE;
}

func void DIA_13338_OLDMAN_CALLANAMBULANCE_INFO() {
    NONE_13338_OLDMAN.FLAGS = 0;
    NONE_13338_OLDMAN.GUILD = GIL_NONE;
    AI_OUTPUT(SELF, OTHER, "DIA_13338_OldMan_CallAnAmbulance_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_13338_OldMan_CallAnAmbulance_03_02");
    CREATEINVITEMS(SELF, 34417, 1);
    CREATEINVITEMS(SELF, 34384, 50);
    AI_EQUIPBESTRANGEDWEAPON(SELF);
    AI_READYRANGEDWEAPON(SELF);
    MDL_REMOVEOVERLAYMDS(NONE_13338_OLDMAN, HUMANSHURTMDS);
    AI_WAIT(HERO, 1073741824);
    AI_OUTPUT(SELF, OTHER, "DIA_13338_OldMan_CallAnAmbulance_03_03");
    AI_STOPPROCESSINFOS(SELF);
    B_ATTACK(SELF, OTHER, AR_KILL, 1);
}


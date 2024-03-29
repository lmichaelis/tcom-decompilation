instance DIA_13414_MANHUNTER_EXIT(C_INFO) {
    NPC = 57358;
    NR = 999;
    CONDITION = DIA_13414_MANHUNTER_EXIT_CONDITION;
    INFORMATION = DIA_13414_MANHUNTER_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_13414_MANHUNTER_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_13414_MANHUNTER_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_13414_MANHUNTER_AREYOUFOLLOWINGME(C_INFO) {
    NPC = 57358;
    NR = 1;
    CONDITION = DIA_13414_MANHUNTER_AREYOUFOLLOWINGME_CONDITION;
    INFORMATION = DIA_13414_MANHUNTER_AREYOUFOLLOWINGME_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "Are you following me?";
}

func int DIA_13414_MANHUNTER_AREYOUFOLLOWINGME_CONDITION() {
    if ((Q406_MANHUNTERSSILBACH) == (2)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_13414_MANHUNTER_AREYOUFOLLOWINGME_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_13414_ManHunter_AreYouFollowingMe_15_01");
    B_SAY(SELF, OTHER, "$NO");
    AI_STOPPROCESSINFOS(SELF);
}


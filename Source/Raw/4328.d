instance DIA_13415_MANHUNTER_EXIT(C_INFO) {
    NPC = 0xe014;
    NR = 999;
    CONDITION = DIA_13415_MANHUNTER_EXIT_CONDITION;
    INFORMATION = DIA_13415_MANHUNTER_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_13415_MANHUNTER_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_13415_MANHUNTER_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_13415_MANHUNTER_Q406(C_INFO) {
    NPC = 0xe014;
    NR = 1;
    CONDITION = DIA_13415_MANHUNTER_Q406_CONDITION;
    INFORMATION = DIA_13415_MANHUNTER_Q406_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_13415_MANHUNTER_Q406_CONDITION() {
    return TRUE;
}

func void DIA_13415_MANHUNTER_Q406_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_13415_ManHunter_Q406_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_13415_ManHunter_Q406_03_02");
    AI_PLAYANI(SELF, T_SEARCH);
    AI_OUTPUT(SELF, OTHER, "DIA_13415_ManHunter_Q406_03_03");
    INFO_CLEARCHOICES(0x15f52);
    INFO_ADDCHOICE(0x15f52, "I'm not going anywhere with you!", 0x15f55);
    INFO_ADDCHOICE(0x15f52, "Okay, lead the way.", 0x15f56);
}

func void DIA_13415_MANHUNTER_Q406_NOFUCKYOU() {
    AI_OUTPUT(OTHER, SELF, "DIA_13415_ManHunter_Q406_NoFuckYou_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_13415_ManHunter_Q406_NoFuckYou_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_13415_ManHunter_Q406_NoFuckYou_15_03");
    NPC_EXCHANGEROUTINE(NONE_13415_MANHUNTER, FOLLOW);
    NPC_EXCHANGEROUTINE(NONE_13414_MANHUNTER, FOLLOW);
    NPC_REFRESH(NONE_13414_MANHUNTER);
    Q406_MANHUNTERSSILBACH = 2;
    AI_STOPPROCESSINFOS(SELF);
}

func void DIA_13415_MANHUNTER_Q406_IAMDUMB() {
    AI_OUTPUT(OTHER, SELF, "DIA_13415_ManHunter_Q406_IAmDumb_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_13415_ManHunter_Q406_IAmDumb_03_02");
    Q406_MANHUNTERSSILBACH = 1;
    RND_MANHUNTERGUIDE = HLP_RANDOM(2);
    if ((RND_MANHUNTERGUIDE) == (0)) {
        PRINTD("Guide 1");
        NPC_EXCHANGEROUTINE(NONE_13415_MANHUNTER, "GUIDE1");
        NPC_EXCHANGEROUTINE(NONE_13414_MANHUNTER, "GUIDE1");
    };
    if ((RND_MANHUNTERGUIDE) == (1)) {
        PRINTD("Guide 2");
        NPC_EXCHANGEROUTINE(NONE_13415_MANHUNTER, "GUIDE2");
        NPC_EXCHANGEROUTINE(NONE_13414_MANHUNTER, "GUIDE2");
    };
    PRINTD("Guide 3");
    NPC_EXCHANGEROUTINE(NONE_13415_MANHUNTER, "GUIDE3");
    NPC_EXCHANGEROUTINE(NONE_13414_MANHUNTER, "GUIDE3");
    AI_STOPPROCESSINFOS(SELF);
}

var int DIA_13415_MANHUNTER_Q406_IAMDUMB.RND_MANHUNTERGUIDE = 0;
instance DIA_MANHUNTER_Q406_DIE(C_INFO) {
    NPC = 0xe014;
    NR = 1;
    CONDITION = DIA_MANHUNTER_Q406_DIE_CONDITION;
    INFORMATION = DIA_MANHUNTER_Q406_DIE_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_MANHUNTER_Q406_DIE_CONDITION() {
    if ((Q406_MANHUNTERSSILBACH) == (1)) {
        if ((((NPC_GETDISTTOWP(SELF, "PART13_PATH_08")) < (600)) || ((NPC_GETDISTTOWP(SELF, "PART9_PATH_46")) < (600))) || ((NPC_GETDISTTOWP(SELF, "PART15_PATH_340")) < (600))) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_MANHUNTER_Q406_DIE_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_ManHunter_Q406_Die_03_01");
    AI_STOPPROCESSINFOS(SELF);
    AI_FUNCTION(HERO, 0x16f3d);
}

instance DIA_13415_MANHUNTER_AREYOUFOLLOWINGME(C_INFO) {
    NPC = 0xe014;
    NR = 1;
    CONDITION = DIA_13415_MANHUNTER_AREYOUFOLLOWINGME_CONDITION;
    INFORMATION = DIA_13415_MANHUNTER_AREYOUFOLLOWINGME_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "Are you following me?";
}

func int DIA_13415_MANHUNTER_AREYOUFOLLOWINGME_CONDITION() {
    if ((Q406_MANHUNTERSSILBACH) == (2)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_13415_MANHUNTER_AREYOUFOLLOWINGME_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_13415_ManHunter_AreYouFollowingMe_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_13415_ManHunter_AreYouFollowingMe_03_02");
    AI_STOPPROCESSINFOS(SELF);
}

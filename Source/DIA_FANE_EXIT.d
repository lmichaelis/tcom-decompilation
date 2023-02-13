instance DIA_FANE_EXIT(C_INFO) {
    NPC = 57287;
    NR = 999;
    CONDITION = DIA_FANE_EXIT_CONDITION;
    INFORMATION = DIA_FANE_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_FANE_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_FANE_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_FANE_SQ113_YIELDTONONE(C_INFO) {
    NPC = 57287;
    NR = 1;
    CONDITION = DIA_FANE_SQ113_YIELDTONONE_CONDITION;
    INFORMATION = DIA_FANE_SQ113_YIELDTONONE_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_FANE_SQ113_YIELDTONONE_CONDITION() {
    return TRUE;
}

var int FANE_HELLO_WHOAREYOU;
var int FANE_HELLO_WHATAREUDOIN;
var int FANE_HELLO_AREYOUDEAD;
var int FANE_HELLO_ANOTHERSKELETONS;
func void DIA_FANE_SQ113_YIELDTONONE_CHOICES() {
    AI_LOOKATNPC(HERO, SELF);
    INFO_CLEARCHOICES(85594);
    if ((FANE_HELLO_WHOAREYOU) == (FALSE)) {
        INFO_ADDCHOICE(85594, "Who are you?", 85602);
    };
    if ((FANE_HELLO_WHATAREUDOIN) == (FALSE)) {
        INFO_ADDCHOICE(85594, "What are you doing here?", 85603);
    };
    if ((FANE_HELLO_AREYOUDEAD) == (FALSE)) {
        INFO_ADDCHOICE(85594, "Are you dead?", 85604);
    };
    if ((FANE_HELLO_ANOTHERSKELETONS) == (FALSE)) {
        INFO_ADDCHOICE(85594, "Why don't you act like other skeletons?", 85605);
    };
    if ((FANE_HELLO_ANOTHERSKELETONS) == (FALSE)) {
        INFO_ADDCHOICE(85594, "Why don't you act like other skeletons?", 85605);
    };
    INFO_ADDCHOICE(85594, "You're on your own.", 85606);
    INFO_ADDCHOICE(85594, "Maybe I could help you in some way?", 85607);
}

func void DIA_FANE_SQ113_YIELDTONONE_INFO() {
    AI_LOOKATNPC(HERO, SELF);
    AI_STARTFACEANI(HERO, S_WTF, 1, -(1));
    NONE_10024_FANE.GUILD = GIL_NONE;
    NPC_SETTRUEGUILD(NONE_10024_FANE, GIL_NONE);
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Fane_SQ113_YieldToNone_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Fane_SQ113_YieldToNone_03_02");
    DIA_FANE_SQ113_YIELDTONONE_CHOICES();
}

func void DIA_FANE_SQ113_WHOAREYOU() {
    AI_LOOKATNPC(HERO, SELF);
    AI_OUTPUT(OTHER, SELF, "DIA_Fane_SQ113_WhoAreYou_15_01");
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Fane_SQ113_WhoAreYou_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Fane_SQ113_WhoAreYou_03_03");
    LOG_CREATETOPIC(TOPIC_SQ113, LOG_MISSION);
    LOG_SETSTATUS(_@(MIS_SQ113), TOPIC_SQ113, LOG_RUNNING);
    AI_LOGENTRY(TOPIC_SQ113, LOG_SQ113_FANETHESKELETON);
    FANE_HELLO_WHOAREYOU = TRUE;
    DIA_FANE_SQ113_YIELDTONONE_CHOICES();
}

func void DIA_FANE_SQ113_WHATAREUDOIN() {
    AI_LOOKATNPC(HERO, SELF);
    AI_OUTPUT(OTHER, SELF, "DIA_Fane_SQ113_WhatAreUDoin_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Fane_SQ113_WhatAreUDoin_03_02");
    FANE_HELLO_WHATAREUDOIN = TRUE;
    DIA_FANE_SQ113_YIELDTONONE_CHOICES();
}

func void DIA_FANE_SQ113_AREYOUDEAD() {
    AI_LOOKATNPC(HERO, SELF);
    AI_OUTPUT(OTHER, SELF, "DIA_Fane_SQ113_AreYouDead_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Fane_SQ113_AreYouDead_03_04");
    AI_STARTFACEANI(SELF, S_WHAT, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Fane_SQ113_AreYouDead_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Fane_SQ113_AreYouDead_03_06");
    FANE_HELLO_AREYOUDEAD = TRUE;
    DIA_FANE_SQ113_YIELDTONONE_CHOICES();
}

func void DIA_FANE_SQ113_ANOTHERSKELETONS() {
    AI_LOOKATNPC(HERO, SELF);
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Fane_SQ113_AnotherSkeletons_15_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Fane_SQ113_AnotherSkeletons_15_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Fane_SQ113_AnotherSkeletons_03_03");
    AI_WAITTILLEND(OTHER, SELF);
    AI_WAITTILLEND(SELF, OTHER);
    AI_PLAYANI(SELF, "T_FANESLEEP_2_STAND");
    AI_TURNTONPC(SELF, HERO);
    AI_DRAWWEAPON(SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Fane_SQ113_AnotherSkeletons_03_04");
    AI_REMOVEWEAPON(SELF);
    FANE_HELLO_ANOTHERSKELETONS = TRUE;
    DIA_FANE_SQ113_YIELDTONONE_CHOICES();
}

func void DIA_FANE_SQ113_RATTLEMEBONES() {
    AI_LOOKATNPC(HERO, SELF);
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Fane_SQ113_RattleMeBones_15_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Fane_SQ113_RattleMeBones_15_02");
    AI_LOGENTRY(TOPIC_SQ113, LOG_SQ113_SKELETONPROBLEM);
    AI_OUTPUT(SELF, OTHER, "DIA_Fane_SQ113_RattleMeBones_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Fane_SQ113_RattleMeBones_03_04");
    NPC_SETTRUEGUILD(NONE_10024_FANE, GIL_SKELETON);
    NONE_10024_FANE.GUILD = GIL_SKELETON;
    AI_STOPPROCESSINFOS(SELF);
    AI_STOPLOOKAT(SELF);
    AI_STOPLOOKAT(OTHER);
}

func void DIA_FANE_SQ113_CANIHELP() {
    AI_LOOKATNPC(HERO, SELF);
    AI_OUTPUT(OTHER, SELF, "DIA_Fane_SQ113_CanIHelp_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Fane_SQ113_CanIHelp_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Fane_SQ113_CanIHelp_03_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Fane_SQ113_CanIHelp_15_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Fane_SQ113_CanIHelp_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Fane_SQ113_CanIHelp_03_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Fane_SQ113_CanIHelp_03_07");
    INFO_CLEARCHOICES(85594);
    INFO_ADDCHOICE(85594, "I don't think I understand...", 85608);
    INFO_ADDCHOICE(85594, "Occasionally, I'll smack a mouth or two.", 85609);
}

func void DIA_FANE_SQ113_IDONTUNDERSTAND() {
    AI_LOOKATNPC(HERO, SELF);
    AI_OUTPUT(OTHER, SELF, "DIA_Fane_SQ113_IDontUnderstand_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Fane_SQ113_IDontUnderstand_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Fane_SQ113_IDontUnderstand_03_03");
    AI_STOPPROCESSINFOS(SELF);
    AI_STOPLOOKAT(SELF);
    AI_STOPLOOKAT(OTHER);
}

func void DIA_FANE_SQ113_MARVINFIGHTER() {
    SQ113_FANESTAND = 1;
    AI_LOOKATNPC(HERO, SELF);
    AI_OUTPUT(OTHER, SELF, "DIA_Fane_SQ113_MarvinFighter_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Fane_SQ113_MarvinFighter_03_02");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Fane_SQ113_MarvinFighter_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Fane_SQ113_MarvinFighter_03_04");
    AI_LOGENTRY(TOPIC_SQ113, LOG_SQ113_HITME);
    AI_STOPPROCESSINFOS(SELF);
    AI_STOPLOOKAT(SELF);
    AI_STOPLOOKAT(OTHER);
    AI_STOPLOOKAT(SELF);
    NPC_SETTRUEGUILD(NONE_10024_FANE, GIL_SKELETON);
    NONE_10024_FANE.GUILD = GIL_SKELETON;
}

instance DIA_FANE_SQ113_DISSAPOINTED(C_INFO) {
    NPC = 57287;
    NR = 1;
    CONDITION = DIA_FANE_SQ113_DISSAPOINTED_CONDITION;
    INFORMATION = DIA_FANE_SQ113_DISSAPOINTED_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_FANE_SQ113_DISSAPOINTED_CONDITION() {
    if ((SQ113_FANEISIMMORTAL) == (TRUE)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_FANE_SQ113_DISSAPOINTED_INFO() {
    SQ113_FANESTAND = 0;
    AI_LOOKATNPC(HERO, SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Fane_SQ113_Dissapointed_03_01");
    AI_LOGENTRY(TOPIC_SQ113, LOG_SQ113_FANEISIMMORTAL);
    NPC_EXCHANGEROUTINE(NONE_10024_FANE, START);
    AI_STOPPROCESSINFOS(SELF);
    AI_STOPLOOKAT(SELF);
    AI_STOPLOOKAT(OTHER);
}

instance DIA_FANE_SQ113_WHATCOULDHELP(C_INFO) {
    NPC = 57287;
    NR = 2;
    CONDITION = DIA_FANE_SQ113_WHATCOULDHELP_CONDITION;
    INFORMATION = DIA_FANE_SQ113_WHATCOULDHELP_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "Do you have any ideas on what would help you?";
}

func int DIA_FANE_SQ113_WHATCOULDHELP_CONDITION() {
    if (!(NPC_KNOWSINFO(OTHER, 85616))) {
        if (NPC_KNOWSINFO(OTHER, 85594)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_FANE_SQ113_WHATCOULDHELP_INFO() {
    AI_LOOKATNPC(HERO, SELF);
    AI_OUTPUT(OTHER, SELF, "DIA_Fane_SQ113_WhatCouldHelp_15_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Fane_SQ113_WhatCouldHelp_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Fane_SQ113_WhatCouldHelp_03_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Fane_SQ113_WhatCouldHelp_03_07");
    AI_STOPPROCESSINFOS(SELF);
    AI_STOPLOOKAT(SELF);
    AI_STOPLOOKAT(OTHER);
}

instance DIA_FANE_Q509_VARDHAL(C_INFO) {
    NPC = 57287;
    NR = 1;
    CONDITION = DIA_FANE_Q509_VARDHAL_CONDITION;
    INFORMATION = DIA_FANE_Q509_VARDHAL_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Perhaps you'd like to take part in an expedition to the tomb of Volfzack?";
}

func int DIA_FANE_Q509_VARDHAL_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 85594)) {
        if (((LOG_GETSTATUS(MIS_Q509)) == (LOG_RUNNING)) && ((Q509_COUNTWARRIORS) < (4))) {
            if ((LOG_GETSTATUS(MIS_SQ113)) == (LOG_RUNNING)) {
                return TRUE;
            };
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_FANE_Q509_VARDHAL_INFO() {
    Q509_FANEVOLFZACKE = 1;
    AI_OUTPUT(OTHER, SELF, "DIA_Fane_Q509_Vardhal_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Fane_Q509_Vardhal_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Fane_Q509_Vardhal_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Fane_Q509_Vardhal_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Fane_Q509_Vardhal_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Fane_Q509_Vardhal_03_06");
    AI_STOPPROCESSINFOS(SELF);
    AI_STOPLOOKAT(SELF);
    AI_STOPLOOKAT(OTHER);
}

instance DIA_FANE_Q509_ONMYWAY(C_INFO) {
    NPC = 57287;
    NR = 2;
    CONDITION = DIA_FANE_Q509_ONMYWAY_CONDITION;
    INFORMATION = DIA_FANE_Q509_ONMYWAY_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_FANE_Q509_ONMYWAY_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 85616)) && (NPC_ISINSTATE(SELF, 61599))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_FANE_Q509_ONMYWAY_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_Fane_Q509_OnMyWay_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Fane_Q509_OnMyWay_03_02");
    AI_STOPPROCESSINFOS(SELF);
    AI_STOPLOOKAT(SELF);
    AI_STOPLOOKAT(OTHER);
}


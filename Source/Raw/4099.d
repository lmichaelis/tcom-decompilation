instance DIA_NERAL_EXIT(C_INFO) {
    NPC = 0xdf86;
    NR = 999;
    CONDITION = DIA_NERAL_EXIT_CONDITION;
    INFORMATION = DIA_NERAL_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_NERAL_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_NERAL_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_NERAL_SQ311_HELLO(C_INFO) {
    NPC = 0xdf86;
    NR = 1;
    CONDITION = DIA_NERAL_SQ311_HELLO_CONDITION;
    INFORMATION = DIA_NERAL_SQ311_HELLO_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_NERAL_SQ311_HELLO_CONDITION() {
    if (((!(NPC_KNOWSINFO(OTHER, 0x13c01))) && (NPC_ISINSTATE(SELF, 0xf09f))) && ((Q504_TAKEWORKERS) != (2))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_NERAL_SQ311_HELLO_INFO() {
    AI_STARTFACEANI(SELF, S_FRIGHTENED, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Neral_SQ311_Hello_03_01");
    AI_STOPPROCESSINFOS(SELF);
    AI_RESETFACEANI(SELF);
}

instance DIA_NERAL_SQ311_LETSTALK(C_INFO) {
    NPC = 0xdf86;
    NR = 1;
    CONDITION = DIA_NERAL_SQ311_LETSTALK_CONDITION;
    INFORMATION = DIA_NERAL_SQ311_LETSTALK_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_NERAL_SQ311_LETSTALK_CONDITION() {
    if (((((LOG_GETSTATUS(MIS_SQ311)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 0x13c01))) && ((NERAL_SQ311_NEEDSPOTION) == (FALSE))) && (NPC_ISINSTATE(SELF, 0xf09f))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

var int NERAL_SQ311_NEEDSPOTION = 0;
func void DIA_NERAL_SQ311_LETSTALK_INFO() {
    AI_STARTFACEANI(SELF, S_FRIGHTENED, 1, -(1));
    NERAL_SQ311_NEEDSPOTION = 1;
    AI_OUTPUT(SELF, OTHER, "DIA_Neral_SQ311_LetsTalk_03_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Neral_SQ311_LetsTalk_15_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Neral_SQ311_LetsTalk_03_05");
    AI_OUTPUT(OTHER, SELF, "DIA_Neral_SQ311_LetsTalk_15_06");
    if ((Q504_TAKEWORKERS) != (2)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Neral_SQ311_LetsTalk_03_07");
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Neral_SQ311_LetsTalk_03_08");
}

instance DIA_NERAL_SQ311_POTION(C_INFO) {
    NPC = 0xdf86;
    NR = 1;
    CONDITION = DIA_NERAL_SQ311_POTION_CONDITION;
    INFORMATION = DIA_NERAL_SQ311_POTION_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Here, this should help.";
}

func int DIA_NERAL_SQ311_POTION_CONDITION() {
    if (((LOG_GETSTATUS(MIS_SQ311)) == (LOG_RUNNING)) && ((NERAL_SQ311_NEEDSPOTION) == (1))) {
        if (C_GOTINGRENDIENTS_ANYHEALTHPOTION(HERO)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_NERAL_SQ311_POTION_INFO() {
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Neral_SQ311_Potion_15_01");
    B_STANDUP();
    AI_OUTPUT(SELF, OTHER, "DIA_Neral_SQ311_Potion_03_02");
    B_GIVEANYPOTION_USEIT();
    AI_OUTPUT(SELF, OTHER, "DIA_Neral_SQ311_Potion_03_03");
    AI_STARTFACEANI(SELF, S_THINK, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Neral_SQ311_Potion_03_04");
    AI_OUTPUT(OTHER, SELF, "DIA_Neral_SQ311_Potion_15_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Neral_SQ311_Potion_03_06");
    AI_RESETFACEANI(SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Neral_SQ311_Potion_03_07");
    AI_LOGENTRY(TOPIC_SQ311, LOG_SQ311_NERAL_QUESTIONS);
}

instance DIA_NERAL_SQ311_OGISKEY(C_INFO) {
    NPC = 0xdf86;
    NR = 1;
    CONDITION = DIA_NERAL_SQ311_OGISKEY_CONDITION;
    INFORMATION = DIA_NERAL_SQ311_OGISKEY_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Did Ogis carry any key with him?";
}

func int DIA_NERAL_SQ311_OGISKEY_CONDITION() {
    if (((LOG_GETSTATUS(MIS_SQ311)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 0x13c2f))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_NERAL_SQ311_OGISKEY_INFO() {
    SQ311_SPAWNOGISKEY = 1;
    AI_OUTPUT(OTHER, SELF, "DIA_Neral_SQ311_OgisKey_15_01");
    AI_STARTFACEANI(SELF, S_WHAT, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Neral_SQ311_OgisKey_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Neral_SQ311_OgisKey_15_03");
    AI_STARTFACEANI(SELF, S_THINK, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Neral_SQ311_OgisKey_03_04");
    AI_OUTPUT(OTHER, SELF, "DIA_Neral_SQ311_OgisKey_15_05");
    AI_RESETFACEANI(SELF);
    if ((SQ311_FOUNDOGISBODY) == (TRUE)) {
        AI_LOGENTRY(TOPIC_SQ311, LOG_SQ311_OGISBODY_V3);
    };
    AI_LOGENTRY(TOPIC_SQ311, LOG_SQ311_NERAL_OGISKEY);
    WLD_INSERTNPC(0xc549, "FP_ROAM_PART10_134");
    WLD_INSERTNPC(0xc549, "FP_ROAM_PART10_135");
}

instance DIA_NERAL_Q504_FEEL(C_INFO) {
    NPC = 0xdf86;
    NR = 90;
    CONDITION = DIA_NERAL_Q504_FEEL_CONDITION;
    INFORMATION = DIA_NERAL_Q504_FEEL_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "How's the morale?";
}

func int DIA_NERAL_Q504_FEEL_CONDITION() {
    if ((((NPC_GETDISTTOWP(SELF, "PART5_WORKERSCAMP_SMALLTALK_02")) <= (0x7d0)) && ((Q504_TAKEWORKERS) == (2))) && ((Q504_REFIRNERALVOLFZACKE) == (1))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_NERAL_Q504_FEEL_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    B_SAY(OTHER, SELF, "$MARVIN_VolfzackMorale3");
    AI_STARTFACEANI(SELF, S_SURPRISE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Neral_Q504_Feel_03_01");
    AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Neral_Q504_Feel_03_02");
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
}

var int NERALCANTEACHUS = 0;
instance DIA_NERAL_CANYOUTRAIN(C_INFO) {
    NPC = 0xdf86;
    NR = 1;
    CONDITION = DIA_NERAL_CANYOUTRAIN_CONDITION;
    INFORMATION = DIA_NERAL_CANYOUTRAIN_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Could you teach me something?";
}

func int DIA_NERAL_CANYOUTRAIN_CONDITION() {
    if ((LOG_GETSTATUS(MIS_SQ311)) == (LOG_SUCCESS)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_NERAL_CANYOUTRAIN_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Neral_Canyoutrain_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Neral_Canyoutrain_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Neral_Canyoutrain_03_03");
    LOG_CREATETOPIC(TOPIC_TEACHER, LOG_NOTE);
    AI_LOGENTRY(TOPIC_TEACHER, LOG_TEACHER_NERAL);
    NERALCANTEACHUS = TRUE;
}

var int NERAL_MINELEVEL = 0;
var string NERAL_PRINTS = "";
instance DIA_NERAL_TEACH(C_INFO) {
    NPC = 0xdf86;
    NR = 950;
    CONDITION = DIA_NERAL_TEACH_CONDITION;
    INFORMATION = DIA_NERAL_TEACH_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "Can you teach me something about mining?";
}

func int DIA_NERAL_TEACH_CONDITION() {
    if ((NERALCANTEACHUS) == (TRUE)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_NERAL_TEACH_CHOICES() {
    NERAL_MINELEVEL = HERO_HACKCHANCE;
    INFO_CLEARCHOICES(0x13c77);
    INFO_ADDCHOICE(0x13c77, DIALOG_BACK, 0x13c7c);
    if ((HERO_HACKCHANCE) <= (55)) {
        INFO_ADDCHOICE(0x13c77, B_BUILDLEARNSTRING2(PRINT_LEARN_MINE5, 0, NERAL_PAYMENT5), 0x13c7e);
    };
    if ((HERO_HACKCHANCE) <= (59)) {
        INFO_ADDCHOICE(0x13c77, B_BUILDLEARNSTRING2(PRINT_LEARN_MINE1, 0, NERAL_PAYMENT1), 0x13c7d);
    };
}

func void DIA_NERAL_TEACH_CHECKLEVEL() {
    if ((HERO_HACKCHANCE) >= (60)) {
        NERALCANTEACHUS = FALSE;
        B_SAY(SELF, OTHER, "$NoLearnYoureBetter");
        INFO_CLEARCHOICES(0x13c77);
    };
    DIA_NERAL_TEACH_CHOICES();
}

func void DIA_NERAL_TEACH_INFO() {
    B_SAY(OTHER, SELF, "$MARVIN_CanYouTeachMeMining");
    DIA_NERAL_TEACH_CHECKLEVEL();
}

func void DIA_NERAL_TEACH_BACK() {
    INFO_CLEARCHOICES(0x13c77);
}

func void DIA_NERAL_TEACHMINE1() {
    if ((HERO_HACKCHANCE) == (100)) {
        B_SAY(SELF, OTHER, "$NoLearnOverPersonalMAX");
    };
    if ((NPC_HASITEMS(OTHER, 0x859b)) >= (NERAL_PAYMENT1)) {
        if ((HERO_HACKCHANCE) < (100)) {
            B_UPGRADE_HERO_HACKCHANCE(1);
        };
    };
    B_SAY(SELF, OTHER, "$NOGOLD");
    DIA_NERAL_TEACH_CHECKLEVEL();
}

func void DIA_NERAL_TEACHMINE5() {
    if ((HERO_HACKCHANCE) == (100)) {
        B_SAY(SELF, OTHER, "$NoLearnOverPersonalMAX");
    };
    if ((NPC_HASITEMS(OTHER, 0x859b)) >= (NERAL_PAYMENT5)) {
        if ((HERO_HACKCHANCE) < (95)) {
            B_UPGRADE_HERO_HACKCHANCE(5);
        } else {
            B_UPGRADE_HERO_HACKCHANCE((100) - (HERO_HACKCHANCE));
        } else {
            /* set_instance(0) */;
        };
    };
    B_SAY(SELF, OTHER, "$NOGOLD");
    DIA_NERAL_TEACH_CHECKLEVEL();
}

instance DIA_NERAL_AMBIENT(C_INFO) {
    NPC = 0xdf86;
    NR = 990;
    CONDITION = DIA_NERAL_AMBIENT_CONDITION;
    INFORMATION = DIA_NERAL_AMBIENT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "How are you doing?";
}

func int DIA_NERAL_AMBIENT_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 0x13c68)) && ((NPC_GETDISTTOWP(SELF, "PART5_WORKERSCAMP_SMALLTALK_02")) > (0x7d0))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_NERAL_AMBIENT_INFO() {
    B_SAY(OTHER, SELF, "$MARVIN_WhatNew4");
    if (!(NPC_ISDEAD(MIL_11130_LEWKO))) {
        AI_OUTPUT(SELF, OTHER, "DIA_Neral_Ambient_03_01");
        AI_STOPPROCESSINFOS(SELF);
    };
    if (NPC_ISDEAD(MIL_11130_LEWKO)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Neral_Ambient_03_02");
    };
}

instance DIA_NERAL_PICKPOCKET(C_INFO) {
    NPC = 0xdf86;
    NR = 900;
    CONDITION = DIA_NERAL_PICKPOCKET_CONDITION;
    INFORMATION = DIA_NERAL_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_40;
}

func int DIA_NERAL_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_NERAL_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(0x13c82);
    INFO_ADDCHOICE(0x13c82, DIALOG_BACK, 0x13c86);
    INFO_ADDCHOICE(0x13c82, DIALOG_PICKPOCKET, 0x13c85);
}

func void DIA_NERAL_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) {
        B_PICKPOCKET_AMBIENT_TIER_1();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(0x13c82);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(0x13c82);
}

func void DIA_NERAL_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(0x13c82);
}

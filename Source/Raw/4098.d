instance DIA_REFIR_EXIT(C_INFO) {
    NPC = 0xdf80;
    NR = 999;
    CONDITION = DIA_REFIR_EXIT_CONDITION;
    INFORMATION = DIA_REFIR_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_REFIR_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_REFIR_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_REFIR_SQ311_HELLO(C_INFO) {
    NPC = 0xdf80;
    NR = 1;
    CONDITION = DIA_REFIR_SQ311_HELLO_CONDITION;
    INFORMATION = DIA_REFIR_SQ311_HELLO_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_REFIR_SQ311_HELLO_CONDITION() {
    if (((NPC_ISINSTATE(SELF, 0xf09f)) && (!(NPC_KNOWSINFO(OTHER, 0x13c01)))) && ((Q504_TAKEWORKERS) != (2))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_REFIR_SQ311_HELLO_INFO() {
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Refir_SQ311_Hello_03_01");
    AI_STOPPROCESSINFOS(SELF);
    AI_RESETFACEANI(SELF);
}

instance DIA_REFIR_SQ312_FINISH(C_INFO) {
    NPC = 0xdf80;
    NR = 1;
    CONDITION = DIA_REFIR_SQ312_FINISH_CONDITION;
    INFORMATION = DIA_REFIR_SQ312_FINISH_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_REFIR_SQ312_FINISH_CONDITION() {
    if (((LOG_GETSTATUS(MIS_SQ312)) == (LOG_RUNNING)) && ((LOG_GETSTATUS(MIS_SQ311)) == (LOG_SUCCESS))) {
        if ((((NPC_ISDEAD(SQ312_STONEGOLEM_01)) && (NPC_ISDEAD(SQ312_STONEGOLEM_02))) && (NPC_ISDEAD(SQ312_STONEGOLEM_03))) && (NPC_ISDEAD(SQ312_STONEGOLEM_04))) {
            if (NPC_ISDEAD(MIL_11130_LEWKO)) {
                return TRUE;
            };
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_REFIR_SQ312_FINISH_INFO() {
    SQ312_FINISH = 1;
    SQ312_FINISH_DAY = WLD_GETDAY();
    AI_STARTFACEANI(SELF, S_WHAT, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Refir_SQ312_Finish_03_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Refir_SQ312_Finish_15_02");
    if ((Q504_TAKEWORKERS) != (2)) {
        AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
        AI_OUTPUT(SELF, OTHER, "DIA_Refir_SQ312_Finish_03_03");
        AI_RESETFACEANI(SELF);
    };
    AI_PLAYANI(SELF, T_SEARCH);
    AI_OUTPUT(SELF, OTHER, "DIA_Refir_SQ312_Finish_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Refir_SQ312_Finish_03_05");
    AI_LOGENTRY(TOPIC_SQ312, LOG_SQ312_FINISH_V2);
    LOG_SETSTATUS(_@(MIS_SQ312), TOPIC_SQ312, LOG_SUCCESS);
    B_GIVEPLAYERXP(XP_SQ312_FINISH);
    CREATEINVITEMS(SELF, 0x878f, 1);
    B_GIVEINVITEMS(SELF, OTHER, 0x878f, 1);
    CREATEINVITEMS(SELF, 0x8647, 1);
    B_GIVEINVITEMS(SELF, OTHER, 0x8647, 1);
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_REFIR_SQ311_LETSTALK(C_INFO) {
    NPC = 0xdf80;
    NR = 1;
    CONDITION = DIA_REFIR_SQ311_LETSTALK_CONDITION;
    INFORMATION = DIA_REFIR_SQ311_LETSTALK_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I want to talk about Reez.";
}

func int DIA_REFIR_SQ311_LETSTALK_CONDITION() {
    if (((LOG_GETSTATUS(MIS_SQ311)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 0x13c01))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

var int REFIR_SQ311_LETSTALK_WEIRD = 0;
var int REFIR_SQ311_LETSTALK_PROBLEMS = 0;
var int REFIR_SQ311_LETSTALK_WHEN = 0;
var int REFIR_SQ311_LETSTALK_COUNT = 0;
func void DIA_REFIR_SQ311_CHOICES() {
    INFO_CLEARCHOICES(0x13c2f);
    if ((REFIR_SQ311_LETSTALK_WEIRD) == (FALSE)) {
        INFO_ADDCHOICE(0x13c2f, "Was Reez acting strangely before he disappeared?", 0x13c3a);
    };
    if ((REFIR_SQ311_LETSTALK_PROBLEMS) == (FALSE)) {
        INFO_ADDCHOICE(0x13c2f, "Did Reez have problems with anyone?", 0x13c39);
    };
    if ((REFIR_SQ311_LETSTALK_WHEN) == (FALSE)) {
        INFO_ADDCHOICE(0x13c2f, "When did Reez disappear?", 0x13c38);
    };
}

func void DIA_REFIR_SQ311_COUNT() {
    REFIR_SQ311_LETSTALK_COUNT = (REFIR_SQ311_LETSTALK_COUNT) + (1);
    if ((REFIR_SQ311_LETSTALK_COUNT) == (3)) {
        INFO_CLEARCHOICES(0x13c2f);
        INFO_ADDCHOICE(0x13c2f, "I'll try to find him.", 0x13c3b);
    };
    DIA_REFIR_SQ311_CHOICES();
}

func void DIA_REFIR_SQ311_LETSTALK_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Refir_SQ311_LetsTalk_15_01");
    AI_STARTFACEANI(SELF, S_WHAT, 1, -(1));
    B_STANDUP();
    AI_OUTPUT(SELF, OTHER, "DIA_Refir_SQ311_LetsTalk_03_02");
    if (NPC_HASGUILDARMOREQUIPPED(OTHER, GIL_MIL)) {
        AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
        AI_OUTPUT(SELF, OTHER, "DIA_Refir_SQ311_LetsTalk_03_03");
        AI_OUTPUT(OTHER, SELF, "DIA_Refir_SQ311_LetsTalk_15_04");
    };
    if (NPC_HASGUILDARMOREQUIPPED(OTHER, GIL_SLD)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Refir_SQ311_LetsTalk_03_05");
        AI_OUTPUT(OTHER, SELF, "DIA_Refir_SQ311_LetsTalk_15_06");
    };
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Refir_SQ311_LetsTalk_03_07");
    AI_OUTPUT(OTHER, SELF, "DIA_Refir_SQ311_LetsTalk_15_08");
    AI_RESETFACEANI(SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Refir_SQ311_LetsTalk_03_09");
    if ((Q504_TAKEWORKERS) != (2)) {
        AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
        AI_OUTPUT(SELF, OTHER, "DIA_Refir_SQ311_LetsTalk_03_10");
        AI_RESETFACEANI(SELF);
        AI_OUTPUT(SELF, OTHER, "DIA_Refir_SQ311_LetsTalk_03_11");
    };
    DIA_REFIR_SQ311_CHOICES();
}

func void DIA_REFIR_SQ311_LETSTALK_WHEN() {
    REFIR_SQ311_LETSTALK_WHEN = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Refir_SQ311_LetsTalk_When_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Refir_SQ311_LetsTalk_When_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Refir_SQ311_LetsTalk_When_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Refir_SQ311_LetsTalk_When_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Refir_SQ311_LetsTalk_When_03_05");
    DIA_REFIR_SQ311_COUNT();
}

func void DIA_REFIR_SQ311_LETSTALK_PROBLEMS() {
    REFIR_SQ311_LETSTALK_PROBLEMS = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Refir_SQ311_LetsTalk_Problems_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Refir_SQ311_LetsTalk_Problems_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Refir_SQ311_LetsTalk_Problems_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Refir_SQ311_LetsTalk_Problems_03_04");
    DIA_REFIR_SQ311_COUNT();
}

func void DIA_REFIR_SQ311_LETSTALK_WEIRD() {
    REFIR_SQ311_LETSTALK_WEIRD = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Refir_SQ311_LetsTalk_Weird_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Refir_SQ311_LetsTalk_Weird_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Refir_SQ311_LetsTalk_Weird_03_03");
    DIA_REFIR_SQ311_COUNT();
}

func void DIA_REFIR_SQ311_LETSTALK_WEIRD_FIND() {
    AI_OUTPUT(OTHER, SELF, "DIA_Refir_SQ311_LetsTalk_Find_15_01");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Refir_SQ311_LetsTalk_Find_03_02");
    CREATEINVITEMS(SELF, 0x9174, 1);
    B_GIVEINVITEMS(SELF, OTHER, 0x9174, 1);
    AI_OUTPUT(SELF, OTHER, "DIA_Refir_SQ311_LetsTalk_Find_03_03");
    AI_RESETFACEANI(SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Refir_SQ311_LetsTalk_Find_03_04");
    AI_OUTPUT(OTHER, SELF, "DIA_Refir_SQ311_LetsTalk_Find_15_05");
    if ((Q504_TAKEWORKERS) != (2)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Refir_SQ311_LetsTalk_Find_03_06");
    };
    INFO_CLEARCHOICES(0x13c2f);
    AI_STOPPROCESSINFOS(SELF);
    AI_LOGENTRY(TOPIC_SQ311, LOG_SQ311_REFIR_QUESTIONS);
}

instance DIA_REFIR_Q504_FEEL(C_INFO) {
    NPC = 0xdf80;
    NR = 90;
    CONDITION = DIA_REFIR_Q504_FEEL_CONDITION;
    INFORMATION = DIA_REFIR_Q504_FEEL_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "How's the morale?";
}

func int DIA_REFIR_Q504_FEEL_CONDITION() {
    if ((((NPC_GETDISTTOWP(SELF, "PART5_WORKERSCAMP_SMALLTALK_01")) <= (0x7d0)) && ((Q504_TAKEWORKERS) == (2))) && ((Q504_REFIRNERALVOLFZACKE) == (1))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_REFIR_Q504_FEEL_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    B_SAY(OTHER, SELF, "$MARVIN_VolfzackMorale3");
    AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Refir_Q504_Feel_03_01");
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
}

var int REFIRCANTEACHUS = 0;
instance DIA_REFIR_CANYOUTRAIN(C_INFO) {
    NPC = 0xdf80;
    NR = 1;
    CONDITION = DIA_REFIR_CANYOUTRAIN_CONDITION;
    INFORMATION = DIA_REFIR_CANYOUTRAIN_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Could you teach me something about mining?";
}

func int DIA_REFIR_CANYOUTRAIN_CONDITION() {
    if ((LOG_GETSTATUS(MIS_SQ311)) == (LOG_SUCCESS)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_REFIR_CANYOUTRAIN_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Refir_Canyoutrain_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Refir_Canyoutrain_03_02");
    LOG_CREATETOPIC(TOPIC_TEACHER, LOG_NOTE);
    AI_LOGENTRY(TOPIC_TEACHER, LOG_TEACHER_REFIR_MINING);
    REFIRCANTEACHUS = TRUE;
}

var int REFIR_MINELEVEL = 0;
var string REFIR_PRINTS = "";
instance DIA_REFIR_TEACH(C_INFO) {
    NPC = 0xdf80;
    NR = 950;
    CONDITION = DIA_REFIR_TEACH_CONDITION;
    INFORMATION = DIA_REFIR_TEACH_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "Can you teach me something about mining?";
}

func int DIA_REFIR_TEACH_CONDITION() {
    if ((REFIRCANTEACHUS) == (TRUE)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_REFIR_TEACH_CHOICES() {
    REFIR_MINELEVEL = HERO_HACKCHANCE;
    INFO_CLEARCHOICES(0x13c45);
    INFO_ADDCHOICE(0x13c45, DIALOG_BACK, 0x13c4a);
    if ((HERO_HACKCHANCE) <= (95)) {
        INFO_ADDCHOICE(0x13c45, B_BUILDLEARNSTRING2(PRINT_LEARN_MINE5, 0, REFIR_PAYMENT5), 0x13c4c);
    };
    if ((HERO_HACKCHANCE) <= (99)) {
        INFO_ADDCHOICE(0x13c45, B_BUILDLEARNSTRING2(PRINT_LEARN_MINE1, 0, REFIR_PAYMENT1), 0x13c4b);
    };
}

func void DIA_REFIR_TEACH_CHECKLEVEL() {
    if ((HERO_HACKCHANCE) >= (100)) {
        REFIRCANTEACHUS = FALSE;
        B_SAY(SELF, OTHER, "$NoLearnYoureBetter");
        INFO_CLEARCHOICES(0x13c45);
    };
    DIA_REFIR_TEACH_CHOICES();
}

func void DIA_REFIR_TEACH_INFO() {
    B_SAY(OTHER, SELF, "$MARVIN_CanYouTeachMeMining");
    DIA_REFIR_TEACH_CHECKLEVEL();
}

func void DIA_REFIR_TEACH_BACK() {
    INFO_CLEARCHOICES(0x13c45);
}

func void DIA_REFIR_TEACHMINE1() {
    if ((HERO_HACKCHANCE) == (100)) {
        B_SAY(SELF, OTHER, "$NoLearnOverPersonalMAX");
    };
    if ((NPC_HASITEMS(OTHER, 0x859b)) >= (REFIR_PAYMENT1)) {
        if ((HERO_HACKCHANCE) < (100)) {
            B_UPGRADE_HERO_HACKCHANCE(1);
        };
    };
    B_SAY(SELF, OTHER, "$NOGOLD");
    DIA_REFIR_TEACH_CHECKLEVEL();
}

func void DIA_REFIR_TEACHMINE5() {
    if ((HERO_HACKCHANCE) == (100)) {
        B_SAY(SELF, OTHER, "$NoLearnOverPersonalMAX");
    };
    if ((NPC_HASITEMS(OTHER, 0x859b)) >= (REFIR_PAYMENT5)) {
        if ((HERO_HACKCHANCE) < (95)) {
            B_UPGRADE_HERO_HACKCHANCE(5);
        } else {
            B_UPGRADE_HERO_HACKCHANCE((100) - (HERO_HACKCHANCE));
        } else {
            /* set_instance(0) */;
        };
    };
    B_SAY(SELF, OTHER, "$NOGOLD");
    DIA_REFIR_TEACH_CHECKLEVEL();
}

instance DIA_REFIR_CANYOUTEACH(C_INFO) {
    NPC = 0xdf80;
    NR = 4;
    CONDITION = DIA_REFIR_CANYOUTEACH_CONDITION;
    INFORMATION = DIA_REFIR_CANYOUTEACH_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "You just took that from Lewko's supplies?";
}

func int DIA_REFIR_CANYOUTEACH_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x13c2c)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_REFIR_CANYOUTEACH_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Refir_CanYouTeach_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Refir_CanYouTeach_03_02");
    if (NPC_HASGUILDARMOREQUIPPED(OTHER, GIL_MIL)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Refir_CanYouTeach_03_03");
    };
    LOG_CREATETOPIC(TOPIC_TEACHER, LOG_NOTE);
    AI_LOGENTRY(TOPIC_TEACHER, LOG_TEACHER_PICKPOCKETING);
}

instance DIA_REFIR_TRAIN_PICKPOCKET(C_INFO) {
    NPC = 0xdf80;
    NR = 7;
    CONDITION = DIA_REFIR_TRAIN_PICKPOCKET_CONDITION;
    INFORMATION = DIA_REFIR_TRAIN_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = B_BUILDLEARNSTRING2(PRINT_LEARN_PICKPOCKET1, B_GETLEARNCOSTTALENT(OTHER, NPC_TALENT_PICKPOCKET, 1), REFIR_PICKPOCKET);
}

func int DIA_REFIR_TRAIN_PICKPOCKET_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 0x13c4d)) && ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) < (1))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_REFIR_TRAIN_PICKPOCKET_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Refir_TRAIN_Pickpocket_15_00");
    if ((NPC_HASITEMS(OTHER, 0x859b)) >= (REFIR_PICKPOCKET)) {
        if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) {
            if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_SNEAK)) == (0)) {
                PRINTSCREEN(PRINT_LEARNSNEAK, -(1), YPOS_LEVELUP, FONT_SCREEN, 2);
                AI_OUTPUT(SELF, OTHER, "DIA_Refir_TRAIN_Sneak_03_01");
                B_TEACHTHIEFTALENT(NONE_11136_REFIR, HERO, NPC_TALENT_SNEAK, 1);
                AI_OUTPUT(SELF, OTHER, "DIA_Refir_TRAIN_Sneak_03_02");
            };
            NPC_REMOVEINVITEMS(SELF, 0x859b, REFIR_PICKPOCKET);
            AI_OUTPUT(SELF, OTHER, "DIA_Refir_TRAIN_Pickpocket_03_01");
            B_GIVEINVITEMS(OTHER, SELF, 0x859b, REFIR_PICKPOCKET);
            AI_OUTPUT(SELF, OTHER, "DIA_Refir_TRAIN_Pickpocket_03_02");
            PRINTSCREEN(PRINT_LEARNPICKPOCKET, -(1), -(1), FONT_SCREEN, 2);
        };
    };
    B_SAY(SELF, OTHER, "$NOGOLD");
}

instance DIA_REFIR_TRAIN_PICKPOCKET2(C_INFO) {
    NPC = 0xdf80;
    NR = 7;
    CONDITION = DIA_REFIR_TRAIN_PICKPOCKET2_CONDITION;
    INFORMATION = DIA_REFIR_TRAIN_PICKPOCKET2_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = B_BUILDLEARNSTRING2(PRINT_LEARN_PICKPOCKET2, B_GETLEARNCOSTTALENT(OTHER, NPC_TALENT_PICKPOCKET, 2), REFIR_PICKPOCKET2);
}

func int DIA_REFIR_TRAIN_PICKPOCKET2_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 0x13c4d)) && ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) == (1))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_REFIR_TRAIN_PICKPOCKET2_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Refir_TRAIN_Pickpocket2_15_00");
    if ((NPC_HASITEMS(OTHER, 0x859b)) >= (REFIR_PICKPOCKET2)) {
        if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (2)) {
            B_GIVEINVITEMS(OTHER, SELF, 0x859b, REFIR_PICKPOCKET2);
            AI_OUTPUT(SELF, OTHER, "DIA_Refir_TRAIN_Pickpocket2_03_01");
            AI_OUTPUT(SELF, OTHER, "DIA_Refir_TRAIN_Pickpocket2_03_02");
            PRINTSCREEN(PRINT_LEARNPICKPOCKET2, -(1), -(1), FONT_SCREEN, 2);
            NPC_REMOVEINVITEMS(SELF, 0x859b, REFIR_PICKPOCKET2);
        };
    };
    B_SAY(SELF, OTHER, "$NOGOLD");
}

instance DIA_REFIR_AMBIENT(C_INFO) {
    NPC = 0xdf80;
    NR = 990;
    CONDITION = DIA_REFIR_AMBIENT_CONDITION;
    INFORMATION = DIA_REFIR_AMBIENT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "How's life?";
}

func int DIA_REFIR_AMBIENT_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 0x13c2f)) && ((NPC_GETDISTTOWP(SELF, "PART5_WORKERSCAMP_SMALLTALK_01")) > (0x7d0))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_REFIR_AMBIENT_INFO() {
    B_SAY(OTHER, SELF, "$MARVIN_WhatNew5");
    if (!(NPC_ISDEAD(MIL_11130_LEWKO))) {
        AI_OUTPUT(SELF, OTHER, "DIA_Refir_Ambient_03_01");
        AI_STOPPROCESSINFOS(SELF);
    };
    if (NPC_ISDEAD(MIL_11130_LEWKO)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Refir_Ambient_03_02");
    };
}

instance DIA_REFIR_PICKPOCKET(C_INFO) {
    NPC = 0xdf80;
    NR = 900;
    CONDITION = DIA_REFIR_PICKPOCKET_CONDITION;
    INFORMATION = DIA_REFIR_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_40;
}

func int DIA_REFIR_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_REFIR_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(0x13c59);
    INFO_ADDCHOICE(0x13c59, DIALOG_BACK, 0x13c5d);
    INFO_ADDCHOICE(0x13c59, DIALOG_PICKPOCKET, 0x13c5c);
}

func void DIA_REFIR_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) {
        CREATEINVITEMS(SELF, 0x904e, 1);
        B_GIVEINVITEMS(SELF, OTHER, 0x904e, 1);
        B_PICKPOCKET_AMBIENT_TIER_1();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(0x13c59);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(0x13c59);
}

func void DIA_REFIR_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(0x13c59);
}


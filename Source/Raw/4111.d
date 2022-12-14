instance DIA_YEZEGAN_EXIT(C_INFO) {
    NPC = 0xe38a;
    NR = 999;
    CONDITION = DIA_YEZEGAN_EXIT_CONDITION;
    INFORMATION = DIA_YEZEGAN_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_YEZEGAN_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_YEZEGAN_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_YEZEGAN_FABIOIDEA(C_INFO) {
    NPC = 0xe38a;
    NR = 1;
    CONDITION = DIA_YEZEGAN_FABIOIDEA_CONDITION;
    INFORMATION = DIA_YEZEGAN_FABIOIDEA_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Do you have any idea how to chase that bunch away?";
}

func int DIA_YEZEGAN_FABIOIDEA_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_Q401)) == (LOG_RUNNING)) && ((Q401_FABIOANDGANGGONE) == (0))) && (NPC_KNOWSINFO(OTHER, 0x13de9))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_YEZEGAN_FABIOIDEA_INFO() {
    AI_STARTFACEANI(SELF, S_SMILE, 0, 1);
    AI_OUTPUT(OTHER, SELF, "DIA_Yezegan_FabioIdea_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Yezegan_FabioIdea_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Yezegan_FabioIdea_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Yezegan_FabioIdea_03_04");
    INFO_CLEARCHOICES(0x13da9);
    INFO_ADDCHOICE(0x13da9, "I'm all ears.", 0x13dac);
}

func void DIA_YEZEGAN_FABIOIDEA_LISTEN() {
    AI_OUTPUT(OTHER, SELF, "DIA_Yezegan_FabioIdea_Listen_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Yezegan_FabioIdea_Listen_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Yezegan_FabioIdea_Listen_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Yezegan_FabioIdea_Listen_03_04");
    AI_RESETFACEANI(SELF);
}

instance DIA_YEZEGAN_HUMAN(C_INFO) {
    NPC = 0xe38a;
    NR = 1;
    CONDITION = DIA_YEZEGAN_HUMAN_CONDITION;
    INFORMATION = DIA_YEZEGAN_HUMAN_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "And other people are not a natural threat?";
}

func int DIA_YEZEGAN_HUMAN_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_Q401)) == (LOG_RUNNING)) && ((Q401_FABIOANDGANGGONE) == (0))) && (NPC_KNOWSINFO(OTHER, 0x13da9))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_YEZEGAN_HUMAN_INFO() {
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Yezegan_Human_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Yezegan_Human_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Yezegan_Human_03_03");
    AI_RESETFACEANI(SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Yezegan_Human_03_04");
}

instance DIA_YEZEGAN_PLAN(C_INFO) {
    NPC = 0xe38a;
    NR = 1;
    CONDITION = DIA_YEZEGAN_PLAN_CONDITION;
    INFORMATION = DIA_YEZEGAN_PLAN_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "What's your plan?";
}

func int DIA_YEZEGAN_PLAN_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_Q401)) == (LOG_RUNNING)) && ((Q401_FABIOANDGANGGONE) == (0))) && (NPC_KNOWSINFO(OTHER, 0x13dad))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_YEZEGAN_PLAN_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Yezegan_Plan_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Yezegan_Plan_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Yezegan_Plan_03_03");
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Yezegan_Plan_15_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Yezegan_Plan_03_05");
    AI_OUTPUT(OTHER, SELF, "DIA_Yezegan_Plan_15_06");
    AI_STARTFACEANI(SELF, S_SURPRISE, 0, 1);
    AI_OUTPUT(SELF, OTHER, "DIA_Yezegan_Plan_03_07");
    INFO_CLEARCHOICES(0x13db0);
    INFO_ADDCHOICE(0x13db0, "Then I don't understand.", 0x13db3);
}

func void DIA_YEZEGAN_PLAN_UNDERSTAND() {
    AI_OUTPUT(OTHER, SELF, "DIA_Yezegan_Plan_Understand_15_01");
    AI_STARTFACEANI(SELF, S_SMILE, 0, 1);
    AI_RESETFACEANI(OTHER);
    AI_OUTPUT(SELF, OTHER, "DIA_Yezegan_Plan_Understand_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Yezegan_Plan_Understand_03_03");
    INFO_CLEARCHOICES(0x13db0);
    INFO_ADDCHOICE(0x13db0, "Brilliant!", 0x13db5);
    INFO_ADDCHOICE(0x13db0, "Have you inhaled anything?", 0x13db6);
}

func void DIA_YEZEGAN_PLAN_UNDERSTAND_NEXT() {
    AI_RESETFACEANI(OTHER);
    AI_RESETFACEANI(SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Yezegan_Plan_Next_03_01");
    CREATEINVITEMS(SELF, 0x91d5, 1);
    B_GIVEINVITEMS(SELF, OTHER, 0x91d5, 1);
    AI_OUTPUT(SELF, OTHER, "DIA_Yezegan_Plan_Next_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Yezegan_Plan_Next_03_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Yezegan_Plan_Next_15_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Yezegan_Plan_Next_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Yezegan_Plan_Next_03_06");
    INFO_CLEARCHOICES(0x13db0);
    INFO_ADDCHOICE(0x13db0, "In that case, I'm going.", 0x13db8);
    INFO_ADDCHOICE(0x13db0, "I don't believe this can work.", 0x13db9);
}

func void DIA_YEZEGAN_PLAN_UNDERSTAND_GENIUS() {
    AI_STARTFACEANI(OTHER, S_SURPRISE, 0, 1);
    AI_OUTPUT(OTHER, SELF, "DIA_Yezegan_Plan_Genius_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Yezegan_Plan_Genius_03_02");
    DIA_YEZEGAN_PLAN_UNDERSTAND_NEXT();
}

func void DIA_YEZEGAN_PLAN_UNDERSTAND_RETARD() {
    AI_STARTFACEANI(OTHER, S_WHAT, 0, 1);
    AI_OUTPUT(OTHER, SELF, "DIA_Yezegan_Plan_Retard_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Yezegan_Plan_Retard_03_02");
    DIA_YEZEGAN_PLAN_UNDERSTAND_NEXT();
}

func void DIA_YEZEGAN_PLAN_UNDERSTAND_NEXT2() {
    AI_OUTPUT(SELF, OTHER, "DIA_Yezegan_Plan_Next2_03_01");
    AI_STARTFACEANI(OTHER, S_SURPRISE, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Yezegan_Plan_Next2_15_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Yezegan_Plan_Next2_03_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Yezegan_Plan_Next2_15_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Yezegan_Plan_Next2_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Yezegan_Plan_Next2_03_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Yezegan_Plan_Next2_03_07");
    AI_LOGENTRY(TOPIC_Q401, LOG_Q401_YEZEGAN);
    INFO_CLEARCHOICES(0x13db0);
    AI_STOPPROCESSINFOS(SELF);
    AI_RESETFACEANI(OTHER);
}

func void DIA_YEZEGAN_PLAN_UNDERSTAND_RETARD_NEXT_LETSGO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Yezegan_Plan_LetsGo_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Yezegan_Plan_LetsGo_03_02");
    DIA_YEZEGAN_PLAN_UNDERSTAND_NEXT2();
}

func void DIA_YEZEGAN_PLAN_UNDERSTAND_RETARD_NEXT_BELIEVE() {
    AI_OUTPUT(OTHER, SELF, "DIA_Yezegan_Plan_Believe_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Yezegan_Plan_Believe_03_02");
    DIA_YEZEGAN_PLAN_UNDERSTAND_NEXT2();
}

instance DIA_YEZEGAN_NEEDSALT(C_INFO) {
    NPC = 0xe38a;
    NR = 1;
    CONDITION = DIA_YEZEGAN_NEEDSALT_CONDITION;
    INFORMATION = DIA_YEZEGAN_NEEDSALT_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I need your smelling salts.";
}

func int DIA_YEZEGAN_NEEDSALT_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_Q404)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 0x14019))) && ((Q404_GUARDMINE_NEEDHELP) == (TRUE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_YEZEGAN_NEEDSALT_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Yezegan_NeedSalt_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Yezegan_NeedSalt_03_02");
    CREATEINVITEMS(SELF, 0x905b, 1);
    B_GIVEINVITEMS(SELF, OTHER, 0x905b, 1);
    AI_OUTPUT(OTHER, SELF, "DIA_Yezegan_NeedSalt_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Yezegan_NeedSalt_03_04");
    AI_OUTPUT(OTHER, SELF, "DIA_Yezegan_NeedSalt_15_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Yezegan_NeedSalt_03_06");
    AI_OUTPUT(OTHER, SELF, "DIA_Yezegan_NeedSalt_15_07");
    AI_LOGENTRY(TOPIC_Q404, LOG_Q404_YEZEGAN_SALT);
}

instance DIA_YEZEGAN_WOLFHERITAGE(C_INFO) {
    NPC = 0xe38a;
    NR = 80;
    CONDITION = DIA_YEZEGAN_WOLFHERITAGE_CONDITION;
    INFORMATION = DIA_YEZEGAN_WOLFHERITAGE_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Does Ulryk really consider himself the heir to Volfzack?";
}

func int DIA_YEZEGAN_WOLFHERITAGE_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 0x13def)) && ((NPC_GETDISTTOWP(SELF, "WOLFSDEN_CITADEL_ROOM02_LABPSI01")) <= (1000))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_YEZEGAN_WOLFHERITAGE_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Yezegan_Wolfheritage_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Yezegan_Wolfheritage_13_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Yezegan_Wolfheritage_13_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Yezegan_Wolfheritage_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Yezegan_Wolfheritage_13_04");
}

instance DIA_YEZEGAN_HOWLONG(C_INFO) {
    NPC = 0xe38a;
    NR = 80;
    CONDITION = DIA_YEZEGAN_HOWLONG_CONDITION;
    INFORMATION = DIA_YEZEGAN_HOWLONG_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "How long have you lived here?";
}

func int DIA_YEZEGAN_HOWLONG_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 0x13def)) && ((NPC_GETDISTTOWP(SELF, "WOLFSDEN_CITADEL_ROOM02_LABPSI01")) <= (1000))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_YEZEGAN_HOWLONG_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Yezegan_Howlong_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Yezegan_Howlong_13_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Yezegan_Howlong_15_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Yezegan_Howlong_13_03");
}

instance DIA_YEZEGAN_KQ402_RUST(C_INFO) {
    NPC = 0xe38a;
    NR = 1;
    CONDITION = DIA_YEZEGAN_KQ402_RUST_CONDITION;
    INFORMATION = DIA_YEZEGAN_KQ402_RUST_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I need your help.";
}

func int DIA_YEZEGAN_KQ402_RUST_CONDITION() {
    if (((LOG_GETSTATUS(MIS_KQ402)) == (LOG_RUNNING)) && ((KQ402_ALCHEMIC) == (1))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_YEZEGAN_KQ402_RUST_INFO() {
    AI_STARTFACEANI(SELF, S_TIRED, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Yezegan_KQ402_Rust_15_01");
    B_STANDUP();
    AI_OUTPUT(SELF, OTHER, "DIA_Yezegan_KQ402_Rust_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Yezegan_KQ402_Rust_03_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Yezegan_KQ402_Rust_15_04");
    AI_RESETFACEANI(SELF);
    AI_PLAYANI(SELF, R_SCRATCHHEAD);
    AI_OUTPUT(SELF, OTHER, "DIA_Yezegan_KQ402_Rust_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Yezegan_KQ402_Rust_03_06");
    AI_OUTPUT(OTHER, SELF, "DIA_Yezegan_KQ402_Rust_15_07");
    AI_LOGENTRY(TOPIC_KQ402, LOG_KQ402_YEZEGAN_RUST);
}

instance DIA_YEZEGAN_SQ406_START(C_INFO) {
    NPC = 0xe38a;
    NR = 1;
    CONDITION = DIA_YEZEGAN_SQ406_START_CONDITION;
    INFORMATION = DIA_YEZEGAN_SQ406_START_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_YEZEGAN_SQ406_START_CONDITION() {
    if (((NPC_GETDISTTOWP(SELF, "WOLFSDEN_CITADEL_ROOM02_LABPSI01")) <= (1000)) && ((Q307_POISONWAY) != (1))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_YEZEGAN_SQ406_START_INFO() {
    if ((Q401_DUSTERBIZZAREADVENTURE) >= (4)) {
        AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
        AI_OUTPUT(SELF, OTHER, "DIA_Yezegan_SQ406_Start_03_01");
        AI_RESETFACEANI(SELF);
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Yezegan_SQ406_Start_03_02");
    NPC_EXCHANGEROUTINE(SELF, "NORMALDAY");
    INFO_CLEARCHOICES(0x13dc6);
    INFO_ADDCHOICE(0x13dc6, "In that case, I won't bother you.", 0x13dca);
    INFO_ADDCHOICE(0x13dc6, "Turn into?", 0x13dc9);
}

func void DIA_YEZEGAN_SQ406_START_TRANSFORM() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Yezegan_SQ406_Start_Transform_15_01");
    AI_RESETFACEANI(OTHER);
    AI_OUTPUT(SELF, OTHER, "DIA_Yezegan_SQ406_Start_Transform_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Yezegan_SQ406_Start_Transform_03_03");
    INFO_CLEARCHOICES(0x13dc6);
    INFO_ADDCHOICE(0x13dc6, "How's the work going?", 0x13dcb);
}

func void DIA_YEZEGAN_SQ406_START_LEAVE() {
    AI_OUTPUT(OTHER, SELF, "DIA_Yezegan_SQ406_Start_Leave_15_01");
    INFO_CLEARCHOICES(0x13dc6);
    AI_STOPPROCESSINFOS(OTHER);
}

func void DIA_YEZEGAN_SQ406_START_TRANSFORM_WORK() {
    AI_OUTPUT(OTHER, SELF, "DIA_Yezegan_SQ406_Start_Work_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Yezegan_SQ406_Start_Work_03_02");
    AI_STARTFACEANI(SELF, S_DOUBT, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Yezegan_SQ406_Start_Work_03_03");
    AI_RESETFACEANI(SELF);
    AI_OUTPUT(OTHER, SELF, "DIA_Yezegan_SQ406_Start_Work_15_04");
    INFO_CLEARCHOICES(0x13dc6);
}

instance DIA_YEZEGAN_SQ406_HELP(C_INFO) {
    NPC = 0xe38a;
    NR = 1;
    CONDITION = DIA_YEZEGAN_SQ406_HELP_CONDITION;
    INFORMATION = DIA_YEZEGAN_SQ406_HELP_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Maybe I could help in some way?";
}

func int DIA_YEZEGAN_SQ406_HELP_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x13dc6)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_YEZEGAN_SQ406_HELP_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Yezegan_SQ406_Help_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Yezegan_SQ406_Help_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Yezegan_SQ406_Help_03_03");
    INFO_CLEARCHOICES(0x13dcc);
    INFO_ADDCHOICE(0x13dcc, "I don't have the best experience with drinking suspicious potions.", 0x13dd1);
    INFO_ADDCHOICE(0x13dcc, "You want me to drink this potion?", 0x13dd0);
}

func void DIA_YEZEGAN_SQ406_HELP_NEXT() {
    AI_RESETFACEANI(OTHER);
    AI_OUTPUT(SELF, OTHER, "DIA_Yezegan_SQ406_Help_Next_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Yezegan_SQ406_Help_Next_03_02");
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Yezegan_SQ406_Help_Next_03_03");
    INFO_CLEARCHOICES(0x13dcc);
    INFO_ADDCHOICE(0x13dcc, "So all I have to do is add this potion to someone's beer and watch the effects?", 0x13dd2);
}

func void DIA_YEZEGAN_SQ406_HELP_DRINK() {
    AI_STARTFACEANI(SELF, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Yezegan_SQ406_Help_Drink_15_01");
    DIA_YEZEGAN_SQ406_HELP_NEXT();
}

func void DIA_YEZEGAN_SQ406_HELP_BADLUCK() {
    AI_STARTFACEANI(SELF, S_DISGUST, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Yezegan_SQ406_Help_BadLuck_15_01");
    DIA_YEZEGAN_SQ406_HELP_NEXT();
}

func void DIA_YEZEGAN_SQ406_HELP_BADLUCK_NEXT_TEST() {
    AI_OUTPUT(OTHER, SELF, "DIA_Yezegan_SQ406_Help_Test_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Yezegan_SQ406_Help_Test_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Yezegan_SQ406_Help_Test_03_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Yezegan_SQ406_Help_Test_15_04");
    AI_RESETFACEANI(SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Yezegan_SQ406_Help_Test_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Yezegan_SQ406_Help_Test_03_06");
    CREATEINVITEMS(SELF, 0x91f5, 1);
    B_GIVEINVITEMS(SELF, OTHER, 0x91f5, 1);
    CREATEINVITEMS(SELF, 0x91f6, 1);
    B_GIVEINVITEMS(SELF, OTHER, 0x91f6, 1);
    CREATEINVITEMS(SELF, 0x91f7, 1);
    B_GIVEINVITEMS(SELF, OTHER, 0x91f7, 1);
    LOG_CREATETOPIC(TOPIC_SQ406, LOG_MISSION);
    LOG_SETSTATUS(_@(MIS_SQ406), TOPIC_SQ406, LOG_RUNNING);
    AI_LOGENTRY(TOPIC_SQ406, LOG_SQ406_START);
    INFO_CLEARCHOICES(0x13dcc);
}

instance DIA_YEZEGAN_SQ406_TESTEDPOTIONS(C_INFO) {
    NPC = 0xe38a;
    NR = 1;
    CONDITION = DIA_YEZEGAN_SQ406_TESTEDPOTIONS_CONDITION;
    INFORMATION = DIA_YEZEGAN_SQ406_TESTEDPOTIONS_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I tried the potions.";
}

func int DIA_YEZEGAN_SQ406_TESTEDPOTIONS_CONDITION() {
    if (((LOG_GETSTATUS(MIS_SQ406)) == (LOG_RUNNING)) && ((SQ406_USEDPOTIONS) >= (3))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

var int YEZEGAN_SQ406_FINISH = 0;
var int YEZEGAN_SQ406_NEEDTOFINDTARGET = 0;
func void DIA_YEZEGAN_SQ406_TESTEDPOTIONS_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Yezegan_SQ406_TestedPotions_15_01");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Yezegan_SQ406_TestedPotions_03_02");
    INFO_CLEARCHOICES(0x13dd3);
    INFO_ADDCHOICE(0x13dd3, "The strong potion worked.", 0x13dda);
    INFO_ADDCHOICE(0x13dd3, "A regular serving seems to induce vomiting.", 0x13dd9);
    INFO_ADDCHOICE(0x13dd3, "The weak potion didn't work.", 0x13dd8);
}

func void DIA_YEZEGAN_SQ406_TESTEDPOTIONS_TRANSFORML() {
    AI_OUTPUT(OTHER, SELF, "DIA_Yezegan_SQ406_TestedPotions_TransformL_15_01");
    AI_STARTFACEANI(SELF, S_TIRED, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Yezegan_SQ406_TestedPotions_TransformL_03_02");
}

func void DIA_YEZEGAN_SQ406_TESTEDPOTIONS_TRANSFORMM() {
    AI_OUTPUT(OTHER, SELF, "DIA_Yezegan_SQ406_TestedPotions_TransformM_15_01");
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Yezegan_SQ406_TestedPotions_TransformM_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Yezegan_SQ406_TestedPotions_TransformM_03_03");
}

func void DIA_YEZEGAN_SQ406_TESTEDPOTIONS_TRANSFORMH() {
    INFO_CLEARCHOICES(0x13dd3);
    AI_OUTPUT(OTHER, SELF, "DIA_Yezegan_SQ406_TestedPotions_TransformH_15_01");
    AI_STARTFACEANI(SELF, S_SURPRISE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Yezegan_SQ406_TestedPotions_TransformH_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Yezegan_SQ406_TestedPotions_TransformH_03_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Yezegan_SQ406_TestedPotions_TransformH_15_04");
    AI_OUTPUT(OTHER, SELF, "DIA_Yezegan_SQ406_TestedPotions_TransformH_15_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Yezegan_SQ406_TestedPotions_TransformH_03_06");
    if ((SQ406_TESTERPOTIONH) == (0)) {
        AI_OUTPUT(OTHER, SELF, "DIA_Yezegan_SQ406_TestedPotions_TransformH_15_07");
        AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
        AI_OUTPUT(SELF, OTHER, "DIA_Yezegan_SQ406_TestedPotions_TransformH_03_08");
        INFO_ADDCHOICE(0x13dd3, "I guess I have no choice but to find him.", 0x13ddd);
        INFO_ADDCHOICE(0x13dd3, "If you care so much about it, look for him yourself.", 0x13ddc);
    };
    INFO_ADDCHOICE(0x13dd3, "The process seems to have stopped somewhere in the middle of the transition.", 0x13ddf);
}

func void DIA_YEZEGAN_SQ406_TESTEDPOTIONS_FINISH() {
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Yezegan_SQ406_TestedPotions_Finish_03_01");
    if ((YEZEGAN_SQ406_FINISH) == (1)) {
        CREATEINVITEMS(SELF, 0x8643, 1);
        B_GIVEINVITEMS(SELF, OTHER, 0x8643, 1);
        CREATEINVITEMS(SELF, 0x8645, 1);
        B_GIVEINVITEMS(SELF, OTHER, 0x8645, 1);
        CREATEINVITEMS(SELF, 0x8647, 1);
        B_GIVEINVITEMS(SELF, OTHER, 0x8647, 1);
        AI_LOGENTRY(TOPIC_SQ406, LOG_SQ406_FINISH_V1);
        B_GIVEPLAYERXP(XP_SQ406_FINISH_V1);
    };
    if ((YEZEGAN_SQ406_FINISH) == (2)) {
        CREATEINVITEMS(SELF, 0x8647, 1);
        B_GIVEINVITEMS(SELF, OTHER, 0x8647, 1);
        CREATEINVITEMS(SELF, 0x8632, 1);
        B_GIVEINVITEMS(SELF, OTHER, 0x8632, 1);
        CREATEINVITEMS(SELF, 0x8623, 1);
        B_GIVEINVITEMS(SELF, OTHER, 0x8623, 1);
        AI_LOGENTRY(TOPIC_SQ406, LOG_SQ406_FINISH_V2);
        B_GIVEPLAYERXP(XP_SQ406_FINISH_V2);
    };
    CREATEINVITEMS(SELF, 0x8632, 1);
    B_GIVEINVITEMS(SELF, OTHER, 0x8632, 1);
    CREATEINVITEMS(SELF, 0x8623, 1);
    B_GIVEINVITEMS(SELF, OTHER, 0x8623, 1);
    AI_LOGENTRY(TOPIC_SQ406, LOG_SQ406_FINISH_V3);
    B_GIVEPLAYERXP(XP_SQ406_FINISH_V3);
    AI_OUTPUT(SELF, OTHER, "DIA_Yezegan_SQ406_TestedPotions_Finish_03_02");
    LOG_SETSTATUS(_@(MIS_SQ406), TOPIC_SQ406, LOG_SUCCESS);
    INFO_CLEARCHOICES(0x13dd3);
    AI_STOPPROCESSINFOS(SELF);
}

func void DIA_YEZEGAN_SQ406_TESTEDPOTIONS_TRANSFORMH_LEAVE() {
    YEZEGAN_SQ406_FINISH = 3;
    AI_STARTFACEANI(OTHER, S_ANGRY, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Yezegan_SQ406_TestedPotions_Leave_15_01");
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Yezegan_SQ406_TestedPotions_Leave_03_02");
    DIA_YEZEGAN_SQ406_TESTEDPOTIONS_FINISH();
}

func void DIA_YEZEGAN_SQ406_TESTEDPOTIONS_TRANSFORMH_FIND() {
    YEZEGAN_SQ406_NEEDTOFINDTARGET = 1;
    AI_STARTFACEANI(OTHER, S_TIRED, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Yezegan_SQ406_TestedPotions_Find_15_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Yezegan_SQ406_TestedPotions_Find_15_02");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Yezegan_SQ406_TestedPotions_Find_03_03");
    SQ406_KILLDAN();
    INFO_CLEARCHOICES(0x13dd3);
    AI_STOPPROCESSINFOS(SELF);
}

func void DIA_YEZEGAN_SQ406_TESTEDPOTIONS_FOUNDTARGET() {
    YEZEGAN_SQ406_FINISH = 2;
    YEZEGAN_SQ406_NEEDTOFINDTARGET = 0;
    AI_OUTPUT(OTHER, SELF, "DIA_Yezegan_SQ406_TestedPotions_Research_15_07");
    AI_STARTFACEANI(SELF, S_TIRED, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Yezegan_SQ406_TestedPotions_Research_03_08");
    AI_OUTPUT(OTHER, SELF, "DIA_Yezegan_SQ406_TestedPotions_Research_15_09");
    AI_OUTPUT(SELF, OTHER, "DIA_Yezegan_SQ406_TestedPotions_Research_03_10");
    AI_OUTPUT(SELF, OTHER, "DIA_Yezegan_SQ406_TestedPotions_Research_03_11");
    DIA_YEZEGAN_SQ406_TESTEDPOTIONS_FINISH();
}

func void DIA_YEZEGAN_SQ406_TESTEDPOTIONS_TRANSFORMH_RESEARCH() {
    AI_OUTPUT(OTHER, SELF, "DIA_Yezegan_SQ406_TestedPotions_Research_15_01");
    if ((SQ406_TESTERPOTIONH) == (3)) {
        AI_OUTPUT(OTHER, SELF, "DIA_Yezegan_SQ406_TestedPotions_Research_15_02");
        AI_OUTPUT(OTHER, SELF, "DIA_Yezegan_SQ406_TestedPotions_Research_15_03");
        AI_STARTFACEANI(SELF, S_THINK, 1, -(1));
        AI_OUTPUT(SELF, OTHER, "DIA_Yezegan_SQ406_TestedPotions_Research_03_04");
        AI_OUTPUT(SELF, OTHER, "DIA_Yezegan_SQ406_TestedPotions_Research_03_05");
        AI_RESETFACEANI(SELF);
        AI_OUTPUT(SELF, OTHER, "DIA_Yezegan_SQ406_TestedPotions_Research_03_06");
        SQ406_GIVEPOTIONSFORDAN();
        SQ406_KILLDAN();
        INFO_CLEARCHOICES(0x13dd3);
        AI_STOPPROCESSINFOS(SELF);
    };
    DIA_YEZEGAN_SQ406_TESTEDPOTIONS_FOUNDTARGET();
}

instance DIA_YEZEGAN_SQ406_FOUNDDAN(C_INFO) {
    NPC = 0xe38a;
    NR = 1;
    CONDITION = DIA_YEZEGAN_SQ406_FOUNDDAN_CONDITION;
    INFORMATION = DIA_YEZEGAN_SQ406_FOUNDDAN_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "The potion turns out to work better than we thought.";
}

func int DIA_YEZEGAN_SQ406_FOUNDDAN_CONDITION() {
    if (((LOG_GETSTATUS(MIS_SQ406)) == (LOG_RUNNING)) && ((SQ406_RAZORDAN) == (2))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_YEZEGAN_SQ406_FOUNDDAN_INFO() {
    YEZEGAN_SQ406_FINISH = 1;
    AI_OUTPUT(OTHER, SELF, "DIA_Yezegan_SQ406_FoundDan_15_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Yezegan_SQ406_FoundDan_15_02");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Yezegan_SQ406_FoundDan_03_03");
    DIA_YEZEGAN_SQ406_TESTEDPOTIONS_FINISH();
}

instance DIA_YEZEGAN_SQ406_FOUNDTARGET(C_INFO) {
    NPC = 0xe38a;
    NR = 1;
    CONDITION = DIA_YEZEGAN_SQ406_FOUNDTARGET_CONDITION;
    INFORMATION = DIA_YEZEGAN_SQ406_FOUNDTARGET_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I found the subject. I don't have very good news.";
}

func int DIA_YEZEGAN_SQ406_FOUNDTARGET_CONDITION() {
    if (((LOG_GETSTATUS(MIS_SQ406)) == (LOG_RUNNING)) && ((YEZEGAN_SQ406_NEEDTOFINDTARGET) == (1))) {
        if (((SQ406_TESTERPOTIONH) == (1)) || ((SQ406_TESTERPOTIONH) == (2))) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_YEZEGAN_SQ406_FOUNDTARGET_INFO() {
    SQ406_RAZOR_FIGHTWITH_GHOST = 2;
    SQ406_RAZOR_FIGHTWITH_GETTER = 2;
    AI_OUTPUT(OTHER, SELF, "DIA_Yezegan_SQ406_FoundTarget_15_01");
    DIA_YEZEGAN_SQ406_TESTEDPOTIONS_FOUNDTARGET();
}

instance DIA_YEZEGAN_AMBIENT(C_INFO) {
    NPC = 0xe38a;
    NR = 997;
    CONDITION = DIA_YEZEGAN_AMBIENT_CONDITION;
    INFORMATION = DIA_YEZEGAN_AMBIENT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "How's the research?";
}

func int DIA_YEZEGAN_AMBIENT_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x13def)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_YEZEGAN_AMBIENT_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Yezegan_Ambient_15_00");
    if ((LOG_GETSTATUS(MIS_Q401)) == (LOG_SUCCESS)) {
        NPC_INITAMBIENTS(SELF, 3);
        if ((NPC_GETLASTAMBIENT(SELF)) == (1)) {
            AI_OUTPUT(SELF, OTHER, "DIA_Yezegan_Ambient_13_01");
        } else if ((NPC_GETLASTAMBIENT(SELF)) == (2)) {
            AI_OUTPUT(SELF, OTHER, "DIA_Yezegan_Ambient_13_02");
        } else if ((NPC_GETLASTAMBIENT(SELF)) == (3)) {
            AI_OUTPUT(SELF, OTHER, "DIA_Yezegan_Ambient_13_03");
        };
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Yezegan_Ambient_13_04");
}

instance DIA_YEZEGAN_WHAT(C_INFO) {
    NPC = 0xe38a;
    NR = 1;
    CONDITION = DIA_YEZEGAN_WHAT_CONDITION;
    INFORMATION = DIA_YEZEGAN_WHAT_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "What are you doing here?";
}

func int DIA_YEZEGAN_WHAT_CONDITION() {
    if (((KAPITEL) == (4)) && ((LOG_GETSTATUS(MIS_Q401)) != (LOG_SUCCESS))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_YEZEGAN_WHAT_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Yezegan_What_15_01");
    AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Yezegan_What_03_02");
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
    AI_OUTPUT(SELF, OTHER, "DIA_Yezegan_What_03_03");
}

instance DIA_YEZEGAN_PROBLEM(C_INFO) {
    NPC = 0xe38a;
    NR = 1;
    CONDITION = DIA_YEZEGAN_PROBLEM_CONDITION;
    INFORMATION = DIA_YEZEGAN_PROBLEM_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Are minecrawlers a problem for you?";
}

func int DIA_YEZEGAN_PROBLEM_CONDITION() {
    if (((NPC_KNOWSINFO(OTHER, 0x13de9)) && ((KAPITEL) == (4))) && ((LOG_GETSTATUS(MIS_Q401)) != (LOG_SUCCESS))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_YEZEGAN_PROBLEM_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Yezegan_Problem_15_01");
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Yezegan_Problem_03_02");
    AI_RESETFACEANI(SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Yezegan_Problem_03_03");
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Yezegan_Problem_03_04");
    AI_RESETFACEANI(SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Yezegan_Problem_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Yezegan_Problem_03_06");
    AI_RESETFACEANI(OTHER);
}

instance DIA_YEZEGAN_WHO(C_INFO) {
    NPC = 0xe38a;
    NR = 2;
    CONDITION = DIA_YEZEGAN_WHO_CONDITION;
    INFORMATION = DIA_YEZEGAN_WHO_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Who are you?";
}

func int DIA_YEZEGAN_WHO_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x13de9)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_YEZEGAN_WHO_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Yezegan_Who_15_01");
    AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Yezegan_Who_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Yezegan_Who_03_03");
    if ((NPC_GETDISTTOWP(SELF, "WOLFSDEN_CITADEL_ROOM02_LABPSI01")) >= (1000)) {
        AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
        AI_OUTPUT(SELF, OTHER, "DIA_Yezegan_Who_03_04");
    };
}

instance DIA_YEZEGAN_WHOTRADE(C_INFO) {
    NPC = 0xe38a;
    NR = 90;
    CONDITION = DIA_YEZEGAN_WHOTRADE_CONDITION;
    INFORMATION = DIA_YEZEGAN_WHOTRADE_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Who trades magic items here?";
}

func int DIA_YEZEGAN_WHOTRADE_CONDITION() {
    if ((NPC_GETDISTTOWP(SELF, "WOLFSDEN_CITADEL_ROOM02_LABPSI01")) <= (1000)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_YEZEGAN_WHOTRADE_INFO() {
    AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    B_SAY(OTHER, SELF, "$MARVIN_WhoTradesMagic");
    AI_OUTPUT(SELF, OTHER, "DIA_Yezegan_WhoTrade_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Yezegan_WhoTrade_03_02");
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
    LOG_CREATETOPIC(TOPIC_WOLFSDENTRADER, LOG_NOTE);
    AI_LOGENTRY(TOPIC_WOLFSDENTRADER, LOG_TRADER_YEZEGAN);
}

instance DIA_YEZEGAN_TRADE(C_INFO) {
    NPC = 0xe38a;
    NR = 90;
    CONDITION = DIA_YEZEGAN_TRADE_CONDITION;
    INFORMATION = DIA_YEZEGAN_TRADE_INFO;
    PERMANENT = TRUE;
    TRADE = TRUE;
    DESCRIPTION = "Let's deal.";
}

func int DIA_YEZEGAN_TRADE_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x13df2)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_YEZEGAN_TRADE_INFO() {
    B_SAY(OTHER, SELF, "$MARVIN_LetsTrade");
    B_GIVETRADEINV(SELF);
}

instance DIA_YEZEGAN_PIPES(C_INFO) {
    NPC = 0xe38a;
    NR = 85;
    CONDITION = DIA_YEZEGAN_PIPES_CONDITION;
    INFORMATION = DIA_YEZEGAN_PIPES_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "What's with the pipes all over the fortress?";
}

func int DIA_YEZEGAN_PIPES_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 0x13def)) && ((NPC_GETDISTTOWP(SELF, "WOLFSDEN_CITADEL_ROOM02_LABPSI01")) <= (1000))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_YEZEGAN_PIPES_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Yezegan_Pipes_15_01");
    AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Yezegan_Pipes_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Yezegan_Pipes_03_03");
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
}

instance DIA_YEZEGAN_PICKPOCKET(C_INFO) {
    NPC = 0xe38a;
    NR = 900;
    CONDITION = DIA_YEZEGAN_PICKPOCKET_CONDITION;
    INFORMATION = DIA_YEZEGAN_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_120;
}

func int DIA_YEZEGAN_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_YEZEGAN_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(0x13dfb);
    INFO_ADDCHOICE(0x13dfb, DIALOG_BACK, 0x13dff);
    INFO_ADDCHOICE(0x13dfb, DIALOG_PICKPOCKET, 0x13dfe);
}

func void DIA_YEZEGAN_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (3)) {
        CREATEINVITEMS(SELF, 0x838e, 1);
        B_GIVEINVITEMS(SELF, OTHER, 0x838e, 1);
        B_PICKPOCKET_AMBIENT_TIER_3();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(0x13dfb);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(0x13dfb);
}

func void DIA_YEZEGAN_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(0x13dfb);
}


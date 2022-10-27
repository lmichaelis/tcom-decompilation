instance DIA_SAMBOR_EXIT(C_INFO) {
    NPC = 0xcefa;
    NR = 999;
    CONDITION = DIA_SAMBOR_EXIT_CONDITION;
    INFORMATION = DIA_SAMBOR_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_SAMBOR_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_SAMBOR_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_SAMBOR_Q312_FIRSTWARN(C_INFO) {
    NPC = 0xcefa;
    NR = 1;
    CONDITION = DIA_SAMBOR_Q312_FIRSTWARN_CONDITION;
    INFORMATION = DIA_SAMBOR_Q312_FIRSTWARN_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

const string SAMBOR_CHECKPOINT = "PARTM4_PATH_46";
var int Q308_CANENTERVOLKERHOUSE = 0;
func int DIA_SAMBOR_Q312_FIRSTWARN_CONDITION() {
    if ((LOG_GETSTATUS(MIS_Q312)) == (LOG_RUNNING)) {
        if ((Q308_CANENTERVOLKERHOUSE) == (TRUE)) {
            SELF.AIVAR[14] = TRUE;
        } else {
            SELF.AIVAR[14] = FALSE;
        } else if ((NPC_GETDISTTONPC(SELF, OTHER)) <= (700)) {
            if (((((SELF.AIVAR[12]) == (GP_NONE)) && ((SELF.AIVAR[14]) == (FALSE))) && ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), SELF.WP)) == (TRUE))) && ((NPC_REFUSETALK(SELF)) == (FALSE))) {
                return TRUE;
            };
        };
    };
    return 0 /* !broken stack! */;
}

func void SAMBOR_KILLHERO() {
    OTHER.AIVAR[13] = 0;
    SELF.AIVAR[12] = GP_NONE;
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    B_SAY(SELF, OTHER, "$Alarm");
    AI_DRAWWEAPON(SELF);
    AI_STOPPROCESSINFOS(SELF);
    B_ATTACK(SELF, OTHER, AR_GUARDSTOPSINTRUDER, 1);
}

func void DIA_SAMBOR_Q312_FIRSTWARN_INFO() {
    if ((OTHER.GUILD) == (GIL_MIL)) {
        AMBIENT_ASKWHOYOUARE();
        AI_STARTFACEANI(SELF, "S_TIRED", 1, -(1));
        AI_OUTPUT(SELF, OTHER, "DIA_Sambor_Q312_NoEnter_03_01");
    };
    if ((OTHER.GUILD) == (GIL_SLD)) {
        AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
        AI_OUTPUT(SELF, OTHER, "DIA_Sambor_Q312_NoEnter_03_02");
    };
    if ((Q312_SAMBOR_NOENTRY_LOGENTRY) == (FALSE)) {
        Q312_SAMBOR_NOENTRY_LOGENTRY = TRUE;
        if ((OTHER.GUILD) == (GIL_MIL)) {
            AI_LOGENTRY(TOPIC_Q312, LOG_Q312_SAMBOR_NOENTRY_MIL);
        } else if ((OTHER.GUILD) == (GIL_SLD)) {
            AI_LOGENTRY(TOPIC_Q312, LOG_Q312_SAMBOR_NOENTRY_SLD);
        };
    };
    OTHER.AIVAR[13] = NPC_GETDISTTOWP(OTHER, SAMBOR_CHECKPOINT);
    SELF.AIVAR[12] = GP_FIRSTWARNGIVEN;
    AI_RESETFACEANI(SELF);
}

var int DIA_SAMBOR_Q312_FIRSTWARN_INFO.Q312_SAMBOR_NOENTRY_LOGENTRY = 0;
instance DIA_SAMBOR_Q312_SECONDWARN(C_INFO) {
    NPC = 0xcefa;
    NR = 1;
    CONDITION = DIA_SAMBOR_Q312_SECONDWARN_CONDITION;
    INFORMATION = DIA_SAMBOR_Q312_SECONDWARN_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_SAMBOR_Q312_SECONDWARN_CONDITION() {
    if ((LOG_GETSTATUS(MIS_Q312)) == (LOG_RUNNING)) {
        if (((((SELF.AIVAR[12]) == (GP_FIRSTWARNGIVEN)) && ((SELF.AIVAR[14]) == (FALSE))) && ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), SELF.WP)) == (TRUE))) && ((NPC_GETDISTTOWP(OTHER, SAMBOR_CHECKPOINT)) < ((OTHER.AIVAR[13]) - (50)))) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_SAMBOR_Q312_SECONDWARN_INFO() {
    OTHER.AIVAR[13] = NPC_GETDISTTOWP(OTHER, SAMBOR_CHECKPOINT);
    SELF.AIVAR[12] = GP_SECONDWARNGIVEN;
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Sambor_Q312_SecondWarn_03_01");
    AI_RESETFACEANI(SELF);
}

instance DIA_SAMBOR_Q312_LASTWARN(C_INFO) {
    NPC = 0xcefa;
    NR = 1;
    CONDITION = DIA_SAMBOR_Q312_LASTWARN_CONDITION;
    INFORMATION = DIA_SAMBOR_Q312_LASTWARN_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_SAMBOR_Q312_LASTWARN_CONDITION() {
    if ((LOG_GETSTATUS(MIS_Q312)) == (LOG_RUNNING)) {
        if (((((SELF.AIVAR[12]) == (GP_SECONDWARNGIVEN)) && ((SELF.AIVAR[14]) == (FALSE))) && ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), SELF.WP)) == (TRUE))) && ((NPC_GETDISTTOWP(OTHER, SAMBOR_CHECKPOINT)) < ((OTHER.AIVAR[13]) - (50)))) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_SAMBOR_Q312_LASTWARN_INFO() {
    SAMBOR_KILLHERO();
}

instance DIA_SAMBOR_Q308_BLOCKPATH(C_INFO) {
    NPC = 0xcefa;
    NR = 1;
    CONDITION = DIA_SAMBOR_Q308_BLOCKPATH_CONDITION;
    INFORMATION = DIA_SAMBOR_Q308_BLOCKPATH_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_SAMBOR_Q308_BLOCKPATH_CONDITION() {
    if (((Q308_LEONKUNOCUTSCENE) == (0)) || ((Q308_LEONKUNOCUTSCENE) == (2))) {
        if ((LOG_GETSTATUS(MIS_Q308)) == (LOG_RUNNING)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_SAMBOR_Q308_BLOCKPATH_INFO() {
    if ((OTHER.GUILD) == (GIL_SLD)) {
        AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
        AI_OUTPUT(SELF, OTHER, "DIA_Sambor_Q308_BlockPath_03_01");
    };
    if ((OTHER.GUILD) == (GIL_MIL)) {
        AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
        AI_OUTPUT(SELF, OTHER, "DIA_Sambor_Q308_BlockPath_03_02");
    };
    AI_RESETFACEANI(SELF);
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_SAMBOR_QUESTIONS(C_INFO) {
    NPC = 0xcefa;
    NR = 1;
    CONDITION = DIA_SAMBOR_QUESTIONS_CONDITION;
    INFORMATION = DIA_SAMBOR_QUESTIONS_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I have a question about the assassination attempt.";
}

func int DIA_SAMBOR_QUESTIONS_CONDITION() {
    if (((LOG_GETSTATUS(MIS_Q309)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 0x10cab))) {
        if ((Q309_READYFORGRAVE) != (2)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_SAMBOR_QUESTIONS_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Sambor_Questions_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Sambor_Questions_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Sambor_Questions_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Sambor_Questions_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Sambor_Questions_03_05");
    INFO_CLEARCHOICES(0x10724);
    INFO_ADDCHOICE(0x10724, "I don't have to explain everything to you.", 0x10727);
    INFO_ADDCHOICE(0x10724, "Maybe there were some marks left on him.", 0x10728);
}

func void DIA_SAMBOR_QUESTIONS_NO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Sambor_Questions_No_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Sambor_Questions_No_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Sambor_Questions_No_03_03");
    INFO_CLEARCHOICES(0x10724);
    AI_STOPPROCESSINFOS(SELF);
}

func void DIA_SAMBOR_QUESTIONS_YES() {
    if (TORCH_HEROHOLDINGTORCH()) {
        TORCH_UNEQUIP();
    };
    AI_OUTPUT(OTHER, SELF, "DIA_Sambor_Questions_Yes_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Sambor_Questions_Yes_03_02");
    AI_WAITTILLEND(OTHER, SELF);
    AI_REMOVEWEAPON(OTHER);
    AI_UNREADYSPELL(OTHER);
    AI_PLAYANI(OTHER, "T_STAND_2_LGUARD_HERO");
    AI_WAITTILLEND(SELF, OTHER);
    AI_OUTPUT(SELF, OTHER, "DIA_Sambor_Questions_Yes_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Sambor_Questions_Yes_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Sambor_Questions_Yes_03_05");
    AI_WAITTILLEND(OTHER, SELF);
    AI_PLAYANI(OTHER, "T_REMOVE_LGUARD");
    INFO_CLEARCHOICES(0x10724);
    AI_STOPPROCESSINFOS(SELF);
    AI_LOGENTRY(TOPIC_Q309, LOG_Q308_SAMBOR_BOLT);
}

instance DIA_SAMBOR_QM301_CROSSBOW(C_INFO) {
    NPC = 0xcefa;
    NR = 1;
    CONDITION = DIA_SAMBOR_QM301_CROSSBOW_CONDITION;
    INFORMATION = DIA_SAMBOR_QM301_CROSSBOW_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I need you to give me some tips about using crossbows.";
}

func int DIA_SAMBOR_QM301_CROSSBOW_CONDITION() {
    if ((LOG_GETSTATUS(MIS_QM301)) == (LOG_RUNNING)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_SAMBOR_QM301_CROSSBOW_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Sambor_QM301_Crossbow_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Sambor_QM301_Crossbow_03_02");
    B_STANDUP();
    AI_STARTFACEANI(SELF, S_DOUBT, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Sambor_QM301_Crossbow_03_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Sambor_QM301_Crossbow_15_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Sambor_QM301_Crossbow_03_05");
    AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Sambor_QM301_Crossbow_03_06");
    INFO_CLEARCHOICES(0x10729);
    INFO_ADDCHOICE(0x10729, "It's important that the merchants withdraw their complaint.", 0x1072d);
    INFO_ADDCHOICE(0x10729, "I don't know if I like it...", 0x1072e);
}

func void DIA_SAMBOR_QM301_CROSSBOW_NEXT() {
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
    AI_OUTPUT(SELF, OTHER, "DIA_Sambor_QM301_Crossbow_Next_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Sambor_QM301_Crossbow_Next_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Sambor_QM301_Crossbow_Next_03_03");
    INFO_CLEARCHOICES(0x10729);
    INFO_ADDCHOICE(0x10729, "What is this substance?", 0x10730);
    INFO_ADDCHOICE(0x10729, "I think my shooting skills are sufficient.", 0x1072f);
}

func void DIA_SAMBOR_QM301_CROSSBOW_YES() {
    AI_STARTFACEANI(OTHER, S_SMUG, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Sambor_QM301_Crossbow_Yes_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Sambor_QM301_Crossbow_Yes_03_02");
    DIA_SAMBOR_QM301_CROSSBOW_NEXT();
}

func void DIA_SAMBOR_QM301_CROSSBOW_NO() {
    QM301_SAMBOR_BETTERREWARD = 1;
    AI_STARTFACEANI(OTHER, S_TIRED, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Sambor_QM301_Crossbow_No_15_01");
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Sambor_QM301_Crossbow_No_03_02");
    DIA_SAMBOR_QM301_CROSSBOW_NEXT();
}

func void DIA_SAMBOR_QM301_CROSSBOW_NO_NEXT_GOOD() {
    AI_OUTPUT(OTHER, SELF, "DIA_Sambor_QM301_Crossbow_Good_15_01");
    if ((OTHER.HITCHANCE[4]) >= (80)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Sambor_QM301_Crossbow_Good_03_02");
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Sambor_QM301_Crossbow_Good_03_03");
}

func void DIA_SAMBOR_QM301_CROSSBOW_NO_NEXT_WHAT() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Sambor_QM301_Crossbow_What_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Sambor_QM301_Crossbow_What_03_02");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_RESETFACEANI(OTHER);
    AI_OUTPUT(OTHER, SELF, "DIA_Sambor_QM301_Crossbow_What_15_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Sambor_QM301_Crossbow_What_03_07");
    AI_OUTPUT(OTHER, SELF, "DIA_Sambor_QM301_Crossbow_What_15_08");
    AI_OUTPUT(SELF, OTHER, "DIA_Sambor_QM301_Crossbow_What_03_09");
    AI_OUTPUT(SELF, OTHER, "DIA_Sambor_QM301_Crossbow_What_03_10");
    AI_OUTPUT(SELF, OTHER, "DIA_Sambor_QM301_Crossbow_What_03_11");
    INFO_CLEARCHOICES(0x10729);
    AI_LOGENTRY(TOPIC_QM301, LOG_QM301_SAMBOR_POTION);
}

instance DIA_SAMBOR_CANYOUTEACH(C_INFO) {
    NPC = 0xcefa;
    NR = 3;
    CONDITION = DIA_SAMBOR_CANYOUTEACH_CONDITION;
    INFORMATION = DIA_SAMBOR_CANYOUTEACH_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Could you train me?";
}

func int DIA_SAMBOR_CANYOUTEACH_CONDITION() {
    if (((OTHER.GUILD) == (GIL_MIL)) && ((BECOMEAGUARD_TAVERNPART) >= (2))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_SAMBOR_CANYOUTEACH_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Sambor_CanYouTeach_15_00");
    if (((((MARVIN_MILITIASPECIALIZATION) == (MILITIA_SPECIALIZATION_CROSSBOWMAN)) || ((MARVIN_MILITIASPECIALIZATION) == (MILITIA_SPECIALIZATION_MASTERCROSSBOWMAN))) || ((MARVIN_MILITIASPECIALIZATION) == (MILITIA_SPECIALIZATION_FIGHTER))) || ((MARVIN_MILITIASPECIALIZATION) == (MILITIA_SPECIALIZATION_MASTERFIGHTER))) {
        AI_OUTPUT(SELF, OTHER, "DIA_Sambor_CanYouTeach_03_02");
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Sambor_CanYouTeach_03_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Sambor_CanYouTeach_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Sambor_CanYouTeach_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Sambor_CanYouTeach_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Sambor_CanYouTeach_03_06");
    LOG_CREATETOPIC(TOPIC_MILITIATEACHER, LOG_NOTE);
    AI_LOGENTRY(TOPIC_MILITIATEACHER, LOG_MILITIATEACHER_SAMBOR);
}

var int SAMBOR_NOMORE = 0;
var int SAMBOR_CURRENTCBLEVEL = 0;
var int SAMBOR_CURRENTDEXLEVEL = 0;
var string SAMBOR_PRINTS = "";
const int SAMBOR_RLEVEL = 40;
const int SAMBOR_RLEVELDEX = 80;
instance DIA_SAMBOR_TEACH(C_INFO) {
    NPC = 0xcefa;
    NR = 1;
    CONDITION = DIA_SAMBOR_TEACH_CONDITION;
    INFORMATION = DIA_SAMBOR_TEACH_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "I want to train.";
}

func int DIA_SAMBOR_TEACH_CONDITION() {
    if (((NPC_KNOWSINFO(OTHER, 0x10731)) && ((SAMBOR_NOMORE) == (FALSE))) && ((OTHER.GUILD) == (GIL_MIL))) {
        if (((((MARVIN_MILITIASPECIALIZATION) == (MILITIA_SPECIALIZATION_CROSSBOWMAN)) || ((MARVIN_MILITIASPECIALIZATION) == (MILITIA_SPECIALIZATION_MASTERCROSSBOWMAN))) || ((MARVIN_MILITIASPECIALIZATION) == (MILITIA_SPECIALIZATION_FIGHTER))) || ((MARVIN_MILITIASPECIALIZATION) == (MILITIA_SPECIALIZATION_MASTERFIGHTER))) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_SAMBOR_TEACH_CHOICES() {
    SAMBOR_CURRENTCBLEVEL = OTHER.AIVAR[87];
    SAMBOR_CURRENTDEXLEVEL = OTHER.AIVAR[82];
    SAMBOR_GOLDCOST = 0;
    INFO_CLEARCHOICES(0x1073a);
    INFO_ADDCHOICE(0x1073a, DIALOG_BACK, 0x1073f);
    INFO_ADDCHOICE(0x1073a, B_BUILDLEARNSTRING2(PRINT_LEARNCROSSBOW1, B_GETLEARNCOSTTALENT(OTHER, NPC_TALENT_CROSSBOW, 1), SAMBOR_GOLDCOST), 0x10740);
    INFO_ADDCHOICE(0x1073a, B_BUILDLEARNSTRING2(PRINT_LEARNCROSSBOW5, B_GETLEARNCOSTTALENT(OTHER, NPC_TALENT_CROSSBOW, 5), (SAMBOR_GOLDCOST) * (5)), 0x10741);
    INFO_ADDCHOICE(0x1073a, B_BUILDLEARNSTRING2(PRINT_LEARNDEX1, B_GETLEARNCOSTATTRIBUTE(OTHER, ATR_DEXTERITY, 1), SAMBOR_GOLDCOST), 0x10742);
    INFO_ADDCHOICE(0x1073a, B_BUILDLEARNSTRING2(PRINT_LEARNDEX5, B_GETLEARNCOSTATTRIBUTE(OTHER, ATR_DEXTERITY, 5), (SAMBOR_GOLDCOST) * (5)), 0x10743);
}

var int DIA_SAMBOR_TEACH_CHOICES.SAMBOR_GOLDCOST = 0;
func void DIA_SAMBOR_TEACH_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Sambor_Teach_15_00");
    if (((OTHER.AIVAR[87]) >= (80)) && ((OTHER.AIVAR[82]) >= (120))) {
        AI_OUTPUT(SELF, OTHER, "DIA_Sambor_NoMore_03_01");
        SAMBOR_NOMORE = TRUE;
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Sambor_Teach_03_01");
    DIA_SAMBOR_TEACH_CHOICES();
}

func void DIA_SAMBOR_TEACH_BACK() {
    INFO_CLEARCHOICES(0x1073a);
}

func void DIA_SAMBOR_TEACH_CB1() {
    if ((OTHER.AIVAR[87]) < (40)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Sambor_Teach_CH1_03_00");
        SAMBOR_PRINTS = CONCATSTRINGS(PRINT_MINSKILL, INTTOSTRING(SAMBOR_RLEVEL));
    };
    if ((SAMBOR_CURRENTCBLEVEL) < (OTHER.AIVAR[87])) {
        AI_OUTPUT(SELF, OTHER, "DIA_Sambor_Teach_CH1_03_01");
    };
    B_TEACHFIGHTTALENTPERCENT(SELF, OTHER, NPC_TALENT_CROSSBOW, 1, 80);
    DIA_SAMBOR_TEACH_CHOICES();
}

func void DIA_SAMBOR_TEACH_CB5() {
    if ((OTHER.AIVAR[87]) < (40)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Sambor_Teach_CB5_03_02");
        SAMBOR_PRINTS = CONCATSTRINGS(PRINT_MINSKILL, INTTOSTRING(SAMBOR_RLEVEL));
    };
    if ((SAMBOR_CURRENTCBLEVEL) < (OTHER.AIVAR[87])) {
        AI_OUTPUT(SELF, OTHER, "DIA_Sambor_Teach_CB5_03_03");
    };
    B_TEACHFIGHTTALENTPERCENT(SELF, OTHER, NPC_TALENT_CROSSBOW, 5, 80);
    DIA_SAMBOR_TEACH_CHOICES();
}

func void DIA_SAMBOR_TEACHDEX1() {
    if ((OTHER.AIVAR[82]) < (80)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Sambor_TeachDEX1_03_00");
        SAMBOR_PRINTS = CONCATSTRINGS(PRINT_MINATR, INTTOSTRING(SAMBOR_RLEVELDEX));
    };
    if ((SAMBOR_CURRENTDEXLEVEL) < (OTHER.AIVAR[82])) {
        AI_OUTPUT(SELF, OTHER, "DIA_Sambor_TeachDEX1_03_01");
    };
    B_TEACHATTRIBUTEPOINTS(SELF, OTHER, ATR_DEXTERITY, 1, 120);
    DIA_SAMBOR_TEACH_CHOICES();
}

func void DIA_SAMBOR_TEACHDEX5() {
    if ((OTHER.AIVAR[82]) < (80)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Sambor_TeachDEX5_03_00");
        SAMBOR_PRINTS = CONCATSTRINGS(PRINT_MINATR, INTTOSTRING(SAMBOR_RLEVELDEX));
    };
    if ((SAMBOR_CURRENTDEXLEVEL) < (OTHER.AIVAR[82])) {
        AI_OUTPUT(SELF, OTHER, "DIA_Sambor_TeachDEX5_03_01");
    };
    B_TEACHATTRIBUTEPOINTS(SELF, OTHER, ATR_DEXTERITY, 5, 120);
    DIA_SAMBOR_TEACH_CHOICES();
}

var int SAMBOR_ALLHUNT = 0;
instance DIA_SAMBOR_HUNTING_SPECIAL(C_INFO) {
    NPC = 0xcefa;
    NR = 1;
    CONDITION = DIA_SAMBOR_HUNTING_SPECIAL_CONDITION;
    INFORMATION = DIA_SAMBOR_HUNTING_SPECIAL_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "Can you teach me something about hunting?";
}

func int DIA_SAMBOR_HUNTING_SPECIAL_CONDITION() {
    if ((((NPC_KNOWSINFO(OTHER, 0x10731)) && ((OTHER.GUILD) == (GIL_MIL))) && ((SAMBOR_ALLHUNT) == (FALSE))) && ((PLAYER_TALENT_TAKEANIMALTROPHY[2]) == (TRUE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_SAMBOR_HUNTING_SPECIAL_CHOICES() {
    INFO_CLEARCHOICES(0x10745);
    INFO_ADDCHOICE(0x10745, DIALOG_BACK, 0x10749);
    if ((PLAYER_TALENT_TAKEANIMALTROPHY[0]) == (FALSE)) {
        INFO_ADDCHOICE(0x10745, B_BUILDLEARNSTRING2(PRINT_TEACHTEETH, B_GETLEARNCOSTTALENT(OTHER, NPC_TALENT_TAKEANIMALTROPHY, TROPHY_TEETH), SAMBOR_TEETHTROPHY), 0x1074a);
    };
    if ((PLAYER_TALENT_TAKEANIMALTROPHY[1]) == (FALSE)) {
        INFO_ADDCHOICE(0x10745, B_BUILDLEARNSTRING2(PRINT_TEACHCLAWS, B_GETLEARNCOSTTALENT(OTHER, NPC_TALENT_TAKEANIMALTROPHY, TROPHY_CLAWS), SAMBOR_CLAWSTROPHY), 0x1074b);
    };
    if ((PLAYER_TALENT_TAKEANIMALTROPHY[5]) == (FALSE)) {
        INFO_ADDCHOICE(0x10745, B_BUILDLEARNSTRING2(PRINT_TEACHFIRETONGUE, B_GETLEARNCOSTTALENT(OTHER, NPC_TALENT_TAKEANIMALTROPHY, TROPHY_FIRETONGUE), SAMBOR_FIRETONGUETROPHY), 0x1074c);
    };
    if ((PLAYER_TALENT_TAKEANIMALTROPHY[13]) == (FALSE)) {
        INFO_ADDCHOICE(0x10745, B_BUILDLEARNSTRING2(PRINT_TEACHREPTILESKIN, B_GETLEARNCOSTTALENT(OTHER, NPC_TALENT_TAKEANIMALTROPHY, TROPHY_REPTILESKIN), SAMBOR_REPTILESKINTROPHY), 0x1074d);
    };
    if ((PLAYER_TALENT_TAKEANIMALTROPHY[4]) == (FALSE)) {
        INFO_ADDCHOICE(0x10745, B_BUILDLEARNSTRING2(PRINT_TEACHSHADOWHORN, B_GETLEARNCOSTTALENT(OTHER, NPC_TALENT_TAKEANIMALTROPHY, TROPHY_SHADOWHORN), SAMBOR_SHADOWHORNTROPHY), 0x1074e);
    };
}

func void DIA_SAMBOR_HUNTING_SPECIAL_INFO() {
    B_SAY(OTHER, SELF, "$MARVIN_CanYouTeachMeHunting");
    AI_OUTPUT(SELF, OTHER, "DIA_Sambor_Hunting_Special_03_01");
    DIA_SAMBOR_HUNTING_SPECIAL_CHOICES();
}

func void DIA_SAMBOR_HUNTING_SPECIAL_BACK() {
    INFO_CLEARCHOICES(0x10745);
    if ((((((PLAYER_TALENT_TAKEANIMALTROPHY[0]) == (TRUE)) && ((PLAYER_TALENT_TAKEANIMALTROPHY[1]) == (TRUE))) && ((PLAYER_TALENT_TAKEANIMALTROPHY[5]) == (TRUE))) && ((PLAYER_TALENT_TAKEANIMALTROPHY[13]) == (TRUE))) && ((PLAYER_TALENT_TAKEANIMALTROPHY[4]) == (TRUE))) {
        SAMBOR_ALLHUNT = TRUE;
        AI_OUTPUT(SELF, OTHER, "DIA_Sambor_AllHunt_03_01");
    };
}

func void DIA_SAMBOR_HUNTING_SPECIAL_TEETH() {
    AI_OUTPUT(OTHER, SELF, "DIA_Sambor_Hunting_Special_Teeth_15_01");
    if ((NPC_HASITEMS(OTHER, 0x859b)) >= (SAMBOR_TEETHTROPHY)) {
        if ((PLAYER_TALENT_TAKEANIMALTROPHY[0]) == (TRUE)) {
            NPC_REMOVEINVITEMS(SELF, 0x859b, SAMBOR_TEETHTROPHY);
            AI_OUTPUT(SELF, OTHER, "DIA_Sambor_Hunting_Special_Teeth_03_02");
            B_GIVEINVITEMS(OTHER, SELF, 0x859b, SAMBOR_TEETHTROPHY);
            PRINTSCREEN(PRINT_LEARNTAKEANIMALTROPHYTEETH, -(1), -(1), FONT_SCREEN, 2);
        };
    };
    if ((NPC_HASITEMS(OTHER, 0x859b)) < (SAMBOR_TEETHTROPHY)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Sambor_Hunting_Special_Teeth_03_03");
    };
    DIA_SAMBOR_HUNTING_SPECIAL_CHOICES();
}

func void DIA_SAMBOR_HUNTING_SPECIAL_CLAWS() {
    AI_OUTPUT(OTHER, SELF, "DIA_Sambor_Hunting_Special_Claws_15_01");
    if ((NPC_HASITEMS(OTHER, 0x859b)) >= (SAMBOR_CLAWSTROPHY)) {
        if ((PLAYER_TALENT_TAKEANIMALTROPHY[1]) == (TRUE)) {
            NPC_REMOVEINVITEMS(SELF, 0x859b, SAMBOR_CLAWSTROPHY);
            AI_OUTPUT(SELF, OTHER, "DIA_Sambor_Hunting_Special_Claws_03_02");
            B_GIVEINVITEMS(OTHER, SELF, 0x859b, SAMBOR_CLAWSTROPHY);
            PRINTSCREEN(PRINT_LEARNTAKEANIMALTROPHYCLAWS, -(1), -(1), FONT_SCREEN, 2);
        };
    };
    if ((NPC_HASITEMS(OTHER, 0x859b)) < (SAMBOR_CLAWSTROPHY)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Sambor_Hunting_Special_Claws_03_03");
    };
    DIA_SAMBOR_HUNTING_SPECIAL_CHOICES();
}

func void DIA_SAMBOR_HUNTING_SPECIAL_FIRETONGUE() {
    AI_OUTPUT(OTHER, SELF, "DIA_Sambor_Hunting_Special_FireTongue_15_01");
    if ((NPC_HASITEMS(OTHER, 0x859b)) >= (SAMBOR_FIRETONGUETROPHY)) {
        if ((PLAYER_TALENT_TAKEANIMALTROPHY[5]) == (TRUE)) {
            NPC_REMOVEINVITEMS(SELF, 0x859b, SAMBOR_FIRETONGUETROPHY);
            AI_OUTPUT(SELF, OTHER, "DIA_Sambor_Hunting_Special_FireTongue_03_02");
            B_GIVEINVITEMS(OTHER, SELF, 0x859b, SAMBOR_FIRETONGUETROPHY);
            AI_OUTPUT(SELF, OTHER, "DIA_Sambor_Hunting_Special_FireTongue_03_03");
            PRINTSCREEN(PRINT_LEARNTAKEANIMALTROPHYFIRETONGUE, -(1), -(1), FONT_SCREEN, 2);
        };
    };
    if ((NPC_HASITEMS(OTHER, 0x859b)) < (SAMBOR_FIRETONGUETROPHY)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Sambor_Hunting_Special_FireTongue_03_04");
    };
    DIA_SAMBOR_HUNTING_SPECIAL_CHOICES();
}

func void DIA_SAMBOR_HUNTING_SPECIAL_REPTILESKIN() {
    AI_OUTPUT(OTHER, SELF, "DIA_Sambor_Hunting_Special_ReptileSkin_15_01");
    if ((NPC_HASITEMS(OTHER, 0x859b)) >= (SAMBOR_REPTILESKINTROPHY)) {
        if ((PLAYER_TALENT_TAKEANIMALTROPHY[13]) == (TRUE)) {
            NPC_REMOVEINVITEMS(SELF, 0x859b, SAMBOR_REPTILESKINTROPHY);
            AI_OUTPUT(SELF, OTHER, "DIA_Sambor_Hunting_Special_ReptileSkin_03_02");
            B_GIVEINVITEMS(OTHER, SELF, 0x859b, SAMBOR_REPTILESKINTROPHY);
            AI_OUTPUT(SELF, OTHER, "DIA_Sambor_Hunting_Special_ReptileSkin_03_03");
            PRINTSCREEN(PRINT_LEARNTAKEANIMALTROPHYREPTILESKIN, -(1), -(1), FONT_SCREEN, 2);
        };
    };
    if ((NPC_HASITEMS(OTHER, 0x859b)) < (SAMBOR_REPTILESKINTROPHY)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Sambor_Hunting_Special_ReptileSkin_03_04");
    };
    DIA_SAMBOR_HUNTING_SPECIAL_CHOICES();
}

func void DIA_SAMBOR_HUNTING_SPECIAL_SHADOWHORN() {
    AI_OUTPUT(OTHER, SELF, "DIA_Sambor_Hunting_Special_ShadowHorn_15_01");
    if ((NPC_HASITEMS(OTHER, 0x859b)) >= (SAMBOR_SHADOWHORNTROPHY)) {
        if ((PLAYER_TALENT_TAKEANIMALTROPHY[4]) == (TRUE)) {
            NPC_REMOVEINVITEMS(SELF, 0x859b, SAMBOR_SHADOWHORNTROPHY);
            AI_OUTPUT(SELF, OTHER, "DIA_Sambor_Hunting_Special_ShadowHorn_03_02");
            B_GIVEINVITEMS(OTHER, SELF, 0x859b, SAMBOR_SHADOWHORNTROPHY);
            AI_OUTPUT(SELF, OTHER, "DIA_Sambor_Hunting_Special_ShadowHorn_03_03");
            PRINTSCREEN(PRINT_LEARNTAKEANIMALTROPHYHORN, -(1), -(1), FONT_SCREEN, 2);
        };
    };
    if ((NPC_HASITEMS(OTHER, 0x859b)) < (SAMBOR_SHADOWHORNTROPHY)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Sambor_Hunting_Special_ShadowHorn_03_04");
    };
    DIA_SAMBOR_HUNTING_SPECIAL_CHOICES();
}

instance DIA_SAMBOR_AMBIENT(C_INFO) {
    NPC = 0xcefa;
    NR = 950;
    CONDITION = DIA_SAMBOR_AMBIENT_CONDITION;
    INFORMATION = DIA_SAMBOR_AMBIENT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "How's life?";
}

func int DIA_SAMBOR_AMBIENT_CONDITION() {
    return TRUE;
}

func void DIA_SAMBOR_AMBIENT_INFO() {
    AI_STARTFACEANI(OTHER, S_SMILE, 1, -(1));
    B_SAY(OTHER, SELF, "$MARVIN_WhatNew5");
    if ((((MARVIN_MILITIASPECIALIZATION) == (MILITIA_SPECIALIZATION_MASTERCROSSBOWMAN)) || ((MARVIN_MILITIASPECIALIZATION) == (MILITIA_SPECIALIZATION_MASTERFIGHTER))) || ((HERO.GUILD) == (GIL_SLD))) {
        NPC_INITAMBIENTS(SELF, 2);
    };
    NPC_INITAMBIENTS(SELF, 1);
    if ((NPC_GETLASTAMBIENT(SELF)) == (1)) {
        AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
        AI_OUTPUT(SELF, OTHER, "DIA_Sambor_Ambient_03_01");
        AI_OUTPUT(SELF, OTHER, "DIA_Sambor_Ambient_03_02");
    };
    if ((NPC_GETLASTAMBIENT(SELF)) == (2)) {
        if ((HERO.GUILD) == (GIL_SLD)) {
            AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
            AI_OUTPUT(SELF, OTHER, "DIA_Sambor_Ambient_03_03");
        } else {
            AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
            AI_OUTPUT(SELF, OTHER, "DIA_Sambor_Ambient_03_04");
        };
    };
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
}

instance DIA_SAMBOR_QM301_GOTPOTION(C_INFO) {
    NPC = 0xcefa;
    NR = 1;
    CONDITION = DIA_SAMBOR_QM301_GOTPOTION_CONDITION;
    INFORMATION = DIA_SAMBOR_QM301_GOTPOTION_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I already have the potion.";
}

func int DIA_SAMBOR_QM301_GOTPOTION_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_Q312)) == (LOG_RUNNING)) && ((Q308_CANENTERVOLKERHOUSE) == (FALSE))) || (((LOG_GETSTATUS(MIS_Q308)) == (LOG_RUNNING)) && ((Q308_VOLKERHOUSECUTSCENE) == (FALSE)))) {
        return FALSE;
    };
    if ((((LOG_GETSTATUS(MIS_QM301)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 0x10729))) && ((NPC_HASITEMS(OTHER, 0x9352)) >= (1))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_SAMBOR_QM301_GOTPOTION_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Sambor_QM301_GotPotion_15_01");
    AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Sambor_QM301_GotPotion_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Sambor_QM301_GotPotion_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Sambor_QM301_GotPotion_03_04");
    AI_RESETFACEANI(SELF);
    NPC_EXCHANGEROUTINE(SELF, "QM301_CROSSBOWTEST");
    AI_STOPPROCESSINFOS(SELF);
    NPC_REMOVEINVITEM(SELF, 0x9352);
    AI_FUNCTION(SELF, 0x10755);
    B_GIVEINVITEMS(OTHER, SELF, 0x9352, 1);
}

func void QM301_SAMBORTELEPORT() {
    FADESCREENTOBLACKF(1, 0x10756, 1000);
}

func void QM301_SAMBORTELEPORT_FADESCREEN() {
    WLD_SETTIME(7, 20);
    TELEPORTNPCTOWP(0x71b, "PARTM3_CROSSBOWTEST_01");
    B_STARTOTHERROUTINE(MIL_6385_SAMBOR, "QM301_CROSSBOWTEST");
    NPC_REFRESH(MIL_6385_SAMBOR);
    TELEPORTNPCTOWP(0xcefa, MIL_6385_SAMBOR.WP);
    FADESCREENFROMBLACK(1);
    AI_TURNTONPC(HERO, MIL_6385_SAMBOR);
    AI_TURNTONPC(MIL_6385_SAMBOR, HERO);
}

instance DIA_SAMBOR_QM301_LETSGO(C_INFO) {
    NPC = 0xcefa;
    NR = 1;
    CONDITION = DIA_SAMBOR_QM301_LETSGO_CONDITION;
    INFORMATION = DIA_SAMBOR_QM301_LETSGO_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_SAMBOR_QM301_LETSGO_CONDITION() {
    if (((LOG_GETSTATUS(MIS_QM301)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 0x10752))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void SAMBOR_QM301_CAMERA_01() {
    WLD_SENDTRIGGER("QM301_TARGETCAMERA_01");
}

func void SAMBOR_QM301_CAMERA_02() {
    WLD_SENDTRIGGER("QM301_TARGETCAMERA_02");
    WLD_SENDUNTRIGGER("QM301_TARGETCAMERA_01");
}

func void SAMBOR_QM301_CAMERA_03() {
    WLD_SENDTRIGGER("QM301_TARGETCAMERA_03");
    WLD_SENDUNTRIGGER("QM301_TARGETCAMERA_02");
}

func void SAMBOR_QM301_CAMERA_FINISH() {
    FF_APPLYONCEEXT(0x1075d, 75, 4);
}

func void SAMBOR_QM301_CAMERA_FINISH_APPLY() {
    SAMBOR_QM301_CAMERA_FINISH_COUNT = (SAMBOR_QM301_CAMERA_FINISH_COUNT) + (1);
    if ((SAMBOR_QM301_CAMERA_FINISH_COUNT) == (4)) {
        SAMBOR_QM301_CAMERA_FINISH_COUNT = 0;
        WLD_SENDUNTRIGGER("QM301_TARGETCAMERA_01");
        WLD_SENDUNTRIGGER("QM301_TARGETCAMERA_02");
        WLD_SENDUNTRIGGER("QM301_TARGETCAMERA_03");
        DIACAM_ENABLE();
    };
}

var int SAMBOR_QM301_CAMERA_FINISH_APPLY.SAMBOR_QM301_CAMERA_FINISH_COUNT = 0;
func void DIA_SAMBOR_QM301_LETSGO_INFO() {
    AI_FUNCTION(SELF, 0xeff0);
    DIACAM_DISABLE();
    AI_FUNCTION(SELF, 0x10759);
    AI_OUTPUT(SELF, OTHER, "DIA_Sambor_QM301_LetsGo_03_01");
    AI_FUNCTION(SELF, 0x1075a);
    AI_OUTPUT(SELF, OTHER, "DIA_Sambor_QM301_LetsGo_03_02");
    AI_FUNCTION(SELF, 0x1075b);
    AI_OUTPUT(SELF, OTHER, "DIA_Sambor_QM301_LetsGo_03_03");
    AI_STOPPROCESSINFOS(SELF);
    AI_FUNCTION(SELF, 0x1075c);
    AI_LOGENTRY(TOPIC_QM301, LOG_QM301_SAMBOR_TEST);
}

instance DIA_SAMBOR_QM301_NOBOLTS(C_INFO) {
    NPC = 0xcefa;
    NR = 1;
    CONDITION = DIA_SAMBOR_QM301_NOBOLTS_CONDITION;
    INFORMATION = DIA_SAMBOR_QM301_NOBOLTS_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I don't have any more bolts.";
}

func int DIA_SAMBOR_QM301_NOBOLTS_CONDITION() {
    if (((((LOG_GETSTATUS(MIS_QM301)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 0x10757))) && ((NPC_HASITEMS(OTHER, 0x8650)) >= (0))) && ((NPC_KNOWSINFO(OTHER, 0x10766)) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_SAMBOR_QM301_NOBOLTS_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Sambor_QM301_NoBolts_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Sambor_QM301_NoBolts_03_02");
    CREATEINVITEMS(SELF, 0x8650, 12);
    B_GIVEINVITEMS(SELF, OTHER, 0x8650, 12);
}

instance DIA_SAMBOR_QM301_NOTBAD(C_INFO) {
    NPC = 0xcefa;
    NR = 1;
    CONDITION = DIA_SAMBOR_QM301_NOTBAD_CONDITION;
    INFORMATION = DIA_SAMBOR_QM301_NOTBAD_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_SAMBOR_QM301_NOTBAD_CONDITION() {
    if (((LOG_GETSTATUS(MIS_QM301)) == (LOG_RUNNING)) && ((QM301_COUNTSHOOTS) == (3))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_SAMBOR_QM301_NOTBAD_INFO() {
    QM301_NEXTTARGETS();
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Sambor_QM301_NotBad_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Sambor_QM301_NotBad_03_02");
    CREATEINVITEMS(SELF, 0x917e, 1);
    B_GIVEINVITEMS(SELF, OTHER, 0x917e, 1);
    AI_OUTPUT(SELF, OTHER, "DIA_Sambor_QM301_NotBad_03_03");
    AI_LOGENTRY(TOPIC_QM301, LOG_QM301_SAMBOR_TESTCHEAT);
    AI_WAITTILLEND(OTHER, SELF);
    B_SAY(OTHER, SELF, "$MARVIN_ThinkingEmoji");
    B_MARVIN_USEFAKESAMBORPOTION();
    AI_STOPPROCESSINFOS(SELF);
    AI_RESETFACEANI(SELF);
}

instance DIA_SAMBOR_QM301_AFTERTARGETS(C_INFO) {
    NPC = 0xcefa;
    NR = 1;
    CONDITION = DIA_SAMBOR_QM301_AFTERTARGETS_CONDITION;
    INFORMATION = DIA_SAMBOR_QM301_AFTERTARGETS_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_SAMBOR_QM301_AFTERTARGETS_CONDITION() {
    if (((LOG_GETSTATUS(MIS_QM301)) == (LOG_RUNNING)) && ((QM301_COUNTNEXTSHOOTS) == (3))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_SAMBOR_QM301_AFTERTARGETS_INFO() {
    AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
    AI_REMOVEWEAPON(OTHER);
    AI_OUTPUT(SELF, OTHER, "DIA_Sambor_QM301_AfterTargets_03_01");
    INFO_CLEARCHOICES(0x10766);
    INFO_ADDCHOICE(0x10766, "This potion is brilliant!", 0x1076b);
    INFO_ADDCHOICE(0x10766, "With or without the potion, I don't feel any special difference...", 0x1076a);
}

func void DIA_SAMBOR_QM301_AFTERTARGETS_NEXT() {
    AI_OUTPUT(SELF, OTHER, "DIA_Sambor_QM301_AfterTargets_Next_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Sambor_QM301_AfterTargets_Next_03_02");
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
    INFO_CLEARCHOICES(0x10766);
    AI_STOPPROCESSINFOS(SELF);
    AI_FUNCTION(SELF, 0x1076c);
}

func void DIA_SAMBOR_QM301_AFTERTARGETS_NO() {
    AI_STARTFACEANI(OTHER, S_DOUBT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Sambor_QM301_AfterTargets_No_15_01");
    AI_STARTFACEANI(SELF, S_SURPRISE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Sambor_QM301_AfterTargets_No_03_02");
    DIA_SAMBOR_QM301_AFTERTARGETS_NEXT();
}

func void DIA_SAMBOR_QM301_AFTERTARGETS_YES() {
    AI_STARTFACEANI(OTHER, S_SMUG, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Sambor_QM301_AfterTargets_Yes_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Sambor_QM301_AfterTargets_Yes_03_02");
    DIA_SAMBOR_QM301_AFTERTARGETS_NEXT();
}

func void SAMBOR_QM301_TELEPORTBACK() {
    FADESCREENTOBLACKF(1, 0x1076d, 1000);
}

func void SAMBOR_QM301_TELEPORTBACK_FADESCREEN() {
    QM301_HIDETARGETS();
    QM301_FINISHSAMBORTRAINING = TRUE;
    TELEPORTNPCTOWP(0x71b, "PARTM3_PATH_178");
    if ((LOG_GETSTATUS(MIS_Q308)) == (LOG_RUNNING)) {
        B_STARTOTHERROUTINE(MIL_6385_SAMBOR, "Q308_OUTSIDE");
        NPC_REFRESH(MIL_6385_SAMBOR);
        TELEPORTNPCTOWP(0xcefa, MIL_6385_SAMBOR.WP);
        TELEPORTNPCTOWP(0x71b, "PARTM4_GUARDSMAN_02");
    };
    B_STARTOTHERROUTINE(MIL_6385_SAMBOR, START);
    NPC_REFRESH(MIL_6385_SAMBOR);
    TELEPORTNPCTOWP(0xcefa, MIL_6385_SAMBOR.WP);
    TELEPORTNPCTOWP(0x71b, "PARTM3_PATH_178");
    B_LOGENTRY(TOPIC_QM301, LOG_QM301_SAMBOR_TESTDONE);
    FADESCREENFROMBLACK(1);
}

instance DIA_SAMBOR_QM301_AFTERQUEST(C_INFO) {
    NPC = 0xcefa;
    NR = 1;
    CONDITION = DIA_SAMBOR_QM301_AFTERQUEST_CONDITION;
    INFORMATION = DIA_SAMBOR_QM301_AFTERQUEST_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_SAMBOR_QM301_AFTERQUEST_CONDITION() {
    if ((LOG_GETSTATUS(MIS_QM301)) == (LOG_SUCCESS)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_SAMBOR_QM301_AFTERQUEST_INFO() {
    AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Sambor_QM301_AfterQuest_15_01");
    INFO_CLEARCHOICES(0x1076e);
    INFO_ADDCHOICE(0x1076e, "Tell me, what was in that drink?", 0x10771);
}

func void DIA_SAMBOR_QM301_AFTERQUEST_TELLME() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Sambor_QM301_AfterQuest_TellMe_15_01");
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Sambor_QM301_AfterQuest_TellMe_03_02");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Sambor_QM301_AfterQuest_TellMe_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Sambor_QM301_AfterQuest_TellMe_03_04");
    AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Sambor_QM301_AfterQuest_TellMe_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Sambor_QM301_AfterQuest_TellMe_03_06");
    INFO_CLEARCHOICES(0x1076e);
    INFO_ADDCHOICE(0x1076e, "So this potion doesn't help with shooting?", 0x10772);
}

func void DIA_SAMBOR_QM301_AFTERQUEST_TELLME_NOHELP() {
    AI_STARTFACEANI(OTHER, S_SURPRISE, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Sambor_QM301_AfterQuest_NoHelp_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Sambor_QM301_AfterQuest_NoHelp_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Sambor_QM301_AfterQuest_NoHelp_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Sambor_QM301_AfterQuest_NoHelp_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Sambor_QM301_AfterQuest_NoHelp_03_05");
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
    B_RAISEFIGHTTALENT(OTHER, NPC_TALENT_CROSSBOW, 2);
    PRINTSCREEN(PRINT_LEARNCROSSBOW2, -(1), -(1), FONT_SCREEN, 2);
    B_GIVEPLAYERXP(XP_QM301_SAMBORBONUS);
    INFO_CLEARCHOICES(0x1076e);
}

instance DIA_SAMBOR_PICKPOCKET(C_INFO) {
    NPC = 0xcefa;
    NR = 900;
    CONDITION = DIA_SAMBOR_PICKPOCKET_CONDITION;
    INFORMATION = DIA_SAMBOR_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_80;
}

func int DIA_SAMBOR_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_SAMBOR_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(0x10773);
    INFO_ADDCHOICE(0x10773, DIALOG_BACK, 0x10777);
    INFO_ADDCHOICE(0x10773, DIALOG_PICKPOCKET, 0x10776);
}

func void DIA_SAMBOR_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (2)) {
        CREATEINVITEMS(SELF, 0x8650, 4);
        B_GIVEINVITEMS(SELF, OTHER, 0x8650, 4);
        B_PICKPOCKET_AMBIENT_TIER_2();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(0x10773);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(0x10773);
}

func void DIA_SAMBOR_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(0x10773);
}


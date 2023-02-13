instance DIA_ALFRED_EXIT(C_INFO) {
    NPC = 53456;
    NR = 999;
    CONDITION = DIA_ALFRED_EXIT_CONDITION;
    INFORMATION = DIA_ALFRED_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_ALFRED_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_ALFRED_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_ALFRED_Q308AMBIENT(C_INFO) {
    NPC = 53456;
    NR = 1;
    CONDITION = DIA_ALFRED_Q308AMBIENT_CONDITION;
    INFORMATION = DIA_ALFRED_Q308AMBIENT_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_ALFRED_Q308AMBIENT_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_Q308)) == (LOG_RUNNING)) && (NPC_ISINSTATE(SELF, 61599))) && (!(NPC_KNOWSINFO(OTHER, 73494)))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_ALFRED_Q308AMBIENT_INFO() {
    NPC_INITAMBIENTS(SELF, 2);
    AI_STARTFACEANI(SELF, S_DOUBT, 1, -(1));
    if ((NPC_GETLASTAMBIENT(SELF)) == (1)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Alfred_Q308Ambient_03_01");
    };
    if ((NPC_GETLASTAMBIENT(SELF)) == (2)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Alfred_Q308Ambient_03_02");
        AI_OUTPUT(SELF, OTHER, "DIA_Alfred_Q308Ambient_03_03");
    };
    AI_STOPPROCESSINFOS(SELF);
    AI_RESETFACEANI(SELF);
}

instance DIA_ALFRED_HELLO(C_INFO) {
    NPC = 53456;
    NR = 1;
    CONDITION = DIA_ALFRED_HELLO_CONDITION;
    INFORMATION = DIA_ALFRED_HELLO_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_ALFRED_HELLO_CONDITION() {
    if ((NPC_ISINSTATE(SELF, 61599)) && (NPC_KNOWSINFO(OTHER, 73494))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_ALFRED_HELLO_INFO() {
    NPC_INITAMBIENTS(SELF, 3);
    if ((NPC_GETLASTAMBIENT(SELF)) == (1)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Alfred_HELLO_03_01");
    };
    if ((NPC_GETLASTAMBIENT(SELF)) == (2)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Alfred_HELLO_03_02");
    };
    if ((NPC_GETLASTAMBIENT(SELF)) == (3)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Alfred_HELLO_03_03");
    };
}

instance DIA_ALFRED_QUESTIONS(C_INFO) {
    NPC = 53456;
    NR = 1;
    CONDITION = DIA_ALFRED_QUESTIONS_CONDITION;
    INFORMATION = DIA_ALFRED_QUESTIONS_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I need some questions answered.";
}

func int DIA_ALFRED_QUESTIONS_CONDITION() {
    if (((LOG_GETSTATUS(MIS_Q308)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 73494))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_ALFRED_QUESTIONS_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Alfred_Questions_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Alfred_Questions_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Alfred_Questions_03_03");
    INFO_CLEARCHOICES(76253);
    INFO_ADDCHOICE(76253, "What were you doing the day the assassination attempt happened?", 76264);
}

var int ALFRED_QUESTIONS_HIMSELF;
var int ALFRED_QUESTIONS_HIMSELF_COUNT;
var int ALFRED_QUESTIONS_STRANGE;
var int ALFRED_QUESTIONS_ITEM;
var int ALFRED_QUESTIONS_USURER;
var int ALFRED_QUESTIONS_COUNT;
func void DIA_ALFRED_QUESTIONS_CHOICES() {
    INFO_CLEARCHOICES(76253);
    if ((ALFRED_QUESTIONS_HIMSELF) == (FALSE)) {
        INFO_ADDCHOICE(76253, "Tell me about yourself.", 76265);
    };
    if ((ALFRED_QUESTIONS_STRANGE) == (FALSE)) {
        INFO_ADDCHOICE(76253, "Have you noticed anything suspicious lately?", 76266);
    };
    if ((ALFRED_QUESTIONS_ITEM) == (FALSE)) {
        INFO_ADDCHOICE(76253, "Did the assassin leave anything behind?", 76267);
    };
    if ((ALFRED_QUESTIONS_USURER) == (FALSE)) {
        INFO_ADDCHOICE(76253, "Why is Volker called the Usurer?", 76263);
    };
    if ((ALFRED_QUESTIONS_COUNT) == (3)) {
        INFO_ADDCHOICE(76253, "Those are all the questions I had.", 76270);
    };
}

func void DIA_ALFRED_QUESTIONS_USURER() {
    AI_OUTPUT(OTHER, SELF, "DIA_Alfred_Questions_Usurer_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Alfred_Questions_Usurer_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Alfred_Questions_Usurer_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Alfred_Questions_Usurer_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Alfred_Questions_Usurer_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Alfred_Questions_Usurer_03_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Alfred_Questions_Usurer_03_07");
    AI_OUTPUT(SELF, OTHER, "DIA_Alfred_Questions_Usurer_03_08");
    ALFRED_QUESTIONS_USURER = TRUE;
    DIA_ALFRED_QUESTIONS_CHOICES();
}

func void DIA_ALFRED_QUESTIONS_WHAT() {
    AI_OUTPUT(OTHER, SELF, "DIA_Alfred_Questions_What_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Alfred_Questions_What_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Alfred_Questions_What_03_03");
    if ((OTHER.GUILD) == (GIL_MIL)) {
        AI_OUTPUT(OTHER, SELF, "DIA_Alfred_Questions_What_15_04");
        AI_OUTPUT(SELF, OTHER, "DIA_Alfred_Questions_What_03_05");
        AI_OUTPUT(SELF, OTHER, "DIA_Alfred_Questions_What_03_06");
    };
    if ((OTHER.GUILD) == (GIL_SLD)) {
        AI_OUTPUT(OTHER, SELF, "DIA_Alfred_Questions_What_15_07");
        AI_OUTPUT(SELF, OTHER, "DIA_Alfred_Questions_What_03_08");
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Alfred_Questions_What_03_09");
    DIA_ALFRED_QUESTIONS_CHOICES();
}

func void DIA_ALFRED_QUESTIONS_WHAT_HIMSELF() {
    ALFRED_QUESTIONS_COUNT = (ALFRED_QUESTIONS_COUNT) + (1);
    ALFRED_QUESTIONS_HIMSELF = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Alfred_Questions_Himself_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Alfred_Questions_Himself_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Alfred_Questions_Himself_03_03");
    if ((Q308_BERNAND_INFOABOUTALFRED) == (TRUE)) {
        AI_OUTPUT(OTHER, SELF, "DIA_Alfred_Questions_Himself_15_04");
        AI_OUTPUT(SELF, OTHER, "DIA_Alfred_Questions_Himself_03_05");
    };
    INFO_CLEARCHOICES(76253);
    INFO_ADDCHOICE(76253, "How long have you worked here?", 76268);
}

func void DIA_ALFRED_QUESTIONS_WHAT_STRANGE() {
    ALFRED_QUESTIONS_COUNT = (ALFRED_QUESTIONS_COUNT) + (1);
    ALFRED_QUESTIONS_STRANGE = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Alfred_Questions_Strange_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Alfred_Questions_Strange_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Alfred_Questions_Strange_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Alfred_Questions_Strange_03_04");
    DIA_ALFRED_QUESTIONS_CHOICES();
}

func void DIA_ALFRED_QUESTIONS_WHAT_ITEM() {
    ALFRED_QUESTIONS_COUNT = (ALFRED_QUESTIONS_COUNT) + (1);
    ALFRED_QUESTIONS_ITEM = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Alfred_Questions_Item_15_01");
    if (NPC_HASGUILDARMOREQUIPPED(OTHER, GIL_MIL)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Alfred_Questions_Item_03_02");
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Alfred_Questions_Item_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Alfred_Questions_Item_03_04");
    INFO_CLEARCHOICES(76253);
    INFO_ADDCHOICE(76253, "Can I take a look at one of them?", 76269);
}

func void DIA_ALFRED_QUESTIONS_WHAT_HIMSELF_LONG() {
    AI_OUTPUT(OTHER, SELF, "DIA_Alfred_Questions_Long_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Alfred_Questions_Long_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Alfred_Questions_Long_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Alfred_Questions_Long_03_04");
    DIA_ALFRED_QUESTIONS_CHOICES();
}

func void DIA_ALFRED_QUESTIONS_WHAT_ITEM_LOOK() {
    AI_OUTPUT(OTHER, SELF, "DIA_Alfred_Questions_Look_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Alfred_Questions_Look_03_02");
    CREATEINVITEMS(SELF, 37294, 1);
    B_GIVEINVITEMS(SELF, OTHER, 37294, 1);
    AI_OUTPUT(OTHER, SELF, "DIA_Alfred_Questions_Look_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Alfred_Questions_Look_03_04");
    AI_OUTPUT(OTHER, SELF, "DIA_Alfred_Questions_Look_15_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Alfred_Questions_Look_03_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Alfred_Questions_Look_03_07");
    AI_OUTPUT(SELF, OTHER, "DIA_Alfred_Questions_Look_03_08");
    DIA_ALFRED_QUESTIONS_CHOICES();
}

func void DIA_ALFRED_QUESTIONS_BYE() {
    AI_OUTPUT(OTHER, SELF, "DIA_Alfred_Questions_Bye_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Alfred_Questions_Bye_03_02");
    INFO_CLEARCHOICES(76253);
    AI_STOPPROCESSINFOS(SELF);
    AI_LOGENTRY(TOPIC_Q311, LOG_Q308_ALFRED_INFO);
    Q311_TAVERNCHANGES();
}

instance DIA_ALFRED_PICKPOCKET(C_INFO) {
    NPC = 53456;
    NR = 900;
    CONDITION = DIA_ALFRED_PICKPOCKET_CONDITION;
    INFORMATION = DIA_ALFRED_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_80;
}

func int DIA_ALFRED_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_ALFRED_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(76271);
    INFO_ADDCHOICE(76271, DIALOG_BACK, 76275);
    INFO_ADDCHOICE(76271, DIALOG_PICKPOCKET, 76274);
}

func void DIA_ALFRED_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (2)) {
        B_PICKPOCKET_AMBIENT_TIER_2();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(76271);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(76271);
}

func void DIA_ALFRED_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(76271);
}


instance DIA_ALFRED_EXIT(C_INFO) {
    NPC = 0xd0d0;
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
    NPC = 0xd0d0;
    NR = 1;
    CONDITION = DIA_ALFRED_Q308AMBIENT_CONDITION;
    INFORMATION = DIA_ALFRED_Q308AMBIENT_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_ALFRED_Q308AMBIENT_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_Q308)) == (LOG_RUNNING)) && (NPC_ISINSTATE(SELF, 0xf09f))) && (!(NPC_KNOWSINFO(OTHER, 0x11f16)))) {
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
    NPC = 0xd0d0;
    NR = 1;
    CONDITION = DIA_ALFRED_HELLO_CONDITION;
    INFORMATION = DIA_ALFRED_HELLO_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_ALFRED_HELLO_CONDITION() {
    if ((NPC_ISINSTATE(SELF, 0xf09f)) && (NPC_KNOWSINFO(OTHER, 0x11f16))) {
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
    NPC = 0xd0d0;
    NR = 1;
    CONDITION = DIA_ALFRED_QUESTIONS_CONDITION;
    INFORMATION = DIA_ALFRED_QUESTIONS_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I need some questions answered.";
}

func int DIA_ALFRED_QUESTIONS_CONDITION() {
    if (((LOG_GETSTATUS(MIS_Q308)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 0x11f16))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_ALFRED_QUESTIONS_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Alfred_Questions_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Alfred_Questions_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Alfred_Questions_03_03");
    INFO_CLEARCHOICES(0x129dd);
    INFO_ADDCHOICE(0x129dd, "What were you doing the day the assassination attempt happened?", 0x129e8);
}

var int ALFRED_QUESTIONS_HIMSELF = 0;
var int ALFRED_QUESTIONS_HIMSELF_COUNT = 0;
var int ALFRED_QUESTIONS_STRANGE = 0;
var int ALFRED_QUESTIONS_ITEM = 0;
var int ALFRED_QUESTIONS_USURER = 0;
var int ALFRED_QUESTIONS_COUNT = 0;
func void DIA_ALFRED_QUESTIONS_CHOICES() {
    INFO_CLEARCHOICES(0x129dd);
    if ((ALFRED_QUESTIONS_HIMSELF) == (FALSE)) {
        INFO_ADDCHOICE(0x129dd, "Tell me about yourself.", 0x129e9);
    };
    if ((ALFRED_QUESTIONS_STRANGE) == (FALSE)) {
        INFO_ADDCHOICE(0x129dd, "Have you noticed anything suspicious lately?", 0x129ea);
    };
    if ((ALFRED_QUESTIONS_ITEM) == (FALSE)) {
        INFO_ADDCHOICE(0x129dd, "Did the assassin leave anything behind?", 0x129eb);
    };
    if ((ALFRED_QUESTIONS_USURER) == (FALSE)) {
        INFO_ADDCHOICE(0x129dd, "Why is Volker called the Usurer?", 0x129e7);
    };
    if ((ALFRED_QUESTIONS_COUNT) == (3)) {
        INFO_ADDCHOICE(0x129dd, "Those are all the questions I had.", 0x129ee);
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
    INFO_CLEARCHOICES(0x129dd);
    INFO_ADDCHOICE(0x129dd, "How long have you worked here?", 0x129ec);
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
    INFO_CLEARCHOICES(0x129dd);
    INFO_ADDCHOICE(0x129dd, "Can I take a look at one of them?", 0x129ed);
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
    CREATEINVITEMS(SELF, 0x91ae, 1);
    B_GIVEINVITEMS(SELF, OTHER, 0x91ae, 1);
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
    INFO_CLEARCHOICES(0x129dd);
    AI_STOPPROCESSINFOS(SELF);
    AI_LOGENTRY(TOPIC_Q311, LOG_Q308_ALFRED_INFO);
    Q311_TAVERNCHANGES();
}

instance DIA_ALFRED_PICKPOCKET(C_INFO) {
    NPC = 0xd0d0;
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
    INFO_CLEARCHOICES(0x129ef);
    INFO_ADDCHOICE(0x129ef, DIALOG_BACK, 0x129f3);
    INFO_ADDCHOICE(0x129ef, DIALOG_PICKPOCKET, 0x129f2);
}

func void DIA_ALFRED_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (2)) {
        B_PICKPOCKET_AMBIENT_TIER_2();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(0x129ef);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(0x129ef);
}

func void DIA_ALFRED_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(0x129ef);
}


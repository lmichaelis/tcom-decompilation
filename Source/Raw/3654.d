instance DIA_URYCH_EXIT(C_INFO) {
    NPC = 0xcb91;
    NR = 999;
    CONDITION = DIA_URYCH_EXIT_CONDITION;
    INFORMATION = DIA_URYCH_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_URYCH_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_URYCH_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_URYCH_HELLO(C_INFO) {
    NPC = 0xcb91;
    NR = 1;
    CONDITION = DIA_URYCH_HELLO_CONDITION;
    INFORMATION = DIA_URYCH_HELLO_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Who are you?";
}

func int DIA_URYCH_HELLO_CONDITION() {
    return TRUE;
}

func void DIA_URYCH_HELLO_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    B_SAY(OTHER, SELF, "$MARVIN_WhoAreYou");
    AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Urych_Hello_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Urych_Hello_03_03");
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
}

instance DIA_URYCH_PLACE(C_INFO) {
    NPC = 0xcb91;
    NR = 1;
    CONDITION = DIA_URYCH_PLACE_CONDITION;
    INFORMATION = DIA_URYCH_PLACE_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "What is this place?";
}

func int DIA_URYCH_PLACE_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x101a7)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_URYCH_PLACE_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    B_SAY(OTHER, SELF, "$MARVIN_WhatIsThisPlace");
    AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Urych_Place_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Urych_Place_03_03");
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
}

instance DIA_URYCH_STOCK(C_INFO) {
    NPC = 0xcb91;
    NR = 1;
    CONDITION = DIA_URYCH_STOCK_CONDITION;
    INFORMATION = DIA_URYCH_STOCK_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Are you also involved in supply?";
}

func int DIA_URYCH_STOCK_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x101aa)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_URYCH_STOCK_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Urych_Stock_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Urych_Stock_03_02");
    AI_RESETFACEANI(OTHER);
}

instance DIA_URYCH_GIVEFOOD(C_INFO) {
    NPC = 0xcb91;
    NR = 90;
    CONDITION = DIA_URYCH_GIVEFOOD_CONDITION;
    INFORMATION = DIA_URYCH_GIVEFOOD_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "Can I get something to eat?";
}

var int URYCH_STOPFOOD = 0;
func int DIA_URYCH_GIVEFOOD_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 0x101aa)) && ((URYCH_STOPFOOD) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

var int URYCH_GIVEFOOD_DAY = 0;
func void URYCH_GIVEFOOD_RANDOM() {
    URYCH_NEXTFOOD = NPC_GETLASTAMBIENT(SELF);
    NPC_INITAMBIENTS(SELF, 10);
    if ((URYCH_NEXTFOOD) == (0)) {
        CREATEINVITEMS(SELF, 0x8efe, 1);
    };
    if ((URYCH_NEXTFOOD) == (1)) {
        CREATEINVITEMS(SELF, 0x8f02, 1);
    };
    if ((URYCH_NEXTFOOD) == (2)) {
        CREATEINVITEMS(SELF, 0x8f06, 1);
    };
    if ((URYCH_NEXTFOOD) == (3)) {
        CREATEINVITEMS(SELF, 0x8f12, 1);
    };
    if ((URYCH_NEXTFOOD) == (4)) {
        CREATEINVITEMS(SELF, 0x8f3c, 1);
    };
    if ((URYCH_NEXTFOOD) == (5)) {
        CREATEINVITEMS(SELF, 0x8f34, 1);
    };
    if ((URYCH_NEXTFOOD) == (6)) {
        CREATEINVITEMS(SELF, 0x8f32, 1);
    };
    if ((URYCH_NEXTFOOD) == (7)) {
        CREATEINVITEMS(SELF, 0x8f21, 1);
    };
    if ((URYCH_NEXTFOOD) == (8)) {
        CREATEINVITEMS(SELF, 0x8efc, 1);
    };
    if ((URYCH_NEXTFOOD) == (9)) {
        URYCH_STOPFOOD = TRUE;
        CREATEINVITEMS(SELF, 0x8f70, 1);
        B_GIVEINVITEMS(SELF, OTHER, 0x8f70, 1);
    };
}

var int URYCH_GIVEFOOD_RANDOM.URYCH_NEXTFOOD = 0;
func void DIA_URYCH_GIVEFOOD_INFO() {
    AI_STARTFACEANI(OTHER, S_SMILE, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Urych_GiveFood_15_01");
    if ((HERO.GUILD) == (GIL_MIL)) {
        if ((URYCH_GIVEFOOD_DAY) != (WLD_GETDAY())) {
            AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
            AI_OUTPUT(SELF, OTHER, "DIA_Urych_GiveFood_03_02");
            URYCH_GIVEFOOD_RANDOM();
            URYCH_GIVEFOOD_DAY = WLD_GETDAY();
        } else {
            AI_STARTFACEANI(SELF, "S_ANGRY", 1, -(1));
            AI_OUTPUT(SELF, OTHER, "DIA_Urych_GiveFood_03_03");
        } else {
            /* set_instance(0) */;
        };
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Urych_GiveFood_03_04");
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
}

instance DIA_URYCH_PICKPOCKET(C_INFO) {
    NPC = 0xcb91;
    NR = 900;
    CONDITION = DIA_URYCH_PICKPOCKET_CONDITION;
    INFORMATION = DIA_URYCH_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_40;
}

func int DIA_URYCH_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_URYCH_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(0x101b7);
    INFO_ADDCHOICE(0x101b7, DIALOG_BACK, 0x101bb);
    INFO_ADDCHOICE(0x101b7, DIALOG_PICKPOCKET, 0x101ba);
}

func void DIA_URYCH_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) {
        CREATEINVITEMS(SELF, 0x8f68, 1);
        B_GIVEINVITEMS(SELF, OTHER, 0x8f68, 1);
        B_PICKPOCKET_AMBIENT_TIER_1();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(0x101b7);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(0x101b7);
}

func void DIA_URYCH_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(0x101b7);
}

instance DIA_URYCH_BUSY(C_INFO) {
    NPC = 0xcb91;
    NR = 1;
    CONDITION = DIA_URYCH_BUSY_CONDITION;
    INFORMATION = DIA_URYCH_BUSY_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_URYCH_BUSY_CONDITION() {
    if (NPC_ISINSTATE(SELF, 0xf09f)) {
        if ((((NPC_KNOWSINFO(OTHER, 0x101a7)) && (NPC_KNOWSINFO(OTHER, 0x101aa))) && (NPC_KNOWSINFO(OTHER, 0x101ad))) && ((URYCH_STOPFOOD) == (TRUE))) {
            if (((SELF.AIVAR[6]) == (TRUE)) || ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) == (0))) {
                return TRUE;
            };
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_URYCH_BUSY_INFO() {
    DIA_IMBUSY_CALM();
}


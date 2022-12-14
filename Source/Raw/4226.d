var int CASTAWAY_FISH = 0;
var int CASTAWAY_SECRETDAY = 0;
var int CASTAWAY_SECRETREWARD = 0;
var int CASTAWAY_HEROEXP = 0;
instance DIA_CASTAWAY_EXIT(C_INFO) {
    NPC = 0xe22c;
    NR = 999;
    CONDITION = DIA_CASTAWAY_EXIT_CONDITION;
    INFORMATION = DIA_CASTAWAY_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_CASTAWAY_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_CASTAWAY_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_CASTAWAY_THISISMYISLAND(C_INFO) {
    NPC = 0xe22c;
    NR = 1;
    CONDITION = DIA_CASTAWAY_THISISMYISLAND_CONDITION;
    INFORMATION = DIA_CASTAWAY_THISISMYISLAND_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_CASTAWAY_THISISMYISLAND_CONDITION() {
    return TRUE;
}

func void DIA_CASTAWAY_THISISMYISLAND_INFO() {
    GAMESERVICES_UNLOCKACHIEVEMENT(ACH_36);
    AI_OUTPUT(SELF, OTHER, "DIA_Castaway_ThisIsMyIsland_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Castaway_ThisIsMyIsland_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Castaway_ThisIsMyIsland_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Castaway_ThisIsMyIsland_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Castaway_ThisIsMyIsland_03_05");
    INFO_CLEARCHOICES(0x14f8f);
    INFO_ADDCHOICE(0x14f8f, "I'm not giving you anything!", 0x14f92);
    INFO_ADDCHOICE(0x14f8f, "How much gold do you want?", 0x14f93);
}

func void DIA_CASTAWAY_YOUGETNOTHING() {
    NONE_13360_CASTAWAY.AIVAR[52] = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Castaway_YouGetNothing_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Castaway_YouGetNothing_03_02");
    AI_STOPPROCESSINFOS(SELF);
    B_ATTACK(SELF, OTHER, AR_KILL, 1);
}

func void DIA_CASTAWAY_MONEY() {
    AI_OUTPUT(OTHER, SELF, "DIA_Castaway_Money_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Castaway_Money_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Castaway_Money_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Castaway_Money_03_04");
    NPC_EXCHANGEROUTINE(SELF, "AFTEREVENT");
    CASTAWAY_FISH = 1;
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_CASTAWAY_FISH(C_INFO) {
    NPC = 0xe22c;
    NR = 5;
    CONDITION = DIA_CASTAWAY_FISH_CONDITION;
    INFORMATION = DIA_CASTAWAY_FISH_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "I got fish for you.";
}

func int DIA_CASTAWAY_FISH_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 0x14f8f)) && ((CASTAWAY_FISH) == (1))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_CASTAWAY_FISH_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Castaway_Fish_15_01");
    if ((NPC_HASITEMS(OTHER, 0x84b4)) >= (6)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Castaway_Fish_03_02");
        AI_OUTPUT(SELF, OTHER, "DIA_Castaway_Fish_03_03");
        AI_OUTPUT(SELF, OTHER, "DIA_Castaway_Fish_03_04");
        AI_OUTPUT(SELF, OTHER, "DIA_Castaway_Fish_03_05");
        B_GIVEINVITEMS(OTHER, SELF, 0x84b4, 6);
        B_GIVEPLAYERXP(XP_EVENT_CASTAWAY);
        CASTAWAY_HEROEXP = HERO.EXP;
        CASTAWAY_SECRETDAY = WLD_GETDAY();
        CASTAWAY_FISH = 2;
    };
    if ((NPC_HASITEMS(OTHER, 0x84b4)) == (0)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Castaway_Fish_03_06");
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Castaway_Fish_03_07");
    AI_OUTPUT(SELF, OTHER, "DIA_Castaway_Fish_03_08");
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_CASTAWAY_HOWAREYOU(C_INFO) {
    NPC = 0xe22c;
    NR = 6;
    CONDITION = DIA_CASTAWAY_HOWAREYOU_CONDITION;
    INFORMATION = DIA_CASTAWAY_HOWAREYOU_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "How are you doing?";
}

func int DIA_CASTAWAY_HOWAREYOU_CONDITION() {
    if ((CASTAWAY_FISH) == (2)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_CASTAWAY_HOWAREYOU_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Castaway_HowAreYou_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Castaway_HowAreYou_03_02");
    if (((CASTAWAY_SECRETDAY) != (WLD_GETDAY())) && (((CASTAWAY_HEROEXP) + (300)) <= (HERO.EXP))) {
        CASTAWAY_SECRETREWARD = HLP_RANDOM(4);
        CASTAWAY_HEROEXP = HERO.EXP;
        CASTAWAY_SECRETDAY = WLD_GETDAY();
        AI_OUTPUT(SELF, OTHER, "DIA_Castaway_HowAreYou_03_03");
        if ((CASTAWAY_SECRETREWARD) == (0)) {
            CREATEINVITEMS(SELF, 0x8374, 6);
        } else if ((CASTAWAY_SECRETREWARD) == (1)) {
            CREATEINVITEMS(SELF, 0x8372, 8);
        } else if ((CASTAWAY_SECRETREWARD) == (2)) {
            CREATEINVITEMS(SELF, 0x9573, 10);
        } else {
            CREATEINVITEMS(SELF, 0x859b, EVENT_CASTAWAY_REWARD);
            B_GIVEINVITEMS(SELF, OTHER, 0x859b, EVENT_CASTAWAY_REWARD);
        };
    };
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_CASTAWAY_PICKPOCKET(C_INFO) {
    NPC = 0xe22c;
    NR = 900;
    CONDITION = DIA_CASTAWAY_PICKPOCKET_CONDITION;
    INFORMATION = DIA_CASTAWAY_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_120;
}

func int DIA_CASTAWAY_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_CASTAWAY_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(0x14f9a);
    INFO_ADDCHOICE(0x14f9a, DIALOG_BACK, 0x14f9e);
    INFO_ADDCHOICE(0x14f9a, DIALOG_PICKPOCKET, 0x14f9d);
}

func void DIA_CASTAWAY_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (3)) {
        B_PICKPOCKET_AMBIENT_TIER_3();
        CREATEINVITEMS(SELF, 0x859a, 1);
        B_GIVEINVITEMS(SELF, OTHER, 0x859a, 1);
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(0x14f9a);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(0x14f9a);
}

func void DIA_CASTAWAY_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(0x14f9a);
}


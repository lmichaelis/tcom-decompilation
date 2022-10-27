instance DIA_HUUG_EXIT(C_INFO) {
    NPC = 0xd701;
    NR = 999;
    CONDITION = DIA_HUUG_EXIT_CONDITION;
    INFORMATION = DIA_HUUG_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_HUUG_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_HUUG_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_HUUG_WELCOME(C_INFO) {
    NPC = 0xd701;
    NR = 1;
    CONDITION = DIA_HUUG_WELCOME_CONDITION;
    INFORMATION = DIA_HUUG_WELCOME_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_HUUG_WELCOME_CONDITION() {
    if (NPC_ISINSTATE(SELF, 0xf09f)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_HUUG_WELCOME_INFO() {
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Huug_WELCOME_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Huug_WELCOME_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Huug_WELCOME_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Huug_WELCOME_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Huug_WELCOME_03_05");
    LOG_CREATETOPIC(TOPIC_CITYTRADER, LOG_NOTE);
    AI_LOGENTRY(TOPIC_CITYTRADER, LOG_TRADER_CITY_HUUG);
}

instance DIA_HUUG_NICESTUFF(C_INFO) {
    NPC = 0xd701;
    NR = 50;
    CONDITION = DIA_HUUG_NICESTUFF_CONDITION;
    INFORMATION = DIA_HUUG_NICESTUFF_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "All those relics of yours look cheap.";
}

func int DIA_HUUG_NICESTUFF_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x10888)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_HUUG_NICESTUFF_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Huug_NICESTUFF_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Huug_NICESTUFF_03_02");
    AI_STARTFACEANI(OTHER, S_SMILE, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Huug_NICESTUFF_15_03");
    AI_RESETFACEANI(OTHER);
}

instance DIA_HUUG_CQ005_SEARCHING(C_INFO) {
    NPC = 0xd701;
    NR = 1;
    CONDITION = DIA_HUUG_CQ005_SEARCHING_CONDITION;
    INFORMATION = DIA_HUUG_CQ005_SEARCHING_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I'm looking for something related to Innos.";
}

func int DIA_HUUG_CQ005_SEARCHING_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 0x11194)) && ((LOG_GETSTATUS(MIS_CQ005)) == (LOG_RUNNING))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_HUUG_CQ005_SEARCHING_INFO() {
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Huug_CQ005_Searching_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Huug_CQ005_Searching_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Huug_CQ005_Searching_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Huug_CQ005_Searching_03_04");
    INFO_CLEARCHOICES(0x1088e);
    INFO_ADDCHOICE(0x1088e, "How much are you asking for this marvel?", 0x10892);
    INFO_ADDCHOICE(0x1088e, "Stop this farce.", 0x10891);
}

func void DIA_HUUG_CQ005_ENOUGH() {
    AI_OUTPUT(OTHER, SELF, "DIA_Huug_CQ005_Enough_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Huug_CQ005_Enough_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Huug_CQ005_Enough_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Huug_CQ005_Enough_03_04");
    AI_OUTPUT(OTHER, SELF, "DIA_Huug_CQ005_Enough_15_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Huug_CQ005_Enough_03_06");
    AI_OUTPUT(OTHER, SELF, "DIA_Huug_CQ005_Enough_15_07");
    AI_OUTPUT(SELF, OTHER, "DIA_Huug_CQ005_Enough_03_08");
    CQ005_ENDING = 1;
    INFO_CLEARCHOICES(0x1088e);
}

func void DIA_HUUG_CQ005_COST() {
    AI_OUTPUT(OTHER, SELF, "DIA_Huug_CQ005_Cost_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Huug_CQ005_Cost_03_02");
    CQ005_ENDING = 2;
    if ((NPC_HASITEMS(OTHER, 0x859b)) >= (CQ005_EYEOFINNOSPRICE)) {
        INFO_ADDCHOICE(0x1088e, "Okay, I'll take it. (100 GP)", 0x10894);
    };
    INFO_ADDCHOICE(0x1088e, "I don't have that much.", 0x10896);
}

func void DIA_HUUG_CQ005_PAY() {
    WLD_SENDTRIGGER("FAKEARTIFACT_EYE");
    B_GIVEINVITEMS(OTHER, SELF, 0x859b, CQ005_EYEOFINNOSPRICE);
    CREATEINVITEMS(SELF, 0x912f, 1);
    B_GIVEINVITEMS(SELF, OTHER, 0x912f, 1);
    AI_OUTPUT(SELF, OTHER, "DIA_Huug_CQ005_TakeIt_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Huug_CQ005_TakeIt_15_03");
    INFO_CLEARCHOICES(0x1088e);
    AI_STOPPROCESSINFOS(SELF);
    AI_LOGENTRY(TOPIC_CQ005, LOG_CQ005_HUUG_GOTEYEOFINNOS);
}

func void DIA_HUUG_CQ005_COST_TAKEIT() {
    AI_OUTPUT(OTHER, SELF, "DIA_Huug_CQ005_TakeIt_15_01");
    DIA_HUUG_CQ005_PAY();
}

var int HUUG_NOTENOUGHGOLDFOREYE = 0;
func void DIA_HUUG_CQ005_COST_NOTENOUGH() {
    AI_OUTPUT(OTHER, SELF, "DIA_Huug_CQ005_NotEnough_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Huug_CQ005_NotEnough_03_02");
    INFO_CLEARCHOICES(0x1088e);
    HUUG_NOTENOUGHGOLDFOREYE = TRUE;
}

instance DIA_HUUG_CQ005_EYEOFINNOS(C_INFO) {
    NPC = 0xd701;
    NR = 2;
    CONDITION = DIA_HUUG_CQ005_EYEOFINNOS_CONDITION;
    INFORMATION = DIA_HUUG_CQ005_EYEOFINNOS_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "I want to pay for the Eye. (100 GP)";
}

func int DIA_HUUG_CQ005_EYEOFINNOS_CONDITION() {
    if (((HUUG_NOTENOUGHGOLDFOREYE) == (TRUE)) && ((LOG_GETSTATUS(MIS_CQ005)) == (LOG_RUNNING))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_HUUG_CQ005_EYEOFINNOS_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Huug_CQ005_EyeOfInnos_15_01");
    if ((NPC_HASITEMS(OTHER, 0x859b)) >= (CQ005_EYEOFINNOSPRICE)) {
        HUUG_NOTENOUGHGOLDFOREYE = 2;
        DIA_HUUG_CQ005_PAY();
    };
    B_SAY(SELF, OTHER, RESERVED_CONST_STRING_04);
}

instance DIA_HUUG_CQ005_ALRIGHT(C_INFO) {
    NPC = 0xd701;
    NR = 3;
    CONDITION = DIA_HUUG_CQ005_ALRIGHT_CONDITION;
    INFORMATION = DIA_HUUG_CQ005_ALRIGHT_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I'm all ears...";
}

func int DIA_HUUG_CQ005_ALRIGHT_CONDITION() {
    if (((CQ005_ENDING) == (1)) && ((LOG_GETSTATUS(MIS_CQ005)) == (LOG_RUNNING))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_HUUG_CQ005_ALRIGHT_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Huug_CQ005_Alright_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Huug_CQ005_Alright_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Huug_CQ005_Alright_03_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Huug_CQ005_Alright_15_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Huug_CQ005_Alright_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Huug_CQ005_Alright_03_07");
    AI_OUTPUT(SELF, OTHER, "DIA_Huug_CQ005_Alright_03_08");
    AI_OUTPUT(OTHER, SELF, "DIA_Huug_CQ005_Alright_15_09");
    AI_LOGENTRY(TOPIC_CQ005, LOG_CQ005_HUUG_IDEA);
}

instance DIA_HUUG_RATCATCHER(C_INFO) {
    NPC = 0xd701;
    NR = 1;
    CONDITION = DIA_HUUG_RATCATCHER_CONDITION;
    INFORMATION = DIA_HUUG_RATCATCHER_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "You recognize this instrument?";
}

func int DIA_HUUG_RATCATCHER_CONDITION() {
    if ((((RATCATCHER_ALLRATSDEAD) == (1)) && ((NPC_HASITEMS(OTHER, 0x9070)) >= (1))) && ((LOG_GETSTATUS(MIS_SQ313)) != (LOG_SUCCESS))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_HUUG_RATCATCHER_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Huug_Ratcatcher_15_00");
    B_GIVEINVITEMS(OTHER, SELF, 0x9070, 1);
    B_USEFAKEFLUTE_STATE_START();
    AI_STARTFACEANI(SELF, S_WHAT, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Huug_Ratcatcher_13_02");
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Huug_Ratcatcher_15_03");
    if (NPC_ISDEAD(VLK_6218_RATCATCHER)) {
        AI_OUTPUT(OTHER, SELF, "DIA_Huug_Ratcatcher_15_05");
    };
    AI_OUTPUT(OTHER, SELF, "DIA_Huug_Ratcatcher_15_04");
    B_USEFAKEFLUTE_STATE_REMOVE();
    AI_STARTFACEANI(SELF, S_TIRED, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Huug_Ratcatcher_13_06");
    AI_OUTPUT(OTHER, SELF, "DIA_Huug_Ratcatcher_15_07");
    AI_OUTPUT(SELF, OTHER, "DIA_Huug_Ratcatcher_13_08");
    AI_OUTPUT(OTHER, SELF, "DIA_Huug_Ratcatcher_15_09");
    AI_OUTPUT(SELF, OTHER, "DIA_Huug_Ratcatcher_13_10");
    AI_RESETFACEANI(OTHER);
    CREATEINVITEMS(SELF, 0x859b, RATCATCHER_HUUGMONEY);
    B_GIVEINVITEMS(SELF, OTHER, 0x859b, RATCATCHER_HUUGMONEY);
}

instance DIA_HUUG_SQ313_TRAP(C_INFO) {
    NPC = 0xd701;
    NR = 1;
    CONDITION = DIA_HUUG_SQ313_TRAP_CONDITION;
    INFORMATION = DIA_HUUG_SQ313_TRAP_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_HUUG_SQ313_TRAP_CONDITION() {
    if ((LOG_GETSTATUS(MIS_SQ313)) == (LOG_RUNNING)) {
        if (((NPC_GETDISTTOWP(NONE_1004_HUUG, "SLUMS_HOUSE08_06")) <= (500)) && ((NPC_GETDISTTOWP(KDF_6404_TRIMEGISTO, "SLUMS_HOUSE08_02")) <= (300))) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_HUUG_SQ313_TRAP_INFO() {
    KDF_6404_TRIMEGISTO.AIVAR[55] = TRUE;
    TRIA_INVITE(KDF_6404_TRIMEGISTO);
    TRIA_STARTEXT(FALSE);
    AI_TURNTONPC(OTHER, KDF_6404_TRIMEGISTO);
    AI_TURNTONPC(SELF, KDF_6404_TRIMEGISTO);
    AI_TURNTONPC(KDF_6404_TRIMEGISTO, SELF);
    AI_LOOKATNPC(OTHER, SELF);
    AI_STOPLOOKAT(SELF);
    AI_OUTPUT(OTHER, SELF, "DIA_Huug_SQ313_Trap_15_01");
    TRIA_WAIT();
    TRIA_NEXT(NONE_1004_HUUG);
    AI_OUTPUT(SELF, OTHER, "DIA_Huug_SQ313_Trap_03_02");
    AI_PLAYANI(SELF, "T_GREETNOV");
    AI_OUTPUT(SELF, OTHER, "DIA_Huug_SQ313_Trap_03_03");
    TRIA_WAIT();
    TRIA_NEXT(KDF_6404_TRIMEGISTO);
    AI_FUNCTION(SELF, 0x108a3);
    AI_TURNTONPC(SELF, KDF_6404_TRIMEGISTO);
    AI_TURNTONPC(KDF_6404_TRIMEGISTO, SELF);
    AI_TURNTONPC(OTHER, KDF_6404_TRIMEGISTO);
    AI_OUTPUT(SELF, OTHER, "DIA_Huug_SQ313_Trap_03_04");
    TRIA_WAIT();
    TRIA_NEXT(NONE_1004_HUUG);
    AI_OUTPUT(SELF, OTHER, "DIA_Huug_SQ313_Trap_03_05");
    TRIA_WAIT();
    TRIA_NEXT(KDF_6404_TRIMEGISTO);
    AI_OUTPUT(SELF, OTHER, "DIA_Huug_SQ313_Trap_03_06");
    TRIA_WAIT();
    TRIA_NEXT(NONE_1004_HUUG);
    AI_OUTPUT(SELF, OTHER, "DIA_Huug_SQ313_Trap_03_07");
    TRIA_WAIT();
    TRIA_NEXT(KDF_6404_TRIMEGISTO);
    AI_OUTPUT(SELF, OTHER, "DIA_Huug_SQ313_Trap_03_08");
    TRIA_WAIT();
    TRIA_NEXT(NONE_1004_HUUG);
    AI_OUTPUT(SELF, OTHER, "DIA_Huug_SQ313_Trap_03_09");
    TRIA_FINISH();
    AI_STOPLOOKAT(SELF);
    AI_STOPLOOKAT(OTHER);
    AI_STOPPROCESSINFOS(SELF);
    AI_FUNCTION(SELF, 0xf3d2);
}

func void HUUG_SQ313_STARTCAMERA() {
    DIACAM_DISABLE();
    WLD_SENDTRIGGER("SQ313_ESCAPE_01");
    TELEPORTNPCTOWP(0x71b, "SLUMS_SQ313_CUTSCENE_HERO");
    TELEPORTNPCTOWP(0xcae7, "SLUMS_SQ313_CUTSCENE_MAGE");
    TELEPORTNPCTOWP(0xd701, "SLUMS_HOUSE08_06");
}

instance DIA_HUUG_SQ313_GOTYOU(C_INFO) {
    NPC = 0xd701;
    NR = 1;
    CONDITION = DIA_HUUG_SQ313_GOTYOU_CONDITION;
    INFORMATION = DIA_HUUG_SQ313_GOTYOU_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_HUUG_SQ313_GOTYOU_CONDITION() {
    if (((LOG_GETSTATUS(MIS_SQ313)) == (LOG_RUNNING)) && ((SQ313_HUUGESCAPE) == (2))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_HUUG_SQ313_GOTYOU_INFO() {
    KDF_6404_TRIMEGISTO.AIVAR[55] = FALSE;
    SQ313_BRINGBACKTRAPS();
    if ((SQ313_HUUGEVENT) == (1)) {
        AI_STARTFACEANI(SELF, "S_HOSTILE", 1, -(1));
        AI_OUTPUT(OTHER, SELF, "DIA_Huug_SQ313_GotYou_15_01");
        AI_OUTPUT(SELF, OTHER, "DIA_Huug_SQ313_GotYou_03_02");
        AI_STOPPROCESSINFOS(SELF);
        AI_FUNCTION(SELF, 0xf3d5);
    };
    AI_STARTFACEANI(SELF, S_TIRED, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Huug_SQ313_GotYou_15_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Huug_SQ313_GotYou_03_05");
    AI_OUTPUT(OTHER, SELF, "DIA_Huug_SQ313_GotYou_15_06");
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Huug_SQ313_GotYou_03_07");
    AI_OUTPUT(OTHER, SELF, "DIA_Huug_SQ313_GotYou_15_08");
    AI_OUTPUT(SELF, OTHER, "DIA_Huug_SQ313_GotYou_03_09");
    AI_TURNAWAY(SELF, OTHER);
    INFO_CLEARCHOICES(0x108a4);
    INFO_ADDCHOICE(0x108a4, "Be reasonable.", 0x108a9);
    INFO_ADDCHOICE(0x108a4, "Go ahead! Jump!", 0x108a8);
}

func void DIA_HUUG_SQ313_GOTYOU_END() {
    INFO_CLEARCHOICES(0x108a4);
    AI_STOPPROCESSINFOS(SELF);
    AI_LOGENTRY(TOPIC_SQ313, LOG_SQ313_HUUG_RETIRED);
    NPC_EXCHANGEROUTINE(SELF, "SQ313_MAGES");
    SQ313_PREPAREMAGES_HUGHENDING();
}

func void DIA_HUUG_SQ313_GOTYOU_JUMP() {
    if (TORCH_HEROHOLDINGTORCH()) {
        TORCH_UNEQUIP();
    };
    AI_STARTFACEANI(OTHER, S_SMUG, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Huug_SQ313_GotYou_Jump_15_01");
    AI_REMOVEWEAPON(OTHER);
    AI_UNREADYSPELL(OTHER);
    AI_PLAYANI(OTHER, "T_STAND_2_LGUARD_HERO");
    AI_WAITTILLEND(SELF, OTHER);
    AI_OUTPUT(SELF, OTHER, "DIA_Huug_SQ313_GotYou_Jump_03_02");
    AI_WAIT(OTHER, 0x3f800000);
    AI_OUTPUT(OTHER, SELF, "DIA_Huug_SQ313_GotYou_Jump_15_03");
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Huug_SQ313_GotYou_Jump_03_04");
    AI_WAIT(OTHER, 0x3fc00000);
    AI_OUTPUT(OTHER, SELF, "DIA_Huug_SQ313_GotYou_Jump_15_05");
    AI_PLAYANI(OTHER, "T_REMOVE_LGUARD");
    AI_STARTFACEANI(SELF, S_SAD, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Huug_SQ313_GotYou_Jump_03_06");
    AI_TURNTONPC(SELF, OTHER);
    AI_OUTPUT(SELF, OTHER, "DIA_Huug_SQ313_GotYou_Jump_03_07");
    DIA_HUUG_SQ313_GOTYOU_END();
}

func void DIA_HUUG_SQ313_GOTYOU_WAIT() {
    AI_OUTPUT(OTHER, SELF, "DIA_Huug_SQ313_GotYou_Wait_15_01");
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Huug_SQ313_GotYou_Wait_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Huug_SQ313_GotYou_Wait_15_03");
    AI_STARTFACEANI(SELF, S_SAD, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Huug_SQ313_GotYou_Wait_03_04");
    DIA_HUUG_SQ313_GOTYOU_END();
}

instance DIA_HUUG_AMBIENT(C_INFO) {
    NPC = 0xd701;
    NR = 998;
    CONDITION = DIA_HUUG_AMBIENT_CONDITION;
    INFORMATION = DIA_HUUG_AMBIENT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "How are you doing?";
}

func int DIA_HUUG_AMBIENT_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x1088b)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_HUUG_AMBIENT_INFO() {
    B_SAY(OTHER, SELF, "$MARVIN_WhatNew2");
    if ((LOG_GETSTATUS(MIS_SQ313)) == (LOG_SUCCESS)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Huug_Ambient_03_03");
        AI_STOPPROCESSINFOS(SELF);
    };
    if (!(NPC_KNOWSINFO(OTHER, 0x1089d))) {
        AI_OUTPUT(SELF, OTHER, "DIA_Huug_Ambient_03_01");
    };
    if (NPC_KNOWSINFO(OTHER, 0x1089d)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Huug_Ambient_03_02");
    };
}

instance DIA_HUUG_TRADE(C_INFO) {
    NPC = 0xd701;
    NR = 980;
    CONDITION = DIA_HUUG_TRADE_CONDITION;
    INFORMATION = DIA_HUUG_TRADE_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "Let's deal.";
}

var int HUUG_TRADE_DOOM = 0;
var int HUUG_TRADE_DEATH = 0;
var int HUUG_TRADE_ADANOS = 0;
var int HUUG_TRADE_BELIAR = 0;
var int HUUG_TRADE_CROWN = 0;
func int DIA_HUUG_TRADE_CONDITION() {
    if (((LOG_GETSTATUS(MIS_SQ313)) == (0)) && (NPC_KNOWSINFO(OTHER, 0x1088b))) {
        if ((((((HUUG_TRADE_DOOM) == (FALSE)) || ((HUUG_TRADE_DEATH) == (FALSE))) || ((HUUG_TRADE_ADANOS) == (FALSE))) || ((HUUG_TRADE_BELIAR) == (FALSE))) || ((HUUG_TRADE_CROWN) == (FALSE))) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_HUUG_TRADE_CHOICES() {
    INFO_CLEARCHOICES(0x108ad);
    INFO_ADDCHOICE(0x108ad, DIALOG_BACK, 0x108b6);
    if ((HUUG_TRADE_DOOM) == (FALSE)) {
        INFO_ADDCHOICE(0x108ad, "Flaming Sword of Doom. (50 GP)", 0x108b7);
    };
    if ((HUUG_TRADE_DEATH) == (FALSE)) {
        INFO_ADDCHOICE(0x108ad, "Breath of Death. (50 GP)", 0x108b8);
    };
    if ((HUUG_TRADE_ADANOS) == (FALSE)) {
        INFO_ADDCHOICE(0x108ad, "Staff of Adanos. (50 GP)", 0x108b9);
    };
    if ((HUUG_TRADE_BELIAR) == (FALSE)) {
        INFO_ADDCHOICE(0x108ad, "Whisper of Beliar. (40 GP)", 0x108ba);
    };
    if ((HUUG_TRADE_CROWN) == (FALSE)) {
        INFO_ADDCHOICE(0x108ad, "Crown of Adanos. (40 GP)", 0x108bb);
    };
}

func void DIA_HUUG_TRADE_INFO() {
    B_SAY(OTHER, SELF, "$MARVIN_LetsTrade");
    DIA_HUUG_TRADE_CHOICES();
}

func void DIA_HUUG_TRADE_BACK() {
    INFO_CLEARCHOICES(0x108ad);
}

func void DIA_HUUG_TRADE_DOOM() {
    if ((NPC_HASITEMS(OTHER, 0x859b)) >= (VALUE_FAKEARTIFACT_DOOM)) {
        WLD_SENDTRIGGER("FAKEARTIFACT_DOOM");
        HUUG_TRADE_DOOM = TRUE;
        NPC_REMOVEINVITEMS(SELF, 0x859b, VALUE_FAKEARTIFACT_DOOM);
        CREATEINVITEMS(SELF, 0x9a82, 1);
    };
    B_SAY(SELF, OTHER, "$NOGOLD_BRIBE");
    DIA_HUUG_TRADE_CHOICES();
}

func void DIA_HUUG_TRADE_DEATH() {
    if ((NPC_HASITEMS(OTHER, 0x859b)) >= (VALUE_FAKEARTIFACT_DEATH)) {
        WLD_SENDTRIGGER("FAKEARTIFACT_DEATH");
        HUUG_TRADE_DEATH = TRUE;
        NPC_REMOVEINVITEMS(SELF, 0x859b, VALUE_FAKEARTIFACT_DEATH);
        CREATEINVITEMS(SELF, 0x9a72, 1);
    };
    B_SAY(SELF, OTHER, "$NOGOLD_BRIBE");
    DIA_HUUG_TRADE_CHOICES();
}

func void DIA_HUUG_TRADE_ADANOS() {
    if ((NPC_HASITEMS(OTHER, 0x859b)) >= (VALUE_FAKEARTIFACT_ADANOS)) {
        WLD_SENDTRIGGER("FAKEARTIFACT_ADANOS");
        HUUG_TRADE_ADANOS = TRUE;
        NPC_REMOVEINVITEMS(SELF, 0x859b, VALUE_FAKEARTIFACT_ADANOS);
        CREATEINVITEMS(SELF, 0x9aaf, 1);
    };
    B_SAY(SELF, OTHER, "$NOGOLD_BRIBE");
    DIA_HUUG_TRADE_CHOICES();
}

func void DIA_HUUG_TRADE_BELIAR() {
    if ((NPC_HASITEMS(OTHER, 0x859b)) >= (VALUE_FAKEARTIFACT_BELIARSWISPER)) {
        WLD_SENDTRIGGER("FAKEARTIFACT_BELIAR");
        HUUG_TRADE_BELIAR = TRUE;
        NPC_REMOVEINVITEMS(SELF, 0x859b, VALUE_FAKEARTIFACT_BELIARSWISPER);
        CREATEINVITEMS(SELF, 0x9370, 1);
    };
    B_SAY(SELF, OTHER, "$NOGOLD_BRIBE");
    DIA_HUUG_TRADE_CHOICES();
}

func void DIA_HUUG_TRADE_CROWN() {
    if ((NPC_HASITEMS(OTHER, 0x859b)) >= (VALIE_FAKEARTIFACT_CROWN)) {
        WLD_SENDTRIGGER("FAKEARTIFACT_CROWN");
        HUUG_TRADE_CROWN = TRUE;
        NPC_REMOVEINVITEMS(SELF, 0x859b, VALIE_FAKEARTIFACT_CROWN);
        CREATEINVITEMS(SELF, 0x9065, 1);
    };
    B_SAY(SELF, OTHER, "$NOGOLD_BRIBE");
    DIA_HUUG_TRADE_CHOICES();
}

instance DIA_HUUG_PICKPOCKET(C_INFO) {
    NPC = 0xd701;
    NR = 900;
    CONDITION = DIA_HUUG_PICKPOCKET_CONDITION;
    INFORMATION = DIA_HUUG_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_80;
}

func int DIA_HUUG_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_HUUG_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(0x108bc);
    INFO_ADDCHOICE(0x108bc, DIALOG_BACK, 0x108c0);
    INFO_ADDCHOICE(0x108bc, DIALOG_PICKPOCKET, 0x108bf);
}

func void DIA_HUUG_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (2)) {
        CREATEINVITEMS(SELF, 0x837c, 1);
        B_GIVEINVITEMS(SELF, OTHER, 0x837c, 1);
        B_PICKPOCKET_AMBIENT_TIER_2();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(0x108bc);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(0x108bc);
}

func void DIA_HUUG_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(0x108bc);
}

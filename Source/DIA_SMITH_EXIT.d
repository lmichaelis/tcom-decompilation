instance DIA_SMITH_EXIT(C_INFO) {
    NPC = 56434;
    NR = 999;
    CONDITION = DIA_SMITH_EXIT_CONDITION;
    INFORMATION = DIA_SMITH_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_SMITH_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_SMITH_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_SMITHER_TRADE(C_INFO) {
    NPC = 56434;
    NR = 998;
    CONDITION = DIA_SMITHER_TRADE_CONDITION;
    INFORMATION = DIA_SMITHER_TRADE_INFO;
    PERMANENT = TRUE;
    TRADE = TRUE;
    DESCRIPTION = "Show me your wares.";
}

func int DIA_SMITHER_TRADE_CONDITION() {
    return TRUE;
}

func void DIA_SMITHER_TRADE_INFO() {
    var int SMITHER_TRADE_LOGENTRY;
    B_SAY(OTHER, SELF, "$MARVIN_LetsTrade2");
    B_GIVETRADEINV(SELF);
    if ((SMITHER_TRADE_LOGENTRY) == (FALSE)) {
        SMITHER_TRADE_LOGENTRY = TRUE;
        LOG_CREATETOPIC(TOPIC_OTHERTRADER, LOG_NOTE);
        AI_LOGENTRY(TOPIC_OTHERTRADER, LOG_TRADER_SMITH_GOLD);
    };
}

instance DIA_SMITH_GOLDNUGGET(C_INFO) {
    NPC = 56434;
    NR = 1;
    CONDITION = DIA_SMITH_GOLDNUGGET_CONDITION;
    INFORMATION = DIA_SMITH_GOLDNUGGET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "I want to exchange my nuggets for coins.";
}

func int DIA_SMITH_GOLDNUGGET_CONDITION() {
    if ((SQ119_CANSELLGOLDNUGGET) == (TRUE)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

var int GOLDINSTANCE;
var int GOLDVALUE;
func void DIA_SMITH_GOLDNUGGET_CHOICES() {
    var string ALL_STRING;
    var int MAX;
    GOLDINSTANCE = 33660;
    GOLDVALUE = VALUE_GOLDNUGGET;
    INFO_CLEARCHOICES(79423);
    MAX = NPC_HASITEMS(HERO, GOLDINSTANCE);
    ALL_STRING = CS4(DIALOG_ALL, " (", I2S(MAX), ")");
    INFO_ADDCHOICE(79423, ALL_STRING, 79433);
    INFO_ADDCHOICE(79423, CHOICE_NUMBER_5, 79435);
    INFO_ADDCHOICE(79423, CHOICE_NUMBER_1, 79437);
    INFO_ADDCHOICE(79423, DIALOG_BACK, 79430);
}

func void DIA_SMITH_GOLDNUGGET_BACK() {
    GOLDINSTANCE = -(1);
    GOLDVALUE = 0;
    INFO_CLEARCHOICES(79423);
}

func void DIA_SMITH_GOLDNUGGET_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Smith_GoldNugget_15_01");
    DIA_SMITH_GOLDNUGGET_CHOICES();
}

func void DIA_SMITH_NOTHINGCOMMENT() {
    B_SAY(SELF, OTHER, "$NOGOLD");
}

func void DIA_SMITH_GOLDNUGGET_ALL() {
    var int MAX;
    if ((NPC_HASITEMS(OTHER, GOLDINSTANCE)) >= (1)) {
        MAX = NPC_HASITEMS(HERO, GOLDINSTANCE);
        B_GIVEINVITEMS(OTHER, SELF, GOLDINSTANCE, MAX);
        CREATEINVITEMS(SELF, 34203, (MAX) * (GOLDVALUE));
        B_GIVEINVITEMS(SELF, OTHER, 34203, (MAX) * (GOLDVALUE));
        DIA_SMITH_GOLDNUGGET_CHOICES();
    };
    DIA_SMITH_NOTHINGCOMMENT();
    DIA_SMITH_GOLDNUGGET_CHOICES();
}

func void DIA_SMITH_GOLDNUGGET_5() {
    var int MAX;
    if ((NPC_HASITEMS(OTHER, GOLDINSTANCE)) >= (5)) {
        B_GIVEINVITEMS(OTHER, SELF, GOLDINSTANCE, 5);
        CREATEINVITEMS(SELF, 34203, (5) * (GOLDVALUE));
        B_GIVEINVITEMS(SELF, OTHER, 34203, (5) * (GOLDVALUE));
        DIA_SMITH_GOLDNUGGET_CHOICES();
    };
    if (((NPC_HASITEMS(OTHER, GOLDINSTANCE)) >= (1)) && ((NPC_HASITEMS(OTHER, GOLDINSTANCE)) < (5))) {
        MAX = NPC_HASITEMS(HERO, GOLDINSTANCE);
        B_GIVEINVITEMS(OTHER, SELF, GOLDINSTANCE, MAX);
        CREATEINVITEMS(SELF, 34203, (MAX) * (GOLDVALUE));
        B_GIVEINVITEMS(SELF, OTHER, 34203, (MAX) * (GOLDVALUE));
        DIA_SMITH_GOLDNUGGET_CHOICES();
    };
    if ((NPC_HASITEMS(OTHER, GOLDINSTANCE)) == (0)) {
        DIA_SMITH_NOTHINGCOMMENT();
        DIA_SMITH_GOLDNUGGET_CHOICES();
    };
}

func void DIA_SMITH_GOLDNUGGET_1() {
    if ((NPC_HASITEMS(OTHER, GOLDINSTANCE)) >= (1)) {
        B_GIVEINVITEMS(OTHER, SELF, GOLDINSTANCE, 1);
        CREATEINVITEMS(SELF, 34203, GOLDVALUE);
        B_GIVEINVITEMS(SELF, OTHER, 34203, GOLDVALUE);
        DIA_SMITH_GOLDNUGGET_CHOICES();
    };
    if ((NPC_HASITEMS(OTHER, GOLDINSTANCE)) == (0)) {
        DIA_SMITH_NOTHINGCOMMENT();
        DIA_SMITH_GOLDNUGGET_CHOICES();
    };
}

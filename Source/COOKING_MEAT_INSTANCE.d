const int COOKING_MEAT_INSTANCE = -1;
const int COOKING_MEAT_AMOUNT = -1;
func int GETFRIEDMEATINSTANCE(var int MEATINSTANCE) {
    if ((MEATINSTANCE) == (33843)) {
        return 33845;
    };
    if ((MEATINSTANCE) == (36403)) {
        return 36405;
    };
    if ((MEATINSTANCE) == (36407)) {
        return 36409;
    };
    if ((MEATINSTANCE) == (36411)) {
        return 36413;
    };
    if ((MEATINSTANCE) == (36415)) {
        return 36417;
    };
    if ((MEATINSTANCE) == (36419)) {
        return 36421;
    };
    if ((MEATINSTANCE) == (36427)) {
        return 36429;
    };
    if ((MEATINSTANCE) == (36439)) {
        return 36441;
    };
    if ((MEATINSTANCE) == (36423)) {
        return 36425;
    };
    if ((MEATINSTANCE) == (36435)) {
        return 36437;
    };
    if ((MEATINSTANCE) == (36431)) {
        return 36433;
    };
    return -(1);
}

func int PC_COOKMEAT_CONDITION() {
    if (((PLAYER_MOBSI_PRODUCTION) == (MOBSI_COOKING)) && ((COOKINGMEALS_MODE) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void PC_COOKMEAT_REFRESHCHOICES() {
    INFO_CLEARCHOICES(48748);
    if ((NPC_HASITEMS(HERO, 33843)) >= (1)) {
        INFO_ADDCHOICE(48748, FOODNAME_MEATBUGFLESH, 48770);
    };
    if ((NPC_HASITEMS(HERO, 36403)) >= (1)) {
        INFO_ADDCHOICE(48748, FOODNAME_RATRAW, 48771);
    };
    if ((NPC_HASITEMS(HERO, 36407)) >= (1)) {
        INFO_ADDCHOICE(48748, FOODNAME_BOARRAW, 48772);
    };
    if ((NPC_HASITEMS(HERO, 36411)) >= (1)) {
        INFO_ADDCHOICE(48748, FOODNAME_SHEEPRAW, 48773);
    };
    if ((NPC_HASITEMS(HERO, 36415)) >= (1)) {
        INFO_ADDCHOICE(48748, FOODNAME_MOLERATRAW, 48774);
    };
    if ((NPC_HASITEMS(HERO, 36419)) >= (1)) {
        INFO_ADDCHOICE(48748, FOODNAME_WOLFRAW, 48775);
    };
    if ((NPC_HASITEMS(HERO, 36427)) >= (1)) {
        INFO_ADDCHOICE(48748, FOODNAME_SCAVENGERRAW, 48776);
    };
    if ((NPC_HASITEMS(HERO, 36439)) >= (1)) {
        INFO_ADDCHOICE(48748, FOODNAME_CRABRAW, 48777);
    };
    if ((NPC_HASITEMS(HERO, 36423)) >= (1)) {
        INFO_ADDCHOICE(48748, FOODNAME_SHADOWRAW, 48778);
    };
    if ((NPC_HASITEMS(HERO, 36435)) >= (1)) {
        INFO_ADDCHOICE(48748, FOODNAME_BEARRAW, 48779);
    };
    if ((NPC_HASITEMS(HERO, 36431)) >= (1)) {
        INFO_ADDCHOICE(48748, FOODNAME_TROLLRAW, 48780);
    };
    if ((NPC_HASITEMGROUP(HERO, 32299)) > (0)) {
        INFO_ADDCHOICE(48748, DIALOG_ALL, 48766);
    };
    INFO_ADDCHOICE(48748, DIALOG_BACK, 48752);
}

func void PC_COOKMEAT_INFO() {
    PC_COOKMEAT_REFRESHCHOICES();
}

func void PC_COOKMEAT_BACK() {
    INFO_CLEARCHOICES(48748);
}

func void PC_COOKMEAT_AMOUNTCHOICES() {
    var string ALL_STRING;
    var int MAX;
    INFO_CLEARCHOICES(48748);
    MAX = NPC_HASITEMS(SELF, COOKING_MEAT_INSTANCE);
    if ((MAX) > (0)) {
        ALL_STRING = CS4(DIALOG_ALL, " (", I2S(MAX), ")");
        INFO_ADDCHOICE(48748, ALL_STRING, 48761);
        if ((MAX) > (9)) {
            INFO_ADDCHOICE(48748, CHOICE_NUMBER_10, 48763);
        };
        if ((MAX) > (4)) {
            INFO_ADDCHOICE(48748, CHOICE_NUMBER_5, 48764);
        };
        INFO_ADDCHOICE(48748, CHOICE_NUMBER_1, 48765);
        INFO_ADDCHOICE(48748, DIALOG_BACK, 48756);
    };
}

func void PC_COOKMEAT_AMOUNTBACK() {
    INFO_CLEARCHOICES(48748);
    COOKING_MEAT_INSTANCE = -(1);
}

func void PC_COOKMEAT_PRINT(var int INST, var int AMOUNT) {
    var int INFO;
    NPC_GETINVITEM(SELF, INST);
    INFO = SB_NEW();
    SB(PRINT_FRYING);
    if ((AMOUNT) > (1)) {
        SBI(AMOUNT);
        SB("x ");
    };
    SB(ITEM.DESCRIPTION);
    PRINTS_EXT(SB_TOSTRING(), RGBA(50, 255, 50, 255));
    SB_DESTROY();
}

func void PC_COOKMEAT_AMOUNT5() {
    if ((NPC_HASITEMS(HERO, COOKING_MEAT_INSTANCE)) >= (5)) {
        PC_COOKMEAT_PRINT(COOKING_MEAT_INSTANCE, 5);
        CREATEINVITEMS(HERO, GETFRIEDMEATINSTANCE(COOKING_MEAT_INSTANCE), 5);
    };
    PRINT(PRINT_PRODITEMSMISSING);
    PC_COOKMEAT_REFRESHCHOICES();
}

func void PC_COOKMEAT_AMOUNT1() {
    if ((NPC_HASITEMS(HERO, COOKING_MEAT_INSTANCE)) >= (1)) {
        PC_COOKMEAT_PRINT(COOKING_MEAT_INSTANCE, 1);
        CREATEINVITEMS(HERO, GETFRIEDMEATINSTANCE(COOKING_MEAT_INSTANCE), 1);
    };
    PRINT(PRINT_PRODITEMSMISSING);
    PC_COOKMEAT_REFRESHCHOICES();
}

func void PC_COOKMEAT_ALL() {
    var int AMOUNT;
    var int INST;
    var int I;
    REPEAT(I, MAX_IG_MEATRAW);
    INST = MEM_READINTARRAY(_@(ITEMGROUP_MEAT[0]), I);
    AMOUNT = NPC_HASITEMS(SELF, INST);
    if ((AMOUNT) > (0)) {
        PC_COOKMEAT_PRINT(INST, AMOUNT);
        CREATEINVITEMS(SELF, GETFRIEDMEATINSTANCE(INST), AMOUNT);
        NPC_REMOVEINVITEMS(SELF, INST, AMOUNT);
    };
    END;
    INFO_CLEARCHOICES(48748);
}

func void PC_COOKMEAT_MEATBUG() {
    COOKING_MEAT_INSTANCE = 33843;
    PC_COOKMEAT_AMOUNTCHOICES();
}

func void PC_COOKMEAT_RAT() {
    COOKING_MEAT_INSTANCE = 36403;
    PC_COOKMEAT_AMOUNTCHOICES();
}

func void PC_COOKMEAT_BOAR() {
    COOKING_MEAT_INSTANCE = 36407;
    PC_COOKMEAT_AMOUNTCHOICES();
}

func void PC_COOKMEAT_SHEEP() {
    COOKING_MEAT_INSTANCE = 36411;
    PC_COOKMEAT_AMOUNTCHOICES();
}

func void PC_COOKMEAT_MOLERAT() {
    COOKING_MEAT_INSTANCE = 36415;
    PC_COOKMEAT_AMOUNTCHOICES();
}

func void PC_COOKMEAT_WOLF() {
    COOKING_MEAT_INSTANCE = 36419;
    PC_COOKMEAT_AMOUNTCHOICES();
}

func void PC_COOKMEAT_SCAVENGER() {
    COOKING_MEAT_INSTANCE = 36427;
    PC_COOKMEAT_AMOUNTCHOICES();
}

func void PC_COOKMEAT_CRAB() {
    COOKING_MEAT_INSTANCE = 36439;
    PC_COOKMEAT_AMOUNTCHOICES();
}

func void PC_COOKMEAT_SHADOW() {
    COOKING_MEAT_INSTANCE = 36423;
    PC_COOKMEAT_AMOUNTCHOICES();
}

func void PC_COOKMEAT_BEAR() {
    COOKING_MEAT_INSTANCE = 36435;
    PC_COOKMEAT_AMOUNTCHOICES();
}

func void PC_COOKMEAT_TROLL() {
    COOKING_MEAT_INSTANCE = 36431;
    PC_COOKMEAT_AMOUNTCHOICES();
}

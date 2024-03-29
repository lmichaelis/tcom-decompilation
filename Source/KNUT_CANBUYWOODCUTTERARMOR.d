var int KNUT_CANBUYWOODCUTTERARMOR;
var int KNUT_REGULARWORK_XPCHECK;
instance DIA_KNUT_EXIT(C_INFO) {
    NPC = 57264;
    NR = 999;
    CONDITION = DIA_KNUT_EXIT_CONDITION;
    INFORMATION = DIA_KNUT_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_KNUT_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_KNUT_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_KNUT_WELCOME(C_INFO) {
    NPC = 57264;
    NR = 1;
    CONDITION = DIA_KNUT_WELCOME_CONDITION;
    INFORMATION = DIA_KNUT_WELCOME_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Who are you?";
}

func int DIA_KNUT_WELCOME_CONDITION() {
    return TRUE;
}

func void DIA_KNUT_WELCOME_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Knut_Welcome_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Knut_Welcome_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Knut_Welcome_03_03");
}

instance DIA_KNUT_HOWSWORKGOING(C_INFO) {
    NPC = 57264;
    NR = 2;
    CONDITION = DIA_KNUT_HOWSWORKGOING_CONDITION;
    INFORMATION = DIA_KNUT_HOWSWORKGOING_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "How's the work going?";
}

func int DIA_KNUT_HOWSWORKGOING_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 85263)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_KNUT_HOWSWORKGOING_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Knut_HowsWorkGoing_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Knut_HowsWorkGoing_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Knut_HowsWorkGoing_03_03");
}

instance DIA_KNUT_SQ101_WOOD(C_INFO) {
    NPC = 57264;
    NR = 3;
    CONDITION = DIA_KNUT_SQ101_WOOD_CONDITION;
    INFORMATION = DIA_KNUT_SQ101_WOOD_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Do you have any wood to spare?";
}

func int DIA_KNUT_SQ101_WOOD_CONDITION() {
    if (((NPC_KNOWSINFO(OTHER, 85263)) && ((LOG_GETSTATUS(MIS_SQ101)) == (LOG_RUNNING))) && ((KQ407_START) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_KNUT_SQ101_WOOD_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Knut_SQ101_Wood_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Knut_SQ101_Wood_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Knut_SQ101_Wood_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Knut_SQ101_Wood_03_04");
    INFO_CLEARCHOICES(85269);
    INFO_ADDCHOICE(85269, "The residents of Silbach are in urgent need of supplies.", 85272);
    INFO_ADDCHOICE(85269, "Maybe I'll earn that wood then?", 85275);
    INFO_ADDCHOICE(85269, "Who is the ruler of this fortress?", 85273);
}

func void DIA_KNUT_SQ101_WOOD_VILLAGE() {
    AI_OUTPUT(OTHER, SELF, "DIA_Knut_SQ101_Wood_Village_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Knut_SQ101_Wood_Village_03_02");
}

func void DIA_KNUT_SQ101_WOOD_LORD() {
    AI_OUTPUT(OTHER, SELF, "DIA_Knut_SQ101_Wood_Lord_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Knut_SQ101_Wood_Lord_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Knut_SQ101_Wood_Lord_03_03");
}

func void DIA_KNUT_YOUCANWORKHERE() {
    AI_OUTPUT(SELF, OTHER, "DIA_Knut_SQ101_Wood_Work_03_02");
    SQ101_KNUT_GIVESAW();
    AI_OUTPUT(SELF, OTHER, "DIA_Knut_SQ101_Wood_Work_03_04");
    AI_OUTPUT(OTHER, SELF, "DIA_Knut_SQ101_Wood_Work_15_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Knut_SQ101_Wood_Work_03_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Knut_SQ101_Wood_Work_03_07");
    INFO_CLEARCHOICES(85269);
    INFO_CLEARCHOICES(85301);
}

func void DIA_KNUT_SQ101_WOOD_WORK() {
    AI_OUTPUT(OTHER, SELF, "DIA_Knut_SQ101_Wood_Work_15_01");
    if ((OTHER.ATTRIBUTE[4]) >= (20)) {
        SQ101_ICANSAWBYMYSELF = TRUE;
        DIA_KNUT_YOUCANWORKHERE();
        AI_OUTPUT(SELF, OTHER, "DIA_Knut_SQ101_Wood_Work_03_08");
        AI_LOGENTRY(TOPIC_SQ101, LOG_SQ101_KNUT_WORKFORHIM);
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Knut_SQ101_Wood_Work_03_09");
    AI_OUTPUT(SELF, OTHER, "DIA_Knut_SQ101_Wood_Work_03_10");
    AI_PLAYANI(SELF, R_SCRATCHHEAD);
    AI_OUTPUT(SELF, OTHER, "DIA_Knut_SQ101_Wood_Work_03_11");
    AI_OUTPUT(SELF, OTHER, "DIA_Knut_SQ101_Wood_Work_03_12");
    AI_OUTPUT(SELF, OTHER, "DIA_Knut_SQ101_Wood_Work_03_13");
    INFO_CLEARCHOICES(85269);
    INFO_ADDCHOICE(85269, "Any idea where I should look for it?", 85277);
    INFO_ADDCHOICE(85269, "How do I recognize him?", 85276);
    INFO_ADDCHOICE(85269, "I'll try to find him.", 85278);
}

func void DIA_KNUT_SQ101_WOOD_WORK_LOOK() {
    AI_OUTPUT(OTHER, SELF, "DIA_Knut_SQ101_Wood_Look_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Knut_SQ101_Wood_Look_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Knut_SQ101_Wood_Look_03_03");
}

func void DIA_KNUT_SQ101_WOOD_WORK_WHERE() {
    AI_OUTPUT(OTHER, SELF, "DIA_Knut_SQ101_Wood_Where_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Knut_SQ101_Wood_Where_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Knut_SQ101_Wood_Where_03_03");
}

func void DIA_KNUT_SQ101_WOOD_WORK_ALLRIGHT() {
    SQ101_SEARCHINGFORNIRKO = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Knut_SQ101_Wood_Allright_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Knut_SQ101_Wood_Allright_03_02");
    AI_LOGENTRY(TOPIC_SQ101, LOG_SQ101_KNUT_SEARCHNIRKO);
    INFO_CLEARCHOICES(85269);
}

instance DIA_KNUT_WOODFORYOU(C_INFO) {
    NPC = 57264;
    NR = 4;
    CONDITION = DIA_KNUT_WOODFORYOU_CONDITION;
    INFORMATION = DIA_KNUT_WOODFORYOU_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "Please, this is all the wood I was able to collect.";
}

func int DIA_KNUT_WOODFORYOU_CONDITION() {
    if ((KQ407_START) == (TRUE)) {
        return FALSE;
    };
    if ((LOG_GETSTATUS(MIS_SQ101)) == (LOG_RUNNING)) {
        if ((((SQ101_WOODFROMSAW) == (TRUE)) && ((SQ101_GOTWOODFROMKNUT) == (FALSE))) && ((NPC_HASITEMS(OTHER, 37060)) >= (5))) {
            return TRUE;
        };
    };
    if (((NPC_HASITEMS(OTHER, 37060)) >= (40)) && ((KNUT_REGULARWORK) == (2))) {
        return TRUE;
    };
    if ((((((LOG_GETSTATUS(MIS_KQ404)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 85323))) && ((NPC_KNOWSINFO(OTHER, 85326)) == (FALSE))) && ((KQ404_UNICORNLIST_READ) == (TRUE))) && ((INEXTREMO_CANPLAYCONCERT) == (TRUE))) {
        return FALSE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_KNUT_WOODREWARD() {
    SQ101_GOTWOODFROMKNUT = TRUE;
    AI_OUTPUT(SELF, OTHER, "DIA_Knut_SQ101_WoodForYou_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Knut_SQ101_WoodForYou_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Knut_SQ101_WoodForYou_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Knut_SQ101_WoodForYou_03_04");
    CREATEINVITEMS(SELF, 37061, 1);
    B_GIVEINVITEMS(SELF, OTHER, 37061, 1);
}

func void KNUT_GIVEGOLDFORWORK() {
    AI_OUTPUT(SELF, OTHER, "DIA_Knut_WoodForYou_03_08");
    CREATEINVITEMS(SELF, 34203, KNUT_REWARDGOLD);
    B_GIVEINVITEMS(SELF, OTHER, 34203, KNUT_REWARDGOLD);
}

func void DIA_KNUT_REGULARWORK_BREAK() {
    KNUT_REGULARWORK = 0;
    KNUT_ANOTHERWORK_DAY = WLD_GETDAY();
    KNUT_ANOTHERWORK_DAY_CHECK = TRUE;
}

func void DIA_KNUT_WOODFORYOU_GIVEWOOD() {
    B_GIVEINVITEMS(OTHER, SELF, 37060, 40);
}

var int KNUT_INVITETOWOODCUTTER;
func void DIA_KNUT_WOODFORYOU_ARMOR() {
    if ((KNUT_INVITETOWOODCUTTER) == (FALSE)) {
        KNUT_INVITETOWOODCUTTER = TRUE;
        if (((LOG_GETSTATUS(MIS_SQ204)) == (0)) && ((NPC_ISDEAD(VLK_3015_DETLOW)) == (FALSE))) {
            KNUT_SQ204_READYFORTAKE = TRUE;
        };
        AI_OUTPUT(SELF, OTHER, "DIA_Knut_WoodForYou_03_04");
        AI_OUTPUT(SELF, OTHER, "DIA_Knut_WoodForYou_03_05");
        AI_OUTPUT(SELF, OTHER, "DIA_Knut_WoodForYou_03_06");
        AI_OUTPUT(SELF, OTHER, "DIA_Knut_WoodForYou_03_07");
        INFO_CLEARCHOICES(85279);
        INFO_ADDCHOICE(85279, "I think I prefer the paycheck though.", 85288);
        INFO_ADDCHOICE(85279, "Sounds like a reasonable offer.", 85291);
    };
    KNUT_GIVEGOLDFORWORK();
}

func void DIA_KNUT_WOODFORYOU_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Knut_WoodForYou_15_01");
    if ((PQ109_KNUTWORK) == (FALSE)) {
        PQ109_KNUTWORK = TRUE;
    };
    if (((SQ101_WOODFROMSAW) == (TRUE)) && ((SQ101_ICANSAWBYMYSELF) == (TRUE))) {
        B_GIVEINVITEMS(OTHER, SELF, 37060, 5);
        AI_OUTPUT(SELF, OTHER, "DIA_Knut_WoodForYou_03_02");
        AI_LOGENTRY(TOPIC_SQ101, LOG_SQ101_KNUT_GOTWOOD);
        B_GIVEPLAYERXP(XP_SQ101_WOODFROMSAW);
        DIA_KNUT_WOODREWARD();
    };
    if (((NPC_HASITEMS(OTHER, 37060)) >= (40)) && ((KNUT_REGULARWORK) == (2))) {
        DIA_KNUT_WOODFORYOU_GIVEWOOD();
        KNUT_REGULARWORK_COUNT = (KNUT_REGULARWORK_COUNT) + (1);
        KNUT_REGULARWORK_XPCHECK = OTHER.EXP;
        if (((KAPITEL) == (2)) && ((KNUT_INVITETOWOODCUTTER) == (FALSE))) {
            DIA_KNUT_WOODFORYOU_ARMOR();
        } else if ((KNUT_REGULARWORK_COUNT) == (1)) {
            AI_OUTPUT(SELF, OTHER, "DIA_Knut_WoodForYou_03_03");
            B_GIVEPLAYERXP(XP_KNUTWOOD);
            KNUT_GIVEGOLDFORWORK();
        } else if ((KNUT_REGULARWORK_COUNT) == (2)) {
            DIA_KNUT_WOODFORYOU_ARMOR();
        } else if ((KNUT_REGULARWORK_COUNT) == (3)) {
            KNUT_GIVEGOLDFORWORK();
        } else if ((KNUT_REGULARWORK_COUNT) == (4)) {
            KNUT_REGULARWORK_COUNT = 0;
            KNUT_REGULARWORK_BLOCKFORCHAPER = TRUE;
            KNUT_GIVEGOLDFORWORK();
        };
        DIA_KNUT_REGULARWORK_BREAK();
    };
}

func void DIA_KNUT_WOODFORYOU_NOTHANKS() {
    KNUT_CANBUYWOODCUTTERARMOR = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Knut_WoodForYou_NoThanks_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Knut_WoodForYou_NoThanks_03_02");
    KNUT_GIVEGOLDFORWORK();
    INFO_CLEARCHOICES(85279);
}

func void DIA_KNUT_BUYARMOR_GIVEARMOR() {
    CREATEINVITEMS(SELF, 35581, 1);
    AI_EQUIPARMOR(SELF, 35581);
    B_GIVEINVITEMS(SELF, OTHER, 35581, 1);
}

func void DIA_KNUT_BUYARMOR_GIVE() {
    KNUT_CANBUYWOODCUTTERARMOR = FALSE;
    MARVINJOINEDWOODCUTTERS = TRUE;
    DIA_KNUT_BUYARMOR_GIVEARMOR();
    AI_OUTPUT(SELF, OTHER, "DIA_Knut_WoodForYou_GiveMe_03_03");
    INFO_CLEARCHOICES(85279);
}

func void DIA_KNUT_WOODFORYOU_GIVEME() {
    AI_OUTPUT(OTHER, SELF, "DIA_Knut_WoodForYou_GiveMe_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Knut_WoodForYou_GiveMe_03_02");
    DIA_KNUT_BUYARMOR_GIVE();
}

instance DIA_KNUT_BUYARMOR(C_INFO) {
    NPC = 57264;
    NR = 1;
    CONDITION = DIA_KNUT_BUYARMOR_CONDITION;
    INFORMATION = DIA_KNUT_BUYARMOR_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I would like to buy the woodcutter's outfit.";
}

func int DIA_KNUT_BUYARMOR_CONDITION() {
    if (((KNUT_CANBUYWOODCUTTERARMOR) == (TRUE)) && ((NPC_HASITEMS(OTHER, 34203)) >= (KNUT_REWARDGOLD))) {
        return TRUE;
    };
    if (((((LOG_GETSTATUS(MIS_KQ404)) == (LOG_RUNNING)) && ((NPC_KNOWSINFO(OTHER, 85326)) == (FALSE))) && ((KQ404_UNICORNLIST_READ) == (TRUE))) && ((INEXTREMO_CANPLAYCONCERT) == (TRUE))) {
        return FALSE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_KNUT_BUYARMOR_INFO() {
    CREATEINVITEMS(SELF, 35581, 1);
    B_GIVEINVITEMS(OTHER, SELF, 34203, KNUT_REWARDGOLD);
    AI_EQUIPARMOR(SELF, 35581);
    B_GIVEINVITEMS(SELF, OTHER, 35581, 1);
    AI_OUTPUT(OTHER, SELF, "DIA_Knut_BuyArmor_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Knut_BuyArmor_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Knut_BuyArmor_03_03");
    KNUT_CANBUYWOODCUTTERARMOR = FALSE;
    MARVINJOINEDWOODCUTTERS = TRUE;
    AI_OUTPUT(SELF, OTHER, "DIA_Knut_WoodForYou_GiveMe_03_03");
}

instance DIA_KNUT_SQ101_FOUNDNIRKO(C_INFO) {
    NPC = 57264;
    NR = 16;
    CONDITION = DIA_KNUT_SQ101_FOUNDNIRKO_CONDITION;
    INFORMATION = DIA_KNUT_SQ101_FOUNDNIRKO_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I think I managed to find Elco.";
}

func int DIA_KNUT_SQ101_FOUNDNIRKO_CONDITION() {
    if (((NPC_KNOWSINFO(OTHER, 86045)) && ((LOG_GETSTATUS(MIS_SQ101)) == (LOG_RUNNING))) && ((KQ407_START) == (FALSE))) {
        if ((((SQ101_NIRKOFIGHT) == (2)) || ((SQ101_NIRKOCOMEBACKTOWORK) == (TRUE))) || ((NPC_HASITEMS(OTHER, 37062)) >= (1))) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_KNUT_FOUNDNIRKO() {
    AI_LOGENTRY(TOPIC_SQ101, LOG_SQ101_KNUT_FOUNDNIRKO);
    B_GIVEPLAYERXP(XP_SQ101_FOUNDNIRKO);
    DIA_KNUT_WOODREWARD();
}

func void DIA_KNUT_SQ101_FOUNDNIRKO_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Knut_SQ101_FoundNirko_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Knut_SQ101_FoundNirko_03_02");
    if ((NPC_HASITEMS(OTHER, 37062)) >= (1)) {
        INFO_CLEARCHOICES(85295);
        INFO_ADDCHOICE(85295, "In the charcoal burners' camp.", 85300);
        INFO_ADDCHOICE(85295, "He's dead (Lie).", 85299);
    };
    AI_OUTPUT(OTHER, SELF, "DIA_Knut_SQ101_FoundNirko_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Knut_SQ101_FoundNirko_03_04");
    DIA_KNUT_FOUNDNIRKO();
}

func void DIA_KNUT_SQ101_FOUNDNIRKO_DEAD() {
    INFO_CLEARCHOICES(85295);
    AI_OUTPUT(OTHER, SELF, "DIA_Knut_SQ101_FoundNirko_Dead_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Knut_SQ101_FoundNirko_Dead_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Knut_SQ101_FoundNirko_Dead_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Knut_SQ101_FoundNirko_Dead_03_04");
    NPC_REMOVEINVITEMS(HERO, 37062, 1);
    DIA_KNUT_FOUNDNIRKO();
    B_GIVEINVITEMS(OTHER, SELF, 37062, 1);
}

func void DIA_KNUT_SQ101_FOUNDNIRKO_COAL() {
    INFO_CLEARCHOICES(85295);
    SQ101_NIRKO_GOBACKTOWORK();
    AI_OUTPUT(OTHER, SELF, "DIA_Knut_SQ101_FoundNirko_Coal_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Knut_SQ101_FoundNirko_Coal_03_02");
    DIA_KNUT_FOUNDNIRKO();
}

instance DIA_KNUT_WORK(C_INFO) {
    NPC = 57264;
    NR = 1;
    CONDITION = DIA_KNUT_WORK_CONDITION;
    INFORMATION = DIA_KNUT_WORK_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "Need help with your work?";
}

func int DIA_KNUT_WORK_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 85266)) && ((KQ407_START) == (FALSE))) {
        if (((LOG_GETSTATUS(MIS_SQ101)) != (LOG_RUNNING)) || ((LOG_GETSTATUS(MIS_SQ101)) == (LOG_SUCCESS))) {
            if (((KNUT_REGULARWORK) == (0)) && ((LOG_GETSTATUS(MIS_SQ204)) != (LOG_RUNNING))) {
                return TRUE;
            };
        };
    };
    return 0 /* !broken stack! */;
}

var string KNUTCHECKSMARVINSTRENGTH;
var string MARVINCURRENTSTRENGTHWOODCUTTER;
const string PRINT_NEEDEEDSTRENGTHWOODCUTTER = " si�y za ma�o.";
func void DIA_KNUT_WORK_NOMORE() {
    AI_OUTPUT(SELF, OTHER, "DIA_Knut_Work_03_07");
}

func void DIA_KNUT_WORK_INFO() {
    MARVINCURRENTSTRENGTHWOODCUTTER = INTTOSTRING((20) - (HERO.ATTRIBUTE[4]));
    AI_OUTPUT(OTHER, SELF, "DIA_Knut_Work_15_01");
    if ((KNUT_REGULARWORK_COUNT) == (0)) {
        if ((OTHER.ATTRIBUTE[4]) >= (20)) {
            if ((SQ101_WOODFROMSAW) == (TRUE)) {
                KNUT_REGULARWORK = 1;
                SQ101_WOODFROMSAW = FALSE;
                AI_OUTPUT(SELF, OTHER, "DIA_Knut_Work_03_02");
                AI_OUTPUT(SELF, OTHER, "DIA_Knut_Work_03_03");
                AI_OUTPUT(SELF, OTHER, "DIA_Knut_Work_03_04");
                KNUT_REGULARWORK_COUNT = (KNUT_REGULARWORK_COUNT) + (1);
            } else {
                DIA_KNUT_YOUCANWORKHERE();
                KNUT_REGULARWORK = 1;
            };
        } else {
            KNUTCHECKSMARVINSTRENGTH = CS3(MARVINCURRENTSTRENGTHWOODCUTTER, RESERVED_CONST_STRING_49, PRINT_STRENGTH_MISSING);
            AI_PRINTSCREEN(KNUTCHECKSMARVINSTRENGTH, -(1), -(1), FONT_SCREEN, 3);
            AI_OUTPUT(SELF, OTHER, "DIA_Knut_Work_03_09");
        };
    };
    if ((SQ101_WOODFROMSAW) == (TRUE)) {
        SQ101_WOODFROMSAW = FALSE;
    };
    if (((KNUT_ANOTHERWORK_DAY) <= ((WLD_GETDAY()) - (1))) && ((KNUT_ANOTHERWORK_DAY_CHECK) == (TRUE))) {
        if ((OTHER.EXP) > ((KNUT_REGULARWORK_XPCHECK) + (200))) {
            if ((KNUT_SQ204_READYFORTAKE) == (FALSE)) {
                if ((KNUT_REGULARWORK_BLOCKFORCHAPER) == (FALSE)) {
                    KNUT_REGULARWORK = 1;
                    AI_OUTPUT(SELF, OTHER, "DIA_Knut_Work_03_06");
                    AI_OUTPUT(SELF, OTHER, "DIA_Knut_Work_03_03");
                    AI_OUTPUT(SELF, OTHER, "DIA_Knut_Work_03_04");
                    AI_STOPPROCESSINFOS(SELF);
                } else {
                    AI_OUTPUT(SELF, OTHER, "DIA_Knut_Work_03_10");
                    AI_OUTPUT(SELF, OTHER, "DIA_Knut_Work_03_05");
                };
            } else {
                AI_OUTPUT(SELF, OTHER, "DIA_Knut_SQ204_Start_03_01");
                AI_OUTPUT(SELF, OTHER, "DIA_Knut_SQ204_Start_03_02");
                AI_OUTPUT(SELF, OTHER, "DIA_Knut_SQ204_Start_03_03");
                AI_OUTPUT(SELF, OTHER, "DIA_Knut_SQ204_Start_03_04");
                AI_OUTPUT(SELF, OTHER, "DIA_Knut_SQ204_Start_03_05");
                AI_OUTPUT(SELF, OTHER, "DIA_Knut_SQ204_Start_03_06");
                INFO_CLEARCHOICES(85301);
                INFO_ADDCHOICE(85301, "All right, I'll help you.", 85308);
                INFO_ADDCHOICE(85301, "What do I get in return?", 85309);
                INFO_ADDCHOICE(85301, "Why don't you take care of it yourself?", 85310);
            };
        } else {
            DIA_KNUT_WORK_NOMORE();
        };
    };
    DIA_KNUT_WORK_NOMORE();
    AI_OUTPUT(SELF, OTHER, "DIA_Knut_Work_03_08");
}

func void DIA_KNUT_SQ204_START_ALRIGHT() {
    KNUT_SQ204_READYFORTAKE = FALSE;
    AI_OUTPUT(OTHER, SELF, "DIA_Knut_SQ204_Start_Alright_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Knut_SQ204_Start_Alright_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Knut_SQ204_Start_Alright_03_03");
    AI_STOPPROCESSINFOS(SELF);
    INFO_CLEARCHOICES(85301);
    NPC_EXCHANGEROUTINE(VLK_3015_DETLOW, "INNOSWAIT");
    SQ204_DETLOW_RTNCHECK = 1;
    LOG_CREATETOPIC(TOPIC_SQ204, LOG_MISSION);
    LOG_SETSTATUS(_@(MIS_SQ204), TOPIC_SQ204, LOG_RUNNING);
    AI_LOGENTRY(TOPIC_SQ204, LOG_SQ204_START);
}

func void DIA_KNUT_SQ204_START_REWARD() {
    AI_OUTPUT(OTHER, SELF, "DIA_Knut_SQ204_Start_Reward_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Knut_SQ204_Start_Reward_03_02");
}

func void DIA_KNUT_SQ204_START_WHY() {
    AI_OUTPUT(OTHER, SELF, "DIA_Knut_SQ204_Start_Why_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Knut_SQ204_Start_Why_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Knut_SQ204_Start_Why_03_03");
}

instance DIA_KNUT_SQ204_FINISH(C_INFO) {
    NPC = 57264;
    NR = 1;
    CONDITION = DIA_KNUT_SQ204_FINISH_CONDITION;
    INFORMATION = DIA_KNUT_SQ204_FINISH_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_KNUT_SQ204_FINISH_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 73955)) && ((LOG_GETSTATUS(MIS_SQ204)) == (LOG_RUNNING))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_KNUT_SQ204_FINISH_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_Knut_SQ204_Finish_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Knut_SQ204_Finish_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Knut_SQ204_Finish_15_03");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Knut_SQ204_Finish_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Knut_SQ204_Finish_03_05");
    DIA_KNUT_REGULARWORK_BREAK();
    AI_LOGENTRY(TOPIC_SQ204, LOG_SQ204_FINISH);
    LOG_SETSTATUS(_@(MIS_SQ204), TOPIC_SQ204, LOG_SUCCESS);
    AI_RESETFACEANI(SELF);
    B_GIVEPLAYERXP(XP_SQ204_FINISH);
    CREATEINVITEMS(SELF, 34203, SQ204_FINISH);
    B_GIVEINVITEMS(SELF, OTHER, 34203, SQ204_FINISH);
}

instance DIA_KNUT_CITY(C_INFO) {
    NPC = 57264;
    NR = 50;
    CONDITION = DIA_KNUT_CITY_CONDITION;
    INFORMATION = DIA_KNUT_CITY_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "Hello Knut, I have an unusual request for you.";
}

func int DIA_KNUT_CITY_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_Q201)) == (LOG_RUNNING)) && ((Q201_MARVINIDEAWOODCUTTERARMOR) == (TRUE))) && ((Q201_MARVINCANENTERCITYWOODCUTTERWAY) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_KNUT_CITY_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Knut_City_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Knut_City_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Knut_City_15_03");
    if ((KNUT_REGULARWORK_COUNT) >= (3)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Knut_City_03_04");
        AI_OUTPUT(SELF, OTHER, "DIA_Knut_City_03_05");
        AI_OUTPUT(SELF, OTHER, "DIA_Knut_City_03_06");
        AI_OUTPUT(SELF, OTHER, "DIA_Knut_City_03_07");
        B_USEFAKESCROLL();
        CREATEINVITEMS(SELF, 37137, 1);
        B_GIVEINVITEMS(SELF, OTHER, 37137, 1);
        AI_OUTPUT(SELF, OTHER, "DIA_Knut_City_03_08");
        DUMMYFUNCWITHSTRINGPARAMETER("DIA_Knut_City_03_09");
        B_SAY(OTHER, SELF, RESERVED_CONST_STRING_18);
        Q201_MARVINCANENTERCITYWOODCUTTERWAY = TRUE;
        LOG_CREATETOPIC(TOPIC_SQ203, LOG_MISSION);
        LOG_SETSTATUS(_@(MIS_SQ203), TOPIC_SQ203, LOG_RUNNING);
        AI_LOGENTRY(TOPIC_SQ203, LOG_SQ203_START);
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Knut_City_03_10");
    AI_OUTPUT(SELF, OTHER, "DIA_Knut_City_03_11");
    AI_OUTPUT(SELF, OTHER, "DIA_Knut_City_03_12");
}

instance DIA_KNUT_Q401HELP(C_INFO) {
    NPC = 57264;
    NR = 1;
    CONDITION = DIA_KNUT_Q401HELP_CONDITION;
    INFORMATION = DIA_KNUT_Q401HELP_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I need the help of one of your men.";
}

func int DIA_KNUT_Q401HELP_CONDITION() {
    if (((LOG_GETSTATUS(MIS_Q401)) == (LOG_RUNNING)) && ((Q401_ESTICUTTERS) == (1))) {
        if ((Q401_FABIOANDGANGGONE) == (0)) {
            if (!(NPC_KNOWSINFO(OTHER, 85435))) {
                return TRUE;
            };
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_KNUT_Q401HELP_INFO() {
    Q401_WOODCUTTERSREFUSECOUNT = (Q401_WOODCUTTERSREFUSECOUNT) + (1);
    AI_OUTPUT(OTHER, SELF, "DIA_Knut_Q401Help_15_01");
    if (((NPC_ISDEAD(BAU_2278_WOODCUTTER)) && (NPC_ISDEAD(BAU_2276_GLYNN))) && (NPC_ISDEAD(BAU_2277_LOWELL))) {
        AI_OUTPUT(SELF, OTHER, "DIA_Knut_Q401Help_03_08");
        AI_OUTPUT(SELF, OTHER, "DIA_Knut_Q401Help_03_09");
        AI_OUTPUT(SELF, OTHER, "DIA_Knut_Q401Help_03_10");
        AI_STOPPROCESSINFOS(SELF);
        AI_LOGENTRY(TOPIC_Q401, LOG_Q401_KNUTSWAMP_V3);
        Q401_ESTICUTTERS = 3;
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Knut_Q401Help_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Knut_Q401Help_03_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Knut_Q401Help_15_04");
    if (NPC_ISDEAD(BAU_2277_LOWELL)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Knut_Q401Help_03_07");
        AI_LOGENTRY(TOPIC_Q401, LOG_Q401_KNUTSWAMP_V2);
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Knut_Q401Help_03_05");
    AI_OUTPUT(OTHER, SELF, "DIA_Knut_Q401Help_15_06");
    AI_LOGENTRY(TOPIC_Q401, LOG_Q401_KNUTSWAMP_V1);
}

instance DIA_KNUT_SQ404_SAW(C_INFO) {
    NPC = 57264;
    NR = 1;
    CONDITION = DIA_KNUT_SQ404_SAW_CONDITION;
    INFORMATION = DIA_KNUT_SQ404_SAW_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Have you ever seen men working on a crane?";
}

func int DIA_KNUT_SQ404_SAW_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_SQ404)) == (LOG_RUNNING)) && ((LOG_GETSTATUS(MIS_KQ406)) != (LOG_SUCCESS))) && ((KQ407_START) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_KNUT_SQ404_SAW_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Knut_SQ404_Saw_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Knut_SQ404_Saw_03_02");
}

instance DIA_KNUT_KQ404_WOODCUTTERARMOR(C_INFO) {
    NPC = 57264;
    NR = 1;
    CONDITION = DIA_KNUT_KQ404_WOODCUTTERARMOR_CONDITION;
    INFORMATION = DIA_KNUT_KQ404_WOODCUTTERARMOR_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I need your work outfit.";
}

func int DIA_KNUT_KQ404_WOODCUTTERARMOR_CONDITION() {
    if (((((LOG_GETSTATUS(MIS_KQ404)) == (LOG_RUNNING)) && ((KQ404_UNICORNLIST_READ) == (TRUE))) && ((NPC_HASITEMS(OTHER, 35581)) == (0))) && ((INEXTREMO_CANPLAYCONCERT) == (TRUE))) {
        if ((KQ404_UNICORNLIST_GOTEVERYTHING) != (2)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_KNUT_KQ404_WOODCUTTERARMOR_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Knut_KQ404_WoodcutterArmor_15_01");
    if ((MARVINJOINEDWOODCUTTERS) == (TRUE)) {
        AI_STARTFACEANI(SELF, S_SURPRISE, 1, -(1));
        AI_OUTPUT(SELF, OTHER, "DIA_Knut_KQ404_WoodcutterArmor_03_02");
        AI_STARTFACEANI(OTHER, S_TIRED, 1, -(1));
        AI_OUTPUT(OTHER, SELF, "DIA_Knut_KQ404_WoodcutterArmor_15_03");
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Knut_KQ404_WoodcutterArmor_03_05");
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
    AI_OUTPUT(SELF, OTHER, "DIA_Knut_KQ404_WoodcutterArmor_03_04");
    KNUT_REGULARWORK = 1;
}

instance DIA_KNUT_KQ404_GOTYOURWOOD(C_INFO) {
    NPC = 57264;
    NR = 1;
    CONDITION = DIA_KNUT_KQ404_GOTYOURWOOD_CONDITION;
    INFORMATION = DIA_KNUT_KQ404_GOTYOURWOOD_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_KNUT_KQ404_GOTYOURWOOD_CONDITION() {
    if (((((((NPC_KNOWSINFO(OTHER, 85323)) && ((LOG_GETSTATUS(MIS_KQ404)) == (LOG_RUNNING))) && (NPC_ISINSTATE(SELF, 61599))) && ((KQ404_UNICORNLIST_READ) == (TRUE))) && ((INEXTREMO_CANPLAYCONCERT) == (TRUE))) && ((NPC_HASITEMS(OTHER, 37060)) >= (40))) && ((KNUT_REGULARWORK) >= (2))) {
        if ((KQ404_UNICORNLIST_GOTEVERYTHING) != (2)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_KNUT_KQ404_GOTYOURWOOD_INFO() {
    DIA_KNUT_BUYARMOR_GIVEARMOR();
    DIA_KNUT_WOODFORYOU_GIVEWOOD();
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Knut_KQ404_GotYourWood_03_01");
    AI_STARTFACEANI(SELF, S_TIRED, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Knut_KQ404_GotYourWood_03_02");
    AI_STARTFACEANI(OTHER, S_SMILE, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Knut_KQ404_GotYourWood_15_03");
    AI_RESETFACEANI(OTHER);
    AI_RESETFACEANI(SELF);
    DIA_KNUT_REGULARWORK_BREAK();
}

instance DIA_KNUT_KQ406_OFFER(C_INFO) {
    NPC = 57264;
    NR = 1;
    CONDITION = DIA_KNUT_KQ406_OFFER_CONDITION;
    INFORMATION = DIA_KNUT_KQ406_OFFER_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I have an interesting job offer for you.";
}

func int DIA_KNUT_KQ406_OFFER_CONDITION() {
    if (((LOG_GETSTATUS(MIS_KQ406)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 65774))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_KNUT_KQ406_OFFER_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Knut_KQ406_Offer_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Knut_KQ406_Offer_03_02");
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Knut_KQ406_Offer_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Knut_KQ406_Offer_03_04");
    AI_RESETFACEANI(OTHER);
    AI_OUTPUT(OTHER, SELF, "DIA_Knut_KQ406_Offer_15_05");
    AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Knut_KQ406_Offer_03_06");
    AI_OUTPUT(OTHER, SELF, "DIA_Knut_KQ406_Offer_15_07");
    AI_STARTFACEANI(SELF, S_SURPRISE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Knut_KQ406_Offer_03_08");
    AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Knut_KQ406_Offer_03_09");
    AI_LOGENTRY(TOPIC_KQ406, LOG_KQ406_KNUT_READY);
    KQ406_TELEPORTHUXLAY();
}

instance DIA_KNUT_CANYOUTRAIN(C_INFO) {
    NPC = 57264;
    NR = 1;
    CONDITION = DIA_KNUT_CANYOUTRAIN_CONDITION;
    INFORMATION = DIA_KNUT_CANYOUTRAIN_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Could you show me how to get stronger?";
}

func int DIA_KNUT_CANYOUTRAIN_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 85266)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_KNUT_CANYOUTRAIN_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Knut_Canyoutrain_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Knut_Canyoutrain_03_01");
    LOG_CREATETOPIC(TOPIC_TEACHER, LOG_NOTE);
    AI_LOGENTRY(TOPIC_TEACHER, LOG_TEACHER_KNUT);
}

var int KNUT_CURRENTSTRLEVEL;
var int KNUT_NOMORE;
var string KNUT_PRINTS;
const int KNUT_RLEVEL = 20;
instance DIA_KNUT_TRAIN(C_INFO) {
    NPC = 57264;
    NR = 7;
    CONDITION = DIA_KNUT_TRAIN_CONDITION;
    INFORMATION = DIA_KNUT_TRAIN_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "Show me how to become stronger.";
}

func int DIA_KNUT_TRAIN_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 85332)) && ((KNUT_NOMORE) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_KNUT_TRAIN_CHOICES() {
    var int KNUT_GOLDCOST;
    KNUT_GOLDCOST = 10;
    KNUT_CURRENTSTRLEVEL = OTHER.AIVAR[81];
    INFO_CLEARCHOICES(85339);
    INFO_ADDCHOICE(85339, DIALOG_BACK, 85344);
    INFO_ADDCHOICE(85339, B_BUILDLEARNSTRING2(PRINT_LEARNSTR1, B_GETLEARNCOSTATTRIBUTE(OTHER, ATR_STRENGTH, 1), KNUT_GOLDCOST), 85345);
    INFO_ADDCHOICE(85339, B_BUILDLEARNSTRING2(PRINT_LEARNSTR5, B_GETLEARNCOSTATTRIBUTE(OTHER, ATR_STRENGTH, 5), (KNUT_GOLDCOST) * (5)), 85346);
}

func void DIA_KNUT_TRAIN_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Knut_Train_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Knut_Train_03_01");
    DIA_KNUT_TRAIN_CHOICES();
}

func void DIA_KNUT_TRAIN_BACK() {
    if (((OTHER.AIVAR[81]) < (60)) && ((OTHER.AIVAR[81]) >= (30))) {
        AI_OUTPUT(SELF, OTHER, "DIA_Knut_Train_Back_03_00");
    };
    if ((OTHER.AIVAR[81]) >= (60)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Knut_Train_Back_03_01");
        KNUT_NOMORE = TRUE;
    };
    INFO_CLEARCHOICES(85339);
}

func void DIA_KNUT_TRAINSTR_1() {
    if (((NPC_HASITEMS(OTHER, 34203)) >= (KNUT_PAYMENT1)) && ((OTHER.AIVAR[81]) >= (20))) {
        if ((KNUT_CURRENTSTRLEVEL) < (OTHER.AIVAR[81])) {
            SND_PLAY(GELDBEUTEL);
            B_GIVEINVITEMS(OTHER, SELF, 34203, KNUT_PAYMENT1);
            NPC_REMOVEINVITEMS(SELF, 34203, KNUT_PAYMENT1);
        };
        B_TEACHATTRIBUTEPOINTS(SELF, OTHER, ATR_STRENGTH, 1, 60);
        DIA_KNUT_TRAIN_CHOICES();
    };
    if ((NPC_HASITEMS(OTHER, 34203)) < (KNUT_PAYMENT1)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Knut_Train_STR1_13_00");
        KNUT_PRINTS = CONCATSTRINGS(PRINT_RGOLD, INTTOSTRING(KNUT_PAYMENT1));
        PRINTSCREEN(KNUT_PRINTS, -(1), -(1), FONT_SCREEN, 2);
        DIA_KNUT_TRAIN_CHOICES();
    };
    if ((OTHER.AIVAR[81]) < (20)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Knut_Train_STR1_13_01");
        KNUT_PRINTS = CONCATSTRINGS(PRINT_MINATR, INTTOSTRING(KNUT_RLEVEL));
        PRINTSCREEN(KNUT_PRINTS, -(1), -(1), FONT_SCREEN, 2);
        DIA_KNUT_TRAIN_CHOICES();
    };
}

func void DIA_KNUT_TRAINSTR_5() {
    if (((NPC_HASITEMS(OTHER, 34203)) >= (KNUT_PAYMENT5)) && ((OTHER.AIVAR[81]) >= (20))) {
        if ((KNUT_CURRENTSTRLEVEL) < (OTHER.AIVAR[81])) {
            SND_PLAY(GELDBEUTEL);
            B_GIVEINVITEMS(OTHER, SELF, 34203, KNUT_PAYMENT5);
            NPC_REMOVEINVITEMS(SELF, 34203, KNUT_PAYMENT5);
        };
        B_TEACHATTRIBUTEPOINTS(SELF, OTHER, ATR_STRENGTH, 5, 60);
        DIA_KNUT_TRAIN_CHOICES();
    };
    if ((NPC_HASITEMS(OTHER, 34203)) < (KNUT_PAYMENT5)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Knut_Train_STR5_13_00");
        KNUT_PRINTS = CONCATSTRINGS(PRINT_RGOLD, INTTOSTRING(KNUT_PAYMENT5));
        PRINTSCREEN(KNUT_PRINTS, -(1), -(1), FONT_SCREEN, 2);
        DIA_KNUT_TRAIN_CHOICES();
    };
    if ((OTHER.AIVAR[81]) < (20)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Knut_Train_STR5_13_01");
        KNUT_PRINTS = CONCATSTRINGS(PRINT_MINATR, INTTOSTRING(KNUT_RLEVEL));
        PRINTSCREEN(KNUT_PRINTS, -(1), -(1), FONT_SCREEN, 2);
        DIA_KNUT_TRAIN_CHOICES();
    };
}

instance DIA_KNUT_Q505_HELP(C_INFO) {
    NPC = 57264;
    NR = 1;
    CONDITION = DIA_KNUT_Q505_HELP_CONDITION;
    INFORMATION = DIA_KNUT_Q505_HELP_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Don't you have any surplus solid wood?";
}

func int DIA_KNUT_Q505_HELP_CONDITION() {
    if (((LOG_GETSTATUS(MIS_Q505)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 80244))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

var int KNUT_Q505_PAYFORWOOD;
func void DIA_KNUT_Q505_HELP_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Knut_Q505_Help_15_01");
    if ((LOG_GETSTATUS(MIS_KQ406)) == (LOG_SUCCESS)) {
        Q505_KNUTCHEST = TRUE;
        MOB_CHANGEFOCUSNAME("Q505_KNUTBIGCHEST", "MOBNAME_WOODCHEST");
        AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
        AI_OUTPUT(SELF, OTHER, "DIA_Knut_Q505_Help_03_02");
        AI_OUTPUT(SELF, OTHER, "DIA_Knut_Q505_Help_03_03");
        AI_OUTPUT(SELF, OTHER, "DIA_Knut_Q505_Help_03_04");
    };
    KNUT_Q505_PAYFORWOOD = TRUE;
    AI_STARTFACEANI(SELF, S_THINK, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Knut_Q505_Help_03_05");
    AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Knut_Q505_Help_03_06");
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
}

instance DIA_KNUT_Q505_PAY(C_INFO) {
    NPC = 57264;
    NR = 1;
    CONDITION = DIA_KNUT_Q505_PAY_CONDITION;
    INFORMATION = DIA_KNUT_Q505_PAY_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "(Pay 300 GP for wood)";
}

func int DIA_KNUT_Q505_PAY_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_Q505)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 85347))) && ((KNUT_Q505_PAYFORWOOD) == (TRUE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_KNUT_Q505_PAY_INFO() {
    if ((NPC_HASITEMS(OTHER, 34203)) >= (Q505_KNUTPRICE)) {
        NPC_REMOVEINVITEMS(SELF, 34203, Q505_KNUTPRICE);
        KNUT_Q505_PAYFORWOOD = 0;
        B_GIVEINVITEMS(OTHER, SELF, 34203, Q505_KNUTPRICE);
        AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
        AI_OUTPUT(SELF, OTHER, "DIA_Knut_Q505_Pay_03_01");
        AI_RESETFACEANI(SELF);
        CREATEINVITEMS(SELF, 37606, 1);
    };
    B_SAY(SELF, OTHER, "$NOGOLD");
}

instance DIA_KNUT_PICKPOCKET(C_INFO) {
    NPC = 57264;
    NR = 900;
    CONDITION = DIA_KNUT_PICKPOCKET_CONDITION;
    INFORMATION = DIA_KNUT_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_80;
}

func int DIA_KNUT_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_KNUT_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(85354);
    INFO_ADDCHOICE(85354, DIALOG_BACK, 85358);
    INFO_ADDCHOICE(85354, DIALOG_PICKPOCKET, 85357);
}

func void DIA_KNUT_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (2)) {
        CREATEINVITEMS(SELF, 35981, 3);
        B_GIVEINVITEMS(SELF, OTHER, 35981, 3);
        B_PICKPOCKET_AMBIENT_TIER_2();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(85354);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(85354);
}

func void DIA_KNUT_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(85354);
}


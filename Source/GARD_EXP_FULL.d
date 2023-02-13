var int GARD_EXP_FULL;
instance DIA_GARD_EXIT(C_INFO) {
    NPC = 52083;
    NR = 999;
    CONDITION = DIA_GARD_EXIT_CONDITION;
    INFORMATION = DIA_GARD_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_GARD_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_GARD_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

func void DIA_GARD_SQ219_AFTERHELLO() {
    AI_OUTPUT(SELF, OTHER, "DIA_Gard_SQ219_AfterHello_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Gard_SQ219_AfterHello_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Gard_SQ219_AfterHello_03_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Gard_SQ219_AfterHello_15_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Gard_SQ219_AfterHello_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Gard_SQ219_AfterHello_03_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Gard_SQ219_AfterHello_03_07");
    AI_OUTPUT(SELF, OTHER, "DIA_Gard_SQ219_AfterHello_03_08");
    LOG_CREATETOPIC(TOPIC_SQ219, LOG_MISSION);
    LOG_SETSTATUS(_@(MIS_SQ219), TOPIC_SQ219, LOG_RUNNING);
    AI_LOGENTRY(TOPIC_SQ219, LOG_SQ219_START);
    INFO_CLEARCHOICES(71663);
}

instance DIA_GARD_SQ219_HELLO(C_INFO) {
    NPC = 52083;
    NR = 1;
    CONDITION = DIA_GARD_SQ219_HELLO_CONDITION;
    INFORMATION = DIA_GARD_SQ219_HELLO_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_GARD_SQ219_HELLO_CONDITION() {
    if (NPC_ISINSTATE(SELF, 61599)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_GARD_SQ219_HELLO_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_Gard_SQ219_Hello_03_01");
    INFO_CLEARCHOICES(71663);
    INFO_ADDCHOICE(71663, "What do you care?", 71666);
    INFO_ADDCHOICE(71663, "How did you know?", 71667);
}

func void DIA_GARD_SQ219_RUDEHELLO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Gard_SQ219_RudeHello_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Gard_SQ219_RudeHello_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Gard_SQ219_RudeHello_03_03");
    DIA_GARD_SQ219_AFTERHELLO();
}

func void DIA_GARD_SQ219_NICEHELLO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Gard_SQ219_NiceHello_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Gard_SQ219_NiceHello_03_02");
    DIA_GARD_SQ219_AFTERHELLO();
}

instance DIA_GARD_SQ219_ARCHOLOSISBAD(C_INFO) {
    NPC = 52083;
    NR = 3;
    CONDITION = DIA_GARD_SQ219_ARCHOLOSISBAD_CONDITION;
    INFORMATION = DIA_GARD_SQ219_ARCHOLOSISBAD_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "If it's so bad for you on Archolos, why are you here?";
}

func int DIA_GARD_SQ219_ARCHOLOSISBAD_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 71663)) && ((Q509_GARDVOLFZACKE) == (0))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_GARD_SQ219_ARCHOLOSISBAD_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Gard_SQ219_ArcholosIsBad_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Gard_SQ219_ArcholosIsBad_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Gard_SQ219_ArcholosIsBad_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Gard_SQ219_ArcholosIsBad_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Gard_SQ219_ArcholosIsBad_03_05");
}

instance DIA_GARD_SQ219_NORDMAR(C_INFO) {
    NPC = 52083;
    NR = 2;
    CONDITION = DIA_GARD_SQ219_NORDMAR_CONDITION;
    INFORMATION = DIA_GARD_SQ219_NORDMAR_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Nordmar?";
}

func int DIA_GARD_SQ219_NORDMAR_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 71663)) && ((Q509_GARDVOLFZACKE) == (0))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_GARD_SQ219_NORDMAR_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Gard_SQ219_Nordmar_15_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Gard_SQ219_Nordmar_15_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Gard_SQ219_Nordmar_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Gard_SQ219_Nordmar_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Gard_SQ219_Nordmar_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Gard_SQ219_Nordmar_03_06");
}

instance DIA_GARD_CHOOSEPLACE(C_INFO) {
    NPC = 52083;
    NR = 1;
    CONDITION = DIA_GARD_CHOOSEPLACE_CONDITION;
    INFORMATION = DIA_GARD_CHOOSEPLACE_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "Let me think... (Suggest a place).";
}

func int DIA_GARD_CHOOSEPLACE_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 71663)) && ((LOG_GETSTATUS(MIS_SQ219)) == (LOG_RUNNING))) {
        if ((SQ219_GARD_ONTHEWAY) == (FALSE)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_GARD_CHOOSEPLACE_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Gard_ChoosePlace_15_01");
    INFO_CLEARCHOICES(71674);
    INFO_ADDCHOICE(71674, "I don't have any idea.", 71677);
    if (((SQ219_WOLFSDEN_VISITED) == (TRUE)) && ((GARD_WOLFSDEN) == (FALSE))) {
        INFO_ADDCHOICE(71674, "Have you heard of the Wolf's Den?", 71678);
    };
    if (((SQ219_VINEYARD_VISITED) == (TRUE)) && ((GARD_VINEYARD) == (FALSE))) {
        INFO_ADDCHOICE(71674, "One of the vineyards has an underground wine storage facility.", 71679);
    };
    if (((SQ219_SWAMP_VISITED) == (TRUE)) && ((GARD_SWAMP) == (FALSE))) {
        INFO_ADDCHOICE(71674, "Maybe the swamp?", 71680);
    };
}

func void DIA_GARD_CHOOSEPLACE_BACK() {
    AI_OUTPUT(OTHER, SELF, "DIA_Gard_ChoosePlace_Back_15_01");
    if ((NPC_GETDISTTOWP(SELF, "PARTM1_PATH_101_BENCH01")) <= (5000)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Gard_ChoosePlace_Back_03_02");
    };
    NPC_EXCHANGEROUTINE(VLK_10035_GARD, START);
    if ((SQ219_BACKTOTOWN_LOG) == (FALSE)) {
        AI_LOGENTRY(TOPIC_SQ219, LOG_SQ219_BACKTOTOWN);
        SQ219_BACKTOTOWN_LOG = TRUE;
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Gard_ChoosePlace_Back_03_03");
    INFO_CLEARCHOICES(71674);
    AI_STOPPROCESSINFOS(SELF);
}

func void DIA_GARD_WOLFSDEN() {
    SELF.AIVAR[15] = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Gard_DIA_Gard_WolfsDen_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Gard_DIA_Gard_WolfsDen_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Gard_DIA_Gard_WolfsDen_15_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Gard_DIA_Gard_WolfsDen_15_04");
    B_STANDUP();
    GARD_EXP_FULL = (GARD_EXP_FULL) + (XP_SQ219_WOLFSDEN);
    B_USEFAKEMAP();
    GARD_WOLFSDEN = TRUE;
    AI_OUTPUT(SELF, OTHER, "DIA_Gard_DIA_Gard_WolfsDen_03_05");
    NPC_EXCHANGEROUTINE(VLK_10035_GARD, "WOLFSDEN");
    SQ219_GARD_ONTHEWAY = TRUE;
    AI_STOPPROCESSINFOS(SELF);
    AI_LOGENTRY(TOPIC_SQ219, LOG_SQ219_WOLFSDEN);
}

func void DIA_GARD_VINEYARD() {
    SELF.AIVAR[15] = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Gard_Vineyard_15_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Gard_Vineyard_15_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Gard_Vineyard_15_03");
    B_STANDUP();
    AI_PLAYANI(SELF, R_SCRATCHHEAD);
    AI_OUTPUT(SELF, OTHER, "DIA_Gard_Vineyard_03_04");
    GARD_EXP_FULL = (GARD_EXP_FULL) + (XP_SQ219_VINEYARD);
    B_USEFAKEMAP();
    AI_LOOKATNPC(SELF, OTHER);
    AI_OUTPUT(SELF, OTHER, "DIA_Gard_Vineyard_03_05");
    GARD_VINEYARD = TRUE;
    NPC_EXCHANGEROUTINE(VLK_10035_GARD, "VINEYARD");
    SQ219_GARD_ONTHEWAY = TRUE;
    AI_STOPPROCESSINFOS(SELF);
    AI_LOGENTRY(TOPIC_SQ219, LOG_SQ219_VINEYARD);
}

func void DIA_GARD_SWAMP() {
    SELF.AIVAR[15] = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Gard_Swamp_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Gard_Swamp_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Gard_Swamp_15_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Gard_Swamp_15_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Gard_Swamp_03_05");
    AI_LOGENTRY(TOPIC_SQ219, LOG_SQ219_SWAMP);
    GARD_EXP_FULL = (GARD_EXP_FULL) + (XP_SQ219_SWAMP);
    B_STANDUP();
    B_USEFAKEMAP();
    SQ219_GARD_ONTHEWAY = TRUE;
    NPC_EXCHANGEROUTINE(VLK_10035_GARD, "SWAMP");
    AI_OUTPUT(SELF, OTHER, "DIA_Gard_Swamp_03_06");
    GARD_SWAMP = TRUE;
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_GARD_AMBIENT(C_INFO) {
    NPC = 52083;
    NR = 1;
    CONDITION = DIA_GARD_AMBIENT_CONDITION;
    INFORMATION = DIA_GARD_AMBIENT_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_GARD_AMBIENT_CONDITION() {
    if ((((NPC_KNOWSINFO(OTHER, 71663)) && ((SQ219_GARD_ONTHEWAY) == (TRUE))) && ((((NPC_GETDISTTOWP(VLK_10035_GARD, "PART16_PATH_GARD_03")) > (1000)) && ((NPC_GETDISTTOWP(VLK_10035_GARD, "PART11_MOB_27")) > (1000))) && ((NPC_GETDISTTOWP(VLK_10035_GARD, "PART15_PATH_196")) > (1000)))) && ((LOG_GETSTATUS(MIS_SQ219)) == (LOG_RUNNING))) {
        if (NPC_ISINSTATE(SELF, 61599)) {
            if ((MIS_SQ219) == (LOG_RUNNING)) {
                return TRUE;
            };
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_GARD_AMBIENT_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_Gard_Ambient_03_02");
    AI_STOPPROCESSINFOS(SELF);
}

func void GARD_SQ219_QUEST_END() {
    CREATEINVITEMS(SELF, 35347, 2);
    B_GIVEINVITEMS(SELF, OTHER, 35347, 2);
    CREATEINVITEMS(SELF, 35672, 1);
    B_GIVEINVITEMS(SELF, OTHER, 35672, 1);
    B_GIVEPLAYERXP(GARD_EXP_FULL);
}

instance DIA_GARD_WOLFSDEN2(C_INFO) {
    NPC = 52083;
    NR = 1;
    CONDITION = DIA_GARD_WOLFSDEN2_CONDITION;
    INFORMATION = DIA_GARD_WOLFSDEN2_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "And how do you like the Wolf's Den?";
}

func int DIA_GARD_WOLFSDEN2_CONDITION() {
    if ((((NPC_GETDISTTOWP(SELF, "PART16_PATH_GARD_03")) <= (1000)) && ((LOG_GETSTATUS(MIS_SQ219)) == (LOG_RUNNING))) && ((SQ219_GARD_ONTHEWAY) == (TRUE))) {
        if ((GARD_WOLFSDEN) == (TRUE)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_GARD_WOLFSDEN2_INFO() {
    SELF.AIVAR[15] = FALSE;
    AI_OUTPUT(OTHER, SELF, "DIA_Gard_WOLFSDEN2_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Gard_WOLFSDEN2_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Gard_WOLFSDEN2_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Gard_WOLFSDEN2_03_04");
    INFO_CLEARCHOICES(71685);
    INFO_ADDCHOICE(71685, "I have one more idea, but it might sound a little crazy. (Send to the volcano)", 71688);
    INFO_ADDCHOICE(71685, "Don't you think you're overreacting a little?", 71689);
}

func void DIA_GARD_SQ219_ENDINGVULCANO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Gard_SQ219_EndingVulcano_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Gard_SQ219_EndingVulcano_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Gard_SQ219_EndingVulcano_15_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Gard_SQ219_EndingVulcano_15_04");
    AI_OUTPUT(OTHER, SELF, "DIA_Gard_SQ219_EndingVulcano_15_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Gard_SQ219_EndingVulcano_03_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Gard_SQ219_EndingVulcano_03_07");
    AI_OUTPUT(SELF, OTHER, "DIA_Gard_SQ219_EndingVulcano_03_08");
    SQ219_EASTER_EGG = TRUE;
    LOG_SETSTATUS(_@(MIS_SQ219), TOPIC_SQ219, LOG_SUCCESS);
    AI_LOGENTRY(TOPIC_SQ219, LOG_SQ219_VULCANO);
    GARD_SQ219_QUEST_END();
    AI_STOPPROCESSINFOS(SELF);
}

func void DIA_GARD_SQ219_ENDINGNORDMAR() {
    AI_OUTPUT(OTHER, SELF, "DIA_Gard_SQ219_EndingNordmar_15_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Gard_SQ219_EndingNordmar_15_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Gard_SQ219_EndingNordmar_15_03");
    B_STANDUP();
    AI_DRAWWEAPON(SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Gard_SQ219_EndingNordmar_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Gard_SQ219_EndingNordmar_03_05");
    AI_REMOVEWEAPON(SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Gard_SQ219_EndingNordmar_03_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Gard_SQ219_EndingNordmar_03_07");
    AI_OUTPUT(SELF, OTHER, "DIA_Gard_SQ219_EndingNordmar_03_08");
    GARD_SQ219_QUEST_END();
    AI_OUTPUT(SELF, OTHER, "DIA_Gard_SQ219_EndingNordmar_03_09");
    NPC_EXCHANGEROUTINE(VLK_10035_GARD, "QUESTEND");
    LOG_SETSTATUS(_@(MIS_SQ219), TOPIC_SQ219, LOG_SUCCESS);
    AI_LOGENTRY(TOPIC_SQ219, LOG_SQ219_NORDMAR);
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_GARD_SWAMPISBAD(C_INFO) {
    NPC = 52083;
    NR = 1;
    CONDITION = DIA_GARD_SWAMPISBAD_CONDITION;
    INFORMATION = DIA_GARD_SWAMPISBAD_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_GARD_SWAMPISBAD_CONDITION() {
    if ((((NPC_GETDISTTOWP(SELF, "PART11_MOB_27")) <= (1000)) && ((SQ219_GARD_ONTHEWAY) == (TRUE))) && ((LOG_GETSTATUS(MIS_SQ219)) == (LOG_RUNNING))) {
        if ((GARD_SWAMP) == (TRUE)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_GARD_SWAMPISBAD_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_Gard_SwampIsBad_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Gard_SwampIsBad_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Gard_SwampIsBad_03_03");
    AI_LOGENTRY(TOPIC_SQ219, LOG_SQ219_SWAMPBAD);
    SQ219_GARD_ONTHEWAY = FALSE;
}

instance DIA_GARD_VINEYARDNOTGOOD(C_INFO) {
    NPC = 52083;
    NR = 1;
    CONDITION = DIA_GARD_VINEYARDNOTGOOD_CONDITION;
    INFORMATION = DIA_GARD_VINEYARDNOTGOOD_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_GARD_VINEYARDNOTGOOD_CONDITION() {
    if ((((NPC_GETDISTTOWP(SELF, "PART15_PATH_196")) <= (1000)) && ((SQ219_GARD_ONTHEWAY) == (TRUE))) && ((LOG_GETSTATUS(MIS_SQ219)) == (LOG_RUNNING))) {
        if ((GARD_VINEYARD) == (TRUE)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_GARD_VINEYARDNOTGOOD_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_Gard_VineyardNotGood_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Gard_VineyardNotGood_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Gard_VineyardNotGood_03_03");
    AI_LOGENTRY(TOPIC_SQ219, LOG_SQ219_VINEYARDNOTGOOD);
    SQ219_GARD_ONTHEWAY = FALSE;
}

instance DIA_GARD_SQ219_EASTEREGG(C_INFO) {
    NPC = 52083;
    NR = 1;
    CONDITION = DIA_GARD_SQ219_EASTEREGG_CONDITION;
    INFORMATION = DIA_GARD_SQ219_EASTEREGG_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_GARD_SQ219_EASTEREGG_CONDITION() {
    if (((((SQ219_GARD_VANISH) == (TRUE)) && ((SQ219_EASTER_EGG) == (TRUE))) && ((LOG_GETSTATUS(MIS_SQ219)) == (LOG_SUCCESS))) && (NPC_ISINSTATE(SELF, 61599))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_GARD_SQ219_EASTEREGG_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_Gard_SQ219_EasterEgg_03_01");
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_GARD_STILLINCITY(C_INFO) {
    NPC = 52083;
    NR = 1;
    CONDITION = DIA_GARD_STILLINCITY_CONDITION;
    INFORMATION = DIA_GARD_STILLINCITY_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "You still here?";
}

func int DIA_GARD_STILLINCITY_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_SQ219)) == (LOG_SUCCESS)) && ((SQ219_EASTER_EGG) == (FALSE))) && ((NPC_GETDISTTOWP(SELF, SELF.WP)) <= (700))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_GARD_STILLINCITY_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Gard_StillInCity_15_01");
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Gard_StillInCity_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Gard_StillInCity_03_03");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Gard_StillInCity_03_04");
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
}

instance DIA_GARD_Q509_QUESTION(C_INFO) {
    NPC = 52083;
    NR = 1;
    CONDITION = DIA_GARD_Q509_QUESTION_CONDITION;
    INFORMATION = DIA_GARD_Q509_QUESTION_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I happen to be moving to a certain cool place.";
}

func int DIA_GARD_Q509_QUESTION_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_Q509)) == (LOG_RUNNING)) && ((Q509_COUNTWARRIORS) < (4))) && (NPC_KNOWSINFO(OTHER, 71699))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_GARD_Q509_QUESTION_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Gard_Q509_Question_15_01");
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Gard_Q509_Question_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Gard_Q509_Question_15_03");
    AI_STARTFACEANI(SELF, S_SURPRISE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Gard_Q509_Question_03_04");
    AI_STARTFACEANI(SELF, S_THINK, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Gard_Q509_Question_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Gard_Q509_Question_03_06");
    AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Gard_Q509_Question_03_07");
    AI_OUTPUT(SELF, OTHER, "DIA_Gard_Q509_Question_03_08");
    AI_RESETFACEANI(SELF);
}

instance DIA_GARD_Q509_LETSGO(C_INFO) {
    NPC = 52083;
    NR = 1;
    CONDITION = DIA_GARD_Q509_LETSGO_CONDITION;
    INFORMATION = DIA_GARD_Q509_LETSGO_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "The ruins are located to the west of the city.";
}

func int DIA_GARD_Q509_LETSGO_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_Q509)) == (LOG_RUNNING)) && ((Q509_COUNTWARRIORS) < (4))) && (NPC_KNOWSINFO(OTHER, 71702))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_GARD_Q509_LETSGO_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Gard_Q509_LetsGo_15_01");
    B_USEFAKEMAP_MARVIN();
    AI_WAITTILLEND(SELF, OTHER);
    B_STANDUP();
    B_USEFAKEMAP();
    AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Gard_Q509_LetsGo_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Gard_Q509_LetsGo_03_03");
    B_STANDUP();
    AI_STOPPROCESSINFOS(SELF);
    B_GIVEPLAYERXP(XP_VARHDAL_RECRUIT);
    SELF.AIVAR[15] = TRUE;
    SELF.FLAGS = 2;
    Q509_GARDVOLFZACKE = 1;
    NPC_EXCHANGEROUTINE(SELF, "Q509_WAIT");
    AI_LOGENTRY(TOPIC_Q509, LOG_Q509_GARD);
    AI_FUNCTION(SELF, 63308);
}

instance DIA_GARD_Q509_FEEL(C_INFO) {
    NPC = 52083;
    NR = 90;
    CONDITION = DIA_GARD_Q509_FEEL_CONDITION;
    INFORMATION = DIA_GARD_Q509_FEEL_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "How's the morale?";
}

func int DIA_GARD_Q509_FEEL_CONDITION() {
    if (((NPC_GETDISTTOWP(SELF, "PART5_Q509_GARD")) <= (2000)) && ((Q509_GARDVOLFZACKE) == (1))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_GARD_Q509_FEEL_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    B_SAY(OTHER, SELF, "$MARVIN_VolfzackMorale3");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Gard_Q509_Feel_03_02");
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
}

instance DIA_GARD_PICKPOCKET(C_INFO) {
    NPC = 52083;
    NR = 900;
    CONDITION = DIA_GARD_PICKPOCKET_CONDITION;
    INFORMATION = DIA_GARD_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_80;
}

func int DIA_GARD_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_GARD_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(71711);
    INFO_ADDCHOICE(71711, DIALOG_BACK, 71715);
    INFO_ADDCHOICE(71711, DIALOG_PICKPOCKET, 71714);
}

func void DIA_GARD_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (2)) {
        B_PICKPOCKET_AMBIENT_TIER_2();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(71711);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(71711);
}

func void DIA_GARD_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(71711);
}

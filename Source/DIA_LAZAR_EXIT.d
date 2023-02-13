instance DIA_LAZAR_EXIT(C_INFO) {
    NPC = 55430;
    NR = 999;
    CONDITION = DIA_LAZAR_EXIT_CONDITION;
    INFORMATION = DIA_LAZAR_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_LAZAR_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_LAZAR_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_LAZAR_GRAVE(C_INFO) {
    NPC = 55430;
    NR = 1;
    CONDITION = DIA_LAZAR_GRAVE_CONDITION;
    INFORMATION = DIA_LAZAR_GRAVE_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_LAZAR_GRAVE_CONDITION() {
    if (((LOG_GETSTATUS(MIS_Q309)) == (LOG_RUNNING)) && ((Q309_DIGNORMANGRACE) == (1))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void LAZAR_KILLMARVIN() {
    MOB_CHANGEFOCUSNAME("KM_NORMAN_GRAVE_BODY_AFTER", "MOBNAME_DIG_IN");
    Q309_DIGNORMANGRACE = 2;
    SELF.FLAGS = 0;
    INFO_CLEARCHOICES(69148);
    AI_STOPPROCESSINFOS(SELF);
    B_ATTACK(SELF, OTHER, AR_KILL, 1);
}

var int LAZAR_GRAVE_BODY;
func void DIA_LAZAR_GRAVE_CHOICES() {
    INFO_CLEARCHOICES(69148);
    if ((LAZAR_GRAVE_BODY) == (FALSE)) {
        INFO_ADDCHOICE(69148, "Why do you need that boy's body?", 69160);
    };
    INFO_ADDCHOICE(69148, "It's a deal.", 69161);
    INFO_ADDCHOICE(69148, "I won't let you desecrate his body.", 69162);
    INFO_ADDCHOICE(69148, "None of the guards would believe a grave robber.", 69163);
}

func void DIA_LAZAR_GRAVE_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_Lazar_Grave_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Lazar_Grave_03_02");
    INFO_CLEARCHOICES(69148);
    INFO_ADDCHOICE(69148, "Why do you think I came here?", 69154);
    INFO_ADDCHOICE(69148, "I don't like to share with others.", 69155);
}

func void DIA_LAZAR_GRAVE_WHY() {
    AI_OUTPUT(OTHER, SELF, "DIA_Lazar_Grave_Why_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Lazar_Grave_Why_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Lazar_Grave_Why_03_03");
    INFO_CLEARCHOICES(69148);
    INFO_ADDCHOICE(69148, "Why do you think so?", 69156);
    INFO_ADDCHOICE(69148, "I came here for something else.", 69158);
    INFO_ADDCHOICE(69148, "Maybe I did. What's it to you?", 69159);
}

func void DIA_LAZAR_GRAVE_GOAWAY() {
    AI_OUTPUT(OTHER, SELF, "DIA_Lazar_Grave_GoAway_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Lazar_Grave_GoAway_03_02");
    AI_LOGENTRY(TOPIC_Q309, LOG_Q309_LAZAR_ENCOUNTER_V1);
    LAZAR_KILLMARVIN();
}

func void DIA_LAZAR_GRAVE_WHY_HOW() {
    AI_OUTPUT(OTHER, SELF, "DIA_Lazar_Grave_How_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Lazar_Grave_How_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Lazar_Grave_How_03_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Lazar_Grave_How_15_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Lazar_Grave_How_03_05");
}

func void DIA_LAZAR_GRAVE_DEAL() {
    AI_OUTPUT(SELF, OTHER, "DIA_Lazar_Grave_Else_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Lazar_Grave_Else_03_04");
    DIA_LAZAR_GRAVE_CHOICES();
}

func void DIA_LAZAR_GRAVE_WHY_ELSE() {
    AI_OUTPUT(OTHER, SELF, "DIA_Lazar_Grave_Else_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Lazar_Grave_Else_03_02");
    DIA_LAZAR_GRAVE_DEAL();
}

func void DIA_LAZAR_GRAVE_WHY_SOWHAT() {
    AI_OUTPUT(OTHER, SELF, "DIA_Lazar_Grave_SoWhat_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Lazar_Grave_SoWhat_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Lazar_Grave_SoWhat_03_03");
    INFO_CLEARCHOICES(69148);
    INFO_ADDCHOICE(69148, "What do you mean?", 69164);
    INFO_ADDCHOICE(69148, "I don't like to share with others.", 69155);
}

func void DIA_LAZAR_GRAVE_WHY_ELSE_BODY() {
    LAZAR_GRAVE_BODY = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Lazar_Grave_Body_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Lazar_Grave_Body_03_02");
}

func void DIA_LAZAR_GRAVE_WHY_ELSE_ALRIGHT() {
    Q309_LAZARDEAL = 1;
    AI_OUTPUT(OTHER, SELF, "DIA_Lazar_Grave_Alright_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Lazar_Grave_Alright_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Lazar_Grave_Alright_03_03");
    INFO_CLEARCHOICES(69148);
    AI_STOPPROCESSINFOS(SELF);
    AI_LOGENTRY(TOPIC_Q309, LOG_Q309_LAZAR_ENCOUNTER_V2);
}

func void DIA_LAZAR_GRAVE_WHY_ELSE_NOWAY() {
    AI_OUTPUT(OTHER, SELF, "DIA_Lazar_Grave_NoWay_15_01");
    AI_DRAWWEAPON(OTHER);
    AI_OUTPUT(OTHER, SELF, "DIA_Lazar_Grave_NoWay_15_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Lazar_Grave_NoWay_03_03");
    AI_LOGENTRY(TOPIC_Q309, LOG_Q309_LAZAR_ENCOUNTER_V3);
    LAZAR_KILLMARVIN();
}

func void DIA_LAZAR_GRAVE_WHY_ELSE_BELIVE() {
    AI_OUTPUT(OTHER, SELF, "DIA_Lazar_Grave_Belive_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Lazar_Grave_Belive_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Lazar_Grave_Belive_03_03");
    AI_LOGENTRY(TOPIC_Q309, LOG_Q309_LAZAR_ENCOUNTER_V4);
    LAZAR_KILLMARVIN();
}

func void DIA_LAZAR_GRAVE_WHY_SOWHAT_MEAN() {
    AI_OUTPUT(OTHER, SELF, "DIA_Lazar_Grave_Mean_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Lazar_Grave_Mean_03_02");
    DIA_LAZAR_GRAVE_DEAL();
}

instance DIA_LAZAR_GOTBOLT(C_INFO) {
    NPC = 55430;
    NR = 1;
    CONDITION = DIA_LAZAR_GOTBOLT_CONDITION;
    INFORMATION = DIA_LAZAR_GOTBOLT_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_LAZAR_GOTBOLT_CONDITION() {
    if (((NPC_KNOWSINFO(OTHER, 69148)) && ((LOG_GETSTATUS(MIS_Q309)) == (LOG_RUNNING))) && ((NPC_HASITEMS(OTHER, 37293)) >= (1))) {
        if (((Q309_LAZARDEAL) == (1)) && ((NPC_GETDISTTONPC(SELF, OTHER)) <= (350))) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_LAZAR_GOTBOLT_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_Lazar_GotBolt_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Lazar_GotBolt_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Lazar_GotBolt_03_03");
    INFO_CLEARCHOICES(69165);
    INFO_ADDCHOICE(69165, "A deal is a deal.", 69168);
    INFO_ADDCHOICE(69165, "Too bad it's of no use to you.", 69169);
}

func void DIA_LAZAR_GOTBOLT_DEAL() {
    Q309_LAZARDEAL = 2;
    Q309_LAZARDEAL_DAY = WLD_GETDAY();
    SELF.FLAGS = 0;
    AI_OUTPUT(OTHER, SELF, "DIA_Lazar_GotBolt_Deal_15_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Lazar_GotBolt_Deal_15_02");
    B_GIVEINVITEMS(OTHER, SELF, 36952, 1);
    AI_OUTPUT(SELF, OTHER, "DIA_Lazar_GotBolt_Deal_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Lazar_GotBolt_Deal_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Lazar_GotBolt_Deal_03_05");
    AI_LOGENTRY(TOPIC_Q309, LOG_Q309_LAZAR_DEAL_V1);
    INFO_CLEARCHOICES(69165);
    AI_STOPPROCESSINFOS(SELF);
    NPC_EXCHANGEROUTINE(SELF, "CORPSE");
}

func void DIA_LAZAR_GOTBOLT_NO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Lazar_GotBolt_No_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Lazar_GotBolt_No_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Lazar_GotBolt_No_15_03");
    if (NPC_HASGUILDARMOREQUIPPED(OTHER, GIL_MIL)) {
        AI_OUTPUT(OTHER, SELF, "DIA_Lazar_GotBolt_No_15_04");
    };
    if (NPC_HASGUILDARMOREQUIPPED(OTHER, GIL_SLD)) {
        AI_OUTPUT(OTHER, SELF, "DIA_Lazar_GotBolt_No_15_05");
        AI_OUTPUT(OTHER, SELF, "DIA_Lazar_GotBolt_No_15_06");
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Lazar_GotBolt_No_03_07");
    AI_LOGENTRY(TOPIC_Q309, LOG_Q309_LAZAR_DEAL_V2);
    LAZAR_KILLMARVIN();
}


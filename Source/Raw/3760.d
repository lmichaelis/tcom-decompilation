instance DIA_LAZAR_EXIT(C_INFO) {
    NPC = 0xd886;
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
    NPC = 0xd886;
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
    INFO_CLEARCHOICES(0x10e1c);
    AI_STOPPROCESSINFOS(SELF);
    B_ATTACK(SELF, OTHER, AR_KILL, 1);
}

var int LAZAR_GRAVE_BODY = 0;
func void DIA_LAZAR_GRAVE_CHOICES() {
    INFO_CLEARCHOICES(0x10e1c);
    if ((LAZAR_GRAVE_BODY) == (FALSE)) {
        INFO_ADDCHOICE(0x10e1c, "Why do you need that boy's body?", 0x10e28);
    };
    INFO_ADDCHOICE(0x10e1c, "It's a deal.", 0x10e29);
    INFO_ADDCHOICE(0x10e1c, "I won't let you desecrate his body.", 0x10e2a);
    INFO_ADDCHOICE(0x10e1c, "None of the guards would believe a grave robber.", 0x10e2b);
}

func void DIA_LAZAR_GRAVE_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_Lazar_Grave_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Lazar_Grave_03_02");
    INFO_CLEARCHOICES(0x10e1c);
    INFO_ADDCHOICE(0x10e1c, "Why do you think I came here?", 0x10e22);
    INFO_ADDCHOICE(0x10e1c, "I don't like to share with others.", 0x10e23);
}

func void DIA_LAZAR_GRAVE_WHY() {
    AI_OUTPUT(OTHER, SELF, "DIA_Lazar_Grave_Why_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Lazar_Grave_Why_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Lazar_Grave_Why_03_03");
    INFO_CLEARCHOICES(0x10e1c);
    INFO_ADDCHOICE(0x10e1c, "Why do you think so?", 0x10e24);
    INFO_ADDCHOICE(0x10e1c, "I came here for something else.", 0x10e26);
    INFO_ADDCHOICE(0x10e1c, "Maybe I did. What's it to you?", 0x10e27);
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
    INFO_CLEARCHOICES(0x10e1c);
    INFO_ADDCHOICE(0x10e1c, "What do you mean?", 0x10e2c);
    INFO_ADDCHOICE(0x10e1c, "I don't like to share with others.", 0x10e23);
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
    INFO_CLEARCHOICES(0x10e1c);
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
    NPC = 0xd886;
    NR = 1;
    CONDITION = DIA_LAZAR_GOTBOLT_CONDITION;
    INFORMATION = DIA_LAZAR_GOTBOLT_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_LAZAR_GOTBOLT_CONDITION() {
    if (((NPC_KNOWSINFO(OTHER, 0x10e1c)) && ((LOG_GETSTATUS(MIS_Q309)) == (LOG_RUNNING))) && ((NPC_HASITEMS(OTHER, 0x91ad)) >= (1))) {
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
    INFO_CLEARCHOICES(0x10e2d);
    INFO_ADDCHOICE(0x10e2d, "A deal is a deal.", 0x10e30);
    INFO_ADDCHOICE(0x10e2d, "Too bad it's of no use to you.", 0x10e31);
}

func void DIA_LAZAR_GOTBOLT_DEAL() {
    Q309_LAZARDEAL = 2;
    Q309_LAZARDEAL_DAY = WLD_GETDAY();
    SELF.FLAGS = 0;
    AI_OUTPUT(OTHER, SELF, "DIA_Lazar_GotBolt_Deal_15_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Lazar_GotBolt_Deal_15_02");
    B_GIVEINVITEMS(OTHER, SELF, 0x9058, 1);
    AI_OUTPUT(SELF, OTHER, "DIA_Lazar_GotBolt_Deal_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Lazar_GotBolt_Deal_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Lazar_GotBolt_Deal_03_05");
    AI_LOGENTRY(TOPIC_Q309, LOG_Q309_LAZAR_DEAL_V1);
    INFO_CLEARCHOICES(0x10e2d);
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


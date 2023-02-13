instance DIA_TRIMEGISTO_EXIT(C_INFO) {
    NPC = 51943;
    NR = 999;
    CONDITION = DIA_TRIMEGISTO_EXIT_CONDITION;
    INFORMATION = DIA_TRIMEGISTO_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_TRIMEGISTO_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_TRIMEGISTO_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_TRIMEGISTO_AMBIENT(C_INFO) {
    NPC = 51943;
    NR = 990;
    CONDITION = DIA_TRIMEGISTO_AMBIENT_CONDITION;
    INFORMATION = DIA_TRIMEGISTO_AMBIENT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "How are you doing?";
}

func int DIA_TRIMEGISTO_AMBIENT_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 65328)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_TRIMEGISTO_AMBIENT_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Trimegisto_Ambient_15_00");
    NPC_INITAMBIENTS(SELF, 2);
    if ((NPC_GETLASTAMBIENT(SELF)) == (1)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Trimegisto_Ambient_13_01");
        AI_OUTPUT(SELF, OTHER, "DIA_Trimegisto_Ambient_13_02");
    };
    if ((NPC_GETLASTAMBIENT(SELF)) == (2)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Trimegisto_Ambient_13_03");
        AI_OUTPUT(SELF, OTHER, "DIA_Trimegisto_Ambient_13_04");
    };
}

instance DIA_TRIMEGISTO_HELLO(C_INFO) {
    NPC = 51943;
    NR = 1;
    CONDITION = DIA_TRIMEGISTO_HELLO_CONDITION;
    INFORMATION = DIA_TRIMEGISTO_HELLO_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_TRIMEGISTO_HELLO_CONDITION() {
    if (NPC_ISINSTATE(SELF, 61599)) {
        if (((LOG_GETSTATUS(MIS_Q309)) != (LOG_RUNNING)) && ((LOG_GETSTATUS(MIS_SQ313)) != (LOG_RUNNING))) {
            if ((((KAPITEL) >= (3)) && ((LOG_GETSTATUS(MIS_CQ005)) == (LOG_SUCCESS))) && ((CQ005_ENDING) == (1))) {
                if (NPC_KNOWSINFO(OTHER, 65351)) {
                    return TRUE;
                };
            } else {
                return TRUE;
            };
        };
        if (((LOG_GETSTATUS(MIS_Q309)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 65341))) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_TRIMEGISTO_HELLO_INFO() {
    NPC_INITAMBIENTS(SELF, 3);
    if ((NPC_GETLASTAMBIENT(SELF)) == (1)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Trimegisto_HELLO_03_01");
    };
    if ((NPC_GETLASTAMBIENT(SELF)) == (2)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Trimegisto_HELLO_03_02");
    };
    if ((NPC_GETLASTAMBIENT(SELF)) == (3)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Trimegisto_HELLO_03_03");
    };
}

instance DIA_TRIMEGISTO_WHO(C_INFO) {
    NPC = 51943;
    NR = 1;
    CONDITION = DIA_TRIMEGISTO_WHO_CONDITION;
    INFORMATION = DIA_TRIMEGISTO_WHO_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Who are you?";
}

func int DIA_TRIMEGISTO_WHO_CONDITION() {
    return TRUE;
}

func void DIA_TRIMEGISTO_WHO_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Trimegisto_Who_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Trimegisto_Who_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Trimegisto_Who_03_03");
}

instance DIA_TRIMEGISTO_SPELLS(C_INFO) {
    NPC = 51943;
    NR = 10;
    CONDITION = DIA_TRIMEGISTO_SPELLS_CONDITION;
    INFORMATION = DIA_TRIMEGISTO_SPELLS_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Do you know anything about spells?";
}

func int DIA_TRIMEGISTO_SPELLS_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 65331)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_TRIMEGISTO_SPELLS_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Trimegisto_Spells_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Trimegisto_Spells_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Trimegisto_Spells_03_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Trimegisto_Spells_15_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Trimegisto_Spells_03_05");
}

instance DIA_TRIMEGISTO_HARD(C_INFO) {
    NPC = 51943;
    NR = 10;
    CONDITION = DIA_TRIMEGISTO_HARD_CONDITION;
    INFORMATION = DIA_TRIMEGISTO_HARD_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Is it hard to become a mage?";
}

func int DIA_TRIMEGISTO_HARD_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 65331)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_TRIMEGISTO_HARD_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Trimegisto_Hard_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Trimegisto_Hard_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Trimegisto_Hard_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Trimegisto_Hard_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Trimegisto_Hard_03_05");
    INFO_CLEARCHOICES(65337);
    INFO_ADDCHOICE(65337, "Are you an Archmage?", 65340);
}

func void DIA_TRIMEGISTO_HARD_MAGE() {
    AI_OUTPUT(OTHER, SELF, "DIA_Trimegisto_Hard_Mage_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Trimegisto_Hard_Mage_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Trimegisto_Hard_Mage_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Trimegisto_Hard_Mage_03_04");
    INFO_CLEARCHOICES(65337);
}

instance DIA_TRIMEGISTO_Q309HELLO(C_INFO) {
    NPC = 51943;
    NR = 1;
    CONDITION = DIA_TRIMEGISTO_Q309HELLO_CONDITION;
    INFORMATION = DIA_TRIMEGISTO_Q309HELLO_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_TRIMEGISTO_Q309HELLO_CONDITION() {
    if ((NPC_ISINSTATE(SELF, 61599)) && ((LOG_GETSTATUS(MIS_Q309)) == (LOG_RUNNING))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_TRIMEGISTO_Q309HELLO_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_Trimegisto_Q309HELLO_03_01");
    INFO_CLEARCHOICES(65341);
    INFO_ADDCHOICE(65341, "Yeah, I... I say hello to you, too.", 65345);
    INFO_ADDCHOICE(65341, "Wise words.", 65346);
}

func void DIA_TRIMEGISTO_Q309HELLO_NEXT() {
    AI_OUTPUT(SELF, OTHER, "DIA_Trimegisto_Q309HELLO_Next_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Trimegisto_Q309HELLO_Next_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Trimegisto_Q309HELLO_Next_03_03");
    INFO_CLEARCHOICES(65341);
}

func void DIA_TRIMEGISTO_Q309HELLO_JOKE() {
    AI_OUTPUT(OTHER, SELF, "DIA_Trimegisto_Q309HELLO_Joke_15_01");
    AI_PLAYANI(OTHER, R_SCRATCHHEAD);
    AI_OUTPUT(OTHER, SELF, "DIA_Trimegisto_Q309HELLO_Joke_15_02");
    DIA_TRIMEGISTO_Q309HELLO_NEXT();
}

func void DIA_TRIMEGISTO_Q309HELLO_WISE() {
    AI_OUTPUT(OTHER, SELF, "DIA_Trimegisto_Q309HELLO_Wise_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Trimegisto_Q309HELLO_Wise_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Trimegisto_Q309HELLO_Wise_03_03");
    DIA_TRIMEGISTO_Q309HELLO_NEXT();
}

instance DIA_TRIMEGISTO_GRAVE(C_INFO) {
    NPC = 51943;
    NR = 1;
    CONDITION = DIA_TRIMEGISTO_GRAVE_CONDITION;
    INFORMATION = DIA_TRIMEGISTO_GRAVE_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Who was buried here?";
}

func int DIA_TRIMEGISTO_GRAVE_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_Q309)) == (LOG_RUNNING)) && ((Q309_READYFORGRAVE) == (2))) && (NPC_KNOWSINFO(OTHER, 65331))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_TRIMEGISTO_GRAVE_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Trimegisto_InGrave_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Trimegisto_InGrave_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Trimegisto_InGrave_03_03");
    INFO_CLEARCHOICES(65347);
    INFO_ADDCHOICE(65347, "Any idea who prepared the body for burial?", 65350);
}

func void DIA_TRIMEGISTO_GRAVE_BODY() {
    AI_OUTPUT(OTHER, SELF, "DIA_Trimegisto_Grave_Body_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Trimegisto_Grave_Body_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Trimegisto_Grave_Body_03_03");
    AI_LOGENTRY(TOPIC_Q309, LOG_Q309_TRIMEGISTO);
    AI_OUTPUT(SELF, OTHER, "DIA_Trimegisto_Grave_Body_03_04");
    INFO_CLEARCHOICES(65347);
    AI_STOPPROCESSINFOS(SELF);
    if ((LOG_GETSTATUS(MIS_SQ313)) != (LOG_SUCCESS)) {
        if (((LOG_GETSTATUS(MIS_CQ005)) == (LOG_SUCCESS)) && ((CQ005_ENDING) == (1))) {
            if ((SQ313_ENDING) == (1)) {
                SQ313_PREPAREMAGES_HUGHENDING();
            } else if ((SQ313_ENDING) == (2)) {
                SQ313_PREPAREMAGES_TRIMEGISTOENDING();
            } else {
                NPC_EXCHANGEROUTINE(KDF_6404_TRIMEGISTO, "SQ313_START");
            };
        } else {
            NPC_EXCHANGEROUTINE(KDF_6404_TRIMEGISTO, START);
        };
    };
    NPC_EXCHANGEROUTINE(KDF_6404_TRIMEGISTO, START);
}

instance DIA_TRIMEGISTO_SQ313_START(C_INFO) {
    NPC = 51943;
    NR = 1;
    CONDITION = DIA_TRIMEGISTO_SQ313_START_CONDITION;
    INFORMATION = DIA_TRIMEGISTO_SQ313_START_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_TRIMEGISTO_SQ313_START_CONDITION() {
    if (((((KAPITEL) >= (3)) && ((LOG_GETSTATUS(MIS_CQ005)) == (LOG_SUCCESS))) && ((CQ005_ENDING) == (1))) && ((NPC_GETDISTTOWP(SELF, "PARTM1_STAND_03")) <= (500))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

var int TRIMEGISTO_SQ313_FOLLOWME;
func void DIA_TRIMEGISTO_SQ313_START_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_Trimegisto_SQ313_Start_03_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Trimegisto_SQ313_Start_15_02");
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Trimegisto_SQ313_Start_03_03");
    if (NPC_ISDEAD(PAL_101_SILVESTR)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Trimegisto_SQ313_Start_03_04");
        AI_STARTFACEANI(OTHER, S_ANGRY, 1, -(1));
        AI_OUTPUT(OTHER, SELF, "DIA_Trimegisto_SQ313_Start_15_05");
        AI_OUTPUT(SELF, OTHER, "DIA_Trimegisto_SQ313_Start_03_06");
        AI_OUTPUT(OTHER, SELF, "DIA_Trimegisto_SQ313_Start_15_07");
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Trimegisto_SQ313_Start_03_08");
    AI_STARTFACEANI(OTHER, S_ANGRY, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Trimegisto_SQ313_Start_15_09");
    AI_OUTPUT(SELF, OTHER, "DIA_Trimegisto_SQ313_Start_03_10");
    AI_RESETFACEANI(OTHER);
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Trimegisto_SQ313_Start_03_11");
    AI_OUTPUT(SELF, OTHER, "DIA_Trimegisto_SQ313_Start_03_12");
    INFO_CLEARCHOICES(65351);
    INFO_ADDCHOICE(65351, "You can't prove anything!", 65357);
    INFO_ADDCHOICE(65351, "How can I help you?", 65356);
}

func void DIA_TRIMEGISTO_SQ313_START_STORY() {
    if (TORCH_HEROHOLDINGTORCH()) {
        TORCH_UNEQUIP();
    };
    TRIMEGISTO_SQ313_FOLLOWME = 1;
    AI_RESETFACEANI(SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Trimegisto_SQ313_Start_Story_03_01");
    AI_WAITTILLEND(OTHER, SELF);
    AI_REMOVEWEAPON(OTHER);
    AI_UNREADYSPELL(OTHER);
    AI_PLAYANI(OTHER, "T_STAND_2_LGUARD_HERO");
    AI_OUTPUT(OTHER, SELF, "DIA_Trimegisto_SQ313_Start_Story_15_02");
    AI_FUNCTION(OTHER, 65358);
    AI_WAIT(OTHER, 1066192077);
    AI_FUNCTION(OTHER, 65359);
    AI_WAIT(OTHER, 1066192077);
    if (NPC_ISDEAD(PAL_101_SILVESTR)) {
        AI_OUTPUT(OTHER, SELF, "DIA_Trimegisto_SQ313_Start_Story_15_03");
    };
    AI_OUTPUT(OTHER, SELF, "DIA_Trimegisto_SQ313_Start_Story_15_04");
    AI_OUTPUT(OTHER, SELF, "DIA_Trimegisto_SQ313_Start_Story_15_05");
    AI_STARTFACEANI(SELF, S_DOUBT, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Trimegisto_SQ313_Start_Story_03_06");
    AI_STARTFACEANI(OTHER, S_SERIOUS, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Trimegisto_SQ313_Start_Story_15_07");
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Trimegisto_SQ313_Start_Story_03_08");
    if (NPC_ISDEAD(PAL_101_SILVESTR)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Trimegisto_SQ313_Start_Story_03_09");
    };
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Trimegisto_SQ313_Start_Story_03_10");
    AI_STARTFACEANI(OTHER, S_ANGRY, 1, -(1));
    AI_WAITTILLEND(OTHER, SELF);
    AI_PLAYANI(OTHER, "T_REMOVE_LGUARD");
    AI_OUTPUT(OTHER, SELF, "DIA_Trimegisto_SQ313_Start_Story_15_11");
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
    AI_OUTPUT(SELF, OTHER, "DIA_Trimegisto_SQ313_Start_Story_03_12");
    LOG_CREATETOPIC(TOPIC_SQ313, LOG_MISSION);
    LOG_SETSTATUS(_@(MIS_SQ313), TOPIC_SQ313, LOG_RUNNING);
    AI_LOGENTRY(TOPIC_SQ313, LOG_SQ313_START);
    INFO_CLEARCHOICES(65351);
}

func void DIA_TRIMEGISTO_SQ313_START_YES() {
    AI_OUTPUT(OTHER, SELF, "DIA_Trimegisto_SQ313_Start_Yes_15_01");
    DIA_TRIMEGISTO_SQ313_START_STORY();
}

func void DIA_TRIMEGISTO_SQ313_START_NO() {
    AI_STARTFACEANI(OTHER, S_ANGRY, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Trimegisto_SQ313_Start_No_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Trimegisto_SQ313_Start_No_03_02");
    AI_RESETFACEANI(OTHER);
    AI_OUTPUT(OTHER, SELF, "DIA_Trimegisto_SQ313_Start_No_15_03");
    DIA_TRIMEGISTO_SQ313_START_STORY();
}

func void TRIMEGISTO_SQ313_START_FADESCREEN_IN() {
    FADESCREENTOBLACK(1);
}

func void TRIMEGISTO_SQ313_START_FADESCREEN_OUT() {
    FADESCREENFROMBLACK(1);
}

instance DIA_TRIMEGISTO_SQ313_FOLLOWME(C_INFO) {
    NPC = 51943;
    NR = 1;
    CONDITION = DIA_TRIMEGISTO_SQ313_FOLLOWME_CONDITION;
    INFORMATION = DIA_TRIMEGISTO_SQ313_FOLLOWME_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "Let's go visit Huug.";
}

func int DIA_TRIMEGISTO_SQ313_FOLLOWME_CONDITION() {
    if (((LOG_GETSTATUS(MIS_SQ313)) == (LOG_RUNNING)) && ((TRIMEGISTO_SQ313_FOLLOWME) == (1))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_TRIMEGISTO_SQ313_FOLLOWME_INFO() {
    SQ313_HUUGDOOR();
    TRIMEGISTO_SQ313_FOLLOWME = 2;
    AI_OUTPUT(OTHER, SELF, "DIA_Trimegisto_SQ313_FollowMe_15_01");
    AI_STOPLOOKAT(SELF);
    AI_SETWALKMODE(SELF, NPC_RUN);
    AI_PLAYANI(SELF, T_YES);
    AI_WAITTILLEND(SELF, OTHER);
    AI_STOPPROCESSINFOS(SELF);
    SELF.AIVAR[15] = TRUE;
    NPC_EXCHANGEROUTINE(SELF, "SQ313_FOLLOW");
    B_STARTOTHERROUTINE(NONE_1004_HUUG, "SQ313_WAITINHOUSE");
    NPC_REFRESH(NONE_1004_HUUG);
    TELEPORTNPCTOWP(55041, NONE_1004_HUUG.WP);
}

instance DIA_TRIMEGISTO_SQ313_WAIT(C_INFO) {
    NPC = 51943;
    NR = 1;
    CONDITION = DIA_TRIMEGISTO_SQ313_WAIT_CONDITION;
    INFORMATION = DIA_TRIMEGISTO_SQ313_WAIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "I have to do something, let's finish up later.";
}

func int DIA_TRIMEGISTO_SQ313_WAIT_CONDITION() {
    if (((LOG_GETSTATUS(MIS_SQ313)) == (LOG_RUNNING)) && ((TRIMEGISTO_SQ313_FOLLOWME) == (2))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_TRIMEGISTO_SQ313_WAIT_INFO() {
    TRIMEGISTO_SQ313_FOLLOWME = 1;
    AI_OUTPUT(OTHER, SELF, "DIA_Trimegisto_SQ313_Wait_15_01");
    AI_STOPLOOKAT(SELF);
    AI_SETWALKMODE(SELF, NPC_RUN);
    AI_PLAYANI(SELF, T_YES);
    AI_WAITTILLEND(SELF, OTHER);
    AI_STOPPROCESSINFOS(SELF);
    SELF.AIVAR[15] = FALSE;
    NPC_EXCHANGEROUTINE(SELF, "SQ313_START");
}

instance DIA_TRIMEGISTO_SQ313_COMEBACK(C_INFO) {
    NPC = 51943;
    NR = 1;
    CONDITION = DIA_TRIMEGISTO_SQ313_COMEBACK_CONDITION;
    INFORMATION = DIA_TRIMEGISTO_SQ313_COMEBACK_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_TRIMEGISTO_SQ313_COMEBACK_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_SQ313)) == (LOG_RUNNING)) && ((NPC_GETDISTTOWP(SELF, "SLUMS_HOUSE08_05")) >= (7000))) && ((TRIMEGISTO_SQ313_FOLLOWME) == (2))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_TRIMEGISTO_SQ313_COMEBACK_INFO() {
    TRIMEGISTO_SQ313_FOLLOWME = 1;
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Trimegisto_SQ313_ComeBack_03_01");
    AI_STOPPROCESSINFOS(SELF);
    AI_RESETFACEANI(SELF);
    SELF.AIVAR[15] = FALSE;
    NPC_EXCHANGEROUTINE(SELF, "SQ313_START");
}

instance DIA_TRIMEGISTO_SQ313_WHATNOW(C_INFO) {
    NPC = 51943;
    NR = 1;
    CONDITION = DIA_TRIMEGISTO_SQ313_WHATNOW_CONDITION;
    INFORMATION = DIA_TRIMEGISTO_SQ313_WHATNOW_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_TRIMEGISTO_SQ313_WHATNOW_CONDITION() {
    if (((LOG_GETSTATUS(MIS_SQ313)) == (LOG_RUNNING)) && ((SQ313_HUUGCUTSCENEENABLE) == (3))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_TRIMEGISTO_SQ313_WHATNOW_INFO() {
    TRIMEGISTO_SQ313_FOLLOWME = 0;
    SQ313_CANOPENDOOR = TRUE;
    WLD_SENDTRIGGER("SQ313_MOVER_INTER_OPEN");
    MOB_CHANGEFOCUSNAME("SQ313_OPENDOOR", "MOBNAME_OPENDOOR");
    AI_OUTPUT(OTHER, SELF, "DIA_Trimegisto_SQ313_WhatNow_15_01");
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Trimegisto_SQ313_WhatNow_03_02");
    AI_STARTFACEANI(OTHER, S_ANGRY, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Trimegisto_SQ313_WhatNow_15_03");
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_TRIMEGISTO_SQ313_CANTDO(C_INFO) {
    NPC = 51943;
    NR = 1;
    CONDITION = DIA_TRIMEGISTO_SQ313_CANTDO_CONDITION;
    INFORMATION = DIA_TRIMEGISTO_SQ313_CANTDO_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_TRIMEGISTO_SQ313_CANTDO_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_SQ313)) == (LOG_RUNNING)) && ((SQ313_TRIEDTOOPENDOOR) == (TRUE))) && (NPC_ISINSTATE(SELF, 61599))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_TRIMEGISTO_SQ313_CANTDO_INFO() {
    SQ313_REMOVETRAPS();
    AI_STARTFACEANI(SELF, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Trimegisto_SQ313_CantDo_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Trimegisto_SQ313_CantDo_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Trimegisto_SQ313_CantDo_15_03");
    AI_RESETFACEANI(SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Trimegisto_SQ313_CantDo_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Trimegisto_SQ313_CantDo_03_05");
    AI_STOPPROCESSINFOS(SELF);
    CREATEINVITEMS(SELF, 37740, 1);
    B_GIVEINVITEMS(SELF, OTHER, 37740, 1);
}

instance DIA_TRIMEGISTO_SQ313_AFTERFIGHT(C_INFO) {
    NPC = 51943;
    NR = 1;
    CONDITION = DIA_TRIMEGISTO_SQ313_AFTERFIGHT_CONDITION;
    INFORMATION = DIA_TRIMEGISTO_SQ313_AFTERFIGHT_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_TRIMEGISTO_SQ313_AFTERFIGHT_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_SQ313)) == (LOG_RUNNING)) && ((SQ313_FIGHTHUUG) == (2))) && (NPC_ISINSTATE(SELF, 61599))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_TRIMEGISTO_SQ313_AFTERFIGHT_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Trimegisto_SQ313_AfterFight_15_01");
    AI_STARTFACEANI(SELF, S_WHAT, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Trimegisto_SQ313_AfterFight_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Trimegisto_SQ313_AfterFight_15_03");
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Trimegisto_SQ313_AfterFight_03_04");
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Trimegisto_SQ313_AfterFight_15_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Trimegisto_SQ313_AfterFight_03_06");
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
    AI_STOPPROCESSINFOS(SELF);
    AI_LOGENTRY(TOPIC_SQ313, LOG_SQ313_TRIMEGISTO_GUIDE);
    SELF.AIVAR[15] = TRUE;
    NPC_EXCHANGEROUTINE(SELF, "SQ313_GUIDE");
    SQ313_PREPAREMAGES_TRIMEGISTOENDING();
}

instance DIA_TRIMEGISTO_SQ313_FINISH(C_INFO) {
    NPC = 51943;
    NR = 1;
    CONDITION = DIA_TRIMEGISTO_SQ313_FINISH_CONDITION;
    INFORMATION = DIA_TRIMEGISTO_SQ313_FINISH_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_TRIMEGISTO_SQ313_FINISH_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_SQ313)) == (LOG_RUNNING)) && ((SQ313_ENDING) == (2))) && ((NPC_GETDISTTOWP(SELF, "PARTM1_FIREMAGES_35")) <= (500))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_TRIMEGISTO_SQ313_FINISH_INFO() {
    DIACAM_DISABLE();
    WLD_SENDTRIGGER("SQ313_JUDGE_10");
    TELEPORTNPCTOWP(1815, "PARTM1_FIREMAGES_35");
    TELEPORTNPCTOWP(1816, "PARTM1_SQ313_VICTIM_01");
    AI_TURNTONPC(SELF, OTHER);
    AI_TURNTONPC(OTHER, SELF);
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_STARTFACEANI(OTHER, S_ANGRY, 1, -(1));
    AI_SETWALKMODE(SELF, NPC_WALK);
    AI_OUTPUT(SELF, OTHER, "DIA_Trimegisto_SQ313_Finish_03_01");
    AI_FUNCTION(SELF, 65384);
    AI_OUTPUT(SELF, OTHER, "DIA_Trimegisto_SQ313_Finish_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Trimegisto_SQ313_Finish_03_03");
    INFO_CLEARCHOICES(65378);
    INFO_ADDCHOICE(65378, "Huug cheated people, you saw it yourself.", 65383);
    INFO_ADDCHOICE(65378, DIALOG_DONOTTALK, 65382);
}

func void DIA_TRIMEGISTO_SQ313_FINISH_SAW_NEXT() {
    AI_OUTPUT(SELF, OTHER, "DIA_Trimegisto_SQ313_Finish_Next_03_01");
    AI_FUNCTION(SELF, 65386);
    AI_OUTPUT(SELF, OTHER, "DIA_Trimegisto_SQ313_Finish_Next_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Trimegisto_SQ313_Finish_Next_03_03");
    if ((HERO.GUILD) == (GIL_MIL)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Trimegisto_SQ313_Finish_Next_03_04");
    };
    if ((HERO.GUILD) == (GIL_SLD)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Trimegisto_SQ313_Finish_Next_03_05");
    };
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
    AI_OUTPUT(SELF, OTHER, "DIA_Trimegisto_SQ313_Finish_Next_03_06");
    INFO_CLEARCHOICES(65378);
    AI_STOPPROCESSINFOS(SELF);
    AI_FUNCTION(SELF, 65387);
}

func void DIA_TRIMEGISTO_SQ313_FINISH_NOTHING() {
    AI_FUNCTION(SELF, 65385);
    AI_OUTPUT(SELF, OTHER, "DIA_Trimegisto_SQ313_Finish_Nothing_03_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Trimegisto_SQ313_Finish_Nothing_15_02");
    DIA_TRIMEGISTO_SQ313_FINISH_SAW_NEXT();
}

func void DIA_TRIMEGISTO_SQ313_FINISH_SAW() {
    AI_FUNCTION(SELF, 65385);
    AI_OUTPUT(OTHER, SELF, "DIA_Trimegisto_SQ313_Finish_Saw_15_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Trimegisto_SQ313_Finish_Saw_15_02");
    DIA_TRIMEGISTO_SQ313_FINISH_SAW_NEXT();
}

func void TRIMEGISTO_SQ313_FINISH_CHANGECAMERA_01() {
    WLD_SENDTRIGGER("SQ313_JUDGE_02");
    WLD_SENDUNTRIGGER("SQ313_JUDGE_10");
}

func void TRIMEGISTO_SQ313_FINISH_CHANGECAMERA_02() {
    WLD_SENDTRIGGER("SQ313_JUDGE_06");
    WLD_SENDUNTRIGGER("SQ313_JUDGE_02");
}

func void TRIMEGISTO_SQ313_FINISH_CHANGECAMERA_03() {
    WLD_SENDTRIGGER("SQ313_JUDGE_01");
    WLD_SENDUNTRIGGER("SQ313_JUDGE_06");
}

func void TRIMEGISTO_SQ313_FINISH_CHANGECAMERA_END() {
    FF_APPLYONCEEXT(65388, 75, 4);
    HERO.AIVAR[4] = TRUE;
}

func void TRIMEGISTO_SQ313_FINISH_CHANGECAMERA_END_START() {
    var int TRIMEGISTO_SQ313_FINISH_CHANGECAMERA_COUNT;
    TRIMEGISTO_SQ313_FINISH_CHANGECAMERA_COUNT = (TRIMEGISTO_SQ313_FINISH_CHANGECAMERA_COUNT) + (1);
    if ((TRIMEGISTO_SQ313_FINISH_CHANGECAMERA_COUNT) == (4)) {
        WLD_SENDUNTRIGGER("SQ313_JUDGE_10");
        WLD_SENDUNTRIGGER("SQ313_JUDGE_02");
        WLD_SENDUNTRIGGER("SQ313_JUDGE_01");
        WLD_SENDUNTRIGGER("SQ313_JUDGE_06");
        DIACAM_ENABLE();
        HERO.AIVAR[4] = FALSE;
        B_STARTOTHERROUTINE(KDF_6404_TRIMEGISTO, START);
        NPC_REFRESH(KDF_6404_TRIMEGISTO);
        B_STARTOTHERROUTINE(KDF_11261_FIREMAGE, START);
        NPC_REFRESH(KDF_11261_FIREMAGE);
        if (((SQ309_CHAIRWORKINNOS_DONE) == (5)) && ((LOG_GETSTATUS(MIS_SQ309)) == (LOG_RUNNING))) {
            B_STARTOTHERROUTINE(KDF_9004_TENGRAL, "SQ309");
        } else {
            B_STARTOTHERROUTINE(KDF_9004_TENGRAL, START);
        };
        NPC_REFRESH(KDF_9004_TENGRAL);
        B_LOGENTRY(TOPIC_SQ313, LOG_SQ313_HUUG_ENDING_V2);
        SQ313_FINISHQUEST();
    };
}

instance DIA_TRIMEGISTO_SQ313_AFTERQUEST(C_INFO) {
    NPC = 51943;
    NR = 1;
    CONDITION = DIA_TRIMEGISTO_SQ313_AFTERQUEST_CONDITION;
    INFORMATION = DIA_TRIMEGISTO_SQ313_AFTERQUEST_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I'm glad things have cleared up.";
}

func int DIA_TRIMEGISTO_SQ313_AFTERQUEST_CONDITION() {
    if ((LOG_GETSTATUS(MIS_SQ313)) == (LOG_SUCCESS)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_TRIMEGISTO_SQ313_AFTERQUEST_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Trimegisto_SQ313_AfterQuest_15_01");
    if ((SQ313_ENDING) == (3)) {
        AI_STARTFACEANI(SELF, S_TIRED, 1, -(1));
        AI_OUTPUT(SELF, OTHER, "DIA_Trimegisto_SQ313_AfterQuest_03_02");
        AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
        AI_OUTPUT(SELF, OTHER, "DIA_Trimegisto_SQ313_AfterQuest_03_03");
        CREATEINVITEMS(SELF, 37710, 1);
    };
    AI_STARTFACEANI(SELF, S_ANGRY, 0, 1);
    AI_OUTPUT(SELF, OTHER, "DIA_Trimegisto_SQ313_AfterQuest_03_04");
    AI_RESETFACEANI(SELF);
}

instance DIA_TRIMEGISTO_PICKPOCKET(C_INFO) {
    NPC = 51943;
    NR = 900;
    CONDITION = DIA_TRIMEGISTO_PICKPOCKET_CONDITION;
    INFORMATION = DIA_TRIMEGISTO_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_120;
}

func int DIA_TRIMEGISTO_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_TRIMEGISTO_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(65393);
    INFO_ADDCHOICE(65393, DIALOG_BACK, 65397);
    INFO_ADDCHOICE(65393, DIALOG_PICKPOCKET, 65396);
}

func void DIA_TRIMEGISTO_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (3)) {
        CREATEINVITEMS(SELF, 38185, 2);
        B_GIVEINVITEMS(SELF, OTHER, 38185, 2);
        B_PICKPOCKET_AMBIENT_TIER_3();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(65393);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(65393);
}

func void DIA_TRIMEGISTO_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(65393);
}

instance DIA_RAMHA_EXIT(C_INFO) {
    NPC = 0xcf25;
    NR = 999;
    CONDITION = DIA_RAMHA_EXIT_CONDITION;
    INFORMATION = DIA_RAMHA_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_RAMHA_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_RAMHA_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_RAMHA_AMBIENT(C_INFO) {
    NPC = 0xcf25;
    NR = 990;
    CONDITION = DIA_RAMHA_AMBIENT_CONDITION;
    INFORMATION = DIA_RAMHA_AMBIENT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "How are you doing?";
}

func int DIA_RAMHA_AMBIENT_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x12a3f)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_RAMHA_AMBIENT_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Ramha_Ambient_15_00");
    NPC_INITAMBIENTS(SELF, 3);
    if ((NPC_GETLASTAMBIENT(SELF)) == (1)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Ramha_Ambient_13_01");
        AI_OUTPUT(SELF, OTHER, "DIA_Ramha_Ambient_13_02");
    };
    if ((NPC_GETLASTAMBIENT(SELF)) == (2)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Ramha_Ambient_13_03");
    };
    if ((NPC_GETLASTAMBIENT(SELF)) == (3)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Ramha_Ambient_13_04");
        AI_OUTPUT(SELF, OTHER, "DIA_Ramha_Ambient_13_05");
    };
}

instance DIA_RAMHA_WHO(C_INFO) {
    NPC = 0xcf25;
    NR = 1;
    CONDITION = DIA_RAMHA_WHO_CONDITION;
    INFORMATION = DIA_RAMHA_WHO_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Who are you?";
}

func int DIA_RAMHA_WHO_CONDITION() {
    return TRUE;
}

func void DIA_RAMHA_WHO_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Ramha_WHO_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Ramha_WHO_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Ramha_WHO_03_03");
}

var int RAMHATEACH_NEVER = 0;
instance DIA_RAMHA_ALCHEMY(C_INFO) {
    NPC = 0xcf25;
    NR = 1;
    CONDITION = DIA_RAMHA_ALCHEMY_CONDITION;
    INFORMATION = DIA_RAMHA_ALCHEMY_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Fadha says you could teach me alchemy.";
}

func int DIA_RAMHA_ALCHEMY_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 0x12a3f)) && ((SISTERS_CANTEACHALCHEMY) == (TRUE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_RAMHA_ALCHEMY_NOWAY() {
    AI_OUTPUT(SELF, OTHER, "DIA_Ramha_Alchemy_03_04");
    RAMHATEACH_NEVER = TRUE;
}

func void DIA_RAMHA_ALCHEMY_INFO() {
    if (((LOG_GETSTATUS(MIS_QA202)) == (LOG_SUCCESS)) && ((QA202_RAMHAAFTERPLANT) == (2))) {
        DIA_RAMHA_ALCHEMY_NOWAY();
    };
    AI_OUTPUT(OTHER, SELF, "DIA_Ramha_Alchemy_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Ramha_Alchemy_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Ramha_Alchemy_03_03");
}

instance DIA_RAMHA_QA202_READY(C_INFO) {
    NPC = 0xcf25;
    NR = 1;
    CONDITION = DIA_RAMHA_QA202_READY_CONDITION;
    INFORMATION = DIA_RAMHA_QA202_READY_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I have come in the name of Araxos.";
}

func int DIA_RAMHA_QA202_READY_CONDITION() {
    if (((LOG_GETSTATUS(MIS_QA202)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 0x11380))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_RAMHA_QA202_READY_INFO() {
    SCATTY_TEACH_PERM2 = 1;
    AI_OUTPUT(OTHER, SELF, "DIA_Ramha_QA202_Ready_15_01");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Ramha_QA202_Ready_03_02");
    AI_STARTFACEANI(OTHER, S_DOUBT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Ramha_QA202_Ready_15_03");
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
    AI_OUTPUT(SELF, OTHER, "DIA_Ramha_QA202_Ready_03_04");
    AI_OUTPUT(OTHER, SELF, "DIA_Ramha_QA202_Ready_15_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Ramha_QA202_Ready_03_06");
    AI_OUTPUT(OTHER, SELF, "DIA_Ramha_QA202_Ready_15_07");
    AI_OUTPUT(SELF, OTHER, "DIA_Ramha_QA202_Ready_03_08");
    AI_STOPPROCESSINFOS(SELF);
    NPC_EXCHANGEROUTINE(SELF, "QA202_NEARMINE");
    if ((CQ006_FIGAROWENTTOHARBOUR) == (FALSE)) {
        B_STARTOTHERROUTINE(VLK_6284_FIGARO, "QA202_NEARMINE");
        QA202_FIGARO_RTNCHECK = 1;
    };
    AI_LOGENTRY(TOPIC_QA202, LOG_QA202_RAMHA_START);
}

instance DIA_RAMHA_QA202_WHEREFIGARO(C_INFO) {
    NPC = 0xcf25;
    NR = 1;
    CONDITION = DIA_RAMHA_QA202_WHEREFIGARO_CONDITION;
    INFORMATION = DIA_RAMHA_QA202_WHEREFIGARO_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_RAMHA_QA202_WHEREFIGARO_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_QA202)) == (LOG_RUNNING)) && ((NPC_GETDISTTOWP(SELF, "PART7_AQ202_RAMHA")) <= (500))) && (NPC_ISINSTATE(SELF, 0xf09f))) {
        if (((LOG_GETSTATUS(MIS_CQ006)) == (LOG_RUNNING)) && ((CQ006_FIGAROWENTTOHARBOUR) == (TRUE))) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_RAMHA_QA202_WHEREFIGARO_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Ramha_QA202_WhereFigaro_15_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Ramha_QA202_WhereFigaro_15_02");
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_RAMHA_QA202_HEY(C_INFO) {
    NPC = 0xcf25;
    NR = 1;
    CONDITION = DIA_RAMHA_QA202_HEY_CONDITION;
    INFORMATION = DIA_RAMHA_QA202_HEY_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_RAMHA_QA202_HEY_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_QA202)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 0x127ee))) && ((NPC_GETDISTTOWP(SELF, "PART7_PATH_26")) <= (500))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void RAMHA_QA202_SPAWNMONSTERS() {
    PRINTD("Potwory gotowe do teleportacji");
    WLD_INSERTNPC(0xc619, TOT);
    WLD_INSERTNPC(0xc61c, TOT);
    WLD_INSERTNPC(0xc61f, TOT);
    WLD_INSERTNPC(0xc790, TOT);
    WLD_INSERTNPC(0xc793, TOT);
    WLD_INSERTNPC(0xc796, TOT);
    WLD_INSERTNPC(0xc799, TOT);
    WLD_INSERTNPC(0xc488, TOT);
}

func void DIA_RAMHA_QA202_HEY_INFO() {
    QA202_EVENTS = 1;
    AI_OUTPUT(SELF, OTHER, "DIA_Ramha_QA202_HEY_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Ramha_QA202_HEY_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Ramha_QA202_HEY_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Ramha_QA202_HEY_03_04");
    AI_OUTPUT(OTHER, SELF, "DIA_Ramha_QA202_HEY_15_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Ramha_QA202_HEY_03_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Ramha_QA202_HEY_03_07");
    AI_STOPPROCESSINFOS(SELF);
    AI_LOGENTRY(TOPIC_QA202, LOG_QA202_RAMHA_GOTOPLANT);
    NPC_EXCHANGEROUTINE(SELF, "QA202_PLANT");
    SELF.NPCTYPE = NPCTYPE_FRIEND;
    RAMHA_QA202_SPAWNMONSTERS();
}

instance DIA_RAMHA_QA202_GOTPLANT(C_INFO) {
    NPC = 0xcf25;
    NR = 1;
    CONDITION = DIA_RAMHA_QA202_GOTPLANT_CONDITION;
    INFORMATION = DIA_RAMHA_QA202_GOTPLANT_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_RAMHA_QA202_GOTPLANT_CONDITION() {
    if (((LOG_GETSTATUS(MIS_QA202)) == (LOG_RUNNING)) && ((QA202_EVENTS) == (5))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_RAMHA_QA202_GOTPLANT_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_Ramha_QA202_GotPlant_03_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Ramha_QA202_GotPlant_15_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Ramha_QA202_GotPlant_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Ramha_QA202_GotPlant_03_04");
    AI_STOPLOOKAT(SELF);
    B_USEFAKESCROLL();
    AI_OUTPUT(SELF, OTHER, "DIA_Ramha_QA202_GotPlant_03_05");
    if ((NPC_HASITEMS(SELF, 0x8cf8)) == (0)) {
        AI_STOPLOOKAT(SELF);
        CREATEINVITEM(SELF, 0x8cf8);
        AI_USEITEMTOSTATE(SELF, 0x8cf8, 1);
        AI_WAIT(SELF, 0x40400000);
        AI_USEITEMTOSTATE(SELF, 0x8cf8, -(1));
        AI_LOOKATNPC(SELF, OTHER);
    };
    AI_LOOKATNPC(SELF, OTHER);
    AI_STOPPROCESSINFOS(SELF);
    AI_LOGENTRY(TOPIC_QA202, LOG_QA202_RAMHA_SLEEP);
    AI_FUNCTION(SELF, 0x12a54);
}

func void RAHMA_QA202_STARTCUTSCENE() {
    FF_APPLYONCEEXT(0x12a55, 500, 2);
}

func void RAHMA_QA202_STARTCUTSCENE_COUNT() {
    QA202_READYFORCUTSCENE_COUNT = (QA202_READYFORCUTSCENE_COUNT) + (1);
    if ((QA202_READYFORCUTSCENE_COUNT) == (1)) {
        B_STARTOTHERROUTINE(VLK_6407_RAMHA, "QA202_SLEEP");
    };
    if ((QA202_READYFORCUTSCENE_COUNT) == (2)) {
        QA202_READYFORCUTSCENE = 1;
    };
}

var int RAHMA_QA202_STARTCUTSCENE_COUNT.QA202_READYFORCUTSCENE_COUNT = 0;
instance DIA_RAMHA_QA202_WHATHAPPEND(C_INFO) {
    NPC = 0xcf25;
    NR = 1;
    CONDITION = DIA_RAMHA_QA202_WHATHAPPEND_CONDITION;
    INFORMATION = DIA_RAMHA_QA202_WHATHAPPEND_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_RAMHA_QA202_WHATHAPPEND_CONDITION() {
    if (((LOG_GETSTATUS(MIS_QA202)) == (LOG_RUNNING)) && ((QA202_RAMHAAFTERPLANT) == (1))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_RAMHA_QA202_WHATHAPPEND_INFO() {
    AI_STARTFACEANI(SELF, S_TIRED, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Ramha_QA202_WhatHappend_03_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Ramha_QA202_WhatHappend_15_02");
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Ramha_QA202_WhatHappend_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Ramha_QA202_WhatHappend_03_04");
    AI_STARTFACEANI(OTHER, S_SERIOUS, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Ramha_QA202_WhatHappend_15_05");
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
    AI_OUTPUT(SELF, OTHER, "DIA_Ramha_QA202_WhatHappend_03_06");
    INFO_CLEARCHOICES(0x12a57);
    INFO_ADDCHOICE(0x12a57, "Shall I walk you to the city?", 0x12a5d);
    INFO_ADDCHOICE(0x12a57, "What about the plant? Does it have any properties?", 0x12a5c);
}

var int RAMHA_QA202_CHANGEFIGARORTN_COUNT = 0;
func void RAMHA_QA202_CHANGEFIGARORTN() {
    RAMHA_QA202_CHANGEFIGARORTN_COUNT = (RAMHA_QA202_CHANGEFIGARORTN_COUNT) + (1);
    if ((RAMHA_QA202_CHANGEFIGARORTN_COUNT) == (2)) {
        B_STARTOTHERROUTINE(VLK_6284_FIGARO, "QA202_FOLLOW");
        NPC_REFRESH(VLK_6284_FIGARO);
        AI_STOPPROCESSINFOS(SELF);
    };
}

func void DIA_RAMHA_QA202_WHATHAPPEND_PLANT() {
    AI_OUTPUT(OTHER, SELF, "DIA_Ramha_QA202_WhatHappend_Plant_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Ramha_QA202_WhatHappend_Plant_03_02");
    RAMHA_QA202_CHANGEFIGARORTN();
}

func void DIA_RAMHA_QA202_WHATHAPPEND_HELP() {
    AI_OUTPUT(OTHER, SELF, "DIA_Ramha_QA202_WhatHappend_Help_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Ramha_QA202_WhatHappend_Help_03_02");
    RAMHA_QA202_CHANGEFIGARORTN();
}

instance DIA_RAMHA_QA202_AFTERQUEST(C_INFO) {
    NPC = 0xcf25;
    NR = 1;
    CONDITION = DIA_RAMHA_QA202_AFTERQUEST_CONDITION;
    INFORMATION = DIA_RAMHA_QA202_AFTERQUEST_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_RAMHA_QA202_AFTERQUEST_CONDITION() {
    if (((LOG_GETSTATUS(MIS_QA202)) == (LOG_SUCCESS)) && ((QA202_RAMHAAFTERPLANT) == (2))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_RAMHA_QA202_AFTERQUEST_INFO() {
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Ramha_QA202_AfterQuest_03_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Ramha_QA202_AfterQuest_15_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Ramha_QA202_AfterQuest_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Ramha_QA202_AfterQuest_03_04");
    RAMHATEACH_NEVER = TRUE;
}

instance DIA_RAMHA_OSIPPOTION(C_INFO) {
    NPC = 0xcf25;
    NR = 1;
    CONDITION = DIA_RAMHA_OSIPPOTION_CONDITION;
    INFORMATION = DIA_RAMHA_OSIPPOTION_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I need a digestive aid.";
}

func int DIA_RAMHA_OSIPPOTION_CONDITION() {
    if (((((LOG_GETSTATUS(MIS_SQ305)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 0x117b5))) && ((SQ305_OSIP_GOTPOTION) != (2))) && ((SCATTY_TEACH_PERM2) != (TRUE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_RAMHA_OSIPPOTION_GOTOWORK() {
    SELF.AIVAR[15] = TRUE;
    SQ305_RAHMA_OSIPPOTOION_WORK = 1;
    AI_OUTPUT(SELF, OTHER, "DIA_Ramha_OsipPotion_03_05");
    B_GIVEINVITEMS(OTHER, SELF, 0x85f2, 1);
    AI_LOGENTRY(TOPIC_SQ305, LOG_Q308_RAHMA_GOTSPDHERB);
    AI_STOPPROCESSINFOS(SELF);
    NPC_SETREFUSETALK(VLK_6407_RAMHA, 15);
    NPC_EXCHANGEROUTINE(SELF, "WORK");
}

func void DIA_RAMHA_OSIPPOTION_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Ramha_OsipPotion_15_01");
    if ((NPC_KNOWSINFO(OTHER, 0x12a25)) && ((NPC_HASITEMS(OTHER, 0x85f2)) >= (1))) {
        AI_OUTPUT(OTHER, SELF, "DIA_Ramha_OsipPotion_15_02");
        AI_OUTPUT(SELF, OTHER, "DIA_Ramha_OsipPotion_03_03");
        AI_OUTPUT(OTHER, SELF, "DIA_Ramha_OsipPotion_15_04");
        DIA_RAMHA_OSIPPOTION_GOTOWORK();
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Ramha_OsipPotion_03_07");
    AI_OUTPUT(OTHER, SELF, "DIA_Ramha_OsipPotion_15_08");
    AI_OUTPUT(SELF, OTHER, "DIA_Ramha_OsipPotion_03_09");
    AI_OUTPUT(SELF, OTHER, "DIA_Ramha_OsipPotion_03_10");
    INFO_CLEARCHOICES(0x12a61);
    if ((NPC_HASITEMS(OTHER, 0x85f2)) >= (1)) {
        INFO_ADDCHOICE(0x12a61, "I happen to have it with me.", 0x12a65);
    };
    INFO_ADDCHOICE(0x12a61, "All right, I'll be back soon.", 0x12a69);
    INFO_ADDCHOICE(0x12a61, "Where does the snapperweed grow?", 0x12a67);
}

func void DIA_RAMHA_OSIPPOTION_GOTIT() {
    AI_OUTPUT(OTHER, SELF, "DIA_Ramha_OsipPotion_GotIt_15_01");
    DIA_RAMHA_OSIPPOTION_GOTOWORK();
}

var int RAHMA_OSIPPOTOION_WHERE = 0;
func void DIA_RAMHA_OSIPPOTION_WHERE() {
    RAHMA_OSIPPOTOION_WHERE = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Ramha_OsipPotion_Where_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Ramha_OsipPotion_Where_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Ramha_OsipPotion_Where_03_03");
    AI_LOGENTRY(TOPIC_SQ305, LOG_Q308_RAHMA_WHERESPDHERB);
}

var int RAHMA_OSIPPOTION_SEARCHHERB = 0;
func void DIA_RAMHA_OSIPPOTION_BYE() {
    RAHMA_OSIPPOTION_SEARCHHERB = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Ramha_OsipPotion_Bye_15_01");
    INFO_CLEARCHOICES(0x12a61);
    AI_STOPPROCESSINFOS(OTHER);
    if ((RAHMA_OSIPPOTOION_WHERE) == (TRUE)) {
        AI_LOGENTRY(TOPIC_SQ305, LOG_Q308_RAHMA_SEARCHSPDHERB_V1);
    };
    AI_LOGENTRY(TOPIC_SQ305, LOG_Q308_RAHMA_SEARCHSPDHERB_V2);
}

instance DIA_RAMHA_POTIONREADY(C_INFO) {
    NPC = 0xcf25;
    NR = 1;
    CONDITION = DIA_RAMHA_POTIONREADY_CONDITION;
    INFORMATION = DIA_RAMHA_POTIONREADY_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_RAMHA_POTIONREADY_CONDITION() {
    if (((((LOG_GETSTATUS(MIS_SQ305)) == (LOG_RUNNING)) && (NPC_ISINSTATE(SELF, 0xf09f))) && ((SQ305_RAHMA_OSIPPOTOION_WORK) == (1))) && ((SCATTY_TEACH_PERM2) != (TRUE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_RAMHA_POTIONREADY_INFO() {
    if ((NPC_REFUSETALK(SELF)) == (FALSE)) {
        SELF.AIVAR[15] = FALSE;
        SQ305_RAHMA_OSIPPOTOION_WORK = 2;
        AI_OUTPUT(SELF, OTHER, "DIA_Ramha_PotionReady_03_01");
        AI_OUTPUT(OTHER, SELF, "DIA_Ramha_PotionReady_15_02");
        AI_OUTPUT(SELF, OTHER, "DIA_Ramha_PotionReady_03_03");
        AI_OUTPUT(SELF, OTHER, "DIA_Ramha_PotionReady_03_04");
        INFO_CLEARCHOICES(0x12a6a);
        if ((NPC_HASITEMS(OTHER, 0x859b)) >= (SQ305_RAHMAPOTION)) {
            INFO_ADDCHOICE(0x12a6a, DIALOG_GIVE50G, 0x12a6d);
        };
        INFO_ADDCHOICE(0x12a6a, "Why don't you drop the price a little?", 0x12a6e);
        INFO_ADDCHOICE(0x12a6a, "I don't carry that much with me.", 0x12a70);
        NPC_EXCHANGEROUTINE(SELF, START);
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Ramha_PotionReady_03_05");
    INFO_CLEARCHOICES(0x12a6a);
    AI_STOPPROCESSINFOS(SELF);
}

func void DIA_RAMHA_POTIONREADY_GOLD() {
    SQ305_OSIP_GOTPOTION = 2;
    AI_OUTPUT(OTHER, SELF, "DIA_Ramha_PotionReady_Gold_15_01");
    B_GIVEINVITEMS(OTHER, SELF, 0x859b, SQ305_RAHMAPOTION);
    AI_OUTPUT(SELF, OTHER, "DIA_Ramha_PotionReady_Gold_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Ramha_PotionReady_Gold_03_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Ramha_PotionReady_Gold_15_04");
    CREATEINVITEMS(SELF, 0x91b2, 1);
    B_GIVEINVITEMS(SELF, OTHER, 0x91b2, 1);
    AI_LOGENTRY(TOPIC_SQ305, LOG_Q308_RAHMA_GOTPOTION);
    INFO_CLEARCHOICES(0x12a6a);
}

func void DIA_RAMHA_POTIONREADY_PRICE() {
    AI_OUTPUT(OTHER, SELF, "DIA_Ramha_PotionReady_Price_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Ramha_PotionReady_Price_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Ramha_PotionReady_Price_03_03");
}

var int RAHMA_POTIONREADY_GOLD = 0;
func void DIA_RAMHA_POTIONREADY_NOGOLD() {
    RAHMA_POTIONREADY_GOLD = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Ramha_PotionReady_NoGold_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Ramha_PotionReady_NoGold_03_02");
    INFO_CLEARCHOICES(0x12a6a);
}

instance DIA_RAMHA_POTIONREADYGOLD(C_INFO) {
    NPC = 0xcf25;
    NR = 1;
    CONDITION = DIA_RAMHA_POTIONREADYGOLD_CONDITION;
    INFORMATION = DIA_RAMHA_POTIONREADYGOLD_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = DIALOG_PAY50G;
}

func int DIA_RAMHA_POTIONREADYGOLD_CONDITION() {
    if (((((LOG_GETSTATUS(MIS_SQ305)) == (LOG_RUNNING)) && ((NPC_HASITEMS(OTHER, 0x859b)) >= (SQ305_RAHMAPOTION))) && ((RAHMA_POTIONREADY_GOLD) == (TRUE))) && ((SCATTY_TEACH_PERM2) != (TRUE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_RAMHA_POTIONREADYGOLD_INFO() {
    RAHMA_POTIONREADY_GOLD = FALSE;
    DIA_RAMHA_POTIONREADY_GOLD();
}

instance DIA_RAMHA_GOTHERB(C_INFO) {
    NPC = 0xcf25;
    NR = 1;
    CONDITION = DIA_RAMHA_GOTHERB_CONDITION;
    INFORMATION = DIA_RAMHA_GOTHERB_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I brought the herb.";
}

func int DIA_RAMHA_GOTHERB_CONDITION() {
    if (((((LOG_GETSTATUS(MIS_SQ305)) == (LOG_RUNNING)) && ((RAHMA_OSIPPOTION_SEARCHHERB) == (TRUE))) && ((NPC_HASITEMS(OTHER, 0x85f2)) >= (1))) && ((SCATTY_TEACH_PERM2) != (TRUE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_RAMHA_GOTHERB_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Ramha_GotHerb_15_01");
    DIA_RAMHA_OSIPPOTION_GOTOWORK();
}

instance DIA_RAMHA_KQ402_RUST(C_INFO) {
    NPC = 0xcf25;
    NR = 1;
    CONDITION = DIA_RAMHA_KQ402_RUST_CONDITION;
    INFORMATION = DIA_RAMHA_KQ402_RUST_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I have an unusual case for you.";
}

func int DIA_RAMHA_KQ402_RUST_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_KQ402)) == (LOG_RUNNING)) && ((KQ402_ALCHEMIC) == (1))) && ((SCATTY_TEACH_PERM2) != (TRUE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_RAMHA_KQ402_RUST_INFO() {
    KQ402_ALCHEMIC = 2;
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Ramha_KQ402_Rust_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Ramha_KQ402_Rust_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Ramha_KQ402_Rust_15_03");
    AI_STARTFACEANI(SELF, S_WHAT, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Ramha_KQ402_Rust_03_04");
    AI_OUTPUT(OTHER, SELF, "DIA_Ramha_KQ402_Rust_15_05");
    AI_RESETFACEANI(SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Ramha_KQ402_Rust_03_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Ramha_KQ402_Rust_03_07");
    AI_OUTPUT(OTHER, SELF, "DIA_Ramha_KQ402_Rust_15_08");
    AI_OUTPUT(SELF, OTHER, "DIA_Ramha_KQ402_Rust_03_09");
    AI_OUTPUT(SELF, OTHER, "DIA_Ramha_KQ402_Rust_03_10");
    AI_OUTPUT(OTHER, SELF, "DIA_Ramha_KQ402_Rust_15_11");
    AI_OUTPUT(SELF, OTHER, "DIA_Ramha_KQ402_Rust_03_12");
    AI_OUTPUT(OTHER, SELF, "DIA_Ramha_KQ402_Rust_15_13");
    AI_OUTPUT(SELF, OTHER, "DIA_Ramha_KQ402_Rust_03_14");
    AI_OUTPUT(SELF, OTHER, "DIA_Ramha_KQ402_Rust_03_15");
    INFO_CLEARCHOICES(0x12a77);
    INFO_ADDCHOICE(0x12a77, "It's about new body armor for the city guard.", 0x12a7f);
    INFO_ADDCHOICE(0x12a77, "It's none of your business.", 0x12a80);
}

var int RAMHA_KQ402_PAYMENT = 0;
var int RAMHA_KQ402_NEEDPAYMENT = 0;
var int RAMHA_KQ402_WAIT = 0;
var int RAMHA_KQ402_WAIT_DAY = 0;
func void DIA_RAMHA_KQ402_RUST_NEXT() {
    if ((RAMHA_KQ402_PAYMENT) == (1)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Ramha_KQ402_Rust_Next_03_02");
        AI_LOGENTRY(TOPIC_KQ402, LOG_KQ402_RAMHA_AGREE_V1);
    };
    if ((RAMHA_KQ402_PAYMENT) == (2)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Ramha_KQ402_Rust_Next_03_03");
        AI_LOGENTRY(TOPIC_KQ402, LOG_KQ402_RAMHA_AGREE_V2);
    };
    INFO_CLEARCHOICES(0x12a77);
}

func void DIA_RAMHA_KQ402_RUST_NEWARMOR() {
    RAMHA_KQ402_PAYMENT = 2;
    AI_OUTPUT(OTHER, SELF, "DIA_Ramha_KQ402_Rust_NewArmor_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Ramha_KQ402_Rust_NewArmor_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Ramha_KQ402_Rust_NewArmor_03_04");
    AI_OUTPUT(OTHER, SELF, "DIA_Ramha_KQ402_Rust_NewArmor_15_05");
    DIA_RAMHA_KQ402_RUST_NEXT();
}

func void DIA_RAMHA_KQ402_RUST_NOTELL() {
    RAMHA_KQ402_PAYMENT = 1;
    AI_OUTPUT(OTHER, SELF, "DIA_Ramha_KQ402_Rust_NoTell_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Ramha_KQ402_Rust_NoTell_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Ramha_KQ402_Rust_NoTell_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Ramha_KQ402_Rust_NoTell_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Ramha_KQ402_Rust_NoTell_03_05");
    AI_OUTPUT(OTHER, SELF, "DIA_Ramha_KQ402_Rust_NoTell_15_06");
    DIA_RAMHA_KQ402_RUST_NEXT();
}

instance DIA_RAMHA_KQ402_RUSTREADY(C_INFO) {
    NPC = 0xcf25;
    NR = 1;
    CONDITION = DIA_RAMHA_KQ402_RUSTREADY_CONDITION;
    INFORMATION = DIA_RAMHA_KQ402_RUSTREADY_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "As for my order...";
}

func int DIA_RAMHA_KQ402_RUSTREADY_CONDITION() {
    if (((((LOG_GETSTATUS(MIS_KQ402)) == (LOG_RUNNING)) && ((RAMHA_KQ402_WAIT) != (2))) && (NPC_KNOWSINFO(OTHER, 0x12a77))) && ((SCATTY_TEACH_PERM2) != (TRUE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void RAMHA_KQ402_NOMONEY() {
    AI_OUTPUT(SELF, OTHER, "DIA_Ramha_KQ402_RustReady_03_02");
}

func void RAMHA_KQ402_PAY() {
    if ((((NPC_HASITEMS(OTHER, 0x859b)) >= (KQ402_RAMHAPAYMENT_V1)) && ((RAMHA_KQ402_PAYMENT) == (1))) || (((NPC_HASITEMS(OTHER, 0x859b)) >= (KQ402_RAMHAPAYMENT_V2)) && ((RAMHA_KQ402_PAYMENT) == (2)))) {
        RAMHA_KQ402_NEEDPAYMENT = 1;
        RAMHA_KQ402_WAIT = 1;
        RAMHA_KQ402_WAIT_DAY = WLD_GETDAY();
        if ((RAMHA_KQ402_PAYMENT) == (1)) {
        } else if ((RAMHA_KQ402_PAYMENT) == (2)) {
            B_GIVEINVITEMS(OTHER, SELF, 0x859b, KQ402_RAMHAPAYMENT_V2);
        };
        AI_OUTPUT(OTHER, SELF, "DIA_Ramha_KQ402_RustReady_15_03");
        AI_OUTPUT(SELF, OTHER, "DIA_Ramha_KQ402_Rust_Next_03_01");
        RAMHA_KQ402_WAIT = 2;
        CREATEINVITEMS(SELF, 0x91cb, 5);
        B_GIVEINVITEMS(SELF, OTHER, 0x91cb, 5);
        AI_OUTPUT(SELF, OTHER, "DIA_Ramha_KQ402_RustReady_03_07");
        AI_OUTPUT(OTHER, SELF, "DIA_Ramha_KQ402_RustReady_15_08");
        AI_OUTPUT(SELF, OTHER, "DIA_Ramha_KQ402_RustReady_03_09");
        AI_OUTPUT(OTHER, SELF, "DIA_Ramha_KQ402_RustReady_15_10");
        AI_LOGENTRY(TOPIC_KQ402, LOG_KQ402_RAMHA_GOTEVERYTHING);
        NPC_EXCHANGEROUTINE(SELF, START);
        INFO_CLEARCHOICES(0x12a81);
    };
    RAMHA_KQ402_NOMONEY();
}

func void DIA_RAMHA_KQ402_RUSTREADY_BACK() {
    INFO_CLEARCHOICES(0x12a81);
}

func void DIA_RAMHA_KQ402_RUSTREADY_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Ramha_KQ402_RustReady_15_01");
    INFO_CLEARCHOICES(0x12a81);
    if ((RAMHA_KQ402_PAYMENT) == (1)) {
        INFO_ADDCHOICE(0x12a81, DIALOG_PAY1000G, 0x12a84);
    };
    if ((RAMHA_KQ402_PAYMENT) == (2)) {
        INFO_ADDCHOICE(0x12a81, DIALOG_PAY500G, 0x12a84);
    };
    INFO_ADDCHOICE(0x12a81, DIALOG_BACK, 0x12a85);
}

instance DIA_RAMHA_KQ402_RUSTHELP(C_INFO) {
    NPC = 0xcf25;
    NR = 1;
    CONDITION = DIA_RAMHA_KQ402_RUSTHELP_CONDITION;
    INFORMATION = DIA_RAMHA_KQ402_RUSTHELP_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I'm back.";
}

func int DIA_RAMHA_KQ402_RUSTHELP_CONDITION() {
    if (((((LOG_GETSTATUS(MIS_KQ402)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 0x104f7))) && ((NPC_HASITEMS(OTHER, 0x846f)) >= (1))) && ((SCATTY_TEACH_PERM2) != (TRUE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

var int RAMHA_KQ402_WAIT2 = 0;
var int RAMHA_KQ402_WAIT2_DAY = 0;
func void DIA_RAMHA_KQ402_RUSTHELP_INFO() {
    SELF.AIVAR[15] = TRUE;
    RAMHA_KQ402_WAIT2 = 1;
    RAMHA_KQ402_WAIT2_DAY = WLD_GETDAY();
    B_GIVEINVITEMS(OTHER, SELF, 0x846f, 1);
    AI_OUTPUT(OTHER, SELF, "DIA_Ramha_KQ402_RustHelp_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Ramha_KQ402_RustHelp_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Ramha_KQ402_RustHelp_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Ramha_KQ402_RustHelp_03_04");
    AI_OUTPUT(OTHER, SELF, "DIA_Ramha_KQ402_RustHelp_15_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Ramha_KQ402_RustHelp_03_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Ramha_KQ402_RustHelp_03_07");
    AI_OUTPUT(OTHER, SELF, "DIA_Ramha_KQ402_RustHelp_15_08");
    AI_OUTPUT(SELF, OTHER, "DIA_Ramha_KQ402_RustHelp_03_09");
    AI_OUTPUT(OTHER, SELF, "DIA_Ramha_KQ402_RustHelp_15_10");
    AI_LOGENTRY(TOPIC_KQ402, LOG_KQ402_RAMHA_NEEDUGLYARMOR);
    AI_STOPPROCESSINFOS(SELF);
    NPC_EXCHANGEROUTINE(SELF, "WORK");
}

instance DIA_RAMHA_KQ402_RUSTWAIT(C_INFO) {
    NPC = 0xcf25;
    NR = 1;
    CONDITION = DIA_RAMHA_KQ402_RUSTWAIT_CONDITION;
    INFORMATION = DIA_RAMHA_KQ402_RUSTWAIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "How's my armor?";
}

func int DIA_RAMHA_KQ402_RUSTWAIT_CONDITION() {
    if ((((((LOG_GETSTATUS(MIS_KQ402)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 0x12a87))) && ((RAMHA_KQ402_WAIT2) == (1))) && ((SCATTY_TEACH_PERM2) != (TRUE))) && ((KQ402_WEGOTRAMHAARMOR) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_RAMHA_KQ402_RUSTWAIT_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Ramha_KQ402_RustWait_15_01");
    if ((RAMHA_KQ402_WAIT2_DAY) <= ((WLD_GETDAY()) - (1))) {
        SELF.AIVAR[15] = FALSE;
        CREATEINVITEMS(SELF, 0x91cc, 1);
        B_GIVEINVITEMS(SELF, OTHER, 0x91cc, 1);
        AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
        AI_OUTPUT(SELF, OTHER, "DIA_Ramha_KQ402_RustWait_03_03");
        AI_OUTPUT(OTHER, SELF, "DIA_Ramha_KQ402_RustWait_15_04");
        AI_OUTPUT(OTHER, SELF, "DIA_Ramha_KQ402_RustWait_15_05");
        AI_OUTPUT(SELF, OTHER, "DIA_Ramha_KQ402_RustWait_03_06");
        AI_OUTPUT(OTHER, SELF, "DIA_Ramha_KQ402_RustWait_15_07");
        AI_RESETFACEANI(SELF);
        AI_STOPPROCESSINFOS(SELF);
        KQ402_WEGOTRAMHAARMOR = TRUE;
        if ((KQ402_RAPORTABOUTARMORS) == (TRUE)) {
            AI_LOGENTRY(TOPIC_KQ402, LOG_KQ402_RAMHA_GOTUGLYARMOR);
        } else {
            AI_LOGENTRY(TOPIC_KQ402, LOG_KQ402_RAMHA_GOTUGLYARMORNORAPORT);
        } else {
            NPC_EXCHANGEROUTINE(SELF, START);
        } else {
            /* set_instance(0) */;
        };
    };
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Ramha_KQ402_RustWait_03_02");
    AI_RESETFACEANI(SELF);
}

instance DIA_RAMHA_KQ406_RATS(C_INFO) {
    NPC = 0xcf25;
    NR = 1;
    CONDITION = DIA_RAMHA_KQ406_RATS_CONDITION;
    INFORMATION = DIA_RAMHA_KQ406_RATS_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Do you have any rat bait?";
}

func int DIA_RAMHA_KQ406_RATS_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_KQ406)) == (LOG_RUNNING)) && ((KQ406_READNOTE) == (TRUE))) && ((KQ406_WAITFORSABOTEUR) != (2))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_RAMHA_KQ406_RATS_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Ramha_KQ406_Rats_15_01");
    AI_STARTFACEANI(SELF, S_THINK, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Ramha_KQ406_Rats_03_02");
    AI_STARTFACEANI(OTHER, S_TIRED, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Ramha_KQ406_Rats_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Ramha_KQ406_Rats_03_04");
    AI_OUTPUT(OTHER, SELF, "DIA_Ramha_KQ406_Rats_15_05");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Ramha_KQ406_Rats_03_06");
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
}

instance DIA_RAMHA_KQ406_BUY(C_INFO) {
    NPC = 0xcf25;
    NR = 1;
    CONDITION = DIA_RAMHA_KQ406_BUY_CONDITION;
    INFORMATION = DIA_RAMHA_KQ406_BUY_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "Alright, I'll buy this bait. (150 GP)";
}

var int RAMHA_KQ406_BUYPOTION = 0;
func int DIA_RAMHA_KQ406_BUY_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_KQ406)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 0x12a8f))) && ((RAMHA_KQ406_BUYPOTION) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_RAMHA_KQ406_BUY_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Ramha_KQ406_Buy_15_01");
    if ((NPC_HASITEMS(OTHER, 0x859b)) >= (KQ406_RAMHARATPOTION)) {
        RAMHA_KQ406_BUYPOTION = TRUE;
        B_GIVEINVITEMS(OTHER, SELF, 0x859b, KQ406_RAMHARATPOTION);
        AI_OUTPUT(SELF, OTHER, "DIA_Ramha_KQ406_Buy_03_02");
        AI_LOGENTRY(TOPIC_KQ406, LOG_KQ406_RAMHA_BOUGHTPOTION);
        CREATEINVITEMS(SELF, 0x923b, 2);
        B_GIVEINVITEMS(SELF, OTHER, 0x923b, 2);
        KQ406_PREPARERATPOTIONPLACES();
    };
    B_SAY(SELF, OTHER, "$NOGOLD");
}

instance DIA_RAMHA_TEACH(C_INFO) {
    NPC = 0xcf25;
    NR = 900;
    CONDITION = DIA_RAMHA_TEACH_CONDITION;
    INFORMATION = DIA_RAMHA_TEACH_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = B_BUILDLEARNSTRING2(PRINT_LEARN_ALCHEMY2, B_GETLEARNCOSTTALENT(OTHER, NPC_TALENT_ALCHEMY, 2), RAMHA_ALCHEMY);
}

func int DIA_RAMHA_TEACH_CONDITION() {
    if (((((SISTERS_CANTEACHALCHEMY) == (TRUE)) && ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_ALCHEMY)) == (1))) && (NPC_KNOWSINFO(OTHER, 0x12a43))) && ((RAMHATEACH_NEVER) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_RAMHA_TEACH_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Ramha_Teach_15_01");
    if ((NPC_HASITEMS(OTHER, 0x859b)) >= (RAMHA_ALCHEMY)) {
        if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_ALCHEMY)) == (2)) {
            NPC_REMOVEINVITEMS(SELF, 0x859b, RAMHA_ALCHEMY);
            AI_OUTPUT(SELF, OTHER, "DIA_Ramha_Teach_Alchemy_03_01");
            B_GIVEINVITEMS(OTHER, SELF, 0x859b, RAMHA_ALCHEMY);
            AI_OUTPUT(SELF, OTHER, "DIA_Ramha_Teach_Alchemy_03_02");
        };
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Ramha_Teach_Alchemy_03_03");
}

instance DIA_RAMHA_CQ006_HELP(C_INFO) {
    NPC = 0xcf25;
    NR = 1;
    CONDITION = DIA_RAMHA_CQ006_HELP_CONDITION;
    INFORMATION = DIA_RAMHA_CQ006_HELP_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Do you know anything about setting bones?";
}

func int DIA_RAMHA_CQ006_HELP_CONDITION() {
    if (((LOG_GETSTATUS(MIS_CQ006)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 0x1276d))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_RAMHA_CQ006_HELP_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 0, -(1));
    B_SAY(OTHER, SELF, "$CQ006_MARVIN_BONEHELP");
    AI_STARTFACEANI(SELF, S_TIRED, 0, -(1));
    B_SAY(SELF, OTHER, "$NO");
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
    AI_LOGENTRY(TOPIC_CQ006, LOG_CQ006_RAMHA_NOHELP);
    AI_FUNCTION(SELF, 0xf4f1);
}

instance DIA_RAMHA_PICKPOCKET(C_INFO) {
    NPC = 0xcf25;
    NR = 900;
    CONDITION = DIA_RAMHA_PICKPOCKET_CONDITION;
    INFORMATION = DIA_RAMHA_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_80_FEMALE;
}

func int DIA_RAMHA_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_RAMHA_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(0x12a9c);
    INFO_ADDCHOICE(0x12a9c, DIALOG_BACK, 0x12aa0);
    INFO_ADDCHOICE(0x12a9c, DIALOG_PICKPOCKET, 0x12a9f);
}

func void DIA_RAMHA_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (2)) {
        CREATEINVITEMS(SELF, 0x85e6, 1);
        B_GIVEINVITEMS(SELF, OTHER, 0x85e6, 1);
        B_PICKPOCKET_AMBIENT_TIER_2();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(0x12a9c);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(0x12a9c);
}

func void DIA_RAMHA_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(0x12a9c);
}


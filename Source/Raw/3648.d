instance DIA_SIGUND_EXIT(C_INFO) {
    NPC = 0xd495;
    NR = 999;
    CONDITION = DIA_SIGUND_EXIT_CONDITION;
    INFORMATION = DIA_SIGUND_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_SIGUND_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_SIGUND_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_SIGUND_QA304_STOPRIGHTTHERE(C_INFO) {
    NPC = 0xd495;
    NR = 1;
    CONDITION = DIA_SIGUND_QA304_STOPRIGHTTHERE_CONDITION;
    INFORMATION = DIA_SIGUND_QA304_STOPRIGHTTHERE_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_SIGUND_QA304_STOPRIGHTTHERE_CONDITION() {
    if (((LOG_GETSTATUS(MIS_QA304)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 0x11cb9))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_SIGUND_QA304_STOPRIGHTTHERE_CHOICES() {
    INFO_CLEARCHOICES(0x10123);
    if ((HERO.ATTRIBUTE[4]) >= (MIL_13506_SIGUND.ATTRIBUTE[4])) {
        INFO_ADDCHOICE(0x10123, "Is it my imagination, or is that fire? (Knock out)", 0x1012b);
    };
    INFO_ADDCHOICE(0x10123, "Maybe we can work something out? (Bribe)", 0x10128);
    INFO_ADDCHOICE(0x10123, "Move the oil.", 0x1012c);
}

func void DIA_SIGUND_QA304_STOPRIGHTTHERE_INFO() {
    SELF.AIVAR[96] = -(1);
    B_TURNTONPC(VLK_13504_FULKO, MIL_13506_SIGUND);
    B_TURNTONPC(VLK_13505_WORKER, MIL_13506_SIGUND);
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Sigund_QA304_StopRightThere_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Sigund_QA304_StopRightThere_03_02");
    INFO_CLEARCHOICES(0x10123);
    INFO_ADDCHOICE(0x10123, "Where's Duster?", 0x10127);
}

func void DIA_SIGUND_QA304_STOPRIGHTTHERE_DUSTER() {
    AI_STARTFACEANI(OTHER, S_SURPRISE, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Sigund_QA304_StopRightThere_Duster_15_01");
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
    AI_OUTPUT(SELF, OTHER, "DIA_Sigund_QA304_StopRightThere_Duster_03_02");
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Sigund_QA304_StopRightThere_Duster_03_03");
    DIA_SIGUND_QA304_STOPRIGHTTHERE_CHOICES();
}

func void DIA_SIGUND_QA304_STOPRIGHTTHERE_DISCUSS() {
    AI_OUTPUT(OTHER, SELF, "DIA_Sigund_QA304_StopRightThere_Discuss_15_01");
    B_MARVIN_USEFAKEBAG_THROW();
    AI_OUTPUT(SELF, OTHER, "DIA_Sigund_QA304_StopRightThere_Discuss_03_02");
    if ((NPC_HASITEMS(OTHER, 0x859b)) >= (QA304_MILITIAPAY)) {
        INFO_ADDCHOICE(0x10123, "So be it. For the glory of the fatherland! (Give 50 GP)", 0x1012d);
    };
}

func void SIGUND_QA304_ATTACK() {
    B_MAGICHURTNPC(HERO, MIL_13506_SIGUND, 0x1869f);
    AI_PLAYANI(MIL_13506_SIGUND, "T_WOUNDEDB_START");
    SND_PLAY("FIG_SwordFinal");
    AI_REMOVEWEAPON(HERO);
    HERO.AIVAR[4] = FALSE;
}

func void SIGUND_QA304_UNCONCIOUS() {
    AI_STARTSTATE(MIL_13506_SIGUND, 0xf0a3, 1, "");
}

func void DIA_SIGUND_QA304_STOPRIGHTTHERE_STUN() {
    QA304_SIGUNDTAKEDOWN = 1;
    OTHER.AIVAR[95] = TRUE;
    AI_STARTFACEANI(OTHER, S_FRIGHTENED, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Sigund_QA304_StopRightThere_Stun_15_01");
    AI_WAITTILLEND(SELF, OTHER);
    AI_TURNAWAY(SELF, OTHER);
    AI_RESETFACEANI(OTHER);
    AI_OUTPUT(SELF, OTHER, "DIA_Sigund_QA304_StopRightThere_Stun_03_02");
    AI_WAITTILLEND(OTHER, SELF);
    B_MARVIN_ATTACKINDIALOGUE_PREPARE();
    AI_FUNCTION(OTHER, 0x10129);
    B_MARVIN_ATTACKINDIALOGUE_ATTACK();
    AI_STOPPROCESSINFOS(OTHER);
    AI_LOGENTRY(TOPIC_QA304, LOG_QA304_SIGUND_ATTACK);
    AI_FUNCTION(SELF, 0x1012a);
}

func void DIA_SIGUND_QA304_STOPRIGHTTHERE_OIL() {
    QA304_SIGUNDTAKEDOWN = 3;
    AI_OUTPUT(OTHER, SELF, "DIA_Sigund_QA304_StopRightThere_Oil_15_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Sigund_QA304_StopRightThere_Oil_15_02");
    AI_STARTFACEANI(SELF, S_WHAT, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Sigund_QA304_StopRightThere_Oil_03_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Sigund_QA304_StopRightThere_Oil_15_04");
    AI_RESETFACEANI(SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Sigund_QA304_StopRightThere_Oil_03_05");
    AI_STOPPROCESSINFOS(OTHER);
    AI_LOGENTRY(TOPIC_QA304, LOG_QA304_SIGUND_OIL);
    NPC_EXCHANGEROUTINE(SELF, "QA304_INN");
}

func void DIA_SIGUND_QA304_STOPRIGHTTHERE_DISCUSS_GOLD() {
    QA304_SIGUNDTAKEDOWN = 2;
    AI_OUTPUT(OTHER, SELF, "DIA_Sigund_QA304_StopRightThere_Gold_15_01");
    B_GIVEINVITEMS(OTHER, SELF, 0x859b, QA304_MILITIAPAY);
    AI_WAITTILLEND(SELF, OTHER);
    AI_STOPPROCESSINFOS(SELF);
    AI_LOGENTRY(TOPIC_QA304, LOG_QA304_SIGUND_GOLD);
    NPC_EXCHANGEROUTINE(SELF, "QA304_INN");
}

instance DIA_SIGUND_HELLO(C_INFO) {
    NPC = 0xd495;
    NR = 1;
    CONDITION = DIA_SIGUND_HELLO_CONDITION;
    INFORMATION = DIA_SIGUND_HELLO_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "What do you do?";
}

func int DIA_SIGUND_HELLO_CONDITION() {
    return TRUE;
}

func void DIA_SIGUND_HELLO_INFO() {
    B_SAY(OTHER, SELF, "$MARVIN_WhatIsYourJob");
    AI_OUTPUT(SELF, OTHER, "DIA_Sigund_Hello_03_01");
}

instance DIA_SIGUND_AMBIENT(C_INFO) {
    NPC = 0xd495;
    NR = 998;
    CONDITION = DIA_SIGUND_AMBIENT_CONDITION;
    INFORMATION = DIA_SIGUND_AMBIENT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "How are you doing?";
}

func int DIA_SIGUND_AMBIENT_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x1012e)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_SIGUND_AMBIENT_INFO() {
    B_SAY(OTHER, SELF, "$MARVIN_HowAreYou");
    if (!(NPC_KNOWSINFO(OTHER, 0x10123))) {
        AI_OUTPUT(SELF, OTHER, "DIA_Sigund_Ambient_03_01");
    };
    if (NPC_KNOWSINFO(OTHER, 0x10123)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Sigund_Ambient_03_02");
    };
}

instance DIA_ARWID_KQ402_EXIT(C_INFO) {
    NPC = 52412;
    NR = 999;
    CONDITION = DIA_ARWID_KQ402_EXIT_CONDITION;
    INFORMATION = DIA_ARWID_KQ402_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_ARWID_KQ402_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_ARWID_KQ402_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_ARWID_KQ402_ARMORS(C_INFO) {
    NPC = 52412;
    NR = 1;
    CONDITION = DIA_ARWID_KQ402_ARMORS_CONDITION;
    INFORMATION = DIA_ARWID_KQ402_ARMORS_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_ARWID_KQ402_ARMORS_CONDITION() {
    if (((LOG_GETSTATUS(MIS_KQ402)) == (LOG_RUNNING)) && ((KQ402_ARWIDCUTSCENE) == (2))) {
        if ((((((NPC_GETDISTTOWP(MIL_4017_ARWID_KQ402, "PARTM3_KQ402_ARWID")) <= (300)) && ((NPC_GETDISTTOWP(NONE_2009_LENNART, "PARTM3_KQ402_LENNART")) <= (300))) && ((NPC_GETDISTTOWP(MIL_4000_RODERICH, "PARTM3_KQ402_RODERICH")) <= (300))) && ((NPC_GETDISTTOWP(MIL_4040_CABI, "PARTM3_KQ402_MILITIA_LAUGH_01")) <= (300))) && ((NPC_GETDISTTOWP(MIL_4041_LEVE, "PARTM3_KQ402_MILITIA_LAUGH_02")) <= (300))) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_ARWID_KQ402_ARMORS_INFO() {
    TRIA_INVITE(MIL_4017_ARWID_KQ402);
    TRIA_INVITE(NONE_2009_LENNART);
    TRIA_INVITE(MIL_4000_RODERICH);
    TRIA_INVITE(MIL_4040_CABI);
    TRIA_INVITE(MIL_4041_LEVE);
    TRIA_STARTEXT(FALSE);
    AI_LOOKATNPC(OTHER, SELF);
    TRIA_WAIT();
    TRIA_NEXT(MIL_4000_RODERICH);
    AI_TURNTONPC(SELF, NONE_2009_LENNART);
    AI_TURNTONPC(MIL_4040_CABI, SELF);
    AI_TURNTONPC(MIL_4041_LEVE, SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Arwid_KQ402_Armors_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Arwid_KQ402_Armors_03_02");
    TRIA_WAIT();
    TRIA_NEXT(MIL_4017_ARWID_KQ402);
    AI_OUTPUT(SELF, OTHER, "DIA_Arwid_KQ402_Armors_03_03");
    TRIA_WAIT();
    TRIA_NEXT(NONE_2009_LENNART);
    AI_TURNTONPC(SELF, MIL_4000_RODERICH);
    AI_OUTPUT(SELF, OTHER, "DIA_Arwid_KQ402_Armors_03_04");
    TRIA_WAIT();
    TRIA_NEXT(MIL_4000_RODERICH);
    AI_OUTPUT(SELF, OTHER, "DIA_Arwid_KQ402_Armors_03_05");
    TRIA_WAIT();
    TRIA_NEXT(NONE_2009_LENNART);
    AI_OUTPUT(SELF, OTHER, "DIA_Arwid_KQ402_Armors_03_06");
    TRIA_WAIT();
    TRIA_NEXT(MIL_4000_RODERICH);
    AI_OUTPUT(SELF, OTHER, "DIA_Arwid_KQ402_Armors_03_07");
    TRIA_WAIT();
    TRIA_NEXT(NONE_2009_LENNART);
    AI_OUTPUT(SELF, OTHER, "DIA_Arwid_KQ402_Armors_03_08");
    TRIA_WAIT();
    TRIA_NEXT(MIL_4000_RODERICH);
    AI_OUTPUT(SELF, OTHER, "DIA_Arwid_KQ402_Armors_03_09");
    TRIA_WAIT();
    TRIA_NEXT(MIL_4017_ARWID_KQ402);
    AI_OUTPUT(SELF, OTHER, "DIA_Arwid_KQ402_Armors_03_10");
    TRIA_WAIT();
    TRIA_NEXT(NONE_2009_LENNART);
    AI_TURNTONPC(SELF, MIL_4000_RODERICH);
    AI_OUTPUT(SELF, OTHER, "DIA_Arwid_KQ402_Armors_03_11");
    TRIA_WAIT();
    TRIA_NEXT(MIL_4000_RODERICH);
    AI_TURNTONPC(SELF, MIL_4041_LEVE);
    AI_OUTPUT(SELF, OTHER, "DIA_Arwid_KQ402_Armors_03_12");
    AI_OUTPUT(SELF, OTHER, "DIA_Arwid_KQ402_Armors_03_13");
    AI_OUTPUT(SELF, OTHER, "DIA_Arwid_KQ402_Armors_03_14");
    AI_TURNTONPC(SELF, HERO);
    AI_OUTPUT(SELF, OTHER, "DIA_Arwid_KQ402_Armors_03_15");
    AI_FUNCTION(SELF, 66778);
    TRIA_FINISH();
    AI_STOPLOOKAT(SELF);
    AI_STOPLOOKAT(OTHER);
    AI_STOPPROCESSINFOS(SELF);
    B_LOGENTRY(TOPIC_KQ402, LOG_KQ402_GOTORODERICH);
    AI_FUNCTION(SELF, 61924);
}

func void ARWID_KQ402_DISABLECAMERA() {
    FF_APPLYONCEEXT(61925, 75, 4);
    HERO.AIVAR[4] = TRUE;
}

instance DIA_ARWID_KQ402_PATROL(C_INFO) {
    NPC = 52412;
    NR = 1;
    CONDITION = DIA_ARWID_KQ402_PATROL_CONDITION;
    INFORMATION = DIA_ARWID_KQ402_PATROL_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_ARWID_KQ402_PATROL_CONDITION() {
    if ((LOG_GETSTATUS(MIS_KQ402)) == (LOG_RUNNING)) {
        if (((NPC_GETDISTTOWP(MIL_4017_ARWID_KQ402, "PARTM2_KQ402_ARWID")) <= (500)) && ((NPC_GETDISTTOWP(NONE_2009_LENNART_KQ402, "PARTM2_KQ402_LENNART")) <= (500))) {
            if ((NPC_GETDISTTONPC(SELF, OTHER)) <= (300)) {
                return TRUE;
            };
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_ARWID_KQ402_PATROL_INFO() {
    TRIA_INVITE(NONE_2009_LENNART_KQ402);
    TRIA_START();
    AI_OUTPUT(OTHER, SELF, "DIA_Arwid_KQ402_Patrol_15_01");
    TRIA_WAIT();
    TRIA_NEXT(MIL_4017_ARWID_KQ402);
    AI_OUTPUT(SELF, OTHER, "DIA_Arwid_KQ402_Patrol_03_02");
    TRIA_WAIT();
    TRIA_NEXT(NONE_2009_LENNART_KQ402);
    AI_OUTPUT(SELF, OTHER, "DIA_Arwid_KQ402_Patrol_03_03");
    TRIA_WAIT();
    TRIA_NEXT(MIL_4017_ARWID_KQ402);
    AI_OUTPUT(SELF, OTHER, "DIA_Arwid_KQ402_Patrol_03_04");
    TRIA_WAIT();
    TRIA_NEXT(NONE_2009_LENNART_KQ402);
    AI_OUTPUT(SELF, OTHER, "DIA_Arwid_KQ402_Patrol_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Arwid_KQ402_Patrol_03_06");
    TRIA_FINISH();
    AI_STOPPROCESSINFOS(SELF);
    AI_FUNCTION(SELF, 66782);
}

func void ARWID_KQ402_CHANGELENNARTRTN() {
    NPC_EXCHANGEROUTINE(NONE_2009_LENNART_KQ402, START);
}

instance DIA_ARWID_KQ402_WHATDO(C_INFO) {
    NPC = 52412;
    NR = 1;
    CONDITION = DIA_ARWID_KQ402_WHATDO_CONDITION;
    INFORMATION = DIA_ARWID_KQ402_WHATDO_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
    DESCRIPTION = "I can see he's not taking it too well!";
}

func int DIA_ARWID_KQ402_WHATDO_CONDITION() {
    if (((LOG_GETSTATUS(MIS_KQ402)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 66779))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_ARWID_KQ402_WHATDO_INFO() {
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Arwid_KQ402_WhatDo_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Arwid_KQ402_WhatDo_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Arwid_KQ402_WhatDo_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Arwid_KQ402_WhatDo_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Arwid_KQ402_WhatDo_03_05");
    AI_OUTPUT(OTHER, SELF, "DIA_Arwid_KQ402_WhatDo_15_06");
    AI_RESETFACEANI(SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Arwid_KQ402_WhatDo_03_07");
    AI_OUTPUT(OTHER, SELF, "DIA_Arwid_KQ402_WhatDo_15_08");
    AI_OUTPUT(SELF, OTHER, "DIA_Arwid_KQ402_WhatDo_03_09");
    INFO_CLEARCHOICES(66783);
    INFO_ADDCHOICE(66783, "Tell me everything in detail.", 66788);
    INFO_ADDCHOICE(66783, "Get to the point.", 66789);
}

var int ARWID_KQ402_STORY;
func void DIA_ARWID_KQ402_NEXT() {
    KQ402_ALCHEMIC = 1;
    AI_OUTPUT(OTHER, SELF, "DIA_Arwid_KQ402_WhatDo_Long_15_08");
    AI_OUTPUT(SELF, OTHER, "DIA_Arwid_KQ402_WhatDo_Long_03_09");
    AI_OUTPUT(SELF, OTHER, "DIA_Arwid_KQ402_WhatDo_Long_03_10");
    if ((ARWID_KQ402_STORY) == (1)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Arwid_KQ402_WhatDo_Long_03_11");
    };
    AI_OUTPUT(OTHER, SELF, "DIA_Arwid_KQ402_WhatDo_Long_15_12");
    if ((ARWID_KQ402_STORY) == (1)) {
        AI_STARTFACEANI(OTHER, S_DOUBT, 1, -(1));
        AI_OUTPUT(SELF, OTHER, "DIA_Arwid_KQ402_WhatDo_Long_03_13");
        AI_OUTPUT(OTHER, SELF, "DIA_Arwid_KQ402_WhatDo_Long_15_14");
        AI_RESETFACEANI(OTHER);
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Arwid_KQ402_WhatDo_Long_03_15");
    AI_OUTPUT(SELF, OTHER, "DIA_Arwid_KQ402_WhatDo_Long_03_16");
    AI_OUTPUT(SELF, OTHER, "DIA_Arwid_KQ402_WhatDo_Long_03_17");
    AI_OUTPUT(SELF, OTHER, "DIA_Arwid_KQ402_WhatDo_Long_03_18");
    AI_OUTPUT(OTHER, SELF, "DIA_Arwid_KQ402_WhatDo_Long_15_19");
    AI_OUTPUT(SELF, OTHER, "DIA_Arwid_KQ402_WhatDo_Long_03_20");
    AI_OUTPUT(SELF, OTHER, "DIA_Arwid_KQ402_WhatDo_Long_03_21");
    AI_OUTPUT(OTHER, SELF, "DIA_Arwid_KQ402_WhatDo_Long_15_22");
    AI_OUTPUT(SELF, OTHER, "DIA_Arwid_KQ402_WhatDo_Long_03_23");
    AI_LOGENTRY(TOPIC_KQ402, LOG_KQ402_ARWID_ALCHEMIC);
    INFO_CLEARCHOICES(66783);
    AI_STOPPROCESSINFOS(SELF);
}

func void DIA_ARWID_KQ402_WHATDO_LONG() {
    ARWID_KQ402_STORY = 1;
    AI_OUTPUT(OTHER, SELF, "DIA_Arwid_KQ402_WhatDo_Long_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Arwid_KQ402_WhatDo_Long_03_02");
    AI_STARTFACEANI(OTHER, S_SERIOUS, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Arwid_KQ402_WhatDo_Long_15_03");
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Arwid_KQ402_WhatDo_Long_03_04");
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
    AI_OUTPUT(SELF, OTHER, "DIA_Arwid_KQ402_WhatDo_Long_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Arwid_KQ402_WhatDo_Long_03_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Arwid_KQ402_WhatDo_Long_03_07");
    DIA_ARWID_KQ402_NEXT();
}

func void DIA_ARWID_KQ402_WHATDO_SHORT() {
    ARWID_KQ402_STORY = 2;
    AI_FUNCTION(OTHER, 65358);
    AI_WAIT(OTHER, 1066192077);
    AI_FUNCTION(OTHER, 65359);
    AI_WAIT(OTHER, 1066192077);
    DIA_ARWID_KQ402_NEXT();
}

instance DIA_ARWID_KQ402_GOTPOTIONS(C_INFO) {
    NPC = 52412;
    NR = 1;
    CONDITION = DIA_ARWID_KQ402_GOTPOTIONS_CONDITION;
    INFORMATION = DIA_ARWID_KQ402_GOTPOTIONS_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "It's done. I got what you were talking about.";
}

func int DIA_ARWID_KQ402_GOTPOTIONS_CONDITION() {
    if (((LOG_GETSTATUS(MIS_KQ402)) == (LOG_RUNNING)) && ((NPC_HASITEMS(OTHER, 37323)) >= (5))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_ARWID_KQ402_GOTPOTIONS_INFO() {
    AI_STARTFACEANI(SELF, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Arwid_KQ402_GotPotions_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Arwid_KQ402_GotPotions_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Arwid_KQ402_GotPotions_15_03");
    AI_RESETFACEANI(SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Arwid_KQ402_GotPotions_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Arwid_KQ402_GotPotions_03_05");
    INFO_CLEARCHOICES(66790);
    INFO_ADDCHOICE(66790, "1000 gold pieces.", 66795);
    INFO_ADDCHOICE(66790, "500 gold pieces.", 66794);
}

func void DIA_ARWID_KQ402_GOTPOTIONS_NEXT() {
    CREATEINVITEMS(SELF, 34203, KQ402_RAMHAPAYMENT_V2);
    B_GIVEINVITEMS(SELF, OTHER, 34203, KQ402_RAMHAPAYMENT_V2);
    AI_RESETFACEANI(SELF);
    AI_OUTPUT(OTHER, SELF, "DIA_Arwid_KQ402_GotPotions_Next_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Arwid_KQ402_GotPotions_Next_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Arwid_KQ402_GotPotions_Next_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Arwid_KQ402_GotPotions_Next_03_04");
    AI_OUTPUT(OTHER, SELF, "DIA_Arwid_KQ402_GotPotions_Next_15_05");
    AI_LOGENTRY(TOPIC_KQ402, LOG_KQ402_ARWID_LETSGO);
    INFO_CLEARCHOICES(66790);
    AI_STOPPROCESSINFOS(SELF);
    SELF.AIVAR[15] = TRUE;
    NPC_EXCHANGEROUTINE(SELF, "KQ402_GUIDE");
    KQ402_CLEARCITIZENRTN();
}

func void DIA_ARWID_KQ402_GOTPOTIONS_PAYV1() {
    AI_OUTPUT(OTHER, SELF, "DIA_Arwid_KQ402_GotPotions_PayV1_15_01");
    AI_STARTFACEANI(SELF, S_SURPRISE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Arwid_KQ402_GotPotions_PayV1_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Arwid_KQ402_GotPotions_PayV1_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Arwid_KQ402_GotPotions_PayV1_03_04");
    DIA_ARWID_KQ402_GOTPOTIONS_NEXT();
}

func void DIA_ARWID_KQ402_GOTPOTIONS_PAYV2() {
    AI_OUTPUT(OTHER, SELF, "DIA_Arwid_KQ402_GotPotions_PayV2_15_01");
    AI_WAITTILLEND(SELF, OTHER);
    AI_STARTFACEANI(SELF, T_HURT, 1, -(1));
    AI_PLAYANI(SELF, T_JUMPB);
    AI_OUTPUT(SELF, OTHER, "DIA_Arwid_KQ402_GotPotions_PayV2_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Arwid_KQ402_GotPotions_PayV2_15_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Arwid_KQ402_GotPotions_PayV2_15_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Arwid_KQ402_GotPotions_PayV2_03_05");
    AI_OUTPUT(OTHER, SELF, "DIA_Arwid_KQ402_GotPotions_PayV2_15_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Arwid_KQ402_GotPotions_PayV2_03_07");
    AI_OUTPUT(SELF, OTHER, "DIA_Arwid_KQ402_GotPotions_PayV2_03_08");
    DIA_ARWID_KQ402_GOTPOTIONS_NEXT();
}

instance DIA_ARWID_KQ402_RIGHTPLACE(C_INFO) {
    NPC = 52412;
    NR = 1;
    CONDITION = DIA_ARWID_KQ402_RIGHTPLACE_CONDITION;
    INFORMATION = DIA_ARWID_KQ402_RIGHTPLACE_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_ARWID_KQ402_RIGHTPLACE_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_KQ402)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 66790))) && ((NPC_GETDISTTOWP(SELF, "HARBOUR_PATH_390")) <= (500))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_ARWID_KQ402_RIGHTPLACE_INFO() {
    KQ402_CHANGENAMEWOODCHEST();
    AI_OUTPUT(SELF, OTHER, "DIA_Arwid_KQ402_RightPlace_03_01");
    INFO_CLEARCHOICES(66796);
    INFO_ADDCHOICE(66796, "Talk to him. I'll sneak up behind his back.", 66801);
    INFO_ADDCHOICE(66796, "Maybe he'll go for the gold?", 66799);
    INFO_ADDCHOICE(66796, "Provoke him! I'll go into the warehouse while you're at it.", 66800);
}

func void DIA_ARWID_KQ402_RIGHTPLACE_GOLD() {
    AI_OUTPUT(OTHER, SELF, "DIA_Arwid_KQ402_RightPlace_Gold_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Arwid_KQ402_RightPlace_Gold_03_02");
}

func void DIA_ARWID_KQ402_RIGHTPLACE_DARE() {
    AI_OUTPUT(OTHER, SELF, "DIA_Arwid_KQ402_RightPlace_Dare_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Arwid_KQ402_RightPlace_Dare_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Arwid_KQ402_RightPlace_Dare_03_03");
}

func void DIA_ARWID_KQ402_RIGHTPLACE_SMALLTALK() {
    KQ402_GUARDCANTTALK = 1;
    AI_OUTPUT(OTHER, SELF, "DIA_Arwid_KQ402_RightPlace_Smalltalk_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Arwid_KQ402_RightPlace_Smalltalk_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Arwid_KQ402_RightPlace_Smalltalk_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Arwid_KQ402_RightPlace_Smalltalk_03_04");
    INFO_CLEARCHOICES(66796);
    AI_STOPPROCESSINFOS(SELF);
    AI_LOGENTRY(TOPIC_KQ402, LOG_KQ402_ARWID_HARBOUR);
    AI_FUNCTION(SELF, 66802);
}

func void ARWID_KQ402_SMALLTALK() {
    NPC_EXCHANGEROUTINE(MIL_4017_ARWID_KQ402, "KQ402_RUNTOGUARD");
}

instance DIA_ARWID_KQ402_JOBDONE(C_INFO) {
    NPC = 52412;
    NR = 1;
    CONDITION = DIA_ARWID_KQ402_JOBDONE_CONDITION;
    INFORMATION = DIA_ARWID_KQ402_JOBDONE_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_ARWID_KQ402_JOBDONE_CONDITION() {
    if (((LOG_GETSTATUS(MIS_KQ402)) == (LOG_RUNNING)) && (NPC_ISINSTATE(SELF, 61599))) {
        if (((((((MOB_HASITEMS("KQ402_CHEST_01", 37323)) >= (1)) && ((MOB_HASITEMS("KQ402_CHEST_02", 37323)) >= (1))) && ((MOB_HASITEMS("KQ402_CHEST_03", 37323)) >= (1))) && ((MOB_HASITEMS("KQ402_CHEST_04", 37323)) >= (1))) && ((MOB_HASITEMS("KQ402_CHEST_05", 37323)) >= (1))) || ((KQ402_ENOUGHPOTIONS_COUNT) == (5))) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_ARWID_KQ402_JOBDONE_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Arwid_KQ402_JobDone_15_01");
    AI_WAITTILLEND(SELF, OTHER);
    AI_TURNTONPC(SELF, MIL_11074_MILITIA);
    AI_OUTPUT(SELF, OTHER, "DIA_Arwid_KQ402_JobDone_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Arwid_KQ402_JobDone_03_03");
    AI_TURNTONPC(SELF, OTHER);
    AI_OUTPUT(SELF, OTHER, "DIA_Arwid_KQ402_JobDone_03_04");
    AI_STOPPROCESSINFOS(SELF);
    AI_FUNCTION(SELF, 66806);
}

func void ARWID_KQ402_SMALLTALK_DISABLE() {
    NPC_EXCHANGEROUTINE(MIL_4017_ARWID_KQ402, "KQ402_GUIDE_V2");
    B_STARTOTHERROUTINE(MIL_11074_MILITIA, START);
}

instance DIA_ARWID_KQ402_YOUGOOD(C_INFO) {
    NPC = 52412;
    NR = 1;
    CONDITION = DIA_ARWID_KQ402_YOUGOOD_CONDITION;
    INFORMATION = DIA_ARWID_KQ402_YOUGOOD_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_ARWID_KQ402_YOUGOOD_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_KQ402)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 66803))) && ((NPC_GETDISTTOWP(SELF, "HARBOUR_PATH_128")) <= (500))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

var int ARWID_KQ402_GOTARMOR;
func void DIA_ARWID_KQ402_YOUGOOD_INFO() {
    KQ402_RUSTWAITARMOR = 1;
    KQ402_GUARDCANTTALK = 0;
    KQ402_RUSTWAITARMOR_DAY = WLD_GETDAY();
    AI_OUTPUT(SELF, OTHER, "DIA_Arwid_KQ402_YouGood_03_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Arwid_KQ402_YouGood_15_02");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Arwid_KQ402_YouGood_03_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Arwid_KQ402_YouGood_15_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Arwid_KQ402_YouGood_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Arwid_KQ402_YouGood_03_06");
    AI_RESETFACEANI(SELF);
    if ((NPC_HASITEMS(OTHER, 33903)) >= (1)) {
        ARWID_KQ402_GOTARMOR = 1;
        AI_OUTPUT(OTHER, SELF, "DIA_Arwid_KQ402_YouGood_15_07");
        AI_OUTPUT(SELF, OTHER, "DIA_Arwid_KQ402_YouGood_03_08");
    };
    KQ402_NEEDUGLYARMOR = 1;
    ARWID_KQ402_GOTARMOR = 2;
    AI_OUTPUT(SELF, OTHER, "DIA_Arwid_KQ402_YouGood_03_09");
    AI_OUTPUT(OTHER, SELF, "DIA_Arwid_KQ402_YouGood_15_10");
    AI_OUTPUT(SELF, OTHER, "DIA_Arwid_KQ402_YouGood_03_11");
    AI_OUTPUT(OTHER, SELF, "DIA_Arwid_KQ402_YouGood_15_12");
    AI_OUTPUT(SELF, OTHER, "DIA_Arwid_KQ402_YouGood_03_13");
    AI_STOPPROCESSINFOS(SELF);
    SELF.AIVAR[15] = FALSE;
    NPC_EXCHANGEROUTINE(SELF, "KQ402_PATROL");
    if ((ARWID_KQ402_GOTARMOR) == (1)) {
        AI_LOGENTRY(TOPIC_KQ402, LOG_KQ402_ARWID_RUST_V1);
    };
    AI_LOGENTRY(TOPIC_KQ402, LOG_KQ402_ARWID_RUST_V2);
}

instance DIA_ARWID_KQ402_PLAN(C_INFO) {
    NPC = 52412;
    NR = 1;
    CONDITION = DIA_ARWID_KQ402_PLAN_CONDITION;
    INFORMATION = DIA_ARWID_KQ402_PLAN_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Our plan worked.";
}

func int DIA_ARWID_KQ402_PLAN_CONDITION() {
    if (((LOG_GETSTATUS(MIS_KQ402)) == (LOG_RUNNING)) && ((KQ402_RAPORTABOUTARMORS) == (1))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_ARWID_KQ402_PLAN_INFO() {
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Arwid_KQ402_Plan_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Arwid_KQ402_Plan_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Arwid_KQ402_Plan_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Arwid_KQ402_Plan_03_04");
    AI_OUTPUT(OTHER, SELF, "DIA_Arwid_KQ402_Plan_15_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Arwid_KQ402_Plan_03_06");
    AI_RESETFACEANI(SELF);
    AI_STOPPROCESSINFOS(SELF);
}


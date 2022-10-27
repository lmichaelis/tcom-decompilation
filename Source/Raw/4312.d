instance DIA_RIKI_EXIT(C_INFO) {
    NPC = 0xe120;
    NR = 999;
    CONDITION = DIA_RIKI_EXIT_CONDITION;
    INFORMATION = DIA_RIKI_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_RIKI_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_RIKI_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_RIKI_HELLO(C_INFO) {
    NPC = 0xe120;
    NR = 1;
    CONDITION = DIA_RIKI_HELLO_CONDITION;
    INFORMATION = DIA_RIKI_HELLO_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_RIKI_HELLO_CONDITION() {
    if ((LOG_GETSTATUS(MIS_Q104)) == (LOG_RUNNING)) {
        if (NPC_KNOWSINFO(OTHER, 0x1657b)) {
            if (NPC_ISINSTATE(SELF, 0xf09f)) {
                return TRUE;
            };
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_RIKI_HELLO_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Riki_Hello_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Riki_Hello_03_02");
    INFO_CLEARCHOICES(0x15b7a);
    INFO_ADDCHOICE(0x15b7a, "Stop staring at that girl like she's a piece of meat.", 0x15b80);
    INFO_ADDCHOICE(0x15b7a, "Why don't you have a drink with me?", 0x15b88);
}

func void DIA_RIKI_HELLO_CHOICES() {
    INFO_CLEARCHOICES(0x15b7a);
    INFO_ADDCHOICE(0x15b7a, "Have you seen those chains outside? I'll make you get into them.", 0x15b82);
    INFO_ADDCHOICE(0x15b7a, "You want to get in trouble with militia?", 0x15b84);
    INFO_ADDCHOICE(0x15b7a, "Stop it or you'll have to deal with me.", 0x15b86);
}

func void RIK_Q104_CHANGEMARVINMDS() {
    MDL_APPLYOVERLAYMDSTIMED(HERO, HUMANSTIREDMDS, 0x493e0);
}

func void RIK_Q104_CHANGEMYSELFMDS() {
    MDL_APPLYOVERLAYMDS(BAU_726_RIK, HUMANSDRUNKENMDS);
}

func void DIA_RIKI_HELLO_STOPLOOKINGATMYFUTUREWIFE() {
    if ((Q104_RIKISPECIALDRINK) == (TRUE)) {
        AI_WAITTILLEND(SELF, OTHER);
        AI_FUNCTION(SELF, 0x15b7e);
        AI_OUTPUT(SELF, OTHER, "DIA_Riki_Hello_StopLookingAtMyFutureWife_03_01");
        AI_OUTPUT(OTHER, SELF, "DIA_Riki_Hello_StopLookingAtMyFutureWife_15_02");
        AI_OUTPUT(SELF, OTHER, "DIA_Riki_Hello_StopLookingAtMyFutureWife_03_03");
        AI_OUTPUT(OTHER, SELF, "DIA_Riki_Hello_StopLookingAtMyFutureWife_15_04");
        AI_PLAYANI(OTHER, "T_WOUNDEDB_START");
        AI_WAITTILLEND(SELF, OTHER);
        INFO_CLEARCHOICES(0x15b7a);
        AI_STOPPROCESSINFOS(SELF);
        AI_FUNCTION(SELF, 0x15b94);
    };
    if ((Q104_RIKIDRUNK) == (TRUE)) {
        AI_WAITTILLEND(SELF, OTHER);
        AI_FUNCTION(SELF, 0x15b7e);
        AI_OUTPUT(SELF, OTHER, "DIA_Riki_Hello_StopLookingAtMyFutureWife_03_05");
        AI_TURNTONPC(SELF, NONE_100009_LEA);
        AI_OUTPUT(SELF, OTHER, "DIA_Riki_Hello_StopLookingAtMyFutureWife_03_06");
        AI_TURNTONPC(SELF, HERO);
        DIA_RIKI_HELLO_CHOICES();
    };
    if (((Q104_RIKIDRUNK) == (FALSE)) && ((Q104_RIKISPECIALDRINK) == (FALSE))) {
        AI_OUTPUT(OTHER, SELF, "DIA_Riki_Hello_StopLookingAtMyFutureWife_15_07");
        AI_OUTPUT(SELF, OTHER, "DIA_Riki_Hello_StopLookingAtMyFutureWife_03_08");
        DIA_RIKI_HELLO_CHOICES();
    };
}

func void DIA_RIKI_HELLO_FINISH() {
    Q104_HELPEDLEA = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Riki_Hello_AlbynIsMyFriend_15_07");
    AI_OUTPUT(SELF, OTHER, "DIA_Riki_Hello_AlbynIsMyFriend_03_08");
    AI_OUTPUT(SELF, OTHER, "DIA_Riki_Hello_AlbynIsMyFriend_03_09");
    AI_OUTPUT(SELF, OTHER, "DIA_Riki_Hello_AlbynIsMyFriend_03_10");
    INFO_CLEARCHOICES(0x15b7a);
    AI_STOPPROCESSINFOS(SELF);
    NPC_EXCHANGEROUTINE(BAU_726_RIK, "VOMIT");
}

func void DIA_RIKI_HELLO_STOPLOOKINGATMYFUTUREWIFE_ALBYNISMYFRIEND() {
    AI_OUTPUT(OTHER, SELF, "DIA_Riki_Hello_AlbynIsMyFriend_15_01");
    if ((Q104_RIKIDRUNK) == (TRUE)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Riki_Hello_AlbynIsMyFriend_03_02");
        AI_OUTPUT(OTHER, SELF, "DIA_Riki_Hello_AlbynIsMyFriend_15_03");
        AI_OUTPUT(SELF, OTHER, "DIA_Riki_Hello_AlbynIsMyFriend_03_04");
        AI_OUTPUT(OTHER, SELF, "DIA_Riki_Hello_AlbynIsMyFriend_15_05");
        AI_OUTPUT(SELF, OTHER, "DIA_Riki_Hello_AlbynIsMyFriend_03_06");
        DIA_RIKI_HELLO_FINISH();
    };
    Q104_FIGHTWITHRIKI = 3;
    AI_OUTPUT(SELF, OTHER, "DIA_Riki_Hello_AlbynIsMyFriend_03_11");
    AI_OUTPUT(OTHER, SELF, "DIA_Riki_Hello_AlbynIsMyFriend_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Riki_Hello_AlbynIsMyFriend_03_12");
    AI_OUTPUT(OTHER, SELF, "DIA_Riki_Hello_AlbynIsMyFriend_15_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Riki_Hello_AlbynIsMyFriend_03_13");
    AI_OUTPUT(SELF, OTHER, "DIA_Riki_Hello_AlbynIsMyFriend_03_14");
    INFO_CLEARCHOICES(0x15b7a);
    AI_STOPPROCESSINFOS(SELF);
}

func void DIA_RIKI_HELLO_NOTSCARED() {
    AI_OUTPUT(SELF, OTHER, "DIA_Riki_Hello_YouWantSomeTrouble_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Riki_Hello_YouWantSomeTrouble_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Riki_Hello_YouWantSomeTrouble_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Riki_Hello_YouWantSomeTrouble_03_05");
}

func void DIA_RIKI_HELLO_STOPLOOKINGATMYFUTUREWIFE_YOUWANTSOMETROUBLE() {
    AI_OUTPUT(OTHER, SELF, "DIA_Riki_Hello_YouWantSomeTrouble_15_01");
    if ((Q104_RIKIDRUNK) == (TRUE)) {
        DIA_RIKI_HELLO_NOTSCARED();
        DIA_RIKI_HELLO_FINISH();
    };
    Q104_FIGHTWITHRIKI = 3;
    DIA_RIKI_HELLO_NOTSCARED();
    INFO_CLEARCHOICES(0x15b7a);
    AI_STOPPROCESSINFOS(SELF);
}

func void RIKI_ARENAFIGHT() {
    SELF.AIVAR[45] = AF_RUNNING;
    SELF.AIVAR[96] = 10;
    AI_STOPPROCESSINFOS(SELF);
    B_ATTACK(SELF, OTHER, AR_NONE, 1);
    Q104_FIGHTWITHRIKI = 1;
}

func void DIA_RIKI_HELLO_STOPLOOKINGATMYFUTUREWIFE_IWILLFIGHTWITHYOU() {
    AI_OUTPUT(OTHER, SELF, "DIA_Riki_Hello_IWillFightWithYou_15_01");
    if ((Q104_RIKIDRUNK) == (TRUE)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Riki_Hello_IWillFightWithYou_03_02");
        DIA_RIKI_HELLO_FINISH();
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Riki_Hello_IWillFightWithYou_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Riki_Hello_IWillFightWithYou_15_03");
    AI_STOPLOOKAT(SELF);
    CREATEINVITEMS(SELF, 0x84c0, 1);
    AI_USEITEM(SELF, 0x84c0);
    AI_LOOKATNPC(SELF, OTHER);
    AI_OUTPUT(SELF, OTHER, "DIA_Riki_Hello_IWillFightWithYou_03_04");
    INFO_CLEARCHOICES(0x15b7a);
    RIKI_ARENAFIGHT();
}

var int RIKI_WHATDRINK = 0;
func void DIA_RIKI_HELLO_WANTTODRINK() {
    AI_OUTPUT(OTHER, SELF, "DIA_Riki_Hello_WantToDrink_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Riki_Hello_WantToDrink_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Riki_Hello_WantToDrink_03_03");
    INFO_CLEARCHOICES(0x15b7a);
    if ((NPC_HASITEMS(OTHER, 0x859b)) >= (ITFO_WINE.VALUE)) {
        INFO_ADDCHOICE(0x15b7a, "And what do you recommend?", 0x15b8b);
    };
    if ((NPC_HASITEMS(OTHER, 0x859b)) >= (ITFO_WINE.VALUE)) {
        INFO_ADDCHOICE(0x15b7a, "How about some wine?", 0x15b8c);
    };
    INFO_ADDCHOICE(0x15b7a, "I'd like a frothy beer.", 0x15b8d);
}

func void DIA_RIKI_HELLO_DRINK_ANIMATION() {
    AI_STOPLOOKAT(SELF);
    AI_STOPLOOKAT(OTHER);
    if ((RIKI_WHATDRINK) == (1)) {
        CREATEINVITEMS(SELF, 0x84c0, 1);
        CREATEINVITEMS(OTHER, 0x84c0, 1);
        AI_USEITEM(SELF, 0x84c0);
        AI_USEITEM(OTHER, 0x84c0);
    };
    if ((RIKI_WHATDRINK) == (2)) {
        CREATEINVITEMS(SELF, 0x8e1f, 1);
        CREATEINVITEMS(OTHER, 0x8e1f, 1);
        AI_USEITEM(SELF, 0x8e1f);
        AI_USEITEM(OTHER, 0x8e1f);
    };
    if ((RIKI_WHATDRINK) == (3)) {
        CREATEINVITEMS(SELF, 0x8e25, 1);
        CREATEINVITEMS(OTHER, 0x8e25, 1);
        AI_USEITEM(SELF, 0x8e25);
        AI_USEITEM(OTHER, 0x8e25);
    };
    AI_LOOKATNPC(SELF, OTHER);
    AI_LOOKATNPC(OTHER, SELF);
    AI_WAITTILLEND(SELF, OTHER);
    AI_WAITTILLEND(OTHER, SELF);
}

func void DIA_RIKI_HELLO_DRINK() {
    AI_OUTPUT(SELF, OTHER, "DIA_Riki_Hello_YouOffer_03_04");
    DIA_RIKI_HELLO_DRINK_ANIMATION();
    AI_OUTPUT(SELF, OTHER, "DIA_Riki_Hello_YouOffer_03_05");
    INFO_CLEARCHOICES(0x15b7a);
    INFO_ADDCHOICE(0x15b7a, "You didn't see, because I'm not from here.", 0x15b8f);
    INFO_ADDCHOICE(0x15b7a, "I come from the city.", 0x15b90);
}

func void DIA_RIKI_HELLO_WANTTODRINK_YOUOFFER() {
    Q104_RIKIDRUNK = TRUE;
    RIKI_WHATDRINK = 3;
    AI_OUTPUT(OTHER, SELF, "DIA_Riki_Hello_YouOffer_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Riki_Hello_YouOffer_03_02");
    AI_TURNTONPC(SELF, BAU_704_BASTIAN);
    AI_OUTPUT(SELF, OTHER, "DIA_Riki_Hello_YouOffer_03_03");
    AI_TURNTONPC(SELF, OTHER);
    B_GIVEINVITEMS(OTHER, SELF, 0x859b, ITFO_WINE.VALUE);
    DIA_RIKI_HELLO_DRINK();
}

func void DIA_RIKI_HELLO_WANTTODRINK_WINE() {
    Q104_RIKISPECIALDRINK = TRUE;
    RIKI_WHATDRINK = 2;
    AI_OUTPUT(OTHER, SELF, "DIA_Riki_Hello_Wine_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Riki_Hello_Wine_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Riki_Hello_Wine_03_03");
    AI_TURNTONPC(SELF, BAU_704_BASTIAN);
    AI_OUTPUT(SELF, OTHER, "DIA_Riki_Hello_Wine_03_04");
    AI_TURNTONPC(SELF, OTHER);
    B_GIVEINVITEMS(OTHER, SELF, 0x859b, ITFO_WINE.VALUE);
    DIA_RIKI_HELLO_DRINK();
}

func void DIA_RIKI_HELLO_WANTTODRINK_BEER() {
    Q104_RIKIDRUNK = TRUE;
    RIKI_WHATDRINK = 1;
    AI_OUTPUT(OTHER, SELF, "DIA_Riki_Hello_Beer_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Riki_Hello_Beer_03_02");
    AI_TURNTONPC(SELF, BAU_704_BASTIAN);
    AI_OUTPUT(SELF, OTHER, "DIA_Riki_Hello_Beer_03_03");
    B_GIVEINVITEMS(OTHER, SELF, 0x859b, ITFO_BEER.VALUE);
    DIA_RIKI_HELLO_DRINK();
}

func void DIA_RIKI_HELLO_NOTNICE() {
    AI_OUTPUT(OTHER, SELF, "DIA_Riki_Hello_ImNotFromThere_15_07");
    AI_OUTPUT(SELF, OTHER, "DIA_Riki_Hello_ImNotFromThere_03_08");
    AI_OUTPUT(SELF, OTHER, "DIA_Riki_Hello_ImNotFromThere_03_09");
    AI_OUTPUT(SELF, OTHER, "DIA_Riki_Hello_ImNotFromThere_03_10");
    AI_OUTPUT(OTHER, SELF, "DIA_Riki_Hello_ImNotFromThere_15_11");
    AI_OUTPUT(SELF, OTHER, "DIA_Riki_Hello_ImNotFromThere_03_12");
    AI_OUTPUT(SELF, OTHER, "DIA_Riki_Hello_ImNotFromThere_03_13");
    DIA_RIKI_HELLO_DRINK_ANIMATION();
    DIA_RIKI_HELLO_STOPLOOKINGATMYFUTUREWIFE();
}

func void DIA_RIKI_HELLO_WANTTODRINK_YOUOFFER_IMNOTFROMTHERE() {
    AI_OUTPUT(OTHER, SELF, "DIA_Riki_Hello_ImNotFromThere_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Riki_Hello_ImNotFromThere_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Riki_Hello_ImNotFromThere_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Riki_Hello_ImNotFromThere_03_04");
    AI_OUTPUT(OTHER, SELF, "DIA_Riki_Hello_ImNotFromThere_15_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Riki_Hello_ImNotFromThere_03_06");
    DIA_RIKI_HELLO_DRINK_ANIMATION();
    DIA_RIKI_HELLO_NOTNICE();
}

func void DIA_RIKI_HELLO_WANTTODRINK_YOUOFFER_FROMTOWN() {
    AI_OUTPUT(OTHER, SELF, "DIA_Riki_Hello_FromTown_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Riki_Hello_FromTown_03_02");
    DIA_RIKI_HELLO_DRINK_ANIMATION();
    DIA_RIKI_HELLO_NOTNICE();
}

instance DIA_RIKI_FIGHTWITHME(C_INFO) {
    NPC = 0xe120;
    NR = 10;
    CONDITION = DIA_RIKI_FIGHTWITHME_CONDITION;
    INFORMATION = DIA_RIKI_FIGHTWITHME_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "Stop staring at that girl like she's a piece of meat.";
}

func int DIA_RIKI_FIGHTWITHME_CONDITION() {
    if ((LOG_GETSTATUS(MIS_Q104)) == (LOG_RUNNING)) {
        if ((Q104_FIGHTWITHRIKI) == (3)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_RIKI_FIGHTWITHME_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Riki_Hello_StopLookingAtMyFutureWife_15_07");
    AI_OUTPUT(SELF, OTHER, "DIA_Riki_Hello_StopLookingAtMyFutureWife_03_08");
    DIA_RIKI_HELLO_STOPLOOKINGATMYFUTUREWIFE_IWILLFIGHTWITHYOU();
}

func void MARVINDRUNKRIKI_FADESCREEN() {
    FADESCREENTOBLACKF(1, 0x15b95, 1000);
}

func void MARVINDRUNKRIKI() {
    Q104_FIGHTWITHRIKI = 3;
    B_LOGENTRY(TOPIC_Q104, LOG_Q104_RIK_FAILEDDRINK);
    AI_TELEPORT(HERO, "VILLAGE_PLACE_40");
    MDL_REMOVEOVERLAYMDS(HERO, HUMANSDRUNKENMDS);
    B_PASSTIME(1);
    HERO.AIVAR[4] = FALSE;
    FADESCREENFROMBLACK(2);
}

instance DIA_RIKI_AFTERFIGHT(C_INFO) {
    NPC = 0xe120;
    NR = 1;
    CONDITION = DIA_RIKI_AFTERFIGHT_CONDITION;
    INFORMATION = DIA_RIKI_AFTERFIGHT_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_RIKI_AFTERFIGHT_CONDITION() {
    if ((LOG_GETSTATUS(MIS_Q104)) == (LOG_RUNNING)) {
        if ((Q104_FIGHTWITHRIKI) == (1)) {
            if (((SELF.AIVAR[64]) == (FALSE)) && ((SELF.AIVAR[0]) != (FIGHT_NONE))) {
                if ((SELF.AIVAR[45]) != (AF_NONE)) {
                    if (NPC_ISINSTATE(SELF, 0xf09f)) {
                        return TRUE;
                    };
                };
            };
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_RIKI_AFTERFIGHT_INFO() {
    if ((SELF.AIVAR[0]) == (FIGHT_WON)) {
        Q104_FIGHTWITHRIKI = 3;
        AI_OUTPUT(SELF, OTHER, "DIA_Riki_RikiWonFight_03_01");
    };
    Q104_HELPEDLEA = TRUE;
    Q104_FIGHTWITHRIKI = 2;
    AI_OUTPUT(SELF, OTHER, "DIA_Riki_RikiLostFight_03_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Riki_RikiLostFight_15_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Riki_RikiLostFight_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Riki_RikiLostFight_03_04");
    AI_STOPPROCESSINFOS(SELF);
    NPC_CLEARAIQUEUE(BAU_704_BASTIAN);
    AI_GOTONPC(BAU_704_BASTIAN, HERO);
    SELF.AIVAR[45] = AF_NONE;
    SELF.AIVAR[64] = TRUE;
}

instance DIA_RIKI_Q207_FARM(C_INFO) {
    NPC = 0xe120;
    NR = 1;
    CONDITION = DIA_RIKI_Q207_FARM_CONDITION;
    INFORMATION = DIA_RIKI_Q207_FARM_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "What are you doing here?";
}

func int DIA_RIKI_Q207_FARM_CONDITION() {
    if ((LOG_GETSTATUS(MIS_Q205)) == (LOG_SUCCESS)) {
        if ((LOG_GETSTATUS(MIS_Q207)) == (LOG_RUNNING)) {
            if ((NPC_GETDISTTOWP(SELF, SELF.WP)) <= (500)) {
                return TRUE;
            };
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_RIKI_Q207_FARM_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Riki_Q207_Farm_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Riki_Q207_Farm_03_02");
}

instance DIA_RIKI_Q207_ANTONIO(C_INFO) {
    NPC = 0xe120;
    NR = 1;
    CONDITION = DIA_RIKI_Q207_ANTONIO_CONDITION;
    INFORMATION = DIA_RIKI_Q207_ANTONIO_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Do you know where I can find Antonio?";
}

func int DIA_RIKI_Q207_ANTONIO_CONDITION() {
    if ((LOG_GETSTATUS(MIS_Q205)) == (LOG_SUCCESS)) {
        if ((LOG_GETSTATUS(MIS_Q207)) == (LOG_RUNNING)) {
            if ((NPC_KNOWSINFO(OTHER, 0x15b99)) && ((Q207_MARVINKNOWABOUTANTONIO) == (FALSE))) {
                return TRUE;
            };
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_RIKI_Q207_ANTONIO_INFO() {
    B_SAY(OTHER, SELF, "$Q207_SearchAntonio");
    if (((Q104_RIKIDRUNK) == (TRUE)) || (!(NPC_KNOWSINFO(OTHER, 0x15b7a)))) {
        AI_OUTPUT(SELF, OTHER, "DIA_Riki_Q207_Farm_Porter_03_02");
        AI_OUTPUT(OTHER, SELF, "DIA_Riki_Q207_Farm_Porter_15_03");
        AI_OUTPUT(SELF, OTHER, "DIA_Riki_Q207_Farm_Porter_03_04");
        AI_OUTPUT(SELF, OTHER, "DIA_Riki_Q207_Farm_Porter_03_05");
        AI_OUTPUT(SELF, OTHER, "DIA_Riki_Q207_Farm_Porter_03_06");
        INFO_CLEARCHOICES(0x15b9c);
        INFO_ADDCHOICE(0x15b9c, "What do you want?", 0x15ba0);
        INFO_ADDCHOICE(0x15b9c, "I'll get you something, but to sober you up.", 0x15ba1);
    };
    if ((Q104_HELPEDLEA) == (TRUE)) {
        Q207_RIKIISMAD = TRUE;
        AI_STARTFACEANI(SELF, S_ANGRY, 0, 1);
        AI_OUTPUT(SELF, OTHER, "DIA_Riki_Q207_Farm_Porter_03_07");
        AI_OUTPUT(SELF, OTHER, "DIA_Riki_Q207_Farm_Porter_03_08");
        AI_OUTPUT(OTHER, SELF, "DIA_Riki_Q207_Farm_Porter_15_09");
        AI_OUTPUT(SELF, OTHER, "DIA_Riki_Q207_Farm_Porter_03_10");
        AI_RESETFACEANI(SELF);
        AI_LOGENTRY(TOPIC_Q207, LOG_Q207_RIKI_MAD);
        AI_STOPPROCESSINFOS(SELF);
    };
}

func void DIA_RIKI_Q207_ANTONIO_BRINGSOMETHING() {
    AI_LOGENTRY(TOPIC_Q207, LOG_Q207_RIKI_BRINGDRINK);
    INFO_CLEARCHOICES(0x15b9c);
}

func void DIA_RIKI_Q207_ANTONIO_WANT() {
    AI_OUTPUT(OTHER, SELF, "DIA_Riki_Q207_Farm_Want_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Riki_Q207_Farm_Want_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Riki_Q207_Farm_Want_03_03");
    DIA_RIKI_Q207_ANTONIO_BRINGSOMETHING();
}

func void DIA_RIKI_Q207_ANTONIO_WATER() {
    AI_OUTPUT(OTHER, SELF, "DIA_Riki_Q207_Farm_Water_15_01");
    B_STANDUP();
    AI_OUTPUT(SELF, OTHER, "DIA_Riki_Q207_Farm_Water_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Riki_Q207_Farm_Water_15_03");
    AI_PLAYANI(OTHER, "T_STAND_2_DRUNKTEST");
    AI_OUTPUT(OTHER, SELF, "DIA_Riki_Q207_Farm_Water_15_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Riki_Q207_Farm_Water_03_05");
    AI_WAITTILLEND(OTHER, SELF);
    AI_PLAYANI(OTHER, "T_REMOVE_DRUNKTEST");
    AI_OUTPUT(SELF, OTHER, "DIA_Riki_Q207_Farm_Water_03_06");
    DIA_RIKI_Q207_ANTONIO_BRINGSOMETHING();
}

instance DIA_RIKI_Q207_OWNER(C_INFO) {
    NPC = 0xe120;
    NR = 1;
    CONDITION = DIA_RIKI_Q207_OWNER_CONDITION;
    INFORMATION = DIA_RIKI_Q207_OWNER_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Does the owner of this vineyard know you're here?";
}

func int DIA_RIKI_Q207_OWNER_CONDITION() {
    if ((LOG_GETSTATUS(MIS_Q205)) == (LOG_SUCCESS)) {
        if ((LOG_GETSTATUS(MIS_Q207)) == (LOG_RUNNING)) {
            if (NPC_KNOWSINFO(OTHER, 0x15b99)) {
                return TRUE;
            };
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_RIKI_Q207_OWNER_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Riki_Q207_Owner_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Riki_Q207_Owner_03_02");
    B_STANDUP();
    AI_PLAYANI(SELF, T_GREETGRD);
    AI_OUTPUT(SELF, OTHER, "DIA_Riki_Q207_Owner_03_04");
    AI_STARTFACEANI(SELF, S_SAD, 0, 1);
    B_USEFAKEEMPTYBEER_STATE_START();
    AI_OUTPUT(SELF, OTHER, "DIA_Riki_Q207_Owner_03_05");
    B_USEFAKEEMPTYBEER_STATE_REMOVE();
    AI_RESETFACEANI(SELF);
}

instance DIA_RIKI_Q207_OFFERDRINK(C_INFO) {
    NPC = 0xe120;
    NR = 3;
    CONDITION = DIA_RIKI_Q207_OFFERDRINK_CONDITION;
    INFORMATION = DIA_RIKI_Q207_OFFERDRINK_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_GIVEALCO;
}

func int DIA_RIKI_Q207_OFFERDRINK_CONDITION() {
    if ((LOG_GETSTATUS(MIS_Q205)) == (LOG_SUCCESS)) {
        if ((LOG_GETSTATUS(MIS_Q207)) == (LOG_RUNNING)) {
            if ((((NPC_KNOWSINFO(OTHER, 0x15b9c)) && ((Q207_RIKIISMAD) == (FALSE))) && ((Q207_MARVINKNOWABOUTANTONIO) == (FALSE))) && ((Q207_RIKI_GOTSOMETHINGTODRINK) == (FALSE))) {
                return TRUE;
            };
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_RIKI_Q207_OFFERDRINK_BACK() {
    INFO_CLEARCHOICES(0x15ba5);
}

func void DIA_RIKI_Q207_OFFERDRINK_INFO() {
    INFO_CLEARCHOICES(0x15ba5);
    INFO_ADDCHOICE(0x15ba5, DIALOG_BACK, 0x15ba7);
    if (C_GOTANYKINDOFWINE(OTHER)) {
        INFO_ADDCHOICE(0x15ba5, "(Offer wine)", 0x15baa);
    };
    if (C_Q207_GOTSOBER(OTHER)) {
        INFO_ADDCHOICE(0x15ba5, "(Offer something to sober up)", 0x15bab);
    };
}

func void DIA_RIKI_Q207_OFFERDRINK_ANTONIO() {
    Q207_RIKI_GOTSOMETHINGTODRINK = TRUE;
    AI_RESETFACEANI(SELF);
    AI_OUTPUT(OTHER, SELF, "DIA_Riki_Q207_OfferDrink_Antonio_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Riki_Q207_OfferDrink_Antonio_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Riki_Q207_OfferDrink_Antonio_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Riki_Q207_OfferDrink_Antonio_03_04");
    INFO_CLEARCHOICES(0x15ba5);
}

func void DIA_RIKI_Q207_OFFERDRINK_WINE() {
    AI_OUTPUT(OTHER, SELF, "DIA_Riki_Q207_OfferDrink_Wine_15_01");
    B_STANDUP();
    AI_OUTPUT(SELF, OTHER, "DIA_Riki_Q207_OfferDrink_Wine_03_02");
    B_GIVEPLAYERXP(XP_Q207_RIKI_GIVEWINE);
    B_GIVEANYWINE_USEIT();
    AI_STARTFACEANI(SELF, S_SMILE, 0, 1);
    AI_OUTPUT(SELF, OTHER, "DIA_Riki_Q207_OfferDrink_Wine_03_03");
    DIA_RIKI_Q207_OFFERDRINK_ANTONIO();
}

func void DIA_RIKI_Q207_OFFERDRINK_SOBER() {
    AI_OUTPUT(OTHER, SELF, "DIA_Riki_Q207_OfferDrink_Sober_15_01");
    B_STANDUP();
    B_GIVEPLAYERXP(XP_Q207_RIKI_GIVESOBER);
    B_Q207_GIVESOBER_USEIT();
    AI_STARTFACEANI(SELF, S_DISGUST, 0, 1);
    AI_OUTPUT(SELF, OTHER, "DIA_Riki_Q207_OfferDrink_Sober_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Riki_Q207_OfferDrink_Sober_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Riki_Q207_OfferDrink_Sober_03_04");
    DIA_RIKI_Q207_OFFERDRINK_ANTONIO();
}

instance DIA_RIKI_Q207_SEEHIM(C_INFO) {
    NPC = 0xe120;
    NR = 1;
    CONDITION = DIA_RIKI_Q207_SEEHIM_CONDITION;
    INFORMATION = DIA_RIKI_Q207_SEEHIM_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Have you seen him anywhere around here?";
}

func int DIA_RIKI_Q207_SEEHIM_CONDITION() {
    if ((LOG_GETSTATUS(MIS_Q205)) == (LOG_SUCCESS)) {
        if ((((LOG_GETSTATUS(MIS_Q207)) == (LOG_RUNNING)) && ((Q207_MARVINKNOWABOUTANTONIO) == (FALSE))) && ((Q207_RIKI_GOTSOMETHINGTODRINK) == (TRUE))) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_RIKI_Q207_SEEHIM_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Riki_Q207_OfferDrink_Sober_Here_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Riki_Q207_OfferDrink_Sober_Here_03_02");
    AI_LOGENTRY(TOPIC_Q207, LOG_Q207_RIKI_INFORMATION);
}

instance DIA_RIK_AMBIENT(C_INFO) {
    NPC = 0xe120;
    NR = 850;
    CONDITION = DIA_RIK_AMBIENT_CONDITION;
    INFORMATION = DIA_RIK_AMBIENT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "How's life?";
}

func int DIA_RIK_AMBIENT_CONDITION() {
    if (NPC_ISINSTATE(SELF, 0xf09f)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_RIK_AMBIENT_INFO() {
    NPC_INITAMBIENTS(SELF, 4);
    AI_STARTFACEANI(OTHER, S_SMILE, 1, -(1));
    B_SAY(OTHER, SELF, "$MARVIN_WhatNew5");
    if ((NPC_GETLASTAMBIENT(SELF)) == (1)) {
        if (((Q104_FIGHTWITHRIKI) != (3)) || ((Q104_HELPEDLEA) == (FALSE))) {
            AI_STARTFACEANI(SELF, S_WHAT, 1, -(1));
            B_SAY(SELF, OTHER, "$SQ311_MilitiaMiner_LeaveMeV4");
        } else {
            AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
            B_SAY(SELF, OTHER, "$IMBUSY_ANGRY");
        } else {
            /* set_instance(0) */;
        };
    };
    if ((NPC_GETLASTAMBIENT(SELF)) == (2)) {
        AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
        B_SAY(SELF, OTHER, "$SQ311_MilitiaMiner_LeaveMeV2");
    };
    if ((NPC_GETLASTAMBIENT(SELF)) == (3)) {
        AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
        B_SAY(SELF, OTHER, "$IMBUSY_ANGRY");
    };
    if ((NPC_GETLASTAMBIENT(SELF)) == (4)) {
        B_STANDUP();
        AI_PLAYANI(SELF, "R_VOMIT_SUNDER");
    };
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
}

instance DIA_RIK_PICKPOCKET(C_INFO) {
    NPC = 0xe120;
    NR = 900;
    CONDITION = DIA_RIK_PICKPOCKET_CONDITION;
    INFORMATION = DIA_RIK_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_40;
}

func int DIA_RIK_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_RIK_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(0x15bb2);
    INFO_ADDCHOICE(0x15bb2, DIALOG_BACK, 0x15bb6);
    INFO_ADDCHOICE(0x15bb2, DIALOG_PICKPOCKET, 0x15bb5);
}

func void DIA_RIK_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) {
        CREATEINVITEMS(SELF, 0x8e1f, 1);
        B_GIVEINVITEMS(SELF, OTHER, 0x8e1f, 1);
        B_PICKPOCKET_AMBIENT_TIER_1();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(0x15bb2);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(0x15bb2);
}

func void DIA_RIK_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(0x15bb2);
}


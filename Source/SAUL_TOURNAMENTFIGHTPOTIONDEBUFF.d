const int SAUL_TOURNAMENTFIGHTPOTIONDEBUFF = 12;
instance DIA_SAUL_EXIT(C_INFO) {
    NPC = 58818;
    NR = 999;
    CONDITION = DIA_SAUL_EXIT_CONDITION;
    INFORMATION = DIA_SAUL_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_SAUL_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_SAUL_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_SAUL_SQ310_START(C_INFO) {
    NPC = 58818;
    NR = 1;
    CONDITION = DIA_SAUL_SQ310_START_CONDITION;
    INFORMATION = DIA_SAUL_SQ310_START_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_SAUL_SQ310_START_CONDITION() {
    if (((LOG_GETSTATUS(MIS_Q306)) == (LOG_RUNNING)) && ((Q306_READY) == (TRUE))) {
        return FALSE;
    };
    if (((LOG_GETSTATUS(MIS_Q306)) == (LOG_SUCCESS)) && ((KAPITEL) < (4))) {
        return FALSE;
    };
    if (NPC_ISINSTATE(SELF, 61599)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

var int SAUL_SQ310_TAKEQUEST;
func void DIA_SAUL_SQ310_START_INFO() {
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    if (((LOG_GETSTATUS(MIS_Q306)) == (LOG_SUCCESS)) && ((Q306_SAULAFTERFIGHT) == (TRUE))) {
        AI_OUTPUT(SELF, OTHER, "DIA_Saul_SQ310_Start_03_01");
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Saul_SQ310_Start_03_02");
    AI_STARTFACEANI(SELF, S_WHAT, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Saul_SQ310_Start_03_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Saul_SQ310_Start_15_04");
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Saul_SQ310_Start_03_05");
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Saul_SQ310_Start_15_06");
    AI_STARTFACEANI(SELF, S_SURPRISE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Saul_SQ310_Start_03_07");
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
    AI_OUTPUT(SELF, OTHER, "DIA_Saul_SQ310_Start_03_08");
    AI_OUTPUT(SELF, OTHER, "DIA_Saul_SQ310_Start_03_09");
    INFO_CLEARCHOICES(84916);
    INFO_ADDCHOICE(84916, "I won't play your games.", 84920);
    INFO_ADDCHOICE(84916, "I'll try to think of something.", 84922);
}

func void DIA_SAUL_SQ310_START_NO() {
    SAUL_SQ310_TAKEQUEST = 1;
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Saul_SQ310_Start_No_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Saul_SQ310_Start_No_03_02");
    INFO_CLEARCHOICES(84916);
}

func void DIA_SAUL_SQ310_START_END() {
    SAUL_SQ310_TAKEQUEST = 0;
    AI_OUTPUT(SELF, OTHER, "DIA_Saul_SQ310_Start_Yes_03_02");
    INFO_CLEARCHOICES(84916);
    LOG_CREATETOPIC(TOPIC_SQ310, LOG_MISSION);
    LOG_SETSTATUS(_@(MIS_SQ310), TOPIC_SQ310, LOG_RUNNING);
    AI_LOGENTRY(TOPIC_SQ310, LOG_SQ310_START);
}

func void DIA_SAUL_SQ310_START_YES() {
    AI_OUTPUT(OTHER, SELF, "DIA_Saul_SQ310_Start_Yes_15_01");
    DIA_SAUL_SQ310_START_END();
}

instance DIA_SAUL_SQ310_TAKEQUEST(C_INFO) {
    NPC = 58818;
    NR = 1;
    CONDITION = DIA_SAUL_SQ310_TAKEQUEST_CONDITION;
    INFORMATION = DIA_SAUL_SQ310_TAKEQUEST_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I changed my mind, I'll help you figure something out.";
}

func int DIA_SAUL_SQ310_TAKEQUEST_CONDITION() {
    if (((LOG_GETSTATUS(MIS_Q306)) == (LOG_RUNNING)) && ((Q306_READY) == (TRUE))) {
        return FALSE;
    };
    if (((LOG_GETSTATUS(MIS_Q306)) == (LOG_SUCCESS)) && ((KAPITEL) < (4))) {
        return FALSE;
    };
    if ((NPC_KNOWSINFO(OTHER, 84916)) && ((SAUL_SQ310_TAKEQUEST) == (1))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_SAUL_SQ310_TAKEQUEST_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Saul_SQ310_TakeQuest_15_01");
    DIA_SAUL_SQ310_START_END();
}

instance DIA_SAUL_SQ310_IDEA(C_INFO) {
    NPC = 58818;
    NR = 1;
    CONDITION = DIA_SAUL_SQ310_IDEA_CONDITION;
    INFORMATION = DIA_SAUL_SQ310_IDEA_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "I have an idea about the pea soup.";
}

func int DIA_SAUL_SQ310_IDEA_CONDITION() {
    if (((LOG_GETSTATUS(MIS_Q306)) == (LOG_RUNNING)) && ((Q306_READY) == (TRUE))) {
        return FALSE;
    };
    if (((LOG_GETSTATUS(MIS_Q306)) == (LOG_SUCCESS)) && ((KAPITEL) < (4))) {
        return FALSE;
    };
    if (((LOG_GETSTATUS(MIS_SQ310)) == (LOG_RUNNING)) && ((SQ310_CANUSESOUP) == (0))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

var int SQ310_HEADOPTION;
func void DIA_SAUL_SQ310_IDEA_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Saul_SQ310_Idea_15_01");
    AI_STARTFACEANI(SELF, S_WHAT, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Saul_SQ310_Idea_03_02");
    INFO_CLEARCHOICES(84926);
    INFO_ADDCHOICE(84926, "I'll think about it some more.", 84930);
    if (((NPC_HASITEMS(OTHER, 37426)) >= (1)) && (NPC_KNOWSINFO(OTHER, 83479))) {
        INFO_ADDCHOICE(84926, "Maybe you should add some dragon dust?", 84932);
    };
    if ((NPC_HASITEMS(OTHER, 33656)) >= (1)) {
        INFO_ADDCHOICE(84926, "Try these black peppercorns.", 84933);
    };
    if ((SQ310_HEADOPTION) == (FALSE)) {
        if (((NPC_HASITEMS(OTHER, 33662)) >= (1)) || ((NPC_HASITEMS(OTHER, 37434)) >= (1))) {
            INFO_ADDCHOICE(84926, "I happen to have this skull with me, maybe...", 84934);
        };
    };
    if (((NPC_HASITEMS(OTHER, 37035)) >= (1)) || ((NPC_HASITEMS(OTHER, 37036)) >= (1))) {
        INFO_ADDCHOICE(84926, "Maybe you can spice up his dish with something stinky.", 84935);
    };
    if ((NPC_HASITEMS(OTHER, 33661)) >= (1)) {
        INFO_ADDCHOICE(84926, "What do you think about adding something hard to the meal?", 84936);
    };
}

func void DIA_SAUL_SQ310_IDEA_NOTHING() {
    AI_OUTPUT(OTHER, SELF, "DIA_Saul_SQ310_Idea_Nothing_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Saul_SQ310_Idea_Nothing_03_02");
    INFO_CLEARCHOICES(84926);
}

func void DIA_SAUL_SQ310_IDEA_END() {
    SQ310_PREPARESOUP();
    AI_OUTPUT(SELF, OTHER, "DIA_Saul_SQ310_Idea_End_03_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Saul_SQ310_Idea_End_15_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Saul_SQ310_Idea_End_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Saul_SQ310_Idea_End_03_04");
    INFO_CLEARCHOICES(84926);
    AI_STOPPROCESSINFOS(SELF);
    AI_LOGENTRY(TOPIC_SQ310, LOG_SQ310_SAUL_PRANK);
    NPC_EXCHANGEROUTINE(SELF, "SQ310_GUARD");
}

func void DIA_SAUL_SQ310_IDEA_DRAGON() {
    SQ310_WHATWILLBEUSED = 4;
    AI_OUTPUT(OTHER, SELF, "DIA_Saul_SQ310_Idea_Dragon_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Saul_SQ310_Idea_Dragon_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Saul_SQ310_Idea_Dragon_15_03");
    B_MARVIN_USEFAKEBAG_THROW();
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Saul_SQ310_Idea_Dragon_03_04");
    DIA_SAUL_SQ310_IDEA_END();
}

func void DIA_SAUL_SQ310_IDEA_PEPPER() {
    SQ310_WHATWILLBEUSED = 1;
    AI_OUTPUT(OTHER, SELF, "DIA_Saul_SQ310_Idea_Pepper_15_01");
    B_MARVIN_USEFAKEBAG_THROW();
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Saul_SQ310_Idea_Pepper_03_02");
    DIA_SAUL_SQ310_IDEA_END();
}

func void DIA_SAUL_SQ310_IDEA_HEAD() {
    SQ310_HEADOPTION = TRUE;
    B_MARVIN_USEFAKESKULL_START();
    AI_OUTPUT(OTHER, SELF, "DIA_Saul_SQ310_Idea_Head_15_01");
    AI_WAIT(SELF, 1061997773);
    AI_STARTFACEANI(SELF, T_HURT, 1, -(1));
    AI_PLAYANI(SELF, T_JUMPB);
    B_MARVIN_USEFAKESKULL_END();
    AI_WAITTILLEND(SELF, OTHER);
    AI_OUTPUT(SELF, OTHER, "DIA_Saul_SQ310_Idea_Head_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Saul_SQ310_Idea_Head_03_03");
    AI_RESETFACEANI(SELF);
}

func void DIA_SAUL_SQ310_IDEA_SHIT() {
    if ((NPC_HASITEMS(OTHER, 37035)) >= (1)) {
        SQ310_WHATWILLBEUSED = 2;
    };
    if ((NPC_HASITEMS(OTHER, 37036)) >= (1)) {
        SQ310_WHATWILLBEUSED = 5;
    };
    AI_OUTPUT(OTHER, SELF, "DIA_Saul_SQ310_Idea_Shit_15_01");
    B_MARVIN_USEFAKESHIT_THROW();
    AI_STARTFACEANI(SELF, S_DISGUST, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Saul_SQ310_Idea_Shit_03_02");
    AI_RESETFACEANI(SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Saul_SQ310_Idea_Shit_03_03");
    DIA_SAUL_SQ310_IDEA_END();
}

func void DIA_SAUL_SQ310_IDEA_PEARL() {
    SQ310_WHATWILLBEUSED = 3;
    AI_OUTPUT(OTHER, SELF, "DIA_Saul_SQ310_Idea_Pearl_15_01");
    B_MARVIN_USEFAKEPEARL_THROW();
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Saul_SQ310_Idea_Pearl_03_02");
    DIA_SAUL_SQ310_IDEA_END();
}

instance DIA_SAUL_SQ310_FINISH(C_INFO) {
    NPC = 58818;
    NR = 1;
    CONDITION = DIA_SAUL_SQ310_FINISH_CONDITION;
    INFORMATION = DIA_SAUL_SQ310_FINISH_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_SAUL_SQ310_FINISH_CONDITION() {
    if (((LOG_GETSTATUS(MIS_Q306)) == (LOG_RUNNING)) && ((Q306_READY) == (TRUE))) {
        return FALSE;
    };
    if (((LOG_GETSTATUS(MIS_Q306)) == (LOG_SUCCESS)) && ((KAPITEL) < (4))) {
        return FALSE;
    };
    if ((((LOG_GETSTATUS(MIS_SQ310)) == (LOG_RUNNING)) && (NPC_ISINSTATE(SELF, 61599))) && ((SQ310_SOUPDONE) == (1))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_SAUL_SQ310_FINISH_INFO() {
    AI_STARTFACEANI(SELF, S_WHAT, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Saul_SQ310_Finish_03_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Saul_SQ310_Finish_15_02");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Saul_SQ310_Finish_03_03");
    CREATEINVITEMS(SELF, 33652, 5);
    B_GIVEINVITEMS(SELF, OTHER, 33652, 5);
    AI_LOGENTRY(TOPIC_SQ310, LOG_SQ310_FINISH);
    LOG_SETSTATUS(_@(MIS_SQ310), TOPIC_SQ310, LOG_SUCCESS);
    B_GIVEPLAYERXP(XP_SQ310_FINISH);
    AI_STOPPROCESSINFOS(SELF);
    NPC_EXCHANGEROUTINE(SELF, START);
}

instance DIA_SAUL_TOURNAMENTFIGHT(C_INFO) {
    NPC = 58818;
    NR = 1;
    CONDITION = DIA_SAUL_TOURNAMENTFIGHT_CONDITION;
    INFORMATION = DIA_SAUL_TOURNAMENTFIGHT_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_SAUL_TOURNAMENTFIGHT_CONDITION() {
    if (((Q306_STATE) == (12)) && ((SELF.AIVAR[45]) == (AF_NONE))) {
        if (((NPC_GETDISTTOWP(SELF, "P17_HAVEN_ARENA_OPPONENT_02")) <= (500)) && ((NPC_GETDISTTOWP(HERO, "P17_HAVEN_ARENA_OPPONENT_01")) >= (500))) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_SAUL_TOURNAMENTFIGHT_INFO() {
    WLD_SENDTRIGGER("P17_HAVEN_ARENA_OPPONENT");
    INFO_ADDCHOICE(84940, "You dirty crook!", 84947);
    INFO_ADDCHOICE(84940, "Are you just betting on fights?", 84948);
}

func void SAUL_TOURNAMENT_CHANGEMUSIC() {
    Q306_CHECKSAULMUSIC = 1;
    MUSIC_OVERRIDETRACK(21945);
    HERO.AIVAR[4] = FALSE;
}

func void DIA_SAUL_TOURNAMENTFIGHT_POTIONEFFECT() {
    HERO.ATTRIBUTE[1] -= SAUL_TOURNAMENTFIGHTPOTIONDEBUFF;
    MARVINTRANSFORMHP = (MARVINTRANSFORMHP) - (SAUL_TOURNAMENTFIGHTPOTIONDEBUFF);
    if (((HERO.ATTRIBUTE[0]) - ((HERO.ATTRIBUTE[0]) / (2))) <= (10)) {
        HERO.ATTRIBUTE[0] = 25;
    };
    HERO.ATTRIBUTE[0] = (HERO.ATTRIBUTE[0]) - ((HERO.ATTRIBUTE[0]) / (2));
    PRINTSCREEN(PRINT_YOUAREWEAK, -(1), -(1), FONT_SCREEN, 2);
}

func void SAUL_ARENAFIGHT() {
    if ((NPC_HASEQUIPPEDMELEEWEAPON(SELF)) == (FALSE)) {
        CREATEINVITEMS(SELF, 34046, 1);
        AI_EQUIPBESTMELEEWEAPON(SELF);
    };
    B_HEALNPC_SELF();
    Q306_STATE = 13;
    HERO.AIVAR[95] = TRUE;
    HERO.AIVAR[94] = TRUE;
    SELF.AIVAR[94] = TRUE;
    HERO.AIVAR[96] = 10;
    SELF.AIVAR[96] = 10;
    SELF.AIVAR[45] = AF_RUNNING;
    B_ATTACK(SELF, HERO, AR_NONE, 1);
}

func void DIA_SAUL_TOURNAMENTFIGHT_START() {
    if ((Q306_SAULPOTION) == (TRUE)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Saul_TournamentFight_Start_13_01");
        AI_FUNCTION(SELF, 84944);
        AI_PLAYANI(OTHER, "R_VOMIT_SUNDER");
        AI_OUTPUT(SELF, OTHER, "DIA_Saul_TournamentFight_Start_13_02");
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Saul_TournamentFight_Start_13_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Saul_TournamentFight_Start_13_04");
    AI_WAITTILLEND(SELF, OTHER);
    AI_STOPPROCESSINFOS(SELF);
    AI_FUNCTION(SELF, 84943);
    SAUL_ARENAFIGHT();
}

func void DIA_SAUL_TOURNAMENTFIGHT_CHEATER() {
    AI_OUTPUT(OTHER, SELF, "DIA_Saul_TournamentFight_Cheater_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Saul_TournamentFight_Cheater_13_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Saul_TournamentFight_Cheater_13_02");
    INFO_CLEARCHOICES(84940);
    DIA_SAUL_TOURNAMENTFIGHT_START();
}

func void DIA_SAUL_TOURNAMENTFIGHT_BETONLY() {
    AI_OUTPUT(OTHER, SELF, "DIA_Saul_TournamentFight_BetOnly_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Saul_TournamentFight_BetOnly_13_01");
    INFO_CLEARCHOICES(84940);
    DIA_SAUL_TOURNAMENTFIGHT_START();
}

instance DIA_SAUL_AFTERTOURNAMENTFIGHT(C_INFO) {
    NPC = 58818;
    NR = 1;
    CONDITION = DIA_SAUL_AFTERTOURNAMENTFIGHT_CONDITION;
    INFORMATION = DIA_SAUL_AFTERTOURNAMENTFIGHT_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_SAUL_AFTERTOURNAMENTFIGHT_CONDITION() {
    if ((((SELF.AIVAR[64]) == (FALSE)) && ((SELF.AIVAR[0]) != (FIGHT_NONE))) && ((Q306_STATE) == (13))) {
        if ((SELF.AIVAR[45]) != (AF_NONE)) {
            return TRUE;
        };
        if (NPC_ISINSTATE(SELF, 61599)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void Q306_ENDSAULFIGHT() {
    Q306_SAULAFTERFIGHT = TRUE;
}

func void DIA_SAUL_AFTERTOURNAMENTFIGHT_INFO() {
    B_HEALNPC_SELF();
    if ((SELF.AIVAR[0]) == (FIGHT_WON)) {
        PRINTD("Walka z Saulem przegrana");
        AI_OUTPUT(SELF, OTHER, "DIA_Saul_AfterTournamentFight_13_05");
        Q306_STATE = -(4);
    };
    Q306_COUNTWINBATTLE = (Q306_COUNTWINBATTLE) + (1);
    PRINTD("Walka z Saulem wygrana");
    AI_OUTPUT(SELF, OTHER, "DIA_Saul_AfterTournamentFight_13_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Saul_AfterTournamentFight_13_04");
    Q306_STATE = 14;
    SELF.AIVAR[45] = AF_NONE;
    SELF.AIVAR[64] = TRUE;
    AI_FUNCTION(SELF, 84951);
    NPC_EXCHANGEROUTINE(SELF, "ARENA");
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_SAUL_Q306_POTION(C_INFO) {
    NPC = 58818;
    NR = 1;
    CONDITION = DIA_SAUL_Q306_POTION_CONDITION;
    INFORMATION = DIA_SAUL_Q306_POTION_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_SAUL_Q306_POTION_CONDITION() {
    if (((Q306_STATE) == (7)) && ((LOG_GETSTATUS(MIS_Q306)) == (LOG_RUNNING))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_SAUL_Q306_POTION_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_Saul_Q306_Potion_03_01");
    INFO_ADDCHOICE(84953, "The guy was definitely cheating, I got thrashed.", 84957);
    INFO_ADDCHOICE(84953, "It wasn't that bad...", 84958);
}

func void DIA_SAUL_Q306_POTION_IGOTSOMETHING() {
    AI_OUTPUT(SELF, OTHER, "DIA_Saul_Q306_Potion_IGotSomething_03_01");
    INFO_CLEARCHOICES(84953);
    INFO_ADDCHOICE(84953, "What is it?", 84959);
    INFO_ADDCHOICE(84953, "Why do you want to help me?", 84960);
}

func void DIA_SAUL_Q306_POTION_BAD() {
    AI_OUTPUT(OTHER, SELF, "DIA_Saul_Q306_Potion_Bad_15_01");
    DIA_SAUL_Q306_POTION_IGOTSOMETHING();
}

func void DIA_SAUL_Q306_POTION_NOTBAD() {
    AI_OUTPUT(OTHER, SELF, "DIA_Saul_Q306_Potion_NotBad_15_01");
    DIA_SAUL_Q306_POTION_IGOTSOMETHING();
}

func void DIA_SAUL_Q306_POTION_WHATSTHAT() {
    AI_OUTPUT(OTHER, SELF, "DIA_Saul_Q306_Potion_WhatsThat_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Saul_Q306_Potion_WhatsThat_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Saul_Q306_Potion_WhatsThat_03_02");
}

func void DIA_SAUL_Q306_POTION_WHY() {
    AI_OUTPUT(OTHER, SELF, "DIA_Saul_Q306_Potion_Why_15_01");
    AI_PLAYANI(SELF, T_SEARCH);
    AI_OUTPUT(SELF, OTHER, "DIA_Saul_Q306_Potion_Why_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Saul_Q306_Potion_Why_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Saul_Q306_Potion_Why_03_03");
    INFO_ADDCHOICE(84953, "I'm not interested.", 84962);
    INFO_ADDCHOICE(84953, "Okay, give me that.", 84963);
}

func void Q306_STARTSECONDROUND() {
    WLD_SENDTRIGGER("KM_Q306_ARENAFIGHT");
    Q306_READYFORFIGHT = 1;
    TOURNAMENT_TELEPORTVIEWRS();
    if ((Q305_JAVAD_WENTTONEWHOME) == (1)) {
        AI_TELEPORT(NONE_6331_JAVAD, Q306_OPPONENT_SPAWNWP);
        B_STARTOTHERROUTINE(NONE_6331_JAVAD, "ArenaFightWait");
        NPC_REFRESH(NONE_6331_JAVAD);
    };
    AI_TELEPORT(PIR_1330_ALVAREZ, Q306_OPPONENT_SPAWNWP);
    B_STARTOTHERROUTINE(PIR_1330_ALVAREZ, "ArenaFightWait");
    NPC_REFRESH(PIR_1330_ALVAREZ);
}

func void DIA_SAUL_Q306_POTION_NOTHANKS() {
    AI_OUTPUT(OTHER, SELF, "DIA_Saul_Q306_Potion_NoThanks_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Saul_Q306_Potion_NoThanks_03_01");
    AI_FUNCTION(SELF, 84961);
    AI_STOPPROCESSINFOS(SELF);
}

func void DIA_SAUL_Q306_POTION_GIVEME() {
    AI_OUTPUT(OTHER, SELF, "DIA_Saul_Q306_Potion_GiveMe_15_01");
    CREATEINVITEM(SELF, 37269);
    B_GIVEINVITEMS(SELF, OTHER, 37269, 1);
    AI_USEITEM(OTHER, 37269);
    AI_OUTPUT(SELF, OTHER, "DIA_Saul_Q306_Potion_GiveMe_03_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Saul_Q306_Potion_GiveMe_15_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Saul_Q306_Potion_GiveMe_03_02");
    AI_FUNCTION(SELF, 84961);
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_SAUL_PICKPOCKET(C_INFO) {
    NPC = 58818;
    NR = 900;
    CONDITION = DIA_SAUL_PICKPOCKET_CONDITION;
    INFORMATION = DIA_SAUL_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_40;
}

func int DIA_SAUL_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_SAUL_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(84964);
    INFO_ADDCHOICE(84964, DIALOG_BACK, 84968);
    INFO_ADDCHOICE(84964, DIALOG_PICKPOCKET, 84967);
}

func void DIA_SAUL_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) {
        B_PICKPOCKET_AMBIENT_TIER_1();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(84964);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(84964);
}

func void DIA_SAUL_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(84964);
}


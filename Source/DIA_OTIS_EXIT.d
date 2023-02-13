instance DIA_OTIS_EXIT(C_INFO) {
    NPC = 58664;
    NR = 999;
    CONDITION = DIA_OTIS_EXIT_CONDITION;
    INFORMATION = DIA_OTIS_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_OTIS_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_OTIS_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_OTIS_TOURNAMENTBET(C_INFO) {
    NPC = 58671;
    NR = 1;
    CONDITION = DIA_OTIS_TOURNAMENTBET_CONDITION;
    INFORMATION = DIA_OTIS_TOURNAMENTBET_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_OTIS_TOURNAMENTBET_CONDITION() {
    if ((Q306_STATE) == (16)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_OTIS_TOURNAMENTBET_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_Otis_TournamentBet_13_01");
    INFO_ADDCHOICE(83931, "Haven't you had enough yet?", 83944);
    INFO_ADDCHOICE(83931, "What do you want?", 83945);
}

func void OTIS_READYFORROUND3() {
    WLD_SENDTRIGGER("KM_Q306_ARENAFIGHT");
    Q306_READYFORFIGHT = 1;
    TOURNAMENT_TELEPORTVIEWRS();
    Q306_PREPAREFIGHTORC();
    HERO.AIVAR[4] = FALSE;
}

func void DIA_OTIS_TOURNAMENTBET_DECLINE() {
    INFO_CLEARCHOICES(83931);
    AI_OUTPUT(SELF, OTHER, "DIA_Otis_TournamentBet_Decline_13_00");
    AI_STOPPROCESSINFOS(SELF);
    AI_FUNCTION(SELF, 83934);
}

func void DIA_OTIS_TOURNAMENTBET_ACCEPT() {
    INFO_CLEARCHOICES(83931);
    AI_OUTPUT(SELF, OTHER, "DIA_Otis_TournamentBet_Accept_13_00");
    AI_STOPPROCESSINFOS(SELF);
    AI_FUNCTION(SELF, 83934);
}

func void DIA_OTIS_TOURNAMENTBET_1_1() {
    AI_OUTPUT(OTHER, SELF, "DIA_Otis_TournamentBet_1_1_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Otis_TournamentBet_1_1_13_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Otis_TournamentBet_1_1_13_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Otis_TournamentBet_1_1_13_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Otis_TournamentBet_1_1_13_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Otis_TournamentBet_1_1_13_04");
    INFO_CLEARCHOICES(83931);
    if ((NPC_HASITEMS(OTHER, 34203)) >= (Q306_OTIS_BETONYOURSELF_V3)) {
        INFO_ADDCHOICE(83931, "I'm not afraid of a pirate or a beast, I'll bet 250 gold on myself.", 83941);
    };
    if ((NPC_HASITEMS(OTHER, 34203)) >= (Q306_OTIS_BETONYOURSELF_V2)) {
        INFO_ADDCHOICE(83931, "I'm sure of my winnings, make it 100 gold.", 83940);
    };
    if ((NPC_HASITEMS(OTHER, 34203)) >= (Q306_OTIS_BETONYOURSELF_V1)) {
        INFO_ADDCHOICE(83931, "I'd love to, make it 50 gold pieces.", 83939);
    };
    INFO_ADDCHOICE(83931, "No, I won't be a part of your shenanigans.", 83938);
}

func void DIA_OTIS_TOURNAMENTBET_1_1_1() {
    AI_OUTPUT(OTHER, SELF, "DIA_Otis_TournamentBet_1_1_1_15_00");
    DIA_OTIS_TOURNAMENTBET_DECLINE();
}

func void DIA_OTIS_TOURNAMENTBET_1_1_2() {
    Q306_OTISBET = 50;
    B_GIVEINVITEMS(OTHER, SELF, 34203, Q306_OTIS_BETONYOURSELF_V1);
    AI_OUTPUT(OTHER, SELF, "DIA_Otis_TournamentBet_1_1_2_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Otis_TournamentBet_1_1_2_13_00");
    DIA_OTIS_TOURNAMENTBET_ACCEPT();
}

func void DIA_OTIS_TOURNAMENTBET_1_1_3() {
    Q306_OTISBET = 100;
    B_GIVEINVITEMS(OTHER, SELF, 34203, Q306_OTIS_BETONYOURSELF_V2);
    AI_OUTPUT(OTHER, SELF, "DIA_Otis_TournamentBet_1_1_3_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Otis_TournamentBet_1_1_3_13_00");
    DIA_OTIS_TOURNAMENTBET_ACCEPT();
}

func void DIA_OTIS_TOURNAMENTBET_1_1_4() {
    Q306_OTISBET = 250;
    B_GIVEINVITEMS(OTHER, SELF, 34203, Q306_OTIS_BETONYOURSELF_V3);
    AI_OUTPUT(OTHER, SELF, "DIA_Otis_TournamentBet_1_1_4_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Otis_TournamentBet_1_1_5_13_00");
    DIA_OTIS_TOURNAMENTBET_ACCEPT();
}

func void DIA_OTIS_TOURNAMENTBET_1_2() {
    AI_OUTPUT(OTHER, SELF, "DIA_Otis_TournamentBet_1_2_15_00");
    DIA_OTIS_TOURNAMENTBET_DECLINE();
}

func void DIA_OTIS_TOURNAMENTBET_CONTINUE() {
    INFO_CLEARCHOICES(83931);
    INFO_ADDCHOICE(83931, "Whatever it is, I'm not interested.", 83942);
    INFO_ADDCHOICE(83931, "What is it?", 83937);
}

func void DIA_OTIS_TOURNAMENTBET_2() {
    AI_OUTPUT(OTHER, SELF, "DIA_Otis_TournamentBet_2_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Otis_TournamentBet_2_13_01");
    DIA_OTIS_TOURNAMENTBET_CONTINUE();
}

func void DIA_OTIS_TOURNAMENTBET_1() {
    AI_OUTPUT(OTHER, SELF, "DIA_Otis_TournamentBet_1_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Otis_TournamentBet_1_13_01");
    DIA_OTIS_TOURNAMENTBET_CONTINUE();
}

instance DIA_OTIS_TOURNAMENTFIGHT(C_INFO) {
    NPC = 58671;
    NR = 1;
    CONDITION = DIA_OTIS_TOURNAMENTFIGHT_CONDITION;
    INFORMATION = DIA_OTIS_TOURNAMENTFIGHT_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_OTIS_TOURNAMENTFIGHT_CONDITION() {
    if (((Q306_STATE) == (4)) && ((SELF.AIVAR[45]) == (AF_NONE))) {
        if (((NPC_GETDISTTOWP(SELF, "P17_HAVEN_ARENA_OPPONENT_02")) <= (500)) && ((NPC_GETDISTTOWP(HERO, "P17_HAVEN_ARENA_OPPONENT_01")) >= (500))) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void Q306_OTISFIGHT_CLEARSLOWDOWNSPELL(var int NPCPTR) {
    if (((Q306_STATE) == (5)) && ((PIR_13050_OTIS_ARENA.AIVAR[45]) != (AF_RUNNING))) {
        CLEARSLOWDOWNSPELL(NPCPTR);
        FF_REMOVE(83948);
    };
    PRINTD("Od�wie� spowolnienie");
    WLD_PLAYEFFECT("SLOW_TIME_OTIS", HERO, HERO, 0, 0, 0, FALSE);
}

func void OTIS_ARENAFIGHT() {
    Q306_STATE = 5;
    HERO.AIVAR[95] = TRUE;
    HERO.AIVAR[94] = TRUE;
    SELF.AIVAR[94] = TRUE;
    HERO.AIVAR[96] = 10;
    SELF.AIVAR[96] = 10;
    SELF.AIVAR[45] = AF_RUNNING;
    B_ATTACK(SELF, HERO, AR_NONE, 1);
}

func void OTIS_TOURNAMENT_CHANGEMUSIC() {
    Q306_CHECKOTISMUSIC = 1;
    MUSIC_OVERRIDETRACK(21947);
    HERO.AIVAR[4] = FALSE;
}

func void DIA_OTIS_TOURNAMENTFIGHT_INFO() {
    if ((NPC_HASEQUIPPEDMELEEWEAPON(SELF)) == (FALSE)) {
        CREATEINVITEMS(SELF, 34046, 1);
        AI_EQUIPBESTMELEEWEAPON(SELF);
    };
    B_HEALNPC_SELF();
    WLD_SENDTRIGGER("P17_HAVEN_ARENA_OPPONENT");
    AI_PLAYANI(SELF, "T_STAND_2_KILLME");
    AI_OUTPUT(SELF, OTHER, "DIA_Otis_TournamentFight_13_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Otis_TournamentFight_13_02");
    AI_WAITTILLEND(OTHER, SELF);
    AI_TURNAWAY(OTHER, SELF);
    AI_PLAYANI(OTHER, T_SEARCH);
    CREATEINVITEM(SELF, 38183);
    AI_PLAYANI(SELF, "T_REMOVE_KILLME");
    B_READYSPELL(SELF, SPL_SLOWDOWN, SPL_COST_SLOWDOWN);
    AI_PLAYANI(SELF, "T_MAGRUN_2_SLESHOOT");
    AI_FUNCTION(SELF, 83950);
    AI_PLAYANI(SELF, "T_SLESHOOT_2_STAND");
    AI_UNREADYSPELL(SELF);
    AI_WAITTILLEND(SELF, OTHER);
    AI_WAITTILLEND(OTHER, SELF);
    AI_TURNTONPC(OTHER, SELF);
    AI_OUTPUT(OTHER, SELF, "DIA_Otis_TournamentFight_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Otis_TournamentFight_13_03");
    AI_STOPPROCESSINFOS(SELF);
    AI_FUNCTION(SELF, 83954);
    OTIS_ARENAFIGHT();
}

var int OTIS_FIGHTSTATUS;
instance DIA_OTIS_AFTERTOURNAMENTFIGHT(C_INFO) {
    NPC = 58671;
    NR = 1;
    CONDITION = DIA_OTIS_AFTERTOURNAMENTFIGHT_CONDITION;
    INFORMATION = DIA_OTIS_AFTERTOURNAMENTFIGHT_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_OTIS_AFTERTOURNAMENTFIGHT_CONDITION() {
    if ((((SELF.AIVAR[64]) == (FALSE)) && ((SELF.AIVAR[0]) != (FIGHT_NONE))) && ((Q306_STATE) == (5))) {
        if ((SELF.AIVAR[45]) != (AF_NONE)) {
            return TRUE;
        };
        if (NPC_ISINSTATE(SELF, 61599)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void Q306_ENDOTISFIGHT() {
    Q306_OTISAFTERFIGHT = TRUE;
}

func void DIA_OTIS_AFTERTOURNAMENTFIGHT_INFO() {
    var int NPCPTR;
    var C_NPC NPC;
    B_HEALNPC_SELF();
    NPC = HLP_GETNPC(1819);
    NPCPTR = _@(83961);
    CLEARSLOWDOWNSPELL(NPCPTR);
    FF_REMOVE(83948);
    HERO.VOICEPITCH = 0;
    if ((SELF.AIVAR[0]) == (FIGHT_WON)) {
        PRINTD("Walka z Otisem przegrana");
        AI_OUTPUT(SELF, OTHER, "DIA_Otis_AfterTournamentFight_13_01");
        AI_OUTPUT(OTHER, SELF, "DIA_Otis_AfterTournamentFight_15_01");
        Q306_STATE = -(2);
        OTIS_FIGHTSTATUS = 1;
    };
    Q306_COUNTWINBATTLE = (Q306_COUNTWINBATTLE) + (1);
    PRINTD("Walka z Otisem wygrana");
    AI_OUTPUT(SELF, OTHER, "DIA_Otis_AfterTournamentFight_13_03");
    Q306_STATE = 6;
    OTIS_FIGHTSTATUS = 2;
    SELF.AIVAR[45] = AF_NONE;
    SELF.AIVAR[64] = TRUE;
    AI_FUNCTION(SELF, 83959);
    NPC_EXCHANGEROUTINE(SELF, START);
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_OTIS_WHATAREYOUDOING(C_INFO) {
    NPC = 58664;
    NR = 1;
    CONDITION = DIA_OTIS_WHATAREYOUDOING_CONDITION;
    INFORMATION = DIA_OTIS_WHATAREYOUDOING_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "What are you doing here?";
}

func int DIA_OTIS_WHATAREYOUDOING_CONDITION() {
    return TRUE;
}

var int IVAN_OTIS_CHECKINFO;
func void DIA_OTIS_WHATAREYOUDOING_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Otis_Whatareyoudoing_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Otis_Whatareyoudoing_13_01");
    if ((NPC_GETDISTTOWP(SELF, "P17_HAVEN_HUT7_03")) <= (500)) {
        AI_OUTPUT(OTHER, SELF, "DIA_Otis_Whatareyoudoing_15_02");
        AI_OUTPUT(SELF, OTHER, "DIA_Otis_Whatareyoudoing_13_03");
    };
    if ((IVAN_OTIS_CHECKINFO) == (FALSE)) {
        IVAN_OTIS_CHECKINFO = TRUE;
        LOG_CREATETOPIC(TOPIC_HAVENTRADER, LOG_NOTE);
        AI_LOGENTRY(TOPIC_HAVENTRADER, LOG_TRADER_OTIS);
    };
}

instance DIA_OTIS_TOOWET(C_INFO) {
    NPC = 58664;
    NR = 1;
    CONDITION = DIA_OTIS_TOOWET_CONDITION;
    INFORMATION = DIA_OTIS_TOOWET_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Isn't it too humid in here?";
}

func int DIA_OTIS_TOOWET_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 83963)) && ((NPC_GETDISTTOWP(SELF, "P17_HAVEN_HUT7_03")) <= (500))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_OTIS_TOOWET_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Otis_Anyjob_15_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Otis_Anyjob_13_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Otis_Anyjob_13_06");
    AI_OUTPUT(OTHER, SELF, "DIA_Otis_Anyjob_15_07");
    AI_OUTPUT(SELF, OTHER, "DIA_Otis_Anyjob_13_08");
}

instance DIA_OTIS_AMBIENT(C_INFO) {
    NPC = 58664;
    NR = 998;
    CONDITION = DIA_OTIS_AMBIENT_CONDITION;
    INFORMATION = DIA_OTIS_AMBIENT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "How are you doing?";
}

func int DIA_OTIS_AMBIENT_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 83967)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_OTIS_AMBIENT_INFO() {
    B_SAY(OTHER, SELF, "$MARVIN_WhatNew2");
    if ((OTIS_FIGHTSTATUS) == (0)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Otis_Ambient_13_09");
    };
    if ((OTIS_FIGHTSTATUS) == (1)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Otis_Ambient_13_10");
    };
    if ((OTIS_FIGHTSTATUS) == (2)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Otis_Ambient_13_11");
    };
}

instance DIA_OTIS_TRADE(C_INFO) {
    NPC = 58664;
    NR = 998;
    CONDITION = DIA_OTIS_TRADE_CONDITION;
    INFORMATION = DIA_OTIS_TRADE_INFO;
    PERMANENT = TRUE;
    TRADE = TRUE;
    DESCRIPTION = "Let me see what you got there.";
}

func int DIA_OTIS_TRADE_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 83963)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_OTIS_TRADE_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Otis_Trade_15_00");
    NPC_INITAMBIENTS(SELF, 1);
    if ((NPC_GETLASTAMBIENT(SELF)) == (1)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Otis_Trade_13_01");
    };
    B_GIVETRADEINV(SELF);
    if ((IVAN_OTIS_CHECKINFO) == (FALSE)) {
        IVAN_OTIS_CHECKINFO = TRUE;
        LOG_CREATETOPIC(TOPIC_HAVENTRADER, LOG_NOTE);
        AI_LOGENTRY(TOPIC_HAVENTRADER, LOG_TRADER_OTIS);
    };
}

instance DIA_OTIS_DUELPROPOSAL(C_INFO) {
    NPC = 58664;
    NR = 1;
    CONDITION = DIA_OTIS_DUELPROPOSAL_CONDITION;
    INFORMATION = DIA_OTIS_DUELPROPOSAL_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I feel like having a little duel.";
}

func int DIA_OTIS_DUELPROPOSAL_CONDITION() {
    return FALSE;
}

func void DIA_OTIS_DUELPROPOSAL_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Otis_DuelProposal_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Otis_DuelProposal_13_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Otis_DuelProposal_13_03");
}

func void DIA_OTIS_STARTDUEL() {
    HERO.AIVAR[95] = TRUE;
    HERO.AIVAR[94] = TRUE;
    SELF.AIVAR[94] = TRUE;
    HERO.AIVAR[96] = 10;
    SELF.AIVAR[96] = 10;
    SELF.AIVAR[45] = AF_RUNNING;
    AI_STOPPROCESSINFOS(SELF);
    B_ATTACK(SELF, HERO, AR_NONE, 1);
}

instance DIA_OTIS_DUEL(C_INFO) {
    NPC = 58664;
    NR = 1;
    CONDITION = DIA_OTIS_DUEL_CONDITION;
    INFORMATION = DIA_OTIS_DUEL_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "All right. I'm ready.";
}

func int DIA_OTIS_DUEL_CONDITION() {
    return FALSE;
}

func void DIA_OTIS_DUEL_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Otis_Duel_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Otis_Duel_13_02");
    B_GIVEINVITEMS(OTHER, SELF, 34203, Q302_DUELWITHOTIS);
    DIA_OTIS_STARTDUEL();
}

var int Q302_PLAYERDUELWITHOTISSTATE;
instance DIA_OTIS_DUELAFTER(C_INFO) {
    NPC = 58664;
    NR = 1;
    CONDITION = DIA_OTIS_DUELAFTER_CONDITION;
    INFORMATION = DIA_OTIS_DUELAFTER_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_OTIS_DUELAFTER_CONDITION() {
    return FALSE;
}

func void DIA_OTIS_DUELAFTER_INFO() {
    B_HEALNPC_SELF();
    HERO.AIVAR[95] = FALSE;
    HERO.AIVAR[94] = FALSE;
    SELF.AIVAR[94] = FALSE;
    if ((SELF.AIVAR[0]) == (FIGHT_WON)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Otis_DuelAfter_13_01");
        Q302_PLAYERDUELWITHOTISSTATE = 1;
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Otis_DuelAfter_13_02");
    CREATEINVITEMS(SELF, 34203, (Q302_DUELWITHOTIS) * (2));
    B_GIVEINVITEMS(SELF, OTHER, 34203, (Q302_DUELWITHOTIS) * (2));
    AI_LOGENTRY(TOPIC_Q302, LOG_Q302_OTIS_WEWON);
    Q302_PLAYERDUELWITHOTISSTATE = 2;
    if ((((B_COUNTDUELSQ302()) > (2)) && ((Q302_PRICEWILLBELOWER_ENTRY) == (FALSE))) && ((LOG_GETSTATUS(MIS_Q302)) == (LOG_RUNNING))) {
        AI_LOGENTRY(TOPIC_Q302, LOG_Q302_THEYKNOWME);
        Q302_PRICEWILLBELOWER_ENTRY = TRUE;
    };
    SELF.AIVAR[45] = AF_NONE;
    SELF.AIVAR[64] = TRUE;
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_OTIS_DUELREVENGE(C_INFO) {
    NPC = 58664;
    NR = 1;
    CONDITION = DIA_OTIS_DUELREVENGE_CONDITION;
    INFORMATION = DIA_OTIS_DUELREVENGE_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "I want a rematch.";
}

func int DIA_OTIS_DUELREVENGE_CONDITION() {
    return FALSE;
}

func void DIA_OTIS_DUELREVENGE_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Otis_DuelTrain_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Otis_DuelTrain_13_02");
    if ((NPC_HASITEMS(OTHER, 34203)) >= (Q302_DUELWITHOTIS)) {
        AI_OUTPUT(OTHER, SELF, "DIA_Otis_DuelTrain_15_03");
        AI_OUTPUT(SELF, OTHER, "DIA_Otis_DuelTrain_03_04");
        B_GIVEINVITEMS(OTHER, SELF, 34203, Q302_DUELWITHOTIS);
        DIA_OTIS_STARTDUEL();
    };
    AI_OUTPUT(OTHER, SELF, "DIA_Otis_DuelTrain_15_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Otis_DuelTrain_13_06");
}

instance DIA_OTIS_PICKPOCKET(C_INFO) {
    NPC = 58664;
    NR = 900;
    CONDITION = DIA_OTIS_PICKPOCKET_CONDITION;
    INFORMATION = DIA_OTIS_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_40;
}

func int DIA_OTIS_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_OTIS_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(83990);
    INFO_ADDCHOICE(83990, DIALOG_BACK, 83994);
    INFO_ADDCHOICE(83990, DIALOG_PICKPOCKET, 83993);
}

func void DIA_OTIS_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) {
        B_PICKPOCKET_AMBIENT_TIER_1();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(83990);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(83990);
}

func void DIA_OTIS_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(83990);
}

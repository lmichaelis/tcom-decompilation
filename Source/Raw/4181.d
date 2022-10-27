instance DIA_LARRY_EXIT(C_INFO) {
    NPC = 0xe586;
    NR = 999;
    CONDITION = DIA_LARRY_EXIT_CONDITION;
    INFORMATION = DIA_LARRY_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_LARRY_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_LARRY_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_LARRY_TOURNAMENTFIGHT(C_INFO) {
    NPC = 0xe586;
    NR = 1;
    CONDITION = DIA_LARRY_TOURNAMENTFIGHT_CONDITION;
    INFORMATION = DIA_LARRY_TOURNAMENTFIGHT_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_LARRY_TOURNAMENTFIGHT_CONDITION() {
    if (((Q306_STATE) == (2)) && ((SELF.AIVAR[45]) == (AF_NONE))) {
        if (((NPC_GETDISTTOWP(SELF, "P17_HAVEN_ARENA_OPPONENT_02")) <= (500)) && ((NPC_GETDISTTOWP(HERO, "P17_HAVEN_ARENA_OPPONENT_01")) >= (500))) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void LARRY_TOURNAMENT_CHANGEMUSIC() {
    Q306_CHECKLARRYMUSIC = 1;
    MUSIC_OVERRIDETRACK(0x55b9);
    HERO.AIVAR[4] = FALSE;
}

func void DIA_LARRY_TOURNAMENTFIGHT_INFO() {
    if ((NPC_HASEQUIPPEDMELEEWEAPON(SELF)) == (FALSE)) {
        CREATEINVITEMS(SELF, 0x9a78, 1);
        AI_EQUIPBESTMELEEWEAPON(SELF);
    };
    B_HEALNPC_SELF();
    if ((Q302_PLAYERDUELWITHLARRYSTATE) > (0)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Larry_TournamentFight_13_01");
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Larry_TournamentFight_13_02");
    HERO.AIVAR[95] = TRUE;
    HERO.AIVAR[94] = TRUE;
    SELF.AIVAR[94] = TRUE;
    HERO.AIVAR[96] = 10;
    SELF.AIVAR[96] = 10;
    SELF.AIVAR[45] = AF_RUNNING;
    AI_STOPPROCESSINFOS(SELF);
    AI_FUNCTION(SELF, 0x14a35);
    B_ATTACK(SELF, HERO, AR_NONE, 1);
}

instance DIA_LARRY_AFTERTOURNAMENTFIGHT(C_INFO) {
    NPC = 0xe586;
    NR = 1;
    CONDITION = DIA_LARRY_AFTERTOURNAMENTFIGHT_CONDITION;
    INFORMATION = DIA_LARRY_AFTERTOURNAMENTFIGHT_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_LARRY_AFTERTOURNAMENTFIGHT_CONDITION() {
    if ((((SELF.AIVAR[64]) == (FALSE)) && ((SELF.AIVAR[0]) != (FIGHT_NONE))) && ((Q306_STATE) == (2))) {
        if ((SELF.AIVAR[45]) != (AF_NONE)) {
            return TRUE;
        };
        if (NPC_ISINSTATE(SELF, 0xf09f)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void Q306_ENDLARRYFIGHT() {
    WLD_SENDTRIGGER("P17_HAVEN_ARENA_OPPONENT");
    Q306_LARRYAFTERFIGHT = TRUE;
}

func void DIA_LARRY_AFTERTOURNAMENTFIGHT_INFO() {
    B_HEALNPC_SELF();
    if ((SELF.AIVAR[0]) == (FIGHT_WON)) {
        PRINTD("Walka z Larrym przegrana");
        AI_OUTPUT(SELF, OTHER, "DIA_Larry_AfterTournamentFight_13_01");
        AI_OUTPUT(SELF, OTHER, "DIA_Larry_AfterTournamentFight_13_02");
        Q306_STATE = -(1);
    };
    Q306_COUNTWINBATTLE = (Q306_COUNTWINBATTLE) + (1);
    PRINTD("Walka z Larrym wygrana");
    AI_OUTPUT(SELF, OTHER, "DIA_Larry_AfterTournamentFight_13_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Larry_AfterTournamentFight_13_04");
    Q306_STATE = 3;
    SELF.AIVAR[45] = AF_NONE;
    SELF.AIVAR[64] = TRUE;
    AI_FUNCTION(SELF, 0x14a39);
    NPC_EXCHANGEROUTINE(SELF, START);
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_LARRY_STANROSITA(C_INFO) {
    NPC = 0xe586;
    NR = 1;
    CONDITION = DIA_LARRY_STANROSITA_CONDITION;
    INFORMATION = DIA_LARRY_STANROSITA_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Do you know Rosita well?";
}

func int DIA_LARRY_STANROSITA_CONDITION() {
    if ((((DIA_OSCAR_STANQUESTIONS_ANYOTHER_NOPERM) == (TRUE)) && ((Q303_ROSITAISFALSELEAD) == (FALSE))) && ((LOG_GETSTATUS(MIS_Q303)) == (LOG_RUNNING))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_LARRY_STANROSITA_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Larry_StanRosita_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Larry_StanRosita_13_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Larry_StanRosita_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Larry_StanRosita_13_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Larry_StanRosita_15_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Larry_StanRosita_13_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Larry_StanRosita_13_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Larry_StanRosita_13_05");
    AI_OUTPUT(OTHER, SELF, "DIA_Larry_StanRosita_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Larry_StanRosita_13_06");
    Q303_ROSITAISFALSELEAD = TRUE;
    AI_LOGENTRY(TOPIC_Q303, LOG_Q303_NOTROSITA);
}

instance DIA_LARRY_BEER(C_INFO) {
    NPC = 0xe586;
    NR = 1;
    CONDITION = DIA_LARRY_BEER_CONDITION;
    INFORMATION = DIA_LARRY_BEER_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Is the beer good here?";
}

func int DIA_LARRY_BEER_CONDITION() {
    return TRUE;
}

func void DIA_LARRY_BEER_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Larry_Beer_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Larry_Beer_13_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Larry_Beer_13_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Larry_Beer_13_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Larry_Beer_15_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Larry_Beer_13_05");
    AI_OUTPUT(OTHER, SELF, "DIA_Larry_Beer_15_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Larry_Beer_13_07");
    AI_OUTPUT(SELF, OTHER, "DIA_Larry_Beer_13_08");
}

instance DIA_LARRY_GETTER(C_INFO) {
    NPC = 0xe586;
    NR = 1;
    CONDITION = DIA_LARRY_GETTER_CONDITION;
    INFORMATION = DIA_LARRY_GETTER_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "What about the... Ripper?";
}

func int DIA_LARRY_GETTER_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x14a3e)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_LARRY_GETTER_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Larry_Getter_15_09");
    AI_OUTPUT(SELF, OTHER, "DIA_Larry_Getter_13_10");
    AI_OUTPUT(SELF, OTHER, "DIA_Larry_Getter_13_11");
    AI_OUTPUT(SELF, OTHER, "DIA_Larry_Getter_13_12");
    INFO_CLEARCHOICES(0x14a41);
    INFO_ADDCHOICE(0x14a41, "Maybe I can try to get it back?", 0x14a44);
}

func void DIA_LARRY_GETTER_GETBACK() {
    AI_OUTPUT(OTHER, SELF, "DIA_Larry_Getter_GetBack_15_13");
    AI_OUTPUT(SELF, OTHER, "DIA_Larry_Getter_GetBack_13_14");
    AI_OUTPUT(SELF, OTHER, "DIA_Larry_Getter_GetBack_13_15");
    LOG_CREATETOPIC(TOPIC_SQ303, LOG_MISSION);
    LOG_SETSTATUS(_@(MIS_SQ303), TOPIC_SQ303, LOG_RUNNING);
    AI_LOGENTRY(TOPIC_SQ303, LOG_SQ303_START);
    INFO_CLEARCHOICES(0x14a41);
}

var int SQ303_GOODENDING = 0;
instance DIA_LARRY_PURSE(C_INFO) {
    NPC = 0xe586;
    NR = 1;
    CONDITION = DIA_LARRY_PURSE_CONDITION;
    INFORMATION = DIA_LARRY_PURSE_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I got your gold back.";
}

func int DIA_LARRY_PURSE_CONDITION() {
    if (((NPC_HASITEMS(OTHER, 0x91a1)) >= (1)) && (NPC_KNOWSINFO(OTHER, 0x14a41))) {
        return TRUE;
    };
    if (((((NPC_HASITEMS(OTHER, 0x91a1)) < (1)) && ((NPC_HASITEMS(OTHER, 0x859b)) >= (SQ303_LARRYGOLD))) && ((LARRYPURSEOPENED) == (TRUE))) && (NPC_KNOWSINFO(OTHER, 0x14a41))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_LARRY_PURSE_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Larry_Purse_15_16");
    AI_OUTPUT(SELF, OTHER, "DIA_Larry_Purse_13_17");
    AI_OUTPUT(SELF, OTHER, "DIA_Larry_Purse_13_18");
    INFO_CLEARCHOICES(0x14a46);
    INFO_ADDCHOICE(0x14a46, "I think I'll keep it for myself.", 0x14a49);
    if ((NPC_HASITEMS(OTHER, 0x91a1)) >= (1)) {
        INFO_ADDCHOICE(0x14a46, "Okay, keep it.", 0x14a4a);
    };
    if ((((NPC_HASITEMS(OTHER, 0x91a1)) < (1)) && ((NPC_HASITEMS(OTHER, 0x859b)) >= (SQ303_LARRYGOLD))) && ((STEALPURSE) == (TRUE))) {
        INFO_ADDCHOICE(0x14a46, "Okay, keep it.", 0x14a4b);
    };
}

func void DIA_LARRY_PURSE_ONLYMINE() {
    AI_OUTPUT(OTHER, SELF, "DIA_Larry_Purse_OnlyMine_15_16");
    AI_OUTPUT(SELF, OTHER, "DIA_Larry_Purse_OnlyMine_13_17");
    AI_OUTPUT(SELF, OTHER, "DIA_Larry_Purse_OnlyMine_13_18");
    LOG_SETSTATUS(_@(MIS_SQ303), TOPIC_SQ303, LOG_FAILED);
    AI_LOGENTRY(TOPIC_SQ303, LOG_SQ303_FAILED);
    AI_STOPPROCESSINFOS(SELF);
}

func void DIA_LARRY_PURSE_PURSE() {
    AI_OUTPUT(OTHER, SELF, "DIA_Larry_Purse_Purse_15_16");
    B_GIVEINVITEMS(OTHER, SELF, 0x91a1, 1);
    AI_OUTPUT(SELF, OTHER, "DIA_Larry_Purse_Purse_13_17");
    CREATEINVITEMS(SELF, 0x859b, SQ303_REWARD);
    B_GIVEINVITEMS(SELF, OTHER, 0x859b, SQ303_REWARD);
    B_GIVEPLAYERXP(XP_SQ303_FINISH);
    LOG_SETSTATUS(_@(MIS_SQ303), TOPIC_SQ303, LOG_SUCCESS);
    AI_LOGENTRY(TOPIC_SQ303, LOG_SQ303_SUCCESSV1);
    SQ303_GOODENDING = TRUE;
    INFO_CLEARCHOICES(0x14a46);
}

func void DIA_LARRY_PURSE_MONEY() {
    AI_OUTPUT(OTHER, SELF, "DIA_Larry_Purse_Money_15_16");
    B_GIVEINVITEMS(OTHER, SELF, 0x859b, SQ303_LARRYGOLD);
    AI_OUTPUT(SELF, OTHER, "DIA_Larry_Purse_Money_13_17");
    AI_OUTPUT(OTHER, SELF, "DIA_Larry_Purse_Money_15_18");
    AI_OUTPUT(SELF, OTHER, "DIA_Larry_Purse_Money_13_19");
    CREATEINVITEMS(SELF, 0x859b, (SQ303_LARRYGOLD) / (2));
    B_GIVEINVITEMS(SELF, OTHER, 0x859b, (SQ303_LARRYGOLD) / (2));
    B_GIVEPLAYERXP((XP_SQ303_FINISH) / (2));
    LOG_SETSTATUS(_@(MIS_SQ303), TOPIC_SQ303, LOG_SUCCESS);
    AI_LOGENTRY(TOPIC_SQ303, LOG_SQ303_SUCCESSV2);
    SQ303_GOODENDING = TRUE;
    INFO_CLEARCHOICES(0x14a46);
}

instance DIA_LARRY_DUELPROPOSAL(C_INFO) {
    NPC = 0xe586;
    NR = 1;
    CONDITION = DIA_LARRY_DUELPROPOSAL_CONDITION;
    INFORMATION = DIA_LARRY_DUELPROPOSAL_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "How about a little duel?";
}

func int DIA_LARRY_DUELPROPOSAL_CONDITION() {
    if ((LOG_GETSTATUS(MIS_Q302)) == (LOG_RUNNING)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_LARRY_DUELPROPOSAL_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Larry_DuelProposal_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Larry_DuelProposal_13_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Larry_DuelProposal_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Larry_DuelProposal_13_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Larry_DuelProposal_13_05");
    AI_LOGENTRY(TOPIC_Q302, LOG_Q302_LARRYWECANTRY);
}

var int Q302_ACTIVEDUELWITHLARRY = 0;
instance DIA_LARRY_DUELGUIDE(C_INFO) {
    NPC = 0xe586;
    NR = 1;
    CONDITION = DIA_LARRY_DUELGUIDE_CONDITION;
    INFORMATION = DIA_LARRY_DUELGUIDE_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Let's fight.";
}

func int DIA_LARRY_DUELGUIDE_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x14a4c)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_LARRY_SETDUELGUIDE() {
    if ((NPC_GETDISTTOWP(SELF, PIR_1312_LARRY_DUELWP)) >= (400)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Larry_Guide_13_02");
        NPC_EXCHANGEROUTINE(SELF, "GuideToDuel");
        AI_STOPPROCESSINFOS(SELF);
    };
    Q302_ACTIVEDUELWITHLARRY = TRUE;
    SELF.AIVAR[45] = AF_NONE;
    AI_STOPPROCESSINFOS(HERO);
}

func void DIA_LARRY_DUELGUIDE_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Larry_Guide_15_01");
    DIA_LARRY_SETDUELGUIDE();
}

instance DIA_LARRY_DUEL(C_INFO) {
    NPC = 0xe586;
    NR = 1;
    CONDITION = DIA_LARRY_DUEL_CONDITION;
    INFORMATION = DIA_LARRY_DUEL_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_LARRY_DUEL_CONDITION() {
    if ((((NPC_GETDISTTOWP(SELF, PIR_1312_LARRY_DUELWP)) <= (400)) && (Q302_ACTIVEDUELWITHLARRY)) && ((SELF.AIVAR[45]) == (AF_NONE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_LARRY_DUEL_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_Larry_Duel_13_01");
    if ((NPC_HASEQUIPPEDMELEEWEAPON(SELF)) == (FALSE)) {
        CREATEINVITEMS(SELF, 0x9a78, 1);
        AI_EQUIPBESTMELEEWEAPON(SELF);
    };
    B_HEALNPC_SELF();
    HERO.AIVAR[95] = TRUE;
    HERO.AIVAR[94] = TRUE;
    SELF.AIVAR[94] = TRUE;
    HERO.AIVAR[96] = 10;
    SELF.AIVAR[96] = 10;
    SELF.AIVAR[45] = AF_RUNNING;
    AI_STOPPROCESSINFOS(SELF);
    B_ATTACK(SELF, HERO, AR_NONE, 1);
}

var int Q302_PLAYERDUELWITHLARRYSTATE = 0;
instance DIA_LARRY_DUELAFTER(C_INFO) {
    NPC = 0xe586;
    NR = 1;
    CONDITION = DIA_LARRY_DUELAFTER_CONDITION;
    INFORMATION = DIA_LARRY_DUELAFTER_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_LARRY_DUELAFTER_CONDITION() {
    if ((((SELF.AIVAR[64]) == (FALSE)) && ((SELF.AIVAR[0]) != (FIGHT_NONE))) && (Q302_ACTIVEDUELWITHLARRY)) {
        if ((SELF.AIVAR[45]) != (AF_NONE)) {
            return TRUE;
        };
        if (NPC_ISINSTATE(SELF, 0xf09f)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_LARRY_DUELAFTER_INFO() {
    Q302_ACTIVEDUELWITHLARRY = FALSE;
    B_HEALNPC_SELF();
    HERO.AIVAR[95] = FALSE;
    HERO.AIVAR[94] = FALSE;
    SELF.AIVAR[94] = FALSE;
    if ((SELF.AIVAR[0]) == (FIGHT_WON)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Larry_DuelAfter_13_01");
        Q302_PLAYERDUELWITHLARRYSTATE = 1;
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Larry_DuelAfter_13_02");
    AI_LOGENTRY(TOPIC_Q302, LOG_Q302_LARRYWEWON);
    Q302_PLAYERDUELWITHLARRYSTATE = 2;
    if ((((B_COUNTDUELSQ302()) > (2)) && ((Q302_PRICEWILLBELOWER_ENTRY) == (FALSE))) && ((LOG_GETSTATUS(MIS_Q302)) == (LOG_RUNNING))) {
        AI_LOGENTRY(TOPIC_Q302, LOG_Q302_THEYKNOWME);
        Q302_PRICEWILLBELOWER_ENTRY = TRUE;
    };
    SELF.AIVAR[45] = AF_NONE;
    SELF.AIVAR[64] = TRUE;
    NPC_EXCHANGEROUTINE(SELF, START);
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_LARRY_DUELTRAIN(C_INFO) {
    NPC = 0xe586;
    NR = 1;
    CONDITION = DIA_LARRY_DUELTRAIN_CONDITION;
    INFORMATION = DIA_LARRY_DUELTRAIN_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "Let's train.";
}

func int DIA_LARRY_DUELTRAIN_CONDITION() {
    if ((Q302_PLAYERDUELWITHLARRYSTATE) == (1)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_LARRY_DUELTRAIN_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Larry_DuelTrain_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Larry_DuelTrain_13_02");
    if (C_GOTANYKINDOFBEER(HERO)) {
        AI_OUTPUT(OTHER, SELF, "DIA_Larry_DuelTrain_15_03");
        B_GIVEANYBEER();
        DIA_LARRY_SETDUELGUIDE();
    };
    AI_OUTPUT(OTHER, SELF, "DIA_Larry_DuelTrain_15_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Larry_DuelTrain_13_06");
}

instance DIA_LARRY_AMBIENT(C_INFO) {
    NPC = 0xe586;
    NR = 997;
    CONDITION = DIA_LARRY_AMBIENT_CONDITION;
    INFORMATION = DIA_LARRY_AMBIENT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "How are you doing?";
}

func int DIA_LARRY_AMBIENT_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x14a3e)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_LARRY_AMBIENT_INFO() {
    B_SAY(OTHER, SELF, "$MARVIN_WhatNew4");
    if ((LOG_GETSTATUS(MIS_SQ303)) != (LOG_SUCCESS)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Larry_Ambient_13_01");
    };
    if ((LOG_GETSTATUS(MIS_SQ303)) == (LOG_SUCCESS)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Larry_Ambient_13_02");
    };
    if ((LOG_GETSTATUS(MIS_SQ303)) == (LOG_FAILED)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Larry_Ambient_13_03");
    };
}

instance DIA_LARRY_TEACH(C_INFO) {
    NPC = 0xe586;
    NR = 1;
    CONDITION = DIA_LARRY_TEACH_CONDITION;
    INFORMATION = DIA_LARRY_TEACH_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Can you teach me something?";
}

func int DIA_LARRY_TEACH_CONDITION() {
    if ((SQ303_GOODENDING) == (TRUE)) {
        if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) < (1)) || ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKLOCK)) < (2))) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_LARRY_TEACH_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Larry_TEACH_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Larry_TEACH_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Larry_TEACH_03_03");
    LOG_CREATETOPIC(TOPIC_HAVENTEACHER, LOG_NOTE);
    AI_LOGENTRY(TOPIC_HAVENTEACHER, LOG_HAVENTEACHER_LARRY);
}

instance DIA_LARRY_TRAIN_PICKLOCK(C_INFO) {
    NPC = 0xe586;
    NR = 7;
    CONDITION = DIA_LARRY_TRAIN_PICKLOCK_CONDITION;
    INFORMATION = DIA_LARRY_TRAIN_PICKLOCK_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = B_BUILDLEARNSTRING2(PRINT_LEARN_PICKLOCK2, 0, LARRY_PICKLOCK);
}

func int DIA_LARRY_TRAIN_PICKLOCK_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 0x14a61)) && ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKLOCK)) < (2))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_LARRY_TRAIN_PICKLOCK_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Larry_TRAIN_Picklock_15_00");
    if ((NPC_HASITEMS(OTHER, 0x859b)) >= (LARRY_PICKLOCK)) {
        if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKLOCK)) >= (2)) {
            if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_SNEAK)) == (0)) {
                PRINTSCREEN(PRINT_LEARNSNEAK, -(1), YPOS_LEVELUP, FONT_SCREEN, 2);
                AI_OUTPUT(SELF, OTHER, "DIA_Larry_TRAIN_Sneak_03_01");
                B_TEACHTHIEFTALENT(PIR_1312_LARRY, HERO, NPC_TALENT_SNEAK, 1);
                AI_OUTPUT(SELF, OTHER, "DIA_Larry_TRAIN_Sneak_03_02");
            };
            NPC_REMOVEINVITEMS(SELF, 0x859b, LARRY_PICKLOCK);
            AI_OUTPUT(SELF, OTHER, "DIA_Larry_TRAIN_Picklock_03_01");
            B_GIVEINVITEMS(OTHER, SELF, 0x859b, LARRY_PICKLOCK);
            AI_OUTPUT(SELF, OTHER, "DIA_Larry_TRAIN_Picklock_03_02");
        };
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Larry_TRAIN_Picklock_03_03");
}

instance DIA_LARRY_TRAIN_PICKPOCKET(C_INFO) {
    NPC = 0xe586;
    NR = 7;
    CONDITION = DIA_LARRY_TRAIN_PICKPOCKET_CONDITION;
    INFORMATION = DIA_LARRY_TRAIN_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = B_BUILDLEARNSTRING2(PRINT_LEARN_PICKPOCKET1, B_GETLEARNCOSTTALENT(OTHER, NPC_TALENT_PICKPOCKET, 1), LARRY_PICKPOCKET);
}

func int DIA_LARRY_TRAIN_PICKPOCKET_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 0x14a61)) && ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) < (1))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_LARRY_TRAIN_PICKPOCKET_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Larry_TRAIN_Pickpocket_15_00");
    if ((NPC_HASITEMS(OTHER, 0x859b)) >= (LARRY_PICKPOCKET)) {
        if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) {
            if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_SNEAK)) == (0)) {
                PRINTSCREEN(PRINT_LEARNSNEAK, -(1), YPOS_LEVELUP, FONT_SCREEN, 2);
                AI_OUTPUT(SELF, OTHER, "DIA_Larry_TRAIN_SneakP_03_01");
                B_TEACHTHIEFTALENT(PIR_1312_LARRY, HERO, NPC_TALENT_SNEAK, 1);
                AI_OUTPUT(SELF, OTHER, "DIA_Larry_TRAIN_SneakP_03_02");
            };
            B_GIVEINVITEMS(OTHER, SELF, 0x859b, LARRY_PICKPOCKET);
            AI_OUTPUT(SELF, OTHER, "DIA_Larry_TRAIN_Pickpocket_03_01");
            AI_OUTPUT(SELF, OTHER, "DIA_Larry_TRAIN_Pickpocket_03_02");
            PRINTSCREEN(PRINT_LEARNPICKPOCKET, -(1), -(1), FONT_SCREEN, 2);
            NPC_REMOVEINVITEMS(SELF, 0x859b, LARRY_PICKPOCKET);
        };
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Larry_TRAIN_Pickpocket_03_03");
}

instance DIA_LARRY_PICKPOCKET(C_INFO) {
    NPC = 0xe586;
    NR = 900;
    CONDITION = DIA_LARRY_PICKPOCKET_CONDITION;
    INFORMATION = DIA_LARRY_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_120;
}

func int DIA_LARRY_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_LARRY_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(0x14a6a);
    INFO_ADDCHOICE(0x14a6a, DIALOG_BACK, 0x14a6e);
    INFO_ADDCHOICE(0x14a6a, DIALOG_PICKPOCKET, 0x14a6d);
}

func void DIA_LARRY_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (3)) {
        B_PICKPOCKET_AMBIENT_TIER_3();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(0x14a6a);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(0x14a6a);
}

func void DIA_LARRY_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(0x14a6a);
}


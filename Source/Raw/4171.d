instance DIA_MORTY_EXIT(C_INFO) {
    NPC = 0xe50e;
    NR = 999;
    CONDITION = DIA_MORTY_EXIT_CONDITION;
    INFORMATION = DIA_MORTY_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_MORTY_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_MORTY_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

func void DIA_MORTY_STARTDUEL() {
    if ((NPC_HASEQUIPPEDMELEEWEAPON(SELF)) == (FALSE)) {
        CREATEINVITEMS(SELF, 0x84fe, 1);
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

instance DIA_MORTY_WHATAREYOULOOKING(C_INFO) {
    NPC = 0xe50e;
    NR = 1;
    CONDITION = DIA_MORTY_WHATAREYOULOOKING_CONDITION;
    INFORMATION = DIA_MORTY_WHATAREYOULOOKING_INFO;
    IMPORTANT = TRUE;
}

func int DIA_MORTY_WHATAREYOULOOKING_CONDITION() {
    return TRUE;
}

func void DIA_MORTY_WHATAREYOULOOKING_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_Morty_Whatareyoulooking_13_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Morty_Whatareyoulooking_13_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Morty_Whatareyoulooking_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Morty_Whatareyoulooking_13_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Morty_Whatareyoulooking_13_05");
    INFO_CLEARCHOICES(0x146c9);
    INFO_ADDCHOICE(0x146c9, "Sure, I understand.", 0x146cd);
    INFO_ADDCHOICE(0x146c9, "You're about to lose them yourself, smart-ass. (Provoke)", 0x146cc);
}

func void DIA_MORTY_WHATAREYOULOOKING_PISSOFF() {
    AI_OUTPUT(OTHER, SELF, "DIA_Morty_Whatareyoulooking_pissoff_15_08");
    AI_OUTPUT(SELF, OTHER, "DIA_Morty_Whatareyoulooking_pissoff_13_09");
    DIA_MORTY_STARTDUEL();
}

func void DIA_MORTY_WHATAREYOULOOKING_UNDERSTAND() {
    AI_OUTPUT(OTHER, SELF, "DIA_Morty_Whatareyoulooking_understand_15_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Morty_Whatareyoulooking_understand_13_07");
    INFO_CLEARCHOICES(0x146c9);
}

instance DIA_MORTY_WHATAREYOUDOING(C_INFO) {
    NPC = 0xe50e;
    NR = 1;
    CONDITION = DIA_MORTY_WHATAREYOUDOING_CONDITION;
    INFORMATION = DIA_MORTY_WHATAREYOUDOING_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "What are you doing here?";
}

func int DIA_MORTY_WHATAREYOUDOING_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x146c9)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_MORTY_WHATAREYOUDOING_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Morty_Whatareyoudoing_15_09");
    AI_OUTPUT(SELF, OTHER, "DIA_Morty_Whatareyoudoing_13_10");
    AI_OUTPUT(SELF, OTHER, "DIA_Morty_Whatareyoudoing_13_11");
    INFO_CLEARCHOICES(0x146ce);
    INFO_ADDCHOICE(0x146ce, "Uh... can I roast a sausage over the fire?", 0x146d1);
    if (((SELF.AIVAR[0]) != (FIGHT_LOST)) || ((Q302_PLAYERDUELWITHMORTYSTATE) != (2))) {
        INFO_ADDCHOICE(0x146ce, "How did you escape from the guard?", 0x146d2);
    };
}

func void DIA_MORTY_WHATAREYOUDOING_SAUSAGE() {
    INFO_CLEARCHOICES(0x146ce);
    AI_OUTPUT(OTHER, SELF, "DIA_Morty_Whatareyoudoing_Sausage_15_12");
    AI_OUTPUT(SELF, OTHER, "DIA_Morty_Whatareyoudoing_Sausage_13_13");
}

func void DIA_MORTY_WHATAREYOUDOING_RUNNING() {
    INFO_CLEARCHOICES(0x146ce);
    AI_OUTPUT(OTHER, SELF, "DIA_Morty_Whatareyoudoing_Running_15_14");
    AI_OUTPUT(SELF, OTHER, "DIA_Morty_Whatareyoudoing_Running_13_15");
    DIA_MORTY_STARTDUEL();
}

instance DIA_MORTY_DUELPROPOSAL(C_INFO) {
    NPC = 0xe50e;
    NR = 1;
    CONDITION = DIA_MORTY_DUELPROPOSAL_CONDITION;
    INFORMATION = DIA_MORTY_DUELPROPOSAL_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "In fact, I'd like to challenge you to a duel.";
}

func int DIA_MORTY_DUELPROPOSAL_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_Q302)) == (LOG_RUNNING)) && ((Q302_PLAYERDUELWITHMORTYSTATE) != (2))) && ((SELF.AIVAR[0]) != (FIGHT_LOST))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_MORTY_DUELPROPOSAL_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Morty_DuelProposal_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Morty_DuelProposal_13_02");
    INFO_CLEARCHOICES(0x146d3);
    INFO_ADDCHOICE(0x146d3, "I always wanted to punch a guard.", 0x146d6);
    INFO_ADDCHOICE(0x146d3, "They say those are the rules here. Respect must be earned.", 0x146d7);
}

func void DIA_MORTY_DUELPROPOSAL_ALWAYSWANTEDTOSPANKMILITIA() {
    INFO_CLEARCHOICES(0x146d3);
    AI_OUTPUT(OTHER, SELF, "DIA_Morty_DuelProposal_AlwaysWantedToSpankMilitia_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Morty_DuelProposal_AlwaysWantedToSpankMilitia_13_02");
}

func void DIA_MORTY_DUELPROPOSAL_EARNRESPECT() {
    INFO_CLEARCHOICES(0x146d3);
    AI_OUTPUT(OTHER, SELF, "DIA_Morty_DuelProposal_EarnRespect_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Morty_DuelProposal_EarnRespect_13_02");
}

instance DIA_MORTY_DUEL(C_INFO) {
    NPC = 0xe50e;
    NR = 1;
    CONDITION = DIA_MORTY_DUEL_CONDITION;
    INFORMATION = DIA_MORTY_DUEL_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I'm ready. Let's fight.";
}

func int DIA_MORTY_DUEL_CONDITION() {
    if ((LOG_GETSTATUS(MIS_Q302)) == (LOG_RUNNING)) {
        if ((((NPC_KNOWSINFO(OTHER, 0x146d3)) && ((NPC_HASITEMS(OTHER, 0x859b)) >= (20))) && ((Q302_PLAYERDUELWITHMORTYSTATE) != (2))) && ((SELF.AIVAR[0]) != (FIGHT_LOST))) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_MORTY_DUEL_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Morty_Duel_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Morty_Duel_13_02");
    DIA_MORTY_STARTDUEL();
}

var int Q302_PLAYERDUELWITHMORTYSTATE = 0;
instance DIA_MORTY_DUELAFTER(C_INFO) {
    NPC = 0xe50e;
    NR = 1;
    CONDITION = DIA_MORTY_DUELAFTER_CONDITION;
    INFORMATION = DIA_MORTY_DUELAFTER_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_MORTY_DUELAFTER_CONDITION() {
    if (((SELF.AIVAR[64]) == (FALSE)) && ((SELF.AIVAR[0]) != (FIGHT_NONE))) {
        if ((SELF.AIVAR[45]) != (AF_NONE)) {
            return TRUE;
        };
        if (NPC_ISINSTATE(SELF, 0xf09f)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_MORTY_DUELAFTER_INFO() {
    B_HEALNPC_SELF();
    HERO.AIVAR[95] = FALSE;
    HERO.AIVAR[94] = FALSE;
    SELF.AIVAR[94] = FALSE;
    if ((SELF.AIVAR[0]) == (FIGHT_WON)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Morty_DuelAfter_13_01");
        Q302_PLAYERDUELWITHMORTYSTATE = 1;
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Morty_DuelAfter_13_02");
    CREATEINVITEMS(SELF, 0x84b0, 1);
    if ((LOG_GETSTATUS(MIS_Q302)) == (LOG_RUNNING)) {
        AI_LOGENTRY(TOPIC_Q302, LOG_Q302_MORTY_WEWON);
    };
    B_GIVEINVITEMS(SELF, OTHER, 0x84b0, 1);
    Q302_PLAYERDUELWITHMORTYSTATE = 2;
    if ((((B_COUNTDUELSQ302()) > (2)) && ((Q302_PRICEWILLBELOWER_ENTRY) == (FALSE))) && ((LOG_GETSTATUS(MIS_Q302)) == (LOG_RUNNING))) {
        AI_LOGENTRY(TOPIC_Q302, LOG_Q302_THEYKNOWME);
        Q302_PRICEWILLBELOWER_ENTRY = TRUE;
    };
    SELF.AIVAR[45] = AF_NONE;
    SELF.AIVAR[64] = TRUE;
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_MORTY_DUELREVENGE(C_INFO) {
    NPC = 0xe50e;
    NR = 1;
    CONDITION = DIA_MORTY_DUELREVENGE_CONDITION;
    INFORMATION = DIA_MORTY_DUELREVENGE_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "Do you still feel like a little duel?";
}

func int DIA_MORTY_DUELREVENGE_CONDITION() {
    if ((LOG_GETSTATUS(MIS_Q302)) == (LOG_RUNNING)) {
        if ((Q302_PLAYERDUELWITHMORTYSTATE) == (1)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_MORTY_DUELREVENGE_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Morty_DuelTrain_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Morty_DuelTrain_13_02");
    DIA_MORTY_STARTDUEL();
}

instance DIA_MORTY_AMBIENT(C_INFO) {
    NPC = 0xe50e;
    NR = 998;
    CONDITION = DIA_MORTY_AMBIENT_CONDITION;
    INFORMATION = DIA_MORTY_AMBIENT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "How are you doing?";
}

func int DIA_MORTY_AMBIENT_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x146ce)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_MORTY_AMBIENT_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Morty_Ambient_15_00");
    NPC_INITAMBIENTS(SELF, 3);
    if ((NPC_GETLASTAMBIENT(SELF)) == (1)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Morty_Ambient_13_01");
    };
    if ((NPC_GETLASTAMBIENT(SELF)) == (2)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Morty_Ambient_13_02");
    };
    if ((NPC_GETLASTAMBIENT(SELF)) == (3)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Morty_Ambient_13_03");
    };
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_MORTY_PICKPOCKET(C_INFO) {
    NPC = 0xe50e;
    NR = 900;
    CONDITION = DIA_MORTY_PICKPOCKET_CONDITION;
    INFORMATION = DIA_MORTY_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_40;
}

func int DIA_MORTY_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_MORTY_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(0x146e5);
    INFO_ADDCHOICE(0x146e5, DIALOG_BACK, 0x146e9);
    INFO_ADDCHOICE(0x146e5, DIALOG_PICKPOCKET, 0x146e8);
}

func void DIA_MORTY_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) {
        CREATEINVITEMS(SELF, 0x84ba, 1);
        B_GIVEINVITEMS(SELF, OTHER, 0x84ba, 1);
        B_PICKPOCKET_AMBIENT_TIER_1();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(0x146e5);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(0x146e5);
}

func void DIA_MORTY_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(0x146e5);
}


instance DIA_ILSE_EXIT(C_INFO) {
    NPC = 53749;
    NR = 999;
    CONDITION = DIA_ILSE_EXIT_CONDITION;
    INFORMATION = DIA_ILSE_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_ILSE_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_ILSE_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_ILSE_SQ412_LOSER(C_INFO) {
    NPC = 53749;
    NR = 1;
    CONDITION = DIA_ILSE_SQ412_LOSER_CONDITION;
    INFORMATION = DIA_ILSE_SQ412_LOSER_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_ILSE_SQ412_LOSER_CONDITION() {
    if (((LOG_GETSTATUS(MIS_SQ412)) == (LOG_SUCCESS)) && ((Q509_ILSEVOLFZACKE) == (0))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

var int ILSE_FIGHTSTATUS;
func void DIA_ILSE_SQ412_LOSER_INFO() {
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    B_STANDUP();
    AI_OUTPUT(SELF, OTHER, "DIA_Ilse_SQ412_Loser_03_01");
    INFO_CLEARCHOICES(68068);
    INFO_ADDCHOICE(68068, "Are you trying to provoke me?", 68073);
    INFO_ADDCHOICE(68068, "What do you mean?", 68072);
}

func void DIA_ILSE_SQ412_LOSER_WHAT() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Ilse_SQ412_Loser_What_15_01");
    AI_RESETFACEANI(OTHER);
    AI_OUTPUT(SELF, OTHER, "DIA_Ilse_SQ412_Loser_What_03_02");
    INFO_ADDCHOICE(68068, "I don't have time right now.", 68076);
}

func void DIA_ILSE_SQ412_LOSER_FIGHT() {
    AI_OUTPUT(OTHER, SELF, "DIA_Ilse_SQ412_Loser_Fight_15_01");
    INFO_ADDCHOICE(68068, "So come on, show me what a great fighter you are.", 68075);
}

func void DIA_ILSE_SQ412_FOLLOWME() {
    ILSE_FIGHTSTATUS = 1;
    AI_OUTPUT(SELF, OTHER, "DIA_Ilse_SQ412_Loser_StartFight_03_03");
    INFO_CLEARCHOICES(68068);
    AI_STOPPROCESSINFOS(SELF);
    NPC_EXCHANGEROUTINE(SELF, "SQ412_FIGHT");
    AI_RESETFACEANI(OTHER);
    AI_RESETFACEANI(SELF);
}

func void DIA_ILSE_SQ412_LOSER_FIGHT_STARTFIGHT() {
    AI_STARTFACEANI(OTHER, S_ANGRY, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Ilse_SQ412_Loser_StartFight_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Ilse_SQ412_Loser_StartFight_03_02");
    DIA_ILSE_SQ412_FOLLOWME();
}

func void DIA_ILSE_SQ412_LOSER_WHAT_LEAVE() {
    ILSE_FIGHTSTATUS = 5;
    AI_OUTPUT(OTHER, SELF, "DIA_Ilse_SQ412_Loser_Leave_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Ilse_SQ412_Loser_Leave_03_02");
    INFO_CLEARCHOICES(68068);
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_ILSE_SQ412_DUEL(C_INFO) {
    NPC = 53749;
    NR = 1;
    CONDITION = DIA_ILSE_SQ412_DUEL_CONDITION;
    INFORMATION = DIA_ILSE_SQ412_DUEL_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_ILSE_SQ412_DUEL_CONDITION() {
    if (((LOG_GETSTATUS(MIS_SQ412)) == (LOG_SUCCESS)) && ((Q509_ILSEVOLFZACKE) == (0))) {
        if ((ILSE_FIGHTSTATUS) == (1)) {
            if ((NPC_KNOWSINFO(OTHER, 68068)) && ((NPC_GETDISTTOWP(SELF, "PARTM5_PATH_107")) <= (550))) {
                return TRUE;
            };
        };
    };
    return 0 /* !broken stack! */;
}

func void ILSE_STARTDUEL() {
    if ((NPC_HASEQUIPPEDMELEEWEAPON(NONE_11301_ILSE)) == (FALSE)) {
        CREATEINVITEMS(NONE_11301_ILSE, 39606, 1);
        AI_EQUIPBESTMELEEWEAPON(NONE_11301_ILSE);
    };
    B_HEALNPC_SELF();
    ILSE_FIGHTSTATUS = 2;
    HERO.AIVAR[96] = 10;
    NONE_11301_ILSE.AIVAR[96] = 10;
    NONE_11301_ILSE.AIVAR[45] = AF_RUNNING;
    HERO.AIVAR[95] = TRUE;
    HERO.AIVAR[94] = TRUE;
    NONE_11301_ILSE.AIVAR[94] = TRUE;
    AI_STOPPROCESSINFOS(SELF);
    NPC_EXCHANGEROUTINE(SELF, "SQ412_WAIT");
    B_ATTACK(NONE_11301_ILSE, HERO, AR_NONE, 1);
}

func void DIA_ILSE_SQ412_DUEL_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_Ilse_SQ412_Duel_03_01");
    ILSE_STARTDUEL();
}

instance DIA_ILSE_SQ412_AFTERFIGHT(C_INFO) {
    NPC = 53749;
    NR = 1;
    CONDITION = DIA_ILSE_SQ412_AFTERFIGHT_CONDITION;
    INFORMATION = DIA_ILSE_SQ412_AFTERFIGHT_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_ILSE_SQ412_AFTERFIGHT_CONDITION() {
    if (((LOG_GETSTATUS(MIS_SQ412)) == (LOG_SUCCESS)) && ((Q509_ILSEVOLFZACKE) == (0))) {
        if ((ILSE_FIGHTSTATUS) == (2)) {
            if (((SELF.AIVAR[64]) == (FALSE)) && ((SELF.AIVAR[0]) != (FIGHT_NONE))) {
                if ((SELF.AIVAR[45]) != (AF_NONE)) {
                    return TRUE;
                };
            };
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_ILSE_SQ412_AFTERFIGHT_INFO() {
    B_HEALNPC_SELF();
    HERO.AIVAR[95] = FALSE;
    HERO.AIVAR[94] = FALSE;
    SELF.AIVAR[94] = FALSE;
    if ((SELF.AIVAR[0]) == (FIGHT_WON)) {
        ILSE_FIGHTSTATUS = 4;
        AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
        AI_OUTPUT(SELF, OTHER, "DIA_Ilse_SQ412_AfterFight_03_01");
        AI_OUTPUT(SELF, OTHER, "DIA_Ilse_SQ412_AfterFight_03_02");
    };
    ILSE_FIGHTSTATUS = 3;
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Ilse_SQ412_AfterFight_03_03");
    AI_STARTFACEANI(OTHER, S_ANGRY, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Ilse_SQ412_AfterFight_15_04");
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
    AI_OUTPUT(SELF, OTHER, "DIA_Ilse_SQ412_AfterFight_03_05");
    CREATEINVITEMS(SELF, 35740, 1);
    B_GIVEINVITEMS(SELF, OTHER, 35740, 1);
    AI_STOPPROCESSINFOS(SELF);
    NPC_EXCHANGEROUTINE(SELF, START);
    SELF.AIVAR[45] = AF_NONE;
    SELF.AIVAR[64] = TRUE;
}

instance DIA_ILSE_SQ412_REVANGE(C_INFO) {
    NPC = 53749;
    NR = 1;
    CONDITION = DIA_ILSE_SQ412_REVANGE_CONDITION;
    INFORMATION = DIA_ILSE_SQ412_REVANGE_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_REQUESTAFIGHT;
}

func int DIA_ILSE_SQ412_REVANGE_CONDITION() {
    if (((LOG_GETSTATUS(MIS_SQ412)) == (LOG_SUCCESS)) && ((Q509_ILSEVOLFZACKE) == (0))) {
        if ((ILSE_FIGHTSTATUS) >= (4)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_ILSE_SQ412_REVANGE_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_Ilse_SQ412_Revange_03_01");
    AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
    if ((ILSE_FIGHTSTATUS) == (4)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Ilse_SQ412_Revange_03_02");
        AI_STARTFACEANI(OTHER, S_ANGRY, 1, -(1));
        AI_OUTPUT(OTHER, SELF, "DIA_Ilse_SQ412_Revange_15_03");
    };
    if ((ILSE_FIGHTSTATUS) == (5)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Ilse_SQ412_Revange_03_04");
    };
    DIA_ILSE_SQ412_FOLLOWME();
}

instance DIA_ILSE_NICEHAMMER(C_INFO) {
    NPC = 53749;
    NR = 1;
    CONDITION = DIA_ILSE_NICEHAMMER_CONDITION;
    INFORMATION = DIA_ILSE_NICEHAMMER_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Nice hammer, are you an adventurer?";
}

func int DIA_ILSE_NICEHAMMER_CONDITION() {
    if ((NPC_GETDISTTOWP(SELF, SELF.WP)) <= (700)) {
        if (((ILSE_FIGHTSTATUS) != (1)) || ((ILSE_FIGHTSTATUS) != (2))) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_ILSE_NICEHAMMER_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Ilse_NiceHammer_15_01");
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Ilse_NiceHammer_03_02");
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Ilse_NiceHammer_03_03");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Ilse_NiceHammer_03_04");
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
}

instance DIA_ILSE_Q509_QUESTION(C_INFO) {
    NPC = 53749;
    NR = 1;
    CONDITION = DIA_ILSE_Q509_QUESTION_CONDITION;
    INFORMATION = DIA_ILSE_Q509_QUESTION_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I'm preparing for some expedition...";
}

func int DIA_ILSE_Q509_QUESTION_CONDITION() {
    if (((NPC_KNOWSINFO(OTHER, 68087)) && ((LOG_GETSTATUS(MIS_Q509)) == (LOG_RUNNING))) && ((Q509_COUNTWARRIORS) < (4))) {
        if ((NPC_GETDISTTOWP(SELF, SELF.WP)) <= (700)) {
            if (((ILSE_FIGHTSTATUS) != (1)) || ((ILSE_FIGHTSTATUS) != (2))) {
                return TRUE;
            };
        };
    };
    return 0 /* !broken stack! */;
}

var int ILSE_Q509_CANGO;
func void DIA_ILSE_Q509_QUESTION_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Ilse_Q509_Question_15_01");
    AI_STARTFACEANI(SELF, S_WHAT, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Ilse_Q509_Question_03_02");
    INFO_CLEARCHOICES(68090);
    INFO_ADDCHOICE(68090, "So what will it be, deal? (Pay 600 GP)", 68096);
    INFO_ADDCHOICE(68090, "The place we're going to is full of treasure.", 68095);
    INFO_ADDCHOICE(68090, "You said you were bored here anyway.", 68094);
}

func void DIA_ILSE_Q509_QUESTION_BORING() {
    AI_OUTPUT(OTHER, SELF, "DIA_Ilse_Q509_Question_Boring_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Ilse_Q509_Question_Boring_03_02");
}

func void DIA_ILSE_Q509_QUESTION_TREASURE() {
    AI_OUTPUT(OTHER, SELF, "DIA_Ilse_Q509_Question_Treasure_15_01");
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Ilse_Q509_Question_Treasure_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Ilse_Q509_Question_Treasure_03_03");
    AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
    if ((ILSE_FIGHTSTATUS) == (3)) {
        ILSE_Q509_CANGO = TRUE;
        AI_OUTPUT(SELF, OTHER, "DIA_Ilse_Q509_Question_Treasure_03_04");
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Ilse_Q509_Question_Treasure_03_05");
    INFO_CLEARCHOICES(68090);
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
}

func void DIA_ILSE_Q509_QUESTION_PAY() {
    AI_STARTFACEANI(OTHER, S_SMUG, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Ilse_Q509_Question_Pay_15_01");
    B_MARVIN_USEFAKEBAG_THROW();
    if ((NPC_HASITEMS(OTHER, 34203)) >= (Q509_ILSEPRICE)) {
        NPC_REMOVEINVITEMS(SELF, 34203, Q509_ILSEPRICE);
        ILSE_Q509_CANGO = TRUE;
        B_GIVEINVITEMS(OTHER, SELF, 34203, Q509_ILSEPRICE);
        AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
        AI_OUTPUT(SELF, OTHER, "DIA_Ilse_Q509_Question_Pay_03_02");
        INFO_CLEARCHOICES(68090);
    };
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    B_SAY(SELF, OTHER, "$NOGOLD_BRIBE");
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
}

instance DIA_ILSE_Q509_PAYGOLD(C_INFO) {
    NPC = 53749;
    NR = 1;
    CONDITION = DIA_ILSE_Q509_PAYGOLD_CONDITION;
    INFORMATION = DIA_ILSE_Q509_PAYGOLD_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "So what will it be, deal? (Pay 600 GP)";
}

func int DIA_ILSE_Q509_PAYGOLD_CONDITION() {
    if ((((NPC_KNOWSINFO(OTHER, 68090)) && ((ILSE_Q509_CANGO) == (FALSE))) && ((LOG_GETSTATUS(MIS_Q509)) == (LOG_RUNNING))) && ((Q509_COUNTWARRIORS) < (4))) {
        if ((NPC_GETDISTTOWP(SELF, SELF.WP)) <= (700)) {
            if (((ILSE_FIGHTSTATUS) != (1)) || ((ILSE_FIGHTSTATUS) != (2))) {
                return TRUE;
            };
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_ILSE_Q509_PAYGOLD_INFO() {
    DIA_ILSE_Q509_QUESTION_PAY();
}

instance DIA_ILSE_Q509_VARDHAL(C_INFO) {
    NPC = 53749;
    NR = 1;
    CONDITION = DIA_ILSE_Q509_VARDHAL_CONDITION;
    INFORMATION = DIA_ILSE_Q509_VARDHAL_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Meet me at the entrance to the ruins of Vardhal.";
}

func int DIA_ILSE_Q509_VARDHAL_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_Q509)) == (LOG_RUNNING)) && ((Q509_COUNTWARRIORS) < (4))) && ((ILSE_Q509_CANGO) == (TRUE))) {
        if ((NPC_GETDISTTOWP(SELF, SELF.WP)) <= (700)) {
            if (((ILSE_FIGHTSTATUS) != (1)) || ((ILSE_FIGHTSTATUS) != (2))) {
                return TRUE;
            };
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_ILSE_Q509_VARDHAL_INFO() {
    if ((NPC_HASEQUIPPEDMELEEWEAPON(SELF)) == (FALSE)) {
        CREATEINVITEMS(SELF, 39606, 1);
        AI_EQUIPBESTMELEEWEAPON(SELF);
    };
    B_HEALNPC_SELF();
    AI_OUTPUT(OTHER, SELF, "DIA_Ilse_Q509_Vardhal_15_01");
    AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Ilse_Q509_Vardhal_03_02");
    B_STANDUP();
    AI_STOPPROCESSINFOS(SELF);
    B_GIVEPLAYERXP(XP_VARHDAL_RECRUIT);
    SELF.AIVAR[15] = TRUE;
    SELF.FLAGS = 2;
    Q509_ILSEVOLFZACKE = 1;
    NPC_EXCHANGEROUTINE(SELF, "Q509_WAIT");
    AI_LOGENTRY(TOPIC_Q509, LOG_Q509_ILSE);
    AI_FUNCTION(SELF, 63308);
}

instance DIA_ILSE_Q509_FEEL(C_INFO) {
    NPC = 53749;
    NR = 90;
    CONDITION = DIA_ILSE_Q509_FEEL_CONDITION;
    INFORMATION = DIA_ILSE_Q509_FEEL_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "How's the morale?";
}

func int DIA_ILSE_Q509_FEEL_CONDITION() {
    if (((Q509_ILSEVOLFZACKE) == (1)) && ((NPC_GETDISTTOWP(SELF, "PART5_Q509_ILSE")) <= (2000))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_ILSE_Q509_FEEL_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    B_SAY(OTHER, SELF, "$MARVIN_VolfzackMorale3");
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Ilse_Q509_Feel_03_02");
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
}

instance DIA_ILSE_HELLO(C_INFO) {
    NPC = 53749;
    NR = 90;
    CONDITION = DIA_ILSE_HELLO_CONDITION;
    INFORMATION = DIA_ILSE_HELLO_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "What are you doing here?";
}

func int DIA_ILSE_HELLO_CONDITION() {
    if (!(NPC_KNOWSINFO(OTHER, 68068))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_ILSE_HELLO_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Ilse_Hello_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Ilse_Hello_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Ilse_Hello_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Ilse_Hello_03_04");
}

instance DIA_ILSE_AMBIENT(C_INFO) {
    NPC = 53749;
    NR = 90;
    CONDITION = DIA_ILSE_AMBIENT_CONDITION;
    INFORMATION = DIA_ILSE_AMBIENT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "How are you doing?";
}

func int DIA_ILSE_AMBIENT_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 68106)) || ((ILSE_FIGHTSTATUS) >= (3))) {
        if (((Q509_ILSEVOLFZACKE) == (1)) && ((NPC_GETDISTTOWP(SELF, "PART5_Q509_ILSE")) > (2000))) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_ILSE_AMBIENT_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Ilse_Ambient_15_01");
    if ((KAPITEL) == (4)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Ilse_Ambient_03_02");
    };
    if ((KAPITEL) == (5)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Ilse_Ambient_03_03");
    };
}

instance DIA_ILSE_PICKPOCKET(C_INFO) {
    NPC = 53749;
    NR = 900;
    CONDITION = DIA_ILSE_PICKPOCKET_CONDITION;
    INFORMATION = DIA_ILSE_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_120_FEMALE;
}

func int DIA_ILSE_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_ILSE_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(68112);
    INFO_ADDCHOICE(68112, DIALOG_BACK, 68116);
    INFO_ADDCHOICE(68112, DIALOG_PICKPOCKET, 68115);
}

func void DIA_ILSE_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (3)) {
        B_PICKPOCKET_AMBIENT_TIER_3();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(68112);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(68112);
}

func void DIA_ILSE_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(68112);
}

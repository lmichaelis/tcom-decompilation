instance DIA_OTH_EXIT(C_INFO) {
    NPC = 0xe129;
    NR = 999;
    CONDITION = DIA_OTH_EXIT_CONDITION;
    INFORMATION = DIA_OTH_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_OTH_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_OTH_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

const string OTHO_CHECKPOINT = "VILLAGE_PLACE_37";
instance DIA_OTH_FIRSTWARN(C_INFO) {
    NPC = 0xe129;
    NR = 1;
    CONDITION = DIA_OTH_FIRSTWARN_CONDITION;
    INFORMATION = DIA_OTH_FIRSTWARN_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

var int OTHO_ALLOWUSTOGO = 0;
var int OTHO_FIRSTTALK = 0;
func int DIA_OTH_FIRSTWARN_CONDITION() {
    if (((B_GETGREATESTPETZCRIME(SELF)) >= (CRIME_ATTACK)) && ((OTHO_ALLOWUSTOGO) == (TRUE))) {
        SELF.AIVAR[14] = FALSE;
    };
    if ((OTHO_ALLOWUSTOGO) == (TRUE)) {
        SELF.AIVAR[14] = TRUE;
    };
    if ((NPC_GETDISTTONPC(SELF, OTHER)) <= (700)) {
        if (((((SELF.AIVAR[12]) == (GP_NONE)) && ((SELF.AIVAR[14]) == (FALSE))) && ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), SELF.WP)) == (TRUE))) && ((NPC_REFUSETALK(SELF)) == (FALSE))) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_OTH_FIRSTWARN_INFO() {
    if ((OTHO_FIRSTTALK) == (FALSE)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Oth_FirstWarn_03_01");
        AI_OUTPUT(OTHER, SELF, "DIA_Oth_FirstWarn_15_02");
        AI_OUTPUT(SELF, OTHER, "DIA_Oth_FirstWarn_03_03");
        AI_OUTPUT(SELF, OTHER, "DIA_Oth_FirstWarn_03_04");
        OTHO_FIRSTTALK = TRUE;
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Oth_FirstWarn_03_05");
    OTHER.AIVAR[13] = NPC_GETDISTTOWP(OTHER, OTHO_CHECKPOINT);
    SELF.AIVAR[12] = GP_FIRSTWARNGIVEN;
}

instance DIA_OTH_SECONDWARN(C_INFO) {
    NPC = 0xe129;
    NR = 2;
    CONDITION = DIA_OTH_SECONDWARN_CONDITION;
    INFORMATION = DIA_OTH_SECONDWARN_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_OTH_SECONDWARN_CONDITION() {
    if (((((SELF.AIVAR[12]) == (GP_FIRSTWARNGIVEN)) && ((SELF.AIVAR[14]) == (FALSE))) && ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), SELF.WP)) == (TRUE))) && ((NPC_GETDISTTOWP(OTHER, OTHO_CHECKPOINT)) < ((OTHER.AIVAR[13]) - (50)))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_OTH_SECONDWARN_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_Oth_Second_Warn_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Oth_Second_Warn_03_02");
    OTHER.AIVAR[13] = NPC_GETDISTTOWP(OTHER, OTHO_CHECKPOINT);
    SELF.AIVAR[12] = GP_SECONDWARNGIVEN;
}

instance DIA_OTH_ATTACK(C_INFO) {
    NPC = 0xe129;
    NR = 3;
    CONDITION = DIA_OTH_ATTACK_CONDITION;
    INFORMATION = DIA_OTH_ATTACK_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_OTH_ATTACK_CONDITION() {
    if (((((SELF.AIVAR[12]) == (GP_SECONDWARNGIVEN)) && ((SELF.AIVAR[14]) == (FALSE))) && ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), SELF.WP)) == (TRUE))) && ((NPC_GETDISTTOWP(OTHER, OTHO_CHECKPOINT)) < ((OTHER.AIVAR[13]) - (50)))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_OTH_ATTACK_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_Oth_Attack_03_01");
    AI_WAITTILLEND(SELF, OTHER);
    AI_DRAWWEAPON(SELF);
    AI_STOPPROCESSINFOS(SELF);
    B_ATTACK(SELF, OTHER, AR_GUARDSTOPSINTRUDER, 1);
    OTHER.AIVAR[13] = 0;
    SELF.AIVAR[12] = GP_NONE;
}

instance DIA_OTH_GOINSIDE(C_INFO) {
    NPC = 0xe129;
    NR = 1;
    CONDITION = DIA_OTH_GOINSIDE_CONDITION;
    INFORMATION = DIA_OTH_GOINSIDE_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "May I look inside, my king?";
}

func int DIA_OTH_GOINSIDE_CONDITION() {
    if ((OTHO_ALLOWUSTOGO) == (FALSE)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_OTH_GOINSIDE_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Oth_GoInside_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Oth_GoInside_03_02");
    AI_WAITTILLEND(SELF, OTHER);
    AI_PLAYANI(SELF, R_SCRATCHHEAD);
    AI_OUTPUT(SELF, OTHER, "DIA_Oth_GoInside_03_03");
}

instance DIA_OTH_SQ102_BASTIAN(C_INFO) {
    NPC = 0xe129;
    NR = 2;
    CONDITION = DIA_OTH_SQ102_BASTIAN_CONDITION;
    INFORMATION = DIA_OTH_SQ102_BASTIAN_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I come from Bastian. I hear you're in some kind of trouble.";
}

func int DIA_OTH_SQ102_BASTIAN_CONDITION() {
    if ((LOG_GETSTATUS(MIS_SQ102)) == (LOG_RUNNING)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_OTH_SQ102_BASTIAN_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Oth_SQ102_Bastian_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Oth_SQ102_Bastian_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Oth_SQ102_Bastian_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Oth_SQ102_Bastian_03_04");
    INFO_CLEARCHOICES(0x15bc9);
    INFO_ADDCHOICE(0x15bc9, "Can I at least get a broom?", 0x15bcc);
    INFO_ADDCHOICE(0x15bc9, "I won't pick up any dung!", 0x15bcd);
    INFO_ADDCHOICE(0x15bc9, "All right, well... I'll be back soon.", 0x15bce);
}

func void DIA_OTH_SQ102_BASTIAN_BROOM() {
    AI_OUTPUT(OTHER, SELF, "DIA_Oth_SQ102_Bastian_Broom_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Oth_SQ102_Bastian_Broom_03_02");
}

func void DIA_OTH_SQ102_BASTIAN_NOWAY() {
    AI_OUTPUT(OTHER, SELF, "DIA_Oth_SQ102_Bastian_NoWay_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Oth_SQ102_Bastian_NoWay_03_02");
}

func void DIA_OTH_SQ102_BASTIAN_OKAY() {
    OTHO_ALLOWUSTOGO = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Oth_SQ102_Bastian_Okay_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Oth_SQ102_Bastian_Okay_03_02");
    INFO_CLEARCHOICES(0x15bc9);
    NPC_EXCHANGEROUTINE(SELF, "Village");
    AI_STOPPROCESSINFOS(SELF);
    AI_LOGENTRY(TOPIC_SQ102, LOG_SQ102_OTH_WORK);
}

instance DIA_OTH_MYJOBISDONE(C_INFO) {
    NPC = 0xe129;
    NR = 3;
    CONDITION = DIA_OTH_MYJOBISDONE_CONDITION;
    INFORMATION = DIA_OTH_MYJOBISDONE_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I cleaned out the whole barn. Take it.";
}

func int DIA_OTH_MYJOBISDONE_CONDITION() {
    if ((LOG_GETSTATUS(MIS_SQ102)) == (LOG_RUNNING)) {
        if (((NPC_HASITEMS(OTHER, 0x90ab)) >= (6)) || ((((NPC_HASITEMS(OTHER, 0x90ab)) >= (5)) && ((SQ310_SOUPDONE) == (1))) && ((SQ310_WHATWILLBEUSED) == (2)))) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_OTH_MYJOBISDONE_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Oth_MyJobIsDone_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Oth_MyJobIsDone_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Oth_MyJobIsDone_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Oth_MyJobIsDone_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Oth_MyJobIsDone_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Oth_MyJobIsDone_03_06");
    AI_OUTPUT(OTHER, SELF, "DIA_Oth_MyJobIsDone_15_07");
    AI_OUTPUT(SELF, OTHER, "DIA_Oth_MyJobIsDone_03_08");
    B_GIVEINVITEMS(OTHER, SELF, 0x90ab, 6);
    CREATEINVITEMS(SELF, 0x90ac, 1);
    B_GIVEINVITEMS(SELF, OTHER, 0x90ac, 1);
    INFO_CLEARCHOICES(0x15bcf);
    INFO_ADDCHOICE(0x15bcf, "I'll see what I can do.", 0x15bd2);
    INFO_ADDCHOICE(0x15bcf, "Where can I find Rasco?", 0x15bd3);
    INFO_ADDCHOICE(0x15bcf, "How do you know it was Rasco who stole your sheep?", 0x15bd4);
}

func void DIA_OTH_MYJOBISDONE_ALLRIGHT() {
    AI_OUTPUT(OTHER, SELF, "DIA_Oth_MyJobIsDone_How_15_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Oth_MyJobIsDone_How_03_07");
    AI_OUTPUT(SELF, OTHER, "DIA_Oth_MyJobIsDone_How_03_08");
    SQ102_RASCOBEDMOVER();
    B_STARTOTHERROUTINE(BAU_722_RASCO, "SQ102");
    NPC_REFRESH(BAU_722_RASCO);
    INFO_CLEARCHOICES(0x15bcf);
    AI_LOGENTRY(TOPIC_SQ102, LOG_SQ102_OTH_RASCO);
}

func void DIA_OTH_MYJOBISDONE_WHERE() {
    AI_OUTPUT(OTHER, SELF, "DIA_Oth_MyJobIsDone_Where_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Oth_MyJobIsDone_Where_03_02");
}

func void DIA_OTH_MYJOBISDONE_HOW() {
    AI_OUTPUT(OTHER, SELF, "DIA_Oth_MyJobIsDone_How_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Oth_MyJobIsDone_How_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Oth_MyJobIsDone_How_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Oth_MyJobIsDone_How_03_04");
}

instance DIA_OTH_RASCOBEDDONE(C_INFO) {
    NPC = 0xe129;
    NR = 4;
    CONDITION = DIA_OTH_RASCOBEDDONE_CONDITION;
    INFORMATION = DIA_OTH_RASCOBEDDONE_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Rasco got what he deserved.";
}

func int DIA_OTH_RASCOBEDDONE_CONDITION() {
    if ((((NPC_KNOWSINFO(OTHER, 0x15bcf)) && ((MOB_HASITEMS("SQ102_RASCOBED", 0x90ac)) == (TRUE))) && ((LOG_GETSTATUS(MIS_SQ102)) == (LOG_RUNNING))) && ((SQ102_HELPRASCOWITHSHIT) != (2))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_OTH_RASCOBEDDONE_INFO() {
    SQ102_HELPEDOTHO = TRUE;
    CREATEINVITEMS(SELF, 0x859b, SQ102_OTHREWARD);
    B_GIVEINVITEMS(SELF, OTHER, 0x859b, SQ102_OTHREWARD);
    AI_OUTPUT(OTHER, SELF, "DIA_Oth_RascoBedDone_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Oth_RascoBedDone_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Oth_RascoBedDone_03_03");
    if ((SQ213_LUTZ_CHANGERTNSILBACH) == (TRUE)) {
        B_STARTOTHERROUTINE(BAU_722_RASCO, "SQ410");
        NPC_REFRESH(BAU_722_RASCO);
    };
    B_STARTOTHERROUTINE(BAU_722_RASCO, START);
    NPC_REFRESH(BAU_722_RASCO);
    SQ102_RASCOBEDMOVER();
    AI_LOGENTRY(TOPIC_SQ102, LOG_SQ102_OTH_FINISHJOB);
}

instance DIA_OTH_OTHSHEEP(C_INFO) {
    NPC = 0xe129;
    NR = 10;
    CONDITION = DIA_OTH_OTHSHEEP_CONDITION;
    INFORMATION = DIA_OTH_OTHSHEEP_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I think I know what happened to your sheep.";
}

func int DIA_OTH_OTHSHEEP_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x15e5a)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_OTH_OTHSHEEP_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Oth_OthSheep_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Oth_OthSheep_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Oth_OthSheep_15_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Oth_OthSheep_15_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Oth_OthSheep_03_05");
    AI_OUTPUT(OTHER, SELF, "DIA_Oth_OthSheep_15_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Oth_OthSheep_03_07");
    AI_OUTPUT(SELF, OTHER, "DIA_Oth_OthSheep_03_08");
    CREATEINVITEMS(SELF, 0x8343, 1);
    if ((LOG_GETSTATUS(MIS_SQ102)) == (LOG_RUNNING)) {
        AI_LOGENTRY(TOPIC_SQ102, LOG_SQ102_OTH_FOUNDBETSY);
    };
    B_GIVEINVITEMS(SELF, OTHER, 0x8343, 1);
}

instance DIA_OTH_OTHMAD(C_INFO) {
    NPC = 0xe129;
    NR = 1;
    CONDITION = DIA_OTH_OTHMAD_CONDITION;
    INFORMATION = DIA_OTH_OTHMAD_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_OTH_OTHMAD_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 0x15b1d)) && ((LOG_GETSTATUS(MIS_SQ102)) == (LOG_SUCCESS))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_OTH_GOAWAY() {
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Oth_OthMad_03_03");
    AI_PLAYANI(SELF, "T_GETLOST2");
    AI_STOPPROCESSINFOS(SELF);
}

func void DIA_OTH_OTHMAD_INFO() {
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Oth_OthMad_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Oth_OthMad_03_02");
    DIA_OTH_GOAWAY();
}

instance DIA_OTH_MADFOREVER(C_INFO) {
    NPC = 0xe129;
    NR = 2;
    CONDITION = DIA_OTH_MADFOREVER_CONDITION;
    INFORMATION = DIA_OTH_MADFOREVER_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_OTH_MADFOREVER_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 0x15bdb)) && (NPC_ISINSTATE(SELF, 0xf09f))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_OTH_MADFOREVER_INFO() {
    DIA_OTH_GOAWAY();
}

instance DIA_OTH_WHEREISJORN(C_INFO) {
    NPC = 0xe129;
    NR = 20;
    CONDITION = DIA_OTH_WHEREISJORN_CONDITION;
    INFORMATION = DIA_OTH_WHEREISJORN_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I have a few questions for you.";
}

func int DIA_OTH_WHEREISJORN_CONDITION() {
    if (((NPC_KNOWSINFO(OTHER, 0x1575a)) && ((LOG_GETSTATUS(MIS_GQ001)) == (LOG_RUNNING))) && (!(NPC_KNOWSINFO(OTHER, 0x1577f)))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_OTH_WHEREISJORN_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Oth_WhereIsJorn_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Oth_WhereIsJorn_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Oth_WhereIsJorn_03_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Oth_WhereIsJorn_15_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Oth_WhereIsJorn_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Oth_WhereIsJorn_03_06");
    INFO_CLEARCHOICES(0x15be2);
    INFO_ADDCHOICE(0x15be2, "My brother's missing. Maybe you heard something about it?", 0x15be5);
    INFO_ADDCHOICE(0x15be2, "Why don't you like storms?", 0x15be6);
}

func void DIA_OTH_WHEREISJORN_JORN() {
    AI_OUTPUT(OTHER, SELF, "DIA_Oth_WhereIsJorn_Jorn_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Oth_WhereIsJorn_Jorn_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Oth_WhereIsJorn_Jorn_03_03");
    INFO_CLEARCHOICES(0x15be2);
    AI_STOPPROCESSINFOS(SELF);
}

func void DIA_OTH_WHEREISJORN_STORM() {
    AI_OUTPUT(OTHER, SELF, "DIA_Oth_WhereIsJorn_Storm_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Oth_WhereIsJorn_Storm_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Oth_WhereIsJorn_Storm_03_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Oth_WhereIsJorn_Storm_15_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Oth_WhereIsJorn_Storm_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Oth_WhereIsJorn_Storm_03_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Oth_WhereIsJorn_Storm_03_07");
    AI_OUTPUT(OTHER, SELF, "DIA_Oth_WhereIsJorn_Storm_15_08");
    AI_OUTPUT(SELF, OTHER, "DIA_Oth_WhereIsJorn_Storm_03_09");
    AI_OUTPUT(SELF, OTHER, "DIA_Oth_WhereIsJorn_Storm_03_10");
    AI_OUTPUT(SELF, OTHER, "DIA_Oth_WhereIsJorn_Storm_03_11");
    AI_OUTPUT(SELF, OTHER, "DIA_Oth_WhereIsJorn_Storm_03_12");
    AI_OUTPUT(SELF, OTHER, "DIA_Oth_WhereIsJorn_Storm_03_13");
    INFO_CLEARCHOICES(0x15be2);
    INFO_ADDCHOICE(0x15be2, "Tell me what you saw, or I'll beat it out of you!", 0x15be7);
    INFO_ADDCHOICE(0x15be2, "You have to tell me, it's very important.", 0x15be8);
    INFO_ADDCHOICE(0x15be2, "Thanks, that's good enough for me.", 0x15bea);
}

func void DIA_OTH_WHEREISJORN_STORM_TELLORFIGHT() {
    AI_OUTPUT(OTHER, SELF, "DIA_Oth_WhereIsJorn_TellOrFight_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Oth_WhereIsJorn_TellOrFight_03_02");
    INFO_CLEARCHOICES(0x15be2);
    AI_STOPPROCESSINFOS(SELF);
}

func void DIA_OTH_WHEREISJORN_STORM_TELLMORE() {
    AI_OUTPUT(OTHER, SELF, "DIA_Oth_WhereIsJorn_TellMore_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Oth_WhereIsJorn_TellMore_03_02");
    INFO_CLEARCHOICES(0x15be2);
    INFO_ADDCHOICE(0x15be2, "I'll make sure that no one will harm you or your sheep.", 0x15be9);
    INFO_ADDCHOICE(0x15be2, "Tell me what you saw, or I'll beat it out of you!", 0x15be7);
    INFO_ADDCHOICE(0x15be2, "Thanks, that's good enough for me.", 0x15bea);
}

func void DIA_OTH_WHEREISJORN_STORM_TELLMORE_PROMISE() {
    AI_OUTPUT(OTHER, SELF, "DIA_Oth_WhereIsJorn_Promise_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Oth_WhereIsJorn_Promise_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Oth_WhereIsJorn_Promise_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Oth_WhereIsJorn_Promise_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Oth_WhereIsJorn_Promise_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Oth_WhereIsJorn_Promise_03_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Oth_WhereIsJorn_Promise_03_07");
    AI_OUTPUT(SELF, OTHER, "DIA_Oth_WhereIsJorn_Promise_03_08");
    AI_OUTPUT(SELF, OTHER, "DIA_Oth_WhereIsJorn_Promise_03_09");
    AI_OUTPUT(OTHER, SELF, "DIA_Oth_WhereIsJorn_Promise_15_10");
    AI_OUTPUT(SELF, OTHER, "DIA_Oth_WhereIsJorn_Promise_03_11");
    GQ001_VILLAGEINFORMATIONJORNCOUNT = (GQ001_VILLAGEINFORMATIONJORNCOUNT) + (1);
    AI_LOGENTRY(TOPIC_GQ001, LOG_GQ001_OTHO);
    INFO_CLEARCHOICES(0x15be2);
    AI_STOPPROCESSINFOS(SELF);
}

func void DIA_OTH_WHEREISJORN_STORM_THANKYOU() {
    AI_OUTPUT(OTHER, SELF, "DIA_Oth_WhereIsJorn_Promise_15_10");
    AI_OUTPUT(SELF, OTHER, "DIA_Oth_WhereIsJorn_Promise_03_11");
    INFO_CLEARCHOICES(0x15be2);
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_OTHO_PICKPOCKET(C_INFO) {
    NPC = 0xe129;
    NR = 900;
    CONDITION = DIA_OTHO_PICKPOCKET_CONDITION;
    INFORMATION = DIA_OTHO_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_40;
}

func int DIA_OTHO_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_OTHO_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(0x15beb);
    INFO_ADDCHOICE(0x15beb, DIALOG_BACK, 0x15bef);
    INFO_ADDCHOICE(0x15beb, DIALOG_PICKPOCKET, 0x15bee);
}

func void DIA_OTHO_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) {
        B_PICKPOCKET_AMBIENT_TIER_1();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(0x15beb);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(0x15beb);
}

func void DIA_OTHO_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(0x15beb);
}


instance DIA_ALDER_EXIT(C_INFO) {
    NPC = 0xd769;
    NR = 999;
    CONDITION = DIA_ALDER_EXIT_CONDITION;
    INFORMATION = DIA_ALDER_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_ALDER_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_ALDER_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_ALDER_CQ004_CRANE(C_INFO) {
    NPC = 0xd769;
    NR = 1;
    CONDITION = DIA_ALDER_CQ004_CRANE_CONDITION;
    INFORMATION = DIA_ALDER_CQ004_CRANE_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "You were last seen at the harbor crane.";
}

func int DIA_ALDER_CQ004_CRANE_CONDITION() {
    if (((CQ004_BORRATTACKPLAYER) == (4)) && ((LOG_GETSTATUS(MIS_CQ004)) == (LOG_RUNNING))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_ALDER_CQ004_CRANE_INFO() {
    B_STARTOTHERROUTINE(VLK_6106_BORR, START);
    AI_OUTPUT(OTHER, SELF, "DIA_Alder_CQ004_Crane_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Alder_CQ004_Crane_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Alder_CQ004_Crane_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Alder_CQ004_Crane_03_04");
    AI_OUTPUT(OTHER, SELF, "DIA_Alder_CQ004_Crane_15_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Alder_CQ004_Crane_03_06");
    INFO_CLEARCHOICES(0x1267b);
    INFO_ADDCHOICE(0x1267b, "I don't have time to refresh anyone's memory right now.", 0x12686);
    if ((NPC_HASITEMS(OTHER, 0x859b)) >= (CQ004_ALDERSTARTTALKING)) {
        INFO_ADDCHOICE(0x1267b, "Here, I think this will refresh your memory. (10 GP)", 0x1267f);
    };
}

func void DIA_ALDER_CQ004_CRANE_YOURGOLD() {
    B_GIVEINVITEMS(OTHER, SELF, 0x859b, CQ004_ALDERSTARTTALKING);
    AI_OUTPUT(SELF, OTHER, "DIA_Alder_CQ004_Crane_FirstGold_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Alder_CQ004_Crane_FirstGold_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Alder_CQ004_Crane_FirstGold_03_04");
    AI_OUTPUT(OTHER, SELF, "DIA_Alder_CQ004_Crane_FirstGold_15_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Alder_CQ004_Crane_FirstGold_03_06");
    AI_OUTPUT(OTHER, SELF, "DIA_Alder_CQ004_Crane_FirstGold_15_07");
    AI_OUTPUT(SELF, OTHER, "DIA_Alder_CQ004_Crane_FirstGold_03_08");
    INFO_CLEARCHOICES(0x1267b);
    INFO_ADDCHOICE(0x1267b, "Oh, I think I'll take a walk to the barracks after all.", 0x12683);
    INFO_ADDCHOICE(0x1267b, "Have you heard of refugees from other islands?", 0x12682);
    if ((NPC_HASITEMS(OTHER, 0x859b)) >= (CQ004_ALDERINFORMATION)) {
        INFO_ADDCHOICE(0x1267b, DIALOG_GIVE15G, 0x12681);
    };
    INFO_CLEARCHOICES(0x12688);
    INFO_ADDCHOICE(0x12688, "Oh, I think I'll take a walk to the barracks after all.", 0x12683);
    INFO_ADDCHOICE(0x12688, "Have you heard of refugees from other islands?", 0x12682);
    if ((NPC_HASITEMS(OTHER, 0x859b)) >= (CQ004_ALDERINFORMATION)) {
        INFO_ADDCHOICE(0x12688, DIALOG_GIVE15G, 0x12681);
    };
}

func void DIA_ALDER_CQ004_CRANE_FIRSTGOLD() {
    AI_OUTPUT(OTHER, SELF, "DIA_Alder_CQ004_Crane_FirstGold_15_01");
    DIA_ALDER_CQ004_CRANE_YOURGOLD();
}

func void DIA_ALDER_CQ004_GOTCRANE() {
    AI_WAITTILLEND(SELF, OTHER);
    B_STANDUP();
    AI_SETWALKMODE(SELF, NPC_RUN);
    AI_GOTOWP(SELF, "SLUMS_HOUSE10_04");
    AI_PLAYANI(SELF, T_PLUNDER);
    AI_GOTOWP(SELF, SELF.WP);
    AI_WAITTILLEND(SELF, OTHER);
    AI_TURNTONPC(SELF, OTHER);
    AI_TURNTONPC(OTHER, SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Alder_CQ004_Crane_SecondGold_03_03");
    AI_FUNCTION(HERO, 0x12687);
    AI_OUTPUT(OTHER, SELF, "DIA_Alder_CQ004_Crane_SecondGold_15_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Alder_CQ004_Crane_SecondGold_03_05");
    INFO_CLEARCHOICES(0x1267b);
    INFO_ADDCHOICE(0x1267b, "I'll accuse someone else of sabotage. (Set Recon and Veigo up)", 0x12684);
    INFO_ADDCHOICE(0x1267b, "We'll go somewhere to secure your back. (Set Alder up)", 0x12685);
    INFO_CLEARCHOICES(0x12688);
    INFO_ADDCHOICE(0x12688, "I'll accuse someone else of sabotage. (Set Recon and Veigo up)", 0x12684);
    INFO_ADDCHOICE(0x12688, "We'll go somewhere to secure your back. (Set Alder up)", 0x12685);
}

func void DIA_ALDER_CQ004_CRANE_FIRSTGOLD_SECONDGOLD() {
    AI_OUTPUT(OTHER, SELF, "DIA_Alder_CQ004_Crane_SecondGold_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Alder_CQ004_Crane_SecondGold_03_02");
    B_GIVEINVITEMS(OTHER, SELF, 0x859b, CQ004_ALDERINFORMATION);
    DIA_ALDER_CQ004_GOTCRANE();
}

func void DIA_ALDER_CQ004_CRANE_FIRSTGOLD_IMMIGRANT() {
    AI_OUTPUT(OTHER, SELF, "DIA_Alder_CQ004_Crane_Immigrant_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Alder_CQ004_Crane_Immigrant_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Alder_CQ004_Crane_Immigrant_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Alder_CQ004_Crane_Immigrant_03_04");
    DIA_ALDER_CQ004_GOTCRANE();
}

func void DIA_ALDER_CQ004_CRANE_FIRSTGOLD_BARRACK() {
    AI_OUTPUT(OTHER, SELF, "DIA_Alder_CQ004_Crane_Barrack_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Alder_CQ004_Crane_Barrack_03_02");
}

func void DIA_ALDER_CQ004_CRANE_FIRSTGOLD_SECONDGOLD_CHEAT() {
    CQ004_RECONANDVEIGOCHEAT = TRUE;
    CQ004_BARRACKFINAL_PREPARE();
    AI_OUTPUT(OTHER, SELF, "DIA_Alder_CQ004_Crane_Cheat_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Alder_CQ004_Crane_Cheat_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Alder_CQ004_Crane_Cheat_15_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Alder_CQ004_Crane_Cheat_15_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Alder_CQ004_Crane_Cheat_03_05");
    AI_LOGENTRY(TOPIC_CQ004, LOG_CQ004_ALDER_RECONANDVEIGO);
    INFO_CLEARCHOICES(0x1267b);
    INFO_CLEARCHOICES(0x12688);
    B_STANDUP();
    NPC_EXCHANGEROUTINE(VLK_6233_ALDER, "CQ004_BARRACKIDLE");
    AI_STOPPROCESSINFOS(SELF);
    CQ004_CHANGEDOORRECON();
}

func void DIA_ALDER_CQ004_CRANE_FIRSTGOLD_SECONDGOLD_ACCUSE() {
    AI_OUTPUT(OTHER, SELF, "DIA_Alder_CQ004_Crane_Accuse_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Alder_CQ004_Crane_Accuse_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Alder_CQ004_Crane_Accuse_15_03");
    CQ004_KETHCHEAT = TRUE;
    CQ004_ALDERCANFOLLOW = TRUE;
    CQ004_BARRACKFINAL_PREPARE();
    INFO_CLEARCHOICES(0x1267b);
    AI_LOGENTRY(TOPIC_CQ004, LOG_CQ004_ALDER_COMEWITHME);
    INFO_CLEARCHOICES(0x12688);
}

func void DIA_ALDER_CQ004_CRANE_NOWAY() {
    AI_OUTPUT(OTHER, SELF, "DIA_Alder_CQ004_Crane_NoWay_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Alder_CQ004_Crane_NoWay_03_02");
    if ((NPC_HASITEMS(OTHER, 0x859b)) < (CQ004_ALDERSTARTTALKING)) {
        AI_LOGENTRY(TOPIC_CQ004, LOG_CQ004_ALDER_NOGOLD);
    };
    AI_LOGENTRY(TOPIC_CQ004, LOG_CQ004_ALDER_GOLDNOTNOW);
    CQ004_ALDERWANTSGOLD = TRUE;
    INFO_CLEARCHOICES(0x1267b);
}

func void ALDERGEAR() {
    CREATEINVITEMS(VLK_6233_ALDER, 0x9125, 1);
    B_GIVEINVITEMS(VLK_6233_ALDER, HERO, 0x9125, 1);
}

instance DIA_ALDER_CQ004_YOURGOLD(C_INFO) {
    NPC = 0xd769;
    NR = 2;
    CONDITION = DIA_ALDER_CQ004_YOURGOLD_CONDITION;
    INFORMATION = DIA_ALDER_CQ004_YOURGOLD_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "Here, I think you'll like this way. (10 GP)";
}

func int DIA_ALDER_CQ004_YOURGOLD_CONDITION() {
    if (((CQ004_ALDERWANTSGOLD) == (TRUE)) && ((LOG_GETSTATUS(MIS_CQ004)) == (LOG_RUNNING))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_ALDER_CQ004_YOURGOLD_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Alder_CQ004_Crane_FirstGold_15_01");
    if ((NPC_HASITEMS(OTHER, 0x859b)) >= (CQ004_ALDERSTARTTALKING)) {
        CQ004_ALDERWANTSGOLD = FALSE;
        DIA_ALDER_CQ004_CRANE_YOURGOLD();
    };
    B_SAY(SELF, OTHER, "$NOGOLD");
}

instance DIA_ALDER_FOLLOWME(C_INFO) {
    NPC = 0xd769;
    NR = 3;
    CONDITION = DIA_ALDER_FOLLOWME_CONDITION;
    INFORMATION = DIA_ALDER_FOLLOWME_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "Let's go.";
}

func int DIA_ALDER_FOLLOWME_CONDITION() {
    if ((LOG_GETSTATUS(MIS_CQ004)) == (LOG_RUNNING)) {
        if (((CQ004_ALDERCANFOLLOW) == (TRUE)) || ((CQ004_ALDERFOLLOW) == (2))) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_ALDER_FOLLOWME_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Alder_CQ004_FollowMe_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Alder_CQ004_FollowMe_03_02");
    CQ004_ALDERFOLLOW = 1;
    CQ004_ALDERCANFOLLOW = FALSE;
    AI_STOPPROCESSINFOS(SELF);
    NPC_EXCHANGEROUTINE(SELF, FOLLOW);
}

instance DIA_ALDER_CQ004_WAIT(C_INFO) {
    NPC = 0xd769;
    NR = 4;
    CONDITION = DIA_ALDER_CQ004_WAIT_CONDITION;
    INFORMATION = DIA_ALDER_CQ004_WAIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "Give me a minute, I'll be right with you.";
}

func int DIA_ALDER_CQ004_WAIT_CONDITION() {
    if (((CQ004_ALDERFOLLOW) == (1)) && ((LOG_GETSTATUS(MIS_CQ004)) == (LOG_RUNNING))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_ALDER_CQ004_WAIT_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Alder_CQ004_WAIT_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Alder_CQ004_WAIT_03_02");
    AI_STOPPROCESSINFOS(SELF);
    NPC_EXCHANGEROUTINE(SELF, START);
    CQ004_ALDERFOLLOW = 2;
}

instance DIA_ALDER_CQ004_WRONGWAY(C_INFO) {
    NPC = 0xd769;
    NR = 1;
    CONDITION = DIA_ALDER_CQ004_WRONGWAY_CONDITION;
    INFORMATION = DIA_ALDER_CQ004_WRONGWAY_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_ALDER_CQ004_WRONGWAY_CONDITION() {
    if (((LOG_GETSTATUS(MIS_CQ004)) == (LOG_RUNNING)) && ((CQ004_ALDERFOLLOW) == (1))) {
        if ((((NPC_GETDISTTOWP(SELF, "PARTM3_PATH_26")) >= (0x3a98)) || ((NPC_GETDISTTOWP(SELF, "PARTM4_PATH_89")) <= (1000))) || ((NPC_GETDISTTOWP(SELF, "PARTM2_PATH_02")) <= (1000))) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_ALDER_CQ004_WRONGWAY_INFO() {
    CQ004_ALDERFOLLOW = 2;
    AI_OUTPUT(SELF, OTHER, "DIA_Alder_CQ004_WrongWay_03_01");
    AI_STOPPROCESSINFOS(SELF);
    NPC_EXCHANGEROUTINE(SELF, START);
}

instance DIA_ALDER_CQ004_WAITASECOND(C_INFO) {
    NPC = 0xd769;
    NR = 5;
    CONDITION = DIA_ALDER_CQ004_WAITASECOND_CONDITION;
    INFORMATION = DIA_ALDER_CQ004_WAITASECOND_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_ALDER_CQ004_WAITASECOND_CONDITION() {
    if (((LOG_GETSTATUS(MIS_CQ004)) == (LOG_RUNNING)) && ((CQ004_ALDERCHANGERTN) == (1))) {
        if ((((NPC_GETDISTTOWP(SELF, "PARTM1_PATH_97")) <= (750)) || ((NPC_GETDISTTOWP(SELF, "PARTM3_PATH_29")) <= (750))) || ((NPC_GETDISTTOWP(SELF, "PARTM3_PATH_137")) <= (750))) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_ALDER_CQ004_WAITASECOND_FAILQUEST() {
    CQ004_ALDERFAILED = TRUE;
    CQ004_ALDERFAILED_DAY = WLD_GETDAY();
    INFO_CLEARCHOICES(0x12694);
    AI_STOPPROCESSINFOS(SELF);
    NPC_EXCHANGEROUTINE(SELF, "CQ004_FLEE");
    AI_LOGENTRY(TOPIC_CQ004, LOG_CQ004_ALDERFAIL);
    LOG_SETSTATUS(_@(MIS_CQ004), TOPIC_CQ004, LOG_FAILED);
}

func void DIA_ALDER_CQ004_WAITASECOND_SUCCES() {
    CQ004_ALDERFOLLOW = 3;
    AI_OUTPUT(SELF, OTHER, "DIA_Alder_CQ004_WaitASecond_Sall_03_04");
    AI_OUTPUT(OTHER, SELF, "DIA_Alder_CQ004_WaitASecond_Sall_15_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Alder_CQ004_WaitASecond_Sall_03_06");
    INFO_CLEARCHOICES(0x12694);
    AI_STOPPROCESSINFOS(SELF);
    AI_LOGENTRY(TOPIC_CQ004, LOG_CQ004_ALDER_SUCCESS);
    NPC_EXCHANGEROUTINE(VLK_6233_ALDER, "CQ004_BARRACKJUDGMENT");
}

func void DIA_ALDER_CQ004_WAITASECOND_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_Alder_CQ004_WaitASecond_03_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Alder_CQ004_WaitASecond_15_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Alder_CQ004_WaitASecond_03_03");
    if ((HERO.GUILD) == (GIL_MIL)) {
        AI_OUTPUT(OTHER, SELF, "DIA_Alder_CQ004_WaitASecond_15_06");
        DIA_ALDER_CQ004_WAITASECOND_SUCCES();
    };
    AI_OUTPUT(OTHER, SELF, "DIA_Alder_CQ004_WaitASecond_15_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Alder_CQ004_WaitASecond_03_05");
    INFO_CLEARCHOICES(0x12694);
    INFO_ADDCHOICE(0x12694, "I'm taking you to a friend of mine who's a big shot in the guard.", 0x1269a);
    INFO_ADDCHOICE(0x12694, "We're going to a man named Sall, a guard.", 0x1269b);
    INFO_ADDCHOICE(0x12694, "We're going to a man named Borr.", 0x12699);
}

func void DIA_ALDER_CQ004_WAITASECOND_BORR() {
    AI_OUTPUT(OTHER, SELF, "DIA_Alder_CQ004_WaitASecond_Borr_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Alder_CQ004_WaitASecond_Borr_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Alder_CQ004_WaitASecond_Borr_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Alder_CQ004_WaitASecond_Borr_03_04");
    DIA_ALDER_CQ004_WAITASECOND_FAILQUEST();
}

func void DIA_ALDER_CQ004_WAITASECOND_MILITIA() {
    AI_OUTPUT(OTHER, SELF, "DIA_Alder_CQ004_WaitASecond_Militia_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Alder_CQ004_WaitASecond_Militia_03_02");
    DIA_ALDER_CQ004_WAITASECOND_FAILQUEST();
}

func void DIA_ALDER_CQ004_WAITASECOND_SALL() {
    AI_OUTPUT(OTHER, SELF, "DIA_Alder_CQ004_WaitASecond_Sall_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Alder_CQ004_WaitASecond_Sall_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Alder_CQ004_WaitASecond_Sall_15_03");
    DIA_ALDER_CQ004_WAITASECOND_SUCCES();
}

instance DIA_ALDER_CQ004_NOTSURE(C_INFO) {
    NPC = 0xd769;
    NR = 6;
    CONDITION = DIA_ALDER_CQ004_NOTSURE_CONDITION;
    INFORMATION = DIA_ALDER_CQ004_NOTSURE_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_ALDER_CQ004_NOTSURE_CONDITION() {
    if ((LOG_GETSTATUS(MIS_CQ004)) == (LOG_RUNNING)) {
        if (((((CQ004_RECONANDVEIGOCHEAT) == (TRUE)) && ((NPC_GETDISTTOWP(VLK_6233_ALDER, "PARTM3_ALDER_WAIT")) <= (500))) && (NPC_ISINSTATE(SELF, 0xf09f))) && ((CQ004_ALDERCHANGERTN) == (0))) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_ALDER_CQ004_NOTSURE_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_Alder_CQ004_NotSure_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Alder_CQ004_NotSure_03_02");
    if ((MOB_HASITEMS("RECON_CHEST", 0x9125)) == (TRUE)) {
        CQ004_ALDERCHANGERTN = 2;
        AI_OUTPUT(OTHER, SELF, "DIA_Alder_CQ004_NotSure_15_03");
        AI_OUTPUT(SELF, OTHER, "DIA_Alder_CQ004_NotSure_03_04");
        NPC_EXCHANGEROUTINE(VLK_6233_ALDER, "CQ004_BARRACKJUDGMENT");
        AI_STOPPROCESSINFOS(SELF);
    };
    AI_OUTPUT(OTHER, SELF, "DIA_Alder_CQ004_NotSure_15_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Alder_CQ004_NotSure_03_06");
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_ALDER_PICKPOCKET(C_INFO) {
    NPC = 0xd769;
    NR = 900;
    CONDITION = DIA_ALDER_PICKPOCKET_CONDITION;
    INFORMATION = DIA_ALDER_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_40;
}

func int DIA_ALDER_PICKPOCKET_CONDITION() {
    if ((((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) && ((LOG_GETSTATUS(MIS_CQ004)) != (LOG_SUCCESS))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_ALDER_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(0x1269f);
    INFO_ADDCHOICE(0x1269f, DIALOG_BACK, 0x126a3);
    INFO_ADDCHOICE(0x1269f, DIALOG_PICKPOCKET, 0x126a2);
}

func void DIA_ALDER_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) {
        B_PICKPOCKET_AMBIENT_TIER_1();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(0x1269f);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(0x1269f);
}

func void DIA_ALDER_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(0x1269f);
}

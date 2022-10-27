var int SQ220_REFUSE = 0;
instance DIA_EWALD_EXIT(C_INFO) {
    NPC = 0xcce9;
    NR = 999;
    CONDITION = DIA_EWALD_EXIT_CONDITION;
    INFORMATION = DIA_EWALD_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_EWALD_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_EWALD_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_EWALD_SQ220_BEGIN(C_INFO) {
    NPC = 0xcce9;
    NR = 1;
    CONDITION = DIA_EWALD_SQ220_BEGIN_CONDITION;
    INFORMATION = DIA_EWALD_SQ220_BEGIN_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_EWALD_SQ220_BEGIN_CONDITION() {
    if ((((NPC_HASITEMS(OTHER, 0x859b)) >= (SQ220_TRIGGER)) && ((MARVIN_MILITIASPECIALIZATION) == (MILITIA_SPECIALIZATION_NONE))) && ((MARVIN_ARAXOSSPECIALIZATION) == (ARAXOS_SPECIALIZATION_NONE))) {
        if ((FMQ001_INSTRUCTORRUN) == (0)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_EWALD_SQ220_BEGIN_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_Ewald_SQ220_BEGIN_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Ewald_SQ220_BEGIN_03_02");
    INFO_CLEARCHOICES(0x1085c);
    INFO_ADDCHOICE(0x1085c, "I don't have time right now.", 0x10860);
    INFO_ADDCHOICE(0x1085c, "Sure, what needs to be done?", 0x10863);
}

func void DIA_EWALD_SQ220_IDONTHAVETIMEBASE() {
    AI_OUTPUT(OTHER, SELF, "DIA_Ewald_SQ22_IDontHaveTime_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Ewald_SQ22_IDontHaveTime_03_02");
}

func void DIA_EWALD_SQ22_IDONTHAVETIME1() {
    DIA_EWALD_SQ220_IDONTHAVETIMEBASE();
    SQ220_REFUSE = 1;
    AI_STOPPROCESSINFOS(SELF);
}

func void DIA_EWALD_SQ220_YEAH3() {
    AI_OUTPUT(SELF, OTHER, "DIA_Ewald_SQ220_Yeah_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Ewald_SQ220_Yeah_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Ewald_SQ220_Yeah_03_04");
    LOG_CREATETOPIC(TOPIC_SQ220, LOG_MISSION);
    LOG_SETSTATUS(_@(MIS_SQ220), TOPIC_SQ220, LOG_RUNNING);
    AI_LOGENTRY(TOPIC_SQ220, LOG_SQ220_START);
    if ((SQ220_REFUSE) == (0)) {
        INFO_CLEARCHOICES(0x1085c);
        INFO_ADDCHOICE(0x1085c, "I don't have time right now.", 0x10862);
        INFO_ADDCHOICE(0x1085c, "Let's go.", 0x10865);
    };
    INFO_CLEARCHOICES(0x10868);
    INFO_ADDCHOICE(0x10868, "I don't have time right now.", 0x10862);
    INFO_ADDCHOICE(0x10868, "Let's go.", 0x10865);
}

func void DIA_EWALD_SQ22_IDONTHAVETIME2() {
    DIA_EWALD_SQ220_IDONTHAVETIMEBASE();
    SQ220_REFUSE = 2;
    AI_STOPPROCESSINFOS(SELF);
}

func void DIA_EWALD_SQ220_YEAHBASE() {
    AI_OUTPUT(OTHER, SELF, "DIA_Ewald_SQ220_Yeah_15_01");
    DIA_EWALD_SQ220_YEAH3();
}

var int SQ220_TRAP = 0;
func void DIA_EWALD_SQ220_HELLYEAH() {
    SQ220_TRAP = 1;
    if ((SQ220_REFUSE) == (2)) {
        AI_OUTPUT(OTHER, SELF, "DIA_Ewald_SQ220_HellYeah_15_00");
    };
    AI_OUTPUT(OTHER, SELF, "DIA_Ewald_SQ220_HellYeah_15_01");
    AI_STOPLOOKAT(SELF);
    AI_SETWALKMODE(SELF, NPC_WALK);
    AI_GOTOWP(SELF, "PARTM1_SQ220_SACKS");
    AI_FUNCTION(SELF, 0x10866);
    AI_PLAYANI(SELF, T_PLUNDER);
    AI_TURNTONPC(SELF, OTHER);
    AI_LOOKATNPC(SELF, OTHER);
    AI_OUTPUT(SELF, OTHER, "DIA_Ewald_SQ220_HellYeah_03_02");
    CREATEINVITEMS(SELF, 0x8582, 1);
    B_GIVEINVITEMS(SELF, OTHER, 0x8582, 1);
    CREATEINVITEMS(SELF, 0x8585, 1);
    B_GIVEINVITEMS(SELF, OTHER, 0x8585, 1);
    CREATEINVITEMS(SELF, 0x905e, 3);
    B_GIVEINVITEMS(SELF, OTHER, 0x905e, 3);
    AI_OUTPUT(SELF, OTHER, "DIA_Ewald_SQ220_HellYeah_03_03");
    AI_LOGENTRY(TOPIC_SQ220, LOG_SQ220_FOLLOW);
    NPC_EXCHANGEROUTINE(NONE_10037_EWALD, "SQ220_GUIDE");
    AI_STOPPROCESSINFOS(SELF);
    AI_FUNCTION(SELF, 0x10867);
}

func void EWALD_SQ220_MOVER() {
    SQ220_SACKS_MOVER();
}

func void EWALD_SQ220_SPAWNFRIENDS() {
    PRINTD("Koledzy przyszli pogra� na xboxie!");
    WLD_INSERTNPC(0xcfaa, "PARTM4_WORKSHOP_FRIEND_01");
    WLD_INSERTNPC(0xcfad, "PARTM4_WORKSHOP_FRIEND_02");
}

instance DIA_EWALD_SQ220_AFTERREFUSE1(C_INFO) {
    NPC = 0xcce9;
    NR = 4;
    CONDITION = DIA_EWALD_SQ220_AFTERREFUSE1_CONDITION;
    INFORMATION = DIA_EWALD_SQ220_AFTERREFUSE1_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "What needs to be done?";
}

func int DIA_EWALD_SQ220_AFTERREFUSE1_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 0x1085c)) && ((SQ220_REFUSE) == (1))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_EWALD_SQ220_AFTERREFUSE1_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Ewald_SQ220_AfterRefuse1_15_04");
    DIA_EWALD_SQ220_YEAH3();
}

instance DIA_EWALD_SQ220_AFTERREFUSE2(C_INFO) {
    NPC = 0xcce9;
    NR = 4;
    CONDITION = DIA_EWALD_SQ220_AFTERREFUSE2_CONDITION;
    INFORMATION = DIA_EWALD_SQ220_AFTERREFUSE2_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "All right, let's go.";
}

func int DIA_EWALD_SQ220_AFTERREFUSE2_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 0x1085c)) && ((SQ220_REFUSE) == (2))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_EWALD_SQ220_AFTERREFUSE2_INFO() {
    DIA_EWALD_SQ220_HELLYEAH();
}

instance DIA_EWALD_SQ220_TRAP(C_INFO) {
    NPC = 0xcce9;
    NR = 1;
    CONDITION = DIA_EWALD_SQ220_TRAP_CONDITION;
    INFORMATION = DIA_EWALD_SQ220_TRAP_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_EWALD_SQ220_TRAP_CONDITION() {
    if (((LOG_GETSTATUS(MIS_SQ220)) == (LOG_RUNNING)) && ((SQ220_TRAP) == (1))) {
        if ((((NPC_GETDISTTOWP(NONE_10037_EWALD, "PARTM4_WORKSHOP_EWALD")) <= (300)) && ((NPC_GETDISTTOWP(NONE_3400_EWALDFRIEND, "PARTM4_WORKSHOP_FRIEND_01")) <= (300))) && ((NPC_GETDISTTOWP(NONE_3401_EWALDFRIEND, "PARTM4_WORKSHOP_FRIEND_02")) <= (300))) {
            if ((NPC_GETDISTTONPC(SELF, OTHER)) <= (350)) {
                return TRUE;
            };
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_EWALD_SQ220_TRAP_INFO() {
    TRIA_INVITE(NONE_3400_EWALDFRIEND);
    TRIA_INVITE(NONE_3401_EWALDFRIEND);
    TRIA_START();
    NPC_REMOVEINVITEMS(HERO, 0x905e, NPC_HASITEMS(HERO, 0x905e));
    AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Ewald_SQ220_Trap_03_01");
    INFO_CLEARCHOICES(0x1086e);
    INFO_ADDCHOICE(0x1086e, "What deal?", 0x10872);
    INFO_ADDCHOICE(0x1086e, "Are you trying to rob me?", 0x10871);
}

func void DIA_EWALD_SQ220_TRAP_THIEF() {
    AI_OUTPUT(OTHER, SELF, "DIA_Ewald_SQ220_Trap_Thief_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Ewald_SQ220_Trap_Thief_03_02");
}

func void DIA_EWALD_SQ220_TRAP_DEAL() {
    AI_OUTPUT(OTHER, SELF, "DIA_Ewald_SQ220_Trap_Deal_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Ewald_SQ220_Trap_Deal_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Ewald_SQ220_Trap_Deal_03_03");
    INFO_CLEARCHOICES(0x1086e);
    if ((NPC_HASITEMS(OTHER, 0x859b)) >= (SQ220_DEAL)) {
        INFO_ADDCHOICE(0x1086e, "Give me that contract.", 0x10877);
    };
    INFO_ADDCHOICE(0x1086e, "What's in it for me?", 0x10874);
    INFO_ADDCHOICE(0x1086e, "I'm not giving you my gold!", 0x10873);
}

func void DIA_EWALD_SQ220_TRAP_DEAL_NOWAY() {
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_STARTFACEANI(OTHER, S_ANGRY, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Ewald_SQ220_Trap_NoWay_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Ewald_SQ220_Trap_NoWay_03_02");
    AI_RESETFACEANI(OTHER);
    INFO_CLEARCHOICES(0x1086e);
    TRIA_FINISH();
    AI_STOPPROCESSINFOS(SELF);
    AI_FUNCTION(SELF, 0x10878);
}

func void DIA_EWALD_SQ220_TRAP_DEAL_WHAT() {
    AI_OUTPUT(OTHER, SELF, "DIA_Ewald_SQ220_Trap_What_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Ewald_SQ220_Trap_What_03_02");
    if ((HERO.GUILD) == (GIL_NONE)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Ewald_SQ220_Trap_What_03_03");
    };
}

func void DIA_EWALD_SQ220_FINISHQUEST() {
    LOG_SETSTATUS(_@(MIS_SQ220), TOPIC_SQ220, LOG_SUCCESS);
}

func void DIA_EWALD_SQ220_SLD() {
    AI_OUTPUT(SELF, OTHER, "DIA_Ewald_SQ220_Trap_Give_03_03");
}

func void DIA_EWALD_SQ220_TRAP_DEAL_GIVE() {
    Q204_ARAXOSGUILDREPUTATION = (Q204_ARAXOSGUILDREPUTATION) + (1);
    PRINTD("+1 rep do Gildii Araxos");
    PRINTD(CS2("Aktualna reputacja w Gildii:", INTTOSTRING(Q204_ARAXOSGUILDREPUTATION)));
    AI_OUTPUT(OTHER, SELF, "DIA_Ewald_SQ220_Trap_Give_15_01");
    B_USEFAKESCROLL_MARVIN();
    AI_WAITTILLEND(SELF, OTHER);
    AI_OUTPUT(SELF, OTHER, "DIA_Ewald_SQ220_Trap_Give_03_02");
    if ((((Q204_WEGOTENTRY) == (FALSE)) && ((Q204_ARAXOSGUILDREPUTATION) >= (Q204_ARAXOSGUILDREPUTATION_REQUIRED))) && ((LOG_GETSTATUS(MIS_Q204)) == (LOG_RUNNING))) {
        AI_LOGENTRY(TOPIC_Q204, LOG_Q204_ITHINKIDONEENOUGH);
        Q204_WEGOTENTRY = TRUE;
    };
    B_GIVEINVITEMS(OTHER, SELF, 0x859b, SQ220_DEAL);
    AI_LOGENTRY(TOPIC_SQ220, LOG_SQ220_FINISH_V1);
    B_GIVEPLAYERXP(XP_SQ220_FINISH);
    DIA_EWALD_SQ220_FINISHQUEST();
    if ((HERO.GUILD) == (GIL_SLD)) {
        DIA_EWALD_SQ220_SLD();
    };
    TRIA_FINISH();
    INFO_CLEARCHOICES(0x1086e);
    AI_STOPPROCESSINFOS(SELF);
}

func void EWALD_SQ220_FIGHT() {
    SQ220_ARENAFIGHT = 1;
    NONE_10037_EWALD.AIVAR[45] = AF_RUNNING;
    NONE_3400_EWALDFRIEND.AIVAR[45] = AF_RUNNING;
    NONE_3401_EWALDFRIEND.AIVAR[45] = AF_RUNNING;
    NONE_10037_EWALD.AIVAR[96] = -(1);
    NONE_3400_EWALDFRIEND.AIVAR[96] = -(1);
    NONE_3401_EWALDFRIEND.AIVAR[96] = -(1);
    B_IMMEDIATEATTACKPLAYER(NONE_3400_EWALDFRIEND, AR_NONE);
    B_IMMEDIATEATTACKPLAYER(NONE_3401_EWALDFRIEND, AR_NONE);
    B_IMMEDIATEATTACKPLAYER(NONE_10037_EWALD, AR_NONE);
}

instance DIA_EWALD_SQ220_AFTERFIGHT(C_INFO) {
    NPC = 0xcce9;
    NR = 1;
    CONDITION = DIA_EWALD_SQ220_AFTERFIGHT_CONDITION;
    INFORMATION = DIA_EWALD_SQ220_AFTERFIGHT_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_EWALD_SQ220_AFTERFIGHT_CONDITION() {
    if (((LOG_GETSTATUS(MIS_SQ220)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 0x1086e))) {
        if (((SELF.AIVAR[64]) == (FALSE)) && ((SELF.AIVAR[0]) != (FIGHT_NONE))) {
            if ((SELF.AIVAR[45]) != (AF_NONE)) {
                if ((SQ220_ARENAFIGHT) >= (2)) {
                    return TRUE;
                };
            };
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_EWALD_SQ220_AFTERFIGHT_INFO() {
    if ((SQ220_ARENAFIGHT) == (2)) {
        AI_STARTFACEANI(SELF, S_FRIGHTENED, 1, -(1));
        AI_OUTPUT(SELF, OTHER, "DIA_Ewald_SQ220_AfterFight_03_01");
        AI_LOGENTRY(TOPIC_SQ220, LOG_SQ220_FINISH_V2);
    };
    if ((SQ220_ARENAFIGHT) == (3)) {
        AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
        AI_OUTPUT(SELF, OTHER, "DIA_Ewald_SQ220_AfterFight_03_02");
        AI_OUTPUT(SELF, OTHER, "DIA_Ewald_SQ220_AfterFight_03_03");
        if ((HERO.GUILD) == (GIL_SLD)) {
            DIA_EWALD_SQ220_SLD();
        };
        AI_LOGENTRY(TOPIC_SQ220, LOG_SQ220_FINISH_V3);
        MARVINCURRENTGOLD = NPC_HASITEMS(OTHER, 0x859b);
        B_GIVEINVITEMS(OTHER, SELF, 0x859b, MARVINCURRENTGOLD);
    };
    DIA_EWALD_SQ220_FINISHQUEST();
    SELF.AIVAR[45] = AF_NONE;
    SELF.AIVAR[64] = TRUE;
    AI_STOPPROCESSINFOS(SELF);
}

var int DIA_EWALD_SQ220_AFTERFIGHT_INFO.MARVINCURRENTGOLD = 0;
instance DIA_EWALD_AMBIENT(C_INFO) {
    NPC = 0xcce9;
    NR = 998;
    CONDITION = DIA_EWALD_AMBIENT_CONDITION;
    INFORMATION = DIA_EWALD_AMBIENT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "How are you doing?";
}

func int DIA_EWALD_AMBIENT_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x1085c)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_EWALD_AMBIENT_INFO() {
    B_SAY(OTHER, SELF, "$MARVIN_HowAreYou");
    if (((LOG_GETSTATUS(MIS_SQ220)) != (LOG_RUNNING)) && ((LOG_GETSTATUS(MIS_SQ220)) != (LOG_SUCCESS))) {
        AI_OUTPUT(SELF, OTHER, "DIA_Ewald_Ambient_03_01");
    };
    if ((LOG_GETSTATUS(MIS_SQ220)) == (LOG_RUNNING)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Ewald_Ambient_03_02");
    };
    if (((LOG_GETSTATUS(MIS_SQ220)) == (LOG_SUCCESS)) && ((SQ220_ARENAFIGHT) == (2))) {
        AI_OUTPUT(SELF, OTHER, "DIA_Ewald_Ambient_03_03");
    };
    if (((LOG_GETSTATUS(MIS_SQ220)) == (LOG_SUCCESS)) && ((SQ220_ARENAFIGHT) == (3))) {
        AI_OUTPUT(SELF, OTHER, "DIA_Ewald_Ambient_03_04");
    };
}

instance DIA_EWALD_PICKPOCKET(C_INFO) {
    NPC = 0xcce9;
    NR = 900;
    CONDITION = DIA_EWALD_PICKPOCKET_CONDITION;
    INFORMATION = DIA_EWALD_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_80;
}

func int DIA_EWALD_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_EWALD_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(0x10880);
    INFO_ADDCHOICE(0x10880, DIALOG_BACK, 0x10884);
    INFO_ADDCHOICE(0x10880, DIALOG_PICKPOCKET, 0x10883);
}

func void DIA_EWALD_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (2)) {
        B_PICKPOCKET_AMBIENT_TIER_2();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(0x10880);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(0x10880);
}

func void DIA_EWALD_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(0x10880);
}

instance DIA_VOLKERGUARD_YOUNG_SQ505_EXIT(C_INFO) {
    NPC = 52634;
    NR = 999;
    CONDITION = DIA_VOLKERGUARD_YOUNG_SQ505_EXIT_CONDITION;
    INFORMATION = DIA_VOLKERGUARD_YOUNG_SQ505_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_VOLKERGUARD_YOUNG_SQ505_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_VOLKERGUARD_YOUNG_SQ505_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_VOLKERGUARD_YOUNG_SQ505_STOP(C_INFO) {
    NPC = 52634;
    NR = 1;
    CONDITION = DIA_VOLKERGUARD_YOUNG_SQ505_STOP_CONDITION;
    INFORMATION = DIA_VOLKERGUARD_YOUNG_SQ505_STOP_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_VOLKERGUARD_YOUNG_SQ505_STOP_CONDITION() {
    if (((LOG_GETSTATUS(MIS_SQ505)) == (LOG_RUNNING)) && ((SQ505_VOLKERGUARDCHEST_NOTES) == (2))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_VOLKERGUARD_YOUNG_SQ505_STOP_INFO() {
    AI_STARTFACEANI(SELF, S_FRIGHTENED, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_VolkerGuard_Young_SQ505_Stop_03_01");
    AI_DRAWWEAPON(SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_VolkerGuard_Young_SQ505_Stop_03_02");
    INFO_CLEARCHOICES(68371);
    INFO_ADDCHOICE(68371, "How old are you? Aren't you too young to be a mercenary?", 68374);
}

func void DIA_VOLKERGUARD_YOUNG_SQ505_STOP_OLD() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_VolkerGuard_Young_SQ505_Stop_Old_15_01");
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_VolkerGuard_Young_SQ505_Stop_Old_03_02");
    INFO_CLEARCHOICES(68371);
    INFO_ADDCHOICE(68371, "You made a mistake coming here!", 68379);
    INFO_ADDCHOICE(68371, "Relax, I don't want to hurt you!", 68378);
    if ((NPC_HASITEMS(OTHER, 34203)) >= (SQ505_YOUNGVOLKERGUARD)) {
        INFO_ADDCHOICE(68371, "You must be doing this for the gold, huh? (Bribe 2000 GP)", 68375);
    };
}

func void DIA_VOLKERGUARD_YOUNG_SQ505_STOP_OLD_GOLD() {
    AI_STARTFACEANI(OTHER, S_SMUG, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_VolkerGuard_Young_SQ505_Stop_Gold_15_01");
    B_MARVIN_USEFAKEBAG_THROW();
    AI_OUTPUT(OTHER, SELF, "DIA_VolkerGuard_Young_SQ505_Stop_Gold_15_02");
    AI_WAITTILLEND(SELF, OTHER);
    AI_REMOVEWEAPON(SELF);
    AI_STARTFACEANI(SELF, S_SURPRISE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_VolkerGuard_Young_SQ505_Stop_Gold_03_03");
    INFO_CLEARCHOICES(68371);
    INFO_ADDCHOICE(68371, "You better take it before I change my mind...", 68376);
}

func void DIA_VOLKERGUARD_YOUNG_SQ505_STOP_OLD_GOLD_TAKEIT() {
    SQ505_YOUNGVOLKERGUARD_RESULT = 1;
    SELF.FLAGS = 2;
    B_GIVEINVITEMS(OTHER, SELF, 34203, SQ505_YOUNGVOLKERGUARD);
    AI_OUTPUT(OTHER, SELF, "DIA_VolkerGuard_Young_SQ505_Stop_TakeIt_15_01");
    AI_WAITTILLEND(SELF, OTHER);
    AI_DROPITEM(SELF, 34061);
    AI_PLAYANI(SELF, T_PLUNDER);
    CREATEINVITEMS(SELF, 35547, 1);
    AI_EQUIPARMOR(SELF, 35547);
    AI_LOGENTRY(TOPIC_SQ505, LOG_SQ505_YOUNGVOLKERGUARD_RESULT_V1);
    NPC_EXCHANGEROUTINE(SELF, TOT);
    B_GIVEPLAYERXP(XP_SQ505_YOUNGVOLKERGUARD_SAVED);
    SQ505_VOLKERGUARDS_M3_WAIT();
    AI_STOPPROCESSINFOS(SELF);
}

func void DIA_VOLKERGUARD_YOUNG_SQ505_FIGHT() {
    SQ505_YOUNGVOLKERGUARD_FIGHT = 1;
    NONE_13640_VOLKERGUARD.FLAGS = 0;
    NONE_13640_VOLKERGUARD.AIVAR[52] = TRUE;
    AI_STOPPROCESSINFOS(SELF);
    B_ATTACK(SELF, OTHER, AR_KILL, 1);
}

func void DIA_VOLKERGUARD_YOUNG_SQ505_STOP_EASY() {
    AI_OUTPUT(OTHER, SELF, "DIA_VolkerGuard_Young_SQ505_Stop_Easy_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_VolkerGuard_Young_SQ505_Stop_Easy_03_02");
    AI_WAITTILLEND(SELF, OTHER);
    DIA_VOLKERGUARD_YOUNG_SQ505_FIGHT();
}

func void DIA_VOLKERGUARD_YOUNG_SQ505_STOP_MISTAKE() {
    AI_OUTPUT(OTHER, SELF, "DIA_VolkerGuard_Young_SQ505_Stop_Mistake_15_01");
    AI_WAITTILLEND(SELF, OTHER);
    DIA_VOLKERGUARD_YOUNG_SQ505_FIGHT();
}

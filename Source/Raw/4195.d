func void PIR_13633_PIRATE_HEALHIM() {
    if ((PIR_13633_PIRATE.ATTRIBUTE[0]) != (PIR_13633_PIRATE.ATTRIBUTE[1])) {
        PIR_13633_PIRATE.ATTRIBUTE[0] = PIR_13633_PIRATE.ATTRIBUTE[1];
    };
}

instance DIA_13633_PIRATE_EXIT(C_INFO) {
    NPC = 0xe61f;
    NR = 999;
    CONDITION = DIA_13633_PIRATE_EXIT_CONDITION;
    INFORMATION = DIA_13633_PIRATE_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_13633_PIRATE_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_13633_PIRATE_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_13633_PIRATE_TRAP53_START(C_INFO) {
    NPC = 0xe61f;
    NR = 1;
    CONDITION = DIA_13633_PIRATE_TRAP53_START_CONDITION;
    INFORMATION = DIA_13633_PIRATE_TRAP53_START_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_13633_PIRATE_TRAP53_START_CONDITION() {
    return TRUE;
}

func void DIA_13633_PIRATE_TRAP53_START_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_13633_Pirate_Trap53_Start_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_13633_Pirate_Trap53_Start_03_02");
}

instance DIA_13633_PIRATE_TRAPFIGHT(C_INFO) {
    NPC = 0xe61f;
    NR = 2;
    CONDITION = DIA_13633_PIRATE_TRAPFIGHT_CONDITION;
    INFORMATION = DIA_13633_PIRATE_TRAPFIGHT_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I'd love to. Draw your weapon.";
}

func int DIA_13633_PIRATE_TRAPFIGHT_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x14c56)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_13633_PIRATE_TRAPFIGHT_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_13633_Pirate_TrapFight_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_13633_Pirate_TrapFight_03_02");
    SQ230_BLOCKEQUIPMENT();
    PIR_13633_PIRATE_HEALHIM();
    AI_STOPPROCESSINFOS(SELF);
    SELF.AIVAR[96] = 10;
    SELF.AIVAR[45] = AF_RUNNING;
    B_ATTACK(SELF, OTHER, AR_NONE, 1);
}

instance DIA_13633_PIRATE_AFTERFIGHT(C_INFO) {
    NPC = 0xe61f;
    NR = 3;
    CONDITION = DIA_13633_PIRATE_AFTERFIGHT_CONDITION;
    INFORMATION = DIA_13633_PIRATE_AFTERFIGHT_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_13633_PIRATE_AFTERFIGHT_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x14c59)) {
        if (((SELF.AIVAR[64]) == (FALSE)) && ((SELF.AIVAR[0]) != (FIGHT_NONE))) {
            if ((SELF.AIVAR[45]) != (AF_NONE)) {
                return TRUE;
            };
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_13633_PIRATE_AFTERFIGHT_INFO() {
    PIR_13633_PIRATE.GUILD = GIL_PIR;
    if ((SELF.AIVAR[0]) == (FIGHT_LOST)) {
        AI_OUTPUT(SELF, OTHER, "DIA_13633_Pirate_AfterFight_03_01");
        PRINTD("Wygra�e� z piratem");
        CREATEINVITEMS(SELF, 0x8374, 3);
        B_GIVEINVITEMS(SELF, OTHER, 0x8374, 3);
        B_GIVEPLAYERXP(XP_TRAP53_V1);
    };
    if ((SELF.AIVAR[0]) == (FIGHT_WON)) {
        AI_OUTPUT(SELF, OTHER, "DIA_13633_Pirate_AfterFight_03_02");
        PRINTD("Przegra�e� z piratem");
        B_GIVEPLAYERXP(XP_TRAP53_V2);
        CREATEINVITEMS(SELF, 0x8374, 1);
    };
    PRINTD("Co sie sta�o sie");
    AI_OUTPUT(SELF, OTHER, "DIA_13633_Pirate_AfterFight_03_03");
    CREATEINVITEMS(SELF, 0x8374, 2);
    B_GIVEINVITEMS(SELF, OTHER, 0x8374, 2);
    B_GIVEPLAYERXP(XP_TRAP53_V3);
    SQ230_GIVEBACKEQ();
    NPC_EXCHANGEROUTINE(SELF, TOT);
    AI_STOPPROCESSINFOS(SELF);
    SELF.AIVAR[45] = AF_NONE;
    SELF.AIVAR[64] = TRUE;
}

instance DIA_13633_PIRATE_AFTEREVENT(C_INFO) {
    NPC = 0xe61f;
    NR = 5;
    CONDITION = DIA_13633_PIRATE_AFTEREVENT_CONDITION;
    INFORMATION = DIA_13633_PIRATE_AFTEREVENT_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_13633_PIRATE_AFTEREVENT_CONDITION() {
    if ((NPC_ISINSTATE(SELF, 0xf09f)) && (NPC_KNOWSINFO(OTHER, 0x14c5c))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_13633_PIRATE_AFTEREVENT_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_13633_Pirate_AfterEvent_03_01");
    AI_STOPPROCESSINFOS(SELF);
}


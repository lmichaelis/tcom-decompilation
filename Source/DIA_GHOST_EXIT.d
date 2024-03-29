instance DIA_GHOST_EXIT(C_INFO) {
    NPC = 58497;
    NR = 999;
    CONDITION = DIA_GHOST_EXIT_CONDITION;
    INFORMATION = DIA_GHOST_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_GHOST_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_GHOST_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_GHOST_SQ406_FIGHT(C_INFO) {
    NPC = 58497;
    NR = 1;
    CONDITION = DIA_GHOST_SQ406_FIGHT_CONDITION;
    INFORMATION = DIA_GHOST_SQ406_FIGHT_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "A Spirit? Couldn't you think of anything dumber? (Provoke a fight)";
}

func int DIA_GHOST_SQ406_FIGHT_CONDITION() {
    if ((LOG_GETSTATUS(MIS_SQ406)) == (LOG_RUNNING)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void GHOST_ARENAFIGHT() {
    SQ406_FIGHTWITHGHOST_CLEARATTITUDE = 1;
    HERO.AIVAR[96] = 10;
    SELF.AIVAR[96] = 10;
    SELF.AIVAR[45] = AF_RUNNING;
    B_ATTACK(SELF, OTHER, AR_KILL, 1);
}

func void DIA_GHOST_SQ406_FIGHT_INFO() {
    AI_STARTFACEANI(OTHER, S_SMUG, 1, -(1));
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Ghost_SQ406_Fight_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Ghost_SQ406_Fight_03_02");
    AI_STOPPROCESSINFOS(SELF);
    AI_RESETFACEANI(OTHER);
    GHOST_ARENAFIGHT();
}

instance DIA_GHOST_SQ406_AFTERFIGHT(C_INFO) {
    NPC = 58497;
    NR = 1;
    CONDITION = DIA_GHOST_SQ406_AFTERFIGHT_CONDITION;
    INFORMATION = DIA_GHOST_SQ406_AFTERFIGHT_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_GHOST_SQ406_AFTERFIGHT_CONDITION() {
    if (((LOG_GETSTATUS(MIS_SQ406)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 85139))) {
        if ((SQ406_FIGHTWITHGHOST_CLEARATTITUDE) == (2)) {
            if ((SELF.AIVAR[0]) == (FIGHT_LOST)) {
                if ((SELF.AIVAR[45]) != (AF_NONE)) {
                    return TRUE;
                };
                if (NPC_ISINSTATE(SELF, 61599)) {
                    return TRUE;
                };
            };
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_GHOST_SQ406_AFTERFIGHT_INFO() {
    SELF.AIVAR[45] = AF_NONE;
    SELF.AIVAR[64] = TRUE;
    AI_OUTPUT(SELF, OTHER, "DIA_Ghost_SQ406_AfterFight_03_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Ghost_SQ406_AfterFight_15_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Ghost_SQ406_AfterFight_03_03");
    INFO_CLEARCHOICES(85143);
    if ((NPC_HASITEMS(OTHER, 37367)) >= (1)) {
        INFO_ADDCHOICE(85143, "(Give strong transformation potion)", 85148);
    };
    if ((NPC_HASITEMS(OTHER, 37366)) >= (1)) {
        INFO_ADDCHOICE(85143, "(Give transformation potion)", 85147);
    };
    if ((NPC_HASITEMS(OTHER, 37365)) >= (1)) {
        INFO_ADDCHOICE(85143, "(Give weak transformation potion)", 85146);
    };
}

func void DIA_GHOST_SQ406_AFTERFIGHT_TRANSFORM_L() {
    SQ406_GHOST_POTION = 1;
    SQ406_GHOST_DRINKPOTION();
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Ghost_SQ406_AfterFight_Transform_L_03_01");
    AI_RESETFACEANI(SELF);
    INFO_CLEARCHOICES(85143);
    AI_LOGENTRY(TOPIC_SQ406, LOG_SQ406_GHOST_POTION_L);
}

func void DIA_GHOST_SQ406_AFTERFIGHT_TRANSFORM_M() {
    SQ406_GHOST_POTION = 2;
    SQ406_GHOST_DRINKPOTION();
    AI_PLAYANI(SELF, "R_VOMIT_SUNDER");
    AI_STARTFACEANI(SELF, S_DISGUST, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Ghost_SQ406_AfterFight_Transform_M_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Ghost_SQ406_AfterFight_Transform_M_03_02");
    AI_RESETFACEANI(SELF);
    INFO_CLEARCHOICES(85143);
    AI_STOPPROCESSINFOS(SELF);
    AI_LOGENTRY(TOPIC_SQ406, LOG_SQ406_GHOST_POTION_M);
}

func void DIA_GHOST_SQ406_AFTERFIGHT_TRANSFORM_H() {
    SQ406_GHOST_POTION = 3;
    SQ406_GHOST_DRINKPOTION();
    AI_STARTFACEANI(SELF, S_SURPRISE, 1, -(1));
    AI_FUNCTION(SELF, 85149);
    AI_PLAYANI(SELF, "T_STOMACHHURT_START_GUIDO");
    AI_OUTPUT(SELF, OTHER, "DIA_Ghost_SQ406_AfterFight_Transform_H_03_01");
    AI_FUNCTION(SELF, 85151);
    AI_PLAYANI(SELF, "T_STOMACHHURT_REMOVE");
    AI_FUNCTION(SELF, 85150);
    INFO_CLEARCHOICES(85143);
    AI_STOPPROCESSINFOS(SELF);
    NPC_EXCHANGEROUTINE(SELF, "SQ406_FLEE");
    AI_LOGENTRY(TOPIC_SQ406, LOG_SQ406_GHOST_POTION_H);
}

func void GHOST_APPLYSTOMACHHURTMDS() {
    MDL_APPLYOVERLAYMDS(PIR_6322_GHOST, "HumanS_StomachHurt.MDS");
}

func void GHOST_REMOVESTOMACHHURTMDS() {
    MDL_REMOVEOVERLAYMDS(PIR_6322_GHOST, "HumanS_StomachHurt.MDS");
}

func void GHOST_SQ406_REMOVEHEAD() {
    MDL_SETVISUALBODY(PIR_6322_GHOST, "KM_ARMOR_PIRAT_RAZOR", 1, 0, HUMHEADNOTHING, FACE_N_GHOST, 0, NO_ARMOR);
    if ((NPC_HASITEMS(PIR_6322_GHOST, 33571)) >= (1)) {
        NPC_REMOVEINVITEMS(PIR_6322_GHOST, 33571, 1);
    };
    B_REMOVEALLINVENTORY(PIR_6322_GHOST);
}

instance DIA_GHOST_SQ406_MONSTER(C_INFO) {
    NPC = 58497;
    NR = 1;
    CONDITION = DIA_GHOST_SQ406_MONSTER_CONDITION;
    INFORMATION = DIA_GHOST_SQ406_MONSTER_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_GHOST_SQ406_MONSTER_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_SQ406)) == (LOG_RUNNING)) && ((SQ406_GHOST_POTION) == (3))) && ((NPC_GETDISTTOWP(SELF, "PART17_CAVE_CAMPFIRE_01")) <= (1200))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_GHOST_SQ406_MONSTER_INFO() {
    SQ406_RAZOR_FIGHTWITH_GHOST = 1;
    SQ406_TESTERPOTIONH = 2;
    SELF.FLAGS = 0;
    SELF.AIVAR[52] = TRUE;
    B_SAY(OTHER, SELF, "$SQ406_FoundYou");
    B_STANDUP();
    AI_OUTPUT(SELF, OTHER, "DIA_Ghost_SQ406_Monster_03_02");
    AI_STOPPROCESSINFOS(SELF);
    B_ATTACK(SELF, OTHER, AR_KILL, 1);
    AI_LOGENTRY(TOPIC_SQ406, LOG_SQ406_GHOST_MONSTER);
}

instance DIA_GHOST_Q306_REWARD(C_INFO) {
    NPC = 58497;
    NR = 1;
    CONDITION = DIA_GHOST_Q306_REWARD_CONDITION;
    INFORMATION = DIA_GHOST_Q306_REWARD_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_GHOST_Q306_REWARD_CONDITION() {
    if ((((Q306_TOURNAMENTSTATUS) == (1)) && ((Q301_AFTERQ306) == (TRUE))) && ((KAPITEL) < (4))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_GHOST_Q306_REWARD_INFO() {
    AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Ghost_Q306_Reward_03_01");
    CREATEINVITEMS(SELF, 33869, 6);
    B_GIVEINVITEMS(SELF, OTHER, 33869, 6);
    AI_STOPPROCESSINFOS(SELF);
    AI_RESETFACEANI(SELF);
}

instance DIA_GHOST_Q306_AFTERTOURNAMENT(C_INFO) {
    NPC = 58497;
    NR = 1;
    CONDITION = DIA_GHOST_Q306_AFTERTOURNAMENT_CONDITION;
    INFORMATION = DIA_GHOST_Q306_AFTERTOURNAMENT_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_GHOST_Q306_AFTERTOURNAMENT_CONDITION() {
    if (((Q306_TOURNAMENTSTATUS) == (2)) || (((Q306_TOURNAMENTSTATUS) == (1)) && (NPC_KNOWSINFO(OTHER, 85155)))) {
        if (((NPC_ISINSTATE(SELF, 61599)) && ((Q301_AFTERQ306) == (TRUE))) && ((KAPITEL) < (4))) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_GHOST_Q306_AFTERTOURNAMENT_INFO() {
    AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Ghost_Q306_AfterTournament_03_01");
    AI_STOPPROCESSINFOS(SELF);
    AI_RESETFACEANI(SELF);
}

instance DIA_GHOST_AMBIENT(C_INFO) {
    NPC = 58497;
    NR = 997;
    CONDITION = DIA_GHOST_AMBIENT_CONDITION;
    INFORMATION = DIA_GHOST_AMBIENT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "How are you doing?";
}

func int DIA_GHOST_AMBIENT_CONDITION() {
    return TRUE;
}

func void DIA_GHOST_AMBIENT_INFO() {
    B_SAY(OTHER, SELF, "$MARVIN_WhatNew4");
    if (!(NPC_KNOWSINFO(OTHER, 83704))) {
        AI_OUTPUT(SELF, OTHER, "DIA_Ghost_Ambient_13_13");
    };
    if (((NPC_KNOWSINFO(OTHER, 83704)) && ((Q306_TOURNAMENTSTATUS) != (1))) && ((Q306_TOURNAMENTSTATUS) != (2))) {
        AI_OUTPUT(SELF, OTHER, "DIA_Ghost_Ambient_13_14");
    };
    if ((Q306_TOURNAMENTSTATUS) == (1)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Ghost_Ambient_13_15");
    };
    if ((Q306_TOURNAMENTSTATUS) == (2)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Ghost_Ambient_13_16");
    };
}

instance DIA_GHOST_PICKPOCKET(C_INFO) {
    NPC = 58497;
    NR = 900;
    CONDITION = DIA_GHOST_PICKPOCKET_CONDITION;
    INFORMATION = DIA_GHOST_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_80;
}

func int DIA_GHOST_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_GHOST_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(85164);
    INFO_ADDCHOICE(85164, DIALOG_BACK, 85168);
    INFO_ADDCHOICE(85164, DIALOG_PICKPOCKET, 85167);
}

func void DIA_GHOST_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (2)) {
        B_PICKPOCKET_AMBIENT_TIER_2();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(85164);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(85164);
}

func void DIA_GHOST_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(85164);
}


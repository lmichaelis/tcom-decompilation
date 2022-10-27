instance DIA_FOX_EXIT(C_INFO) {
    NPC = 0xe5a9;
    NR = 999;
    CONDITION = DIA_FOX_EXIT_CONDITION;
    INFORMATION = DIA_FOX_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_FOX_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_FOX_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_FOX_STAN(C_INFO) {
    NPC = 0xe5a9;
    NR = 1;
    CONDITION = DIA_FOX_STAN_CONDITION;
    INFORMATION = DIA_FOX_STAN_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I wanted to talk about Stan.";
}

func int DIA_FOX_STAN_CONDITION() {
    if ((LOG_GETSTATUS(MIS_Q303)) == (LOG_RUNNING)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_FOX_STAN_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Fox_Stan_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Fox_Stan_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Fox_Stan_03_03");
    INFO_CLEARCHOICES(0x14b17);
    if (NPC_KNOWSINFO(OTHER, 0xbf28)) {
        INFO_ADDCHOICE(0x14b17, "By choking on the poison?", 0x14b1a);
    };
    INFO_ADDCHOICE(0x14b17, DIALOG_DONOTTALK, 0x14b1b);
}

func void DIA_FOX_STAN_POISON() {
    AI_OUTPUT(OTHER, SELF, "DIA_Fox_Stan_Poison_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Fox_Stan_Poison_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Fox_Stan_Poison_03_02");
    INFO_CLEARCHOICES(0x14b17);
}

func void DIA_FOX_STAN_NOTHING() {
    AI_OUTPUT(SELF, OTHER, "DIA_Fox_Stan_Nothing_03_01");
    INFO_CLEARCHOICES(0x14b17);
}

instance DIA_FOX_STANRODRIGO(C_INFO) {
    NPC = 0xe5a9;
    NR = 1;
    CONDITION = DIA_FOX_STANRODRIGO_CONDITION;
    INFORMATION = DIA_FOX_STANRODRIGO_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Tell me what happened between him and Rodrigo.";
}

func int DIA_FOX_STANRODRIGO_CONDITION() {
    if (((NPC_KNOWSINFO(OTHER, 0x14910)) && (NPC_KNOWSINFO(OTHER, 0x14b17))) && ((LOG_GETSTATUS(MIS_Q303)) == (LOG_RUNNING))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_FOX_STANRODRIGO_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Fox_StanRodrigo_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Fox_StanRodrigo_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Fox_StanRodrigo_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Fox_StanRodrigo_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Fox_StanRodrigo_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Fox_StanRodrigo_03_05");
}

instance DIA_FOX_STANRODRIGOPROOF(C_INFO) {
    NPC = 0xe5a9;
    NR = 1;
    CONDITION = DIA_FOX_STANRODRIGOPROOF_CONDITION;
    INFORMATION = DIA_FOX_STANRODRIGOPROOF_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Do you have any proof that Rodrigo contributed to Stan's death?";
}

func int DIA_FOX_STANRODRIGOPROOF_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 0x14b1c)) && ((LOG_GETSTATUS(MIS_Q303)) == (LOG_RUNNING))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_FOX_STANRODRIGOPROOF_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Fox_StanRodrigoProof_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Fox_StanRodrigoProof_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Fox_StanRodrigoProof_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Fox_StanRodrigoProof_03_03");
    AI_PLAYANI(SELF, T_SEARCH);
    AI_OUTPUT(SELF, OTHER, "DIA_Fox_StanRodrigoProof_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Fox_StanRodrigoProof_03_05");
    AI_LOGENTRY(TOPIC_Q303, LOG_Q303_FOXABOUTBET);
}

instance DIA_FOX_STANCHEATING(C_INFO) {
    NPC = 0xe5a9;
    NR = 1;
    CONDITION = DIA_FOX_STANCHEATING_CONDITION;
    INFORMATION = DIA_FOX_STANCHEATING_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Did Stan cheat on his bets?";
}

func int DIA_FOX_STANCHEATING_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 0x14b1c)) && ((LOG_GETSTATUS(MIS_Q303)) == (LOG_RUNNING))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_FOX_STANCHEATING_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Fox_StanCheating_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Fox_StanCheating_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Fox_StanCheating_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Fox_StanCheating_15_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Fox_StanCheating_03_03");
}

instance DIA_FOX_STANRODRIGOFIGHT(C_INFO) {
    NPC = 0xe5a9;
    NR = 1;
    CONDITION = DIA_FOX_STANRODRIGOFIGHT_CONDITION;
    INFORMATION = DIA_FOX_STANRODRIGOFIGHT_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Tell me about the fight with Rodrigo.";
}

func int DIA_FOX_STANRODRIGOFIGHT_CONDITION() {
    if (((RODRIGODIARY_READ) == (TRUE)) && ((LOG_GETSTATUS(MIS_Q303)) == (LOG_RUNNING))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_FOX_STANRODRIGOFIGHT_INFO() {
    AI_STARTFACEANI(OTHER, S_DOUBT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Fox_StanRodrigoFight_15_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Fox_StanRodrigoFight_15_02");
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Fox_StanRodrigoFight_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Fox_StanRodrigoFight_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Fox_StanRodrigoFight_03_03");
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Fox_StanRodrigoFight_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Fox_StanRodrigoFight_03_04");
    if (NPC_KNOWSINFO(OTHER, 0x1461a)) {
        AI_LOGENTRY(TOPIC_Q303, LOG_Q303_FOXLYING_V2);
    };
    AI_LOGENTRY(TOPIC_Q303, LOG_Q303_FOXLYING_V1);
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
}

instance DIA_FOX_STANRODRIGOBET(C_INFO) {
    NPC = 0xe5a9;
    NR = 1;
    CONDITION = DIA_FOX_STANRODRIGOBET_CONDITION;
    INFORMATION = DIA_FOX_STANRODRIGOBET_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Since Stan had bet everything he had, it must have been quite a sum.";
}

func int DIA_FOX_STANRODRIGOBET_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 0x14b25)) && ((LOG_GETSTATUS(MIS_Q303)) == (LOG_RUNNING))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_FOX_STANRODRIGOBET_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Fox_StanRodrigoBet_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Fox_StanRodrigoBet_03_01");
}

instance DIA_FOX_STANRODRIGOBERRIES(C_INFO) {
    NPC = 0xe5a9;
    NR = 1;
    CONDITION = DIA_FOX_STANRODRIGOBERRIES_CONDITION;
    INFORMATION = DIA_FOX_STANRODRIGOBERRIES_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "What do you know about wolfberries?";
}

func int DIA_FOX_STANRODRIGOBERRIES_CONDITION() {
    if (((NPC_KNOWSINFO(OTHER, 0x14b28)) && (NPC_KNOWSINFO(OTHER, 0x1461a))) && ((LOG_GETSTATUS(MIS_Q303)) == (LOG_RUNNING))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_FOX_STANRODRIGOBERRIES_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Fox_StanRodrigoBerries_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Fox_StanRodrigoBerries_03_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Fox_StanRodrigoBerries_15_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Fox_StanRodrigoBerries_03_02");
}

instance DIA_FOX_STANRODRIGOBERRIES_NOTSURE(C_INFO) {
    NPC = 0xe5a9;
    NR = 1;
    CONDITION = DIA_FOX_STANRODRIGOBERRIES_NOTSURE_CONDITION;
    INFORMATION = DIA_FOX_STANRODRIGOBERRIES_NOTSURE_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Maybe someone else poisoned Stan?";
}

func int DIA_FOX_STANRODRIGOBERRIES_NOTSURE_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 0x14b2b)) && ((LOG_GETSTATUS(MIS_Q303)) == (LOG_RUNNING))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_FOX_STANRODRIGOBERRIES_NOTSURE_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Fox_StanRodrigoBerries_NotSure_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Fox_StanRodrigoBerries_NotSure_03_01");
}

instance DIA_FOX_STANRODRIGO_YOURELOST(C_INFO) {
    NPC = 0xe5a9;
    NR = 1;
    CONDITION = DIA_FOX_STANRODRIGO_YOURELOST_CONDITION;
    INFORMATION = DIA_FOX_STANRODRIGO_YOURELOST_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "You're mixing up your statements.";
}

func int DIA_FOX_STANRODRIGO_YOURELOST_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 0x14b2e)) && ((LOG_GETSTATUS(MIS_Q303)) == (LOG_RUNNING))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_FOX_STANRODRIGO_YOURELOST_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Fox_StanRodrigo_YoureLost_15_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Fox_StanRodrigo_YoureLost_15_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Fox_StanRodrigo_YoureLost_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Fox_StanRodrigo_YoureLost_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Fox_StanRodrigo_YoureLost_03_02");
    AI_LOGENTRY(TOPIC_Q303, LOG_Q303_FOXISANNOYING);
}

instance DIA_FOX_STAN_FIGHT(C_INFO) {
    NPC = 0xe5a9;
    NR = 1;
    CONDITION = DIA_FOX_STAN_FIGHT_CONDITION;
    INFORMATION = DIA_FOX_STAN_FIGHT_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I'm going to punch you in the face.";
}

func int DIA_FOX_STAN_FIGHT_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 0x14b31)) && ((LOG_GETSTATUS(MIS_Q303)) == (LOG_RUNNING))) {
        if (((NPC_HASITEMS(OTHER, 0x9236)) > (0)) && ((NPC_HASITEMS(OTHER, 0x9234)) > (0))) {
            return FALSE;
        };
        if (NPC_KNOWSINFO(OTHER, 0x14b37)) {
            return FALSE;
        };
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_FOX_STAN_FIGHT_INFO() {
    Q303_FIGHTWITHFOX = 1;
    PIR_1325_FOX.AIVAR[45] = AF_RUNNING;
    PIR_1325_FOX.AIVAR[96] = -(1);
    CREATEINVITEMS(SELF, 0x9236, 1);
    CREATEINVITEMS(SELF, 0x9234, 1);
    AI_OUTPUT(OTHER, SELF, "DIA_Fox_Stan_Fight_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Fox_Stan_Fight_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Fox_Stan_Fight_03_02");
    AI_STOPPROCESSINFOS(SELF);
    B_ATTACK(SELF, OTHER, AR_KILL, 0);
}

instance DIA_FOX_STAN_WHATWEGOT(C_INFO) {
    NPC = 0xe5a9;
    NR = 1;
    CONDITION = DIA_FOX_STAN_WHATWEGOT_CONDITION;
    INFORMATION = DIA_FOX_STAN_WHATWEGOT_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "What do we have here?";
}

func int DIA_FOX_STAN_WHATWEGOT_CONDITION() {
    if ((((NPC_HASITEMS(OTHER, 0x9236)) > (0)) && ((NPC_HASITEMS(OTHER, 0x9234)) > (0))) && ((LOG_GETSTATUS(MIS_Q303)) == (LOG_RUNNING))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_FOX_STAN_WHATWEGOT_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Fox_Stan_WhatWeGot_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Fox_Stan_WhatWeGot_03_01");
    if ((SELF.AIVAR[0]) == (FIGHT_LOST)) {
        AI_OUTPUT(OTHER, SELF, "DIA_Fox_Stan_WhatWeGot_15_02");
    };
    AI_OUTPUT(OTHER, SELF, "DIA_Fox_Stan_WhatWeGot_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Fox_Stan_WhatWeGot_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Fox_Stan_WhatWeGot_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Fox_Stan_WhatWeGot_03_04");
    INFO_CLEARCHOICES(0x14b37);
    INFO_ADDCHOICE(0x14b37, "You're the ones who put the berries in Rodrigo's spice?", 0x14b3e);
    INFO_ADDCHOICE(0x14b37, "You wanted to kill Rodrigo?", 0x14b3f);
}

func void DIA_FOX_STAN_WHATWEGOT_ENCOUNTER() {
    Q303_STANKILLERBLAMERODRIGO = 1;
    AI_OUTPUT(SELF, OTHER, "DIA_Fox_Stan_WhatWeGot_Encounter_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Fox_Stan_WhatWeGot_Encounter_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Fox_Stan_WhatWeGot_Encounter_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Fox_Stan_WhatWeGot_Encounter_03_03");
    INFO_CLEARCHOICES(0x14b37);
    INFO_ADDCHOICE(0x14b37, "(Let go)", 0x14b3b);
    INFO_ADDCHOICE(0x14b37, "(Blame Fox)", 0x14b3c);
}

func void DIA_FOX_STAN_WHATWEGOT_ENCOUNTER_FREE() {
    AI_OUTPUT(OTHER, SELF, "DIA_Fox_Stan_WhatWeGot_Encounter_Free_15_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Fox_Stan_WhatWeGot_Encounter_Free_15_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Fox_Stan_WhatWeGot_Encounter_Free_03_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Fox_Stan_WhatWeGot_Encounter_Free_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Fox_Stan_WhatWeGot_Encounter_Free_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Fox_Stan_WhatWeGot_Encounter_Free_15_04");
    AI_LOGENTRY(TOPIC_Q303, LOG_Q303_FOXTRUTHV1);
    INFO_CLEARCHOICES(0x14b37);
    AI_STOPPROCESSINFOS(SELF);
    PIR_1325_FOX.FLAGS = 2;
    PIR_1325_FOX.AIVAR[15] = TRUE;
    NPC_EXCHANGEROUTINE(PIR_1325_FOX, TOT);
}

func void DIA_FOX_STAN_WHATWEGOT_ENCOUNTER_BLAME() {
    AI_OUTPUT(OTHER, SELF, "DIA_Fox_Stan_WhatWeGot_Encounter_Blame_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Fox_Stan_WhatWeGot_Encounter_Blame_03_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Fox_Stan_WhatWeGot_Encounter_Blame_15_02");
    Q303_STAN_BLAMEFOX = TRUE;
    AI_LOGENTRY(TOPIC_Q303, LOG_Q303_FOXTRUTHV2);
    INFO_CLEARCHOICES(0x14b37);
    AI_STOPPROCESSINFOS(SELF);
    PIR_1325_FOX.FLAGS = 2;
    PIR_1325_FOX.AIVAR[15] = TRUE;
    NPC_EXCHANGEROUTINE(PIR_1325_FOX, TOT);
}

var int DIA_FOX_STAN_WHATWEGOT_CHOICECOUNTER = 0;
func void DIA_FOX_STAN_WHATWEGOT_BERRIES() {
    AI_OUTPUT(OTHER, SELF, "DIA_Fox_Stan_WhatWeGot_Berries_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Fox_Stan_WhatWeGot_Berries_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Fox_Stan_WhatWeGot_Berries_03_03");
    DIA_FOX_STAN_WHATWEGOT_CHOICECOUNTER += 1;
    if ((DIA_FOX_STAN_WHATWEGOT_CHOICECOUNTER) > (1)) {
        DIA_FOX_STAN_WHATWEGOT_ENCOUNTER();
    };
}

func void DIA_FOX_STAN_WHATWEGOT_KILL() {
    AI_OUTPUT(OTHER, SELF, "DIA_Fox_Stan_WhatWeGot_15_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Fox_Stan_WhatWeGot_03_07");
    AI_OUTPUT(OTHER, SELF, "DIA_Fox_Stan_WhatWeGot_15_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Fox_Stan_WhatWeGot_03_08");
    DIA_FOX_STAN_WHATWEGOT_CHOICECOUNTER += 1;
    if ((DIA_FOX_STAN_WHATWEGOT_CHOICECOUNTER) > (1)) {
        DIA_FOX_STAN_WHATWEGOT_ENCOUNTER();
    };
}

instance DIA_FOX_WHATSUP(C_INFO) {
    NPC = 0xe5a9;
    NR = 6;
    CONDITION = DIA_FOX_WHATSUP_CONDITION;
    INFORMATION = DIA_FOX_WHATSUP_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "How are you doing?";
}

func int DIA_FOX_WHATSUP_CONDITION() {
    return TRUE;
}

func void DIA_FOX_WHATSUP_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Fox_WhatsUp_15_01");
    NPC_INITAMBIENTS(SELF, 3);
    if ((NPC_GETLASTAMBIENT(SELF)) == (1)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Fox_WhatsUp_03_01");
    };
    if ((NPC_GETLASTAMBIENT(SELF)) == (2)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Fox_WhatsUp_03_02");
    };
    if ((NPC_GETLASTAMBIENT(SELF)) == (3)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Fox_WhatsUp_03_03");
    };
}

instance DIA_FOX_PICKPOCKET(C_INFO) {
    NPC = 0xe5a9;
    NR = 900;
    CONDITION = DIA_FOX_PICKPOCKET_CONDITION;
    INFORMATION = DIA_FOX_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_40;
}

func int DIA_FOX_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_FOX_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(0x14b43);
    INFO_ADDCHOICE(0x14b43, DIALOG_BACK, 0x14b47);
    INFO_ADDCHOICE(0x14b43, DIALOG_PICKPOCKET, 0x14b46);
}

func void DIA_FOX_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) {
        B_PICKPOCKET_AMBIENT_TIER_1();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(0x14b43);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(0x14b43);
}

func void DIA_FOX_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(0x14b43);
}

instance DIA_FOX_PICKPOCKET_Q303(C_INFO) {
    NPC = 0xe5a9;
    NR = 989;
    CONDITION = DIA_FOX_PICKPOCKET_Q303_CONDITION;
    INFORMATION = DIA_FOX_PICKPOCKET_Q303_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "(Try to steal Fox's bag)";
}

func int DIA_FOX_PICKPOCKET_Q303_CONDITION() {
    if ((((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && (NPC_KNOWSINFO(OTHER, 0x14b31))) && ((LOG_GETSTATUS(MIS_Q303)) == (LOG_RUNNING))) {
        if (((NPC_HASITEMS(OTHER, 0x9236)) > (0)) && ((NPC_HASITEMS(OTHER, 0x9234)) > (0))) {
            return FALSE;
        };
        if (NPC_KNOWSINFO(OTHER, 0x14b37)) {
            return FALSE;
        };
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_FOX_PICKPOCKET_Q303_INFO() {
    INFO_CLEARCHOICES(0x14b48);
    INFO_ADDCHOICE(0x14b48, DIALOG_BACK, 0x14b4c);
    INFO_ADDCHOICE(0x14b48, DIALOG_PICKPOCKET, 0x14b4b);
}

func void DIA_FOX_PICKPOCKET_Q303_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) {
        CREATEINVITEMS(SELF, 0x9236, 1);
        B_GIVEINVITEMS(SELF, OTHER, 0x9236, 1);
        CREATEINVITEMS(SELF, 0x9234, 1);
        B_GIVEINVITEMS(SELF, OTHER, 0x9234, 1);
        INFO_CLEARCHOICES(0x14b48);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(0x14b48);
}

func void DIA_FOX_PICKPOCKET_Q303_BACK() {
    INFO_CLEARCHOICES(0x14b48);
}


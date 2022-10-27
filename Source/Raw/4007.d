instance DIA_KARIN_EXIT(C_INFO) {
    NPC = 0xda5f;
    NR = 999;
    CONDITION = DIA_KARIN_EXIT_CONDITION;
    INFORMATION = DIA_KARIN_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_KARIN_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_KARIN_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_KARIN_HELLO(C_INFO) {
    NPC = 0xda5f;
    NR = 1;
    CONDITION = DIA_KARIN_HELLO_CONDITION;
    INFORMATION = DIA_KARIN_HELLO_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "You're Karin?";
}

func int DIA_KARIN_HELLO_CONDITION() {
    if (((LOG_GETSTATUS(MIS_SQ213)) == (LOG_RUNNING)) && ((NPC_KNOWSINFO(OTHER, 0x12fe1)) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_KARIN_HELLO_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Karin_Hello_15_01");
    AI_STARTFACEANI(SELF, S_SMILE, 0, 1);
    AI_OUTPUT(SELF, OTHER, "DIA_Karin_Hello_03_02");
    AI_RESETFACEANI(SELF);
    NPC_EXCHANGEROUTINE(SELF, "NORMALDAY");
}

instance DIA_KARIN_WHO(C_INFO) {
    NPC = 0xda5f;
    NR = 1;
    CONDITION = DIA_KARIN_WHO_CONDITION;
    INFORMATION = DIA_KARIN_WHO_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Who are you?";
}

func int DIA_KARIN_WHO_CONDITION() {
    if ((LOG_GETSTATUS(MIS_SQ213)) == (0)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_KARIN_WHOIAM() {
    AI_OUTPUT(SELF, OTHER, "DIA_Karin_TellMe_03_02");
}

func void DIA_KARIN_DIFFICULT() {
    AI_OUTPUT(OTHER, SELF, "DIA_Karin_TellMe_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Karin_TellMe_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Karin_TellMe_03_05");
    AI_OUTPUT(OTHER, SELF, "DIA_Karin_TellMe_15_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Karin_TellMe_03_07");
    AI_OUTPUT(SELF, OTHER, "DIA_Karin_TellMe_03_08");
    INFO_CLEARCHOICES(0x12fe6);
    INFO_CLEARCHOICES(0x12fe1);
}

func void DIA_KARIN_WHO_INFO() {
    B_SAY(OTHER, SELF, "$MARVIN_WhoAreYou");
    DIA_KARIN_WHOIAM();
    NPC_EXCHANGEROUTINE(SELF, "NORMALDAY");
    INFO_CLEARCHOICES(0x12fe1);
    INFO_ADDCHOICE(0x12fe1, DIALOG_BESILENT, 0x12fe9);
    INFO_ADDCHOICE(0x12fe1, "Is it harder for women in this profession?", 0x12fe4);
}

instance DIA_KARIN_TELLME(C_INFO) {
    NPC = 0xda5f;
    NR = 2;
    CONDITION = DIA_KARIN_TELLME_CONDITION;
    INFORMATION = DIA_KARIN_TELLME_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Tell me something about yourself.";
}

func int DIA_KARIN_TELLME_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 0x12fde)) && ((NPC_KNOWSINFO(OTHER, 0x12fe1)) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_KARIN_TELLME_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Karin_TellMe_15_01");
    DIA_KARIN_WHOIAM();
    INFO_CLEARCHOICES(0x12fe6);
    INFO_ADDCHOICE(0x12fe6, DIALOG_BESILENT, 0x12fe9);
    INFO_ADDCHOICE(0x12fe6, "Is it harder for women in this profession?", 0x12fe4);
}

func void DIA_KARIN_TELLME_SILENCE() {
    INFO_CLEARCHOICES(0x12fe6);
    INFO_CLEARCHOICES(0x12fe1);
}

instance DIA_KARIN_PLAYLUTE(C_INFO) {
    NPC = 0xda5f;
    NR = 3;
    CONDITION = DIA_KARIN_PLAYLUTE_CONDITION;
    INFORMATION = DIA_KARIN_PLAYLUTE_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Would you teach me to play the lute?";
}

func int DIA_KARIN_PLAYLUTE_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 0x12fde)) || (NPC_KNOWSINFO(OTHER, 0x12fe1))) {
        if (((LOG_GETSTATUS(MIS_SQ213)) == (LOG_RUNNING)) && ((SQ213_BASTIANMUSIC) == (TRUE))) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_KARIN_ORCHARD_DONE() {
    AI_OUTPUT(OTHER, SELF, "DIA_Karin_KarinSing_15_09");
    AI_OUTPUT(SELF, OTHER, "DIA_Karin_KarinSing_03_10");
    AI_OUTPUT(OTHER, SELF, "DIA_Karin_KarinSing_15_11");
    AI_OUTPUT(SELF, OTHER, "DIA_Karin_KarinSing_03_12");
    AI_LOGENTRY(TOPIC_SQ213, LOG_SQ213_KARINV1);
    SQ213_KARIN_TELLABOUTPLACE = 2;
    SQ213_KARINWILLSING = TRUE;
    NPC_EXCHANGEROUTINE(SELF, ORCHARD);
    INFO_CLEARCHOICES(0x12fea);
    INFO_CLEARCHOICES(0x12ff2);
    INFO_CLEARCHOICES(0x12ff5);
}

func void DIA_KARIN_LUTE_LESSON() {
    CREATEINVITEMS(SELF, 0x858e, 1);
    CREATEINVITEMS(OTHER, 0x858e, 1);
    AI_USEITEMTOSTATE(SELF, 0x858e, 1);
    AI_WAIT(SELF, 0x40000000);
    AI_USEITEMTOSTATE(SELF, 0x858e, -(1));
    if (TORCH_HEROHOLDINGTORCH()) {
        TORCH_UNEQUIP();
    };
    AI_USEITEMTOSTATE(OTHER, 0x858e, 1);
    AI_FUNCTION(OTHER, 0xff4e);
    AI_WAIT(OTHER, 0x3f8ccccd);
    AI_FUNCTION(OTHER, 0xff4f);
    AI_WAIT(OTHER, 0x3f8ccccd);
    AI_USEITEMTOSTATE(OTHER, 0x858e, -(1));
    SQ213_MARVINKNOWHOWTOPLAY = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Karin_PlayLute_AfterLesson_15_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Karin_PlayLute_AfterLesson_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Karin_PlayLute_AfterLesson_03_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Karin_PlayLute_AfterLesson_15_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Karin_PlayLute_AfterLesson_03_05");
    AI_OUTPUT(OTHER, SELF, "DIA_Karin_KarinSing_15_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Karin_KarinSing_15_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Karin_KarinSing_03_06");
    AI_OUTPUT(OTHER, SELF, "DIA_Karin_KarinSing_15_07");
    AI_OUTPUT(SELF, OTHER, "DIA_Karin_KarinSing_03_08");
    if ((SQ213_ORCHARDREADY) == (TRUE)) {
        DIA_KARIN_ORCHARD_DONE();
    };
    SQ213_KARIN_TELLABOUTPLACE = 1;
    AI_OUTPUT(OTHER, SELF, "DIA_Karin_KarinSing_15_13");
    AI_OUTPUT(SELF, OTHER, "DIA_Karin_KarinSing_03_14");
    INFO_CLEARCHOICES(0x12fea);
    INFO_CLEARCHOICES(0x12ff2);
    INFO_CLEARCHOICES(0x12ff5);
    AI_LOGENTRY(TOPIC_SQ213, LOG_SQ213_KARIN_TELLWHENREADY);
}

func void DIA_KARIN_BIMBER_GIVE() {
    SQ213_KARINBIMBER = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Karin_PlayLute_15_07");
    AI_OUTPUT(SELF, OTHER, "DIA_Karin_PlayLute_03_08");
    B_STANDUP();
    B_GIVEINVITEMS(OTHER, SELF, 0x8e21, 1);
    AI_STOPLOOKAT(SELF);
    AI_USEITEM(SELF, 0x8e21);
    AI_LOOKATNPC(SELF, OTHER);
    AI_OUTPUT(SELF, OTHER, "DIA_Karin_PlayLute_03_09");
    AI_OUTPUT(OTHER, SELF, "DIA_Karin_PlayLute_15_10");
    AI_OUTPUT(SELF, OTHER, "DIA_Karin_PlayLute_03_11");
    INFO_CLEARCHOICES(0x12fea);
    INFO_ADDCHOICE(0x12fea, "I've always dreamed of it!", 0x12ff0);
    INFO_ADDCHOICE(0x12fea, "It's a long story.", 0x12ff1);
    INFO_CLEARCHOICES(0x12ff2);
    INFO_ADDCHOICE(0x12ff2, "I've always dreamed of it!", 0x12ff0);
    INFO_ADDCHOICE(0x12ff2, "It's a long story.", 0x12ff1);
}

func void DIA_KARIN_PLAYLUTE_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Karin_PlayLute_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Karin_PlayLute_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Karin_PlayLute_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Karin_PlayLute_03_04");
    AI_OUTPUT(OTHER, SELF, "DIA_Karin_PlayLute_15_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Karin_PlayLute_03_06");
    if ((NPC_HASITEMS(OTHER, 0x8e21)) >= (1)) {
        DIA_KARIN_BIMBER_GIVE();
    };
    SQ213_KARINBIMBER = FALSE;
    AI_OUTPUT(OTHER, SELF, "DIA_Karin_PlayLute_15_12");
    AI_OUTPUT(SELF, OTHER, "DIA_Karin_PlayLute_03_13");
    AI_LOGENTRY(TOPIC_SQ213, LOG_SQ213_KARINBIMBER);
}

func void DIA_KARIN_PLAYLUTE_DREAM() {
    SQ213_KARINGOLDLUTE = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Karin_PlayLute_Dream_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Karin_PlayLute_Dream_03_03");
    INFO_CLEARCHOICES(0x12fea);
    INFO_CLEARCHOICES(0x12ff2);
}

func void DIA_KARIN_PLAYLUTE_STORY() {
    AI_OUTPUT(OTHER, SELF, "DIA_Karin_PlayLute_Story_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Karin_PlayLute_Story_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Karin_PlayLute_Story_15_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Karin_PlayLute_Story_15_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Karin_PlayLute_Story_03_05");
    AI_OUTPUT(OTHER, SELF, "DIA_Karin_PlayLute_Story_15_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Karin_PlayLute_Story_03_07");
    AI_OUTPUT(OTHER, SELF, "DIA_Karin_PlayLute_Story_15_08");
    AI_OUTPUT(SELF, OTHER, "DIA_Karin_PlayLute_Story_03_09");
    AI_OUTPUT(OTHER, SELF, "DIA_Karin_PlayLute_Story_15_10");
    AI_OUTPUT(SELF, OTHER, "DIA_Karin_PlayLute_Story_03_11");
    INFO_CLEARCHOICES(0x12fea);
    INFO_CLEARCHOICES(0x12ff2);
    DIA_KARIN_LUTE_LESSON();
}

instance DIA_KARIN_BIMBER(C_INFO) {
    NPC = 0xda5f;
    NR = 1;
    CONDITION = DIA_KARIN_BIMBER_CONDITION;
    INFORMATION = DIA_KARIN_BIMBER_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I have moonshine.";
}

func int DIA_KARIN_BIMBER_CONDITION() {
    if ((((NPC_KNOWSINFO(OTHER, 0x12fea)) && ((SQ213_KARINBIMBER) == (FALSE))) && ((NPC_HASITEMS(OTHER, 0x8e21)) >= (1))) && ((LOG_GETSTATUS(MIS_SQ213)) == (LOG_RUNNING))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_KARIN_BIMBER_INFO() {
    DIA_KARIN_BIMBER_GIVE();
}

instance DIA_KARIN_GOLDLUTE(C_INFO) {
    NPC = 0xda5f;
    NR = 2;
    CONDITION = DIA_KARIN_GOLDLUTE_CONDITION;
    INFORMATION = DIA_KARIN_GOLDLUTE_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Here, your gold. (50 GP)";
}

func int DIA_KARIN_GOLDLUTE_CONDITION() {
    if ((((NPC_KNOWSINFO(OTHER, 0x12fea)) && ((NPC_HASITEMS(OTHER, 0x859b)) >= (MIST_KARINLUTE))) && ((SQ213_KARINGOLDLUTE) == (TRUE))) && ((LOG_GETSTATUS(MIS_SQ213)) == (LOG_RUNNING))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_KARIN_GOLDLUTE_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Karin_GoldLute_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Karin_GoldLute_03_02");
    B_GIVEINVITEMS(OTHER, SELF, 0x859b, MIST_KARINLUTE);
    DIA_KARIN_LUTE_LESSON();
}

instance DIA_KARIN_ORCHARD(C_INFO) {
    NPC = 0xda5f;
    NR = 3;
    CONDITION = DIA_KARIN_ORCHARD_CONDITION;
    INFORMATION = DIA_KARIN_ORCHARD_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I got a place. It's an orchard by the Big Vineyard.";
}

func int DIA_KARIN_ORCHARD_CONDITION() {
    if (((((LOG_GETSTATUS(MIS_SQ213)) == (LOG_RUNNING)) && ((SQ213_KARINWILLSING) == (FALSE))) && ((SQ213_ORCHARDREADY) == (TRUE))) && ((SQ213_KARIN_TELLABOUTPLACE) == (1))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_KARIN_ORCHARD_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Karin_Orchard_15_01");
    DIA_KARIN_ORCHARD_DONE();
}

instance DIA_KARIN_SQ213PLAYSONG(C_INFO) {
    NPC = 0xda5f;
    NR = 1;
    CONDITION = DIA_KARIN_SQ213PLAYSONG_CONDITION;
    INFORMATION = DIA_KARIN_SQ213PLAYSONG_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Ready to perform?";
}

func int DIA_KARIN_SQ213PLAYSONG_CONDITION() {
    if (((LOG_GETSTATUS(MIS_SQ213)) == (LOG_RUNNING)) && ((SQ213_EVERYTHINGREADY) == (4))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_KARIN_SQ213PLAYSONG_INFO() {
    B_STANDUP();
    AI_OUTPUT(OTHER, SELF, "DIA_Karin_SQ213PlaySong_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Karin_SQ213PlaySong_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Karin_SQ213PlaySong_03_03");
    AI_STOPPROCESSINFOS(SELF);
    NPC_EXCHANGEROUTINE(SELF, CUTSCENERTN);
    AI_FUNCTION(SELF, 0x12ffe);
}

func void MIST_SONGWITHKARIN() {
    FADESCREENTOBLACKF(1, 0x12fff, 1000);
}

func void MIST_SONGWITHKARIN_FADESCREEN() {
    WLD_SETTIME(19, 10);
    SQ213_EVERYTHINGREADY = 3;
    HERO.AIVAR[4] = TRUE;
    FF_APPLYONCEEXT(0xf456, 75, 4);
}

instance DIA_KARIN_AFTERCUTSCENE(C_INFO) {
    NPC = 0xda5f;
    NR = 1;
    CONDITION = DIA_KARIN_AFTERCUTSCENE_CONDITION;
    INFORMATION = DIA_KARIN_AFTERCUTSCENE_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_KARIN_AFTERCUTSCENE_CONDITION() {
    if (((LOG_GETSTATUS(MIS_SQ213)) == (LOG_RUNNING)) && ((SQ213_EVERYTHINGREADY) == (6))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_KARIN_AFTERCUTSCENE_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_Karin_AfterCutscene_03_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Karin_AfterCutscene_15_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Karin_AfterCutscene_03_05");
    AI_OUTPUT(OTHER, SELF, "DIA_Karin_AfterCutscene_15_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Karin_AfterCutscene_03_07");
    AI_OUTPUT(OTHER, SELF, "DIA_Karin_AfterCutscene_15_08");
    if ((LOG_GETSTATUS(MIS_Q405)) != (LOG_SUCCESS)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Karin_AfterCutscene_03_09");
        AI_OUTPUT(SELF, OTHER, "DIA_Karin_AfterCutscene_03_11");
        AI_OUTPUT(OTHER, SELF, "DIA_Karin_AfterCutscene_15_12");
        AI_OUTPUT(SELF, OTHER, "DIA_Karin_AfterCutscene_03_13");
        AI_OUTPUT(OTHER, SELF, "DIA_Karin_AfterCutscene_15_14");
        AI_OUTPUT(OTHER, SELF, "DIA_Karin_AfterCutscene_15_15");
        AI_OUTPUT(SELF, OTHER, "DIA_Karin_AfterCutscene_03_18");
    };
    NPC_EXCHANGEROUTINE(SELF, RESERVED_CONST_STRING_64);
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_KARIN_AMBIENT(C_INFO) {
    NPC = 0xda5f;
    NR = 950;
    CONDITION = DIA_KARIN_AMBIENT_CONDITION;
    INFORMATION = DIA_KARIN_AMBIENT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "How are you doing?";
}

func int DIA_KARIN_AMBIENT_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 0x12fe1)) || (NPC_KNOWSINFO(OTHER, 0x12fde))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_KARIN_AMBIENT_INFO() {
    AI_STARTFACEANI(OTHER, S_SMILE, 1, -(1));
    B_SAY(OTHER, SELF, "$MARVIN_WhatNew2");
    if ((LOG_GETSTATUS(MIS_SQ213)) == (LOG_SUCCESS)) {
        AI_STARTFACEANI(SELF, S_THINK, 1, -(1));
        AI_OUTPUT(SELF, OTHER, "DIA_Karin_Ambient_03_03");
    };
    NPC_INITAMBIENTS(SELF, 2);
    if ((NPC_GETLASTAMBIENT(SELF)) == (1)) {
        AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
        AI_OUTPUT(SELF, OTHER, "DIA_Karin_Ambient_03_01");
    };
    if ((NPC_GETLASTAMBIENT(SELF)) == (2)) {
        AI_STARTFACEANI(SELF, S_THINK, 1, -(1));
        AI_OUTPUT(SELF, OTHER, "DIA_Karin_Ambient_03_02");
    };
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
}

instance DIA_KARIN_PICKPOCKET(C_INFO) {
    NPC = 0xda5f;
    NR = 900;
    CONDITION = DIA_KARIN_PICKPOCKET_CONDITION;
    INFORMATION = DIA_KARIN_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_80_FEMALE;
}

func int DIA_KARIN_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_KARIN_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(0x13006);
    INFO_ADDCHOICE(0x13006, DIALOG_BACK, 0x1300a);
    INFO_ADDCHOICE(0x13006, DIALOG_PICKPOCKET, 0x13009);
}

func void DIA_KARIN_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (2)) {
        B_PICKPOCKET_AMBIENT_TIER_2();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(0x13006);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(0x13006);
}

func void DIA_KARIN_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(0x13006);
}

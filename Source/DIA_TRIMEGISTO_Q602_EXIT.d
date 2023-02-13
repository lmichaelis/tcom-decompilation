instance DIA_TRIMEGISTO_Q602_EXIT(C_INFO) {
    NPC = 59629;
    NR = 999;
    CONDITION = DIA_TRIMEGISTO_Q602_EXIT_CONDITION;
    INFORMATION = DIA_TRIMEGISTO_Q602_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_TRIMEGISTO_Q602_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_TRIMEGISTO_Q602_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_TRIMEGISTO_Q602_DEATH(C_INFO) {
    NPC = 59629;
    NR = 1;
    CONDITION = DIA_TRIMEGISTO_Q602_DEATH_CONDITION;
    INFORMATION = DIA_TRIMEGISTO_Q602_DEATH_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_TRIMEGISTO_Q602_DEATH_CONDITION() {
    if ((LOG_GETSTATUS(MIS_Q602)) == (LOG_RUNNING)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_TRIMEGISTO_Q602_DEATH_INFO() {
    KDF_6404_TRIMEGISTO_Q602.NPCTYPE = NPCTYPE_MAIN;
    KDF_6404_TRIMEGISTO_Q602.FLAGS = 0;
    AI_STARTFACEANI(SELF, S_SAD, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Trimegisto_Q602_Death_03_01");
    INFO_CLEARCHOICES(90150);
    INFO_ADDCHOICE(90150, "What are you talking about?", 90154);
    INFO_ADDCHOICE(90150, "Purified?", 90157);
}

func void DIA_TRIMEGISTO_Q602_DEATH_ADDCHOICE() {
    INFO_ADDCHOICE(90150, "In that case, I won't bother you.", 90156);
}

func void DIA_TRIMEGISTO_Q602_DEATH_NO() {
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_STARTFACEANI(OTHER, S_ANGRY, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Trimegisto_Q602_Death_No_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Trimegisto_Q602_Death_No_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Trimegisto_Q602_Death_No_03_03");
    INFO_CLEARCHOICES(90150);
    INFO_ADDCHOICE(90150, "These people need to be escorted to safety immediately!", 90155);
    DIA_TRIMEGISTO_Q602_DEATH_ADDCHOICE();
}

func void DIA_TRIMEGISTO_Q602_DEATH_NO_NOV2() {
    AI_STARTFACEANI(SELF, "S_HOSTILE", 1, -(1));
    AI_RESETFACEANI(OTHER);
    AI_OUTPUT(OTHER, SELF, "DIA_Trimegisto_Q602_Death_NoV2_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Trimegisto_Q602_Death_NoV2_03_03");
    INFO_CLEARCHOICES(90150);
    AI_STOPPROCESSINFOS(SELF);
    AI_FUNCTION(SELF, 90161);
}

func void DIA_TRIMEGISTO_Q602_DEATH_NO_LEAVE() {
    Q602_TRIMEGISTO_CUTSCENEENABLE = 3;
    AI_STARTFACEANI(SELF, S_SAD, 1, -(1));
    AI_RESETFACEANI(OTHER);
    AI_OUTPUT(OTHER, SELF, "DIA_Trimegisto_Q602_Death_Leave_15_01");
    AI_WAITTILLEND(SELF, OTHER);
    AI_TURNTONPC(SELF, VLK_6300_GROEN_Q602);
    AI_OUTPUT(SELF, OTHER, "DIA_Trimegisto_Q602_Death_Leave_03_02");
    INFO_CLEARCHOICES(90150);
    AI_STOPPROCESSINFOS(SELF);
}

func void DIA_TRIMEGISTO_Q602_DEATH_PURE() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Trimegisto_Q602_Death_Pure_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Trimegisto_Q602_Death_Pure_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Trimegisto_Q602_Death_Pure_03_03");
    INFO_CLEARCHOICES(90150);
    DIA_TRIMEGISTO_Q602_DEATH_ADDCHOICE();
    INFO_ADDCHOICE(90150, "I can't let you do that.", 90159);
    INFO_ADDCHOICE(90150, "Tengral survived, maybe you should talk to him.", 90158);
    if ((NPC_HASITEMS(OTHER, 34695)) >= (1)) {
        INFO_ADDCHOICE(90150, "(Distract and put to sleep)", 90160);
    };
}

func void DIA_TRIMEGISTO_Q602_DEATH_PURE_TENGRAL() {
    AI_RESETFACEANI(OTHER);
    AI_OUTPUT(OTHER, SELF, "DIA_Trimegisto_Q602_Death_Tengral_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Trimegisto_Q602_Death_Tengral_03_02");
}

func void DIA_TRIMEGISTO_Q602_DEATH_PURE_FIGHT() {
    KDF_6404_TRIMEGISTO_Q602.AIVAR[15] = FALSE;
    AI_STARTFACEANI(OTHER, S_ANGRY, 1, -(1));
    Q602_TRIMEGISTO_FIGHT = 1;
    AI_OUTPUT(OTHER, SELF, "DIA_Trimegisto_Q602_Death_Fight_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Trimegisto_Q602_Death_Fight_03_02");
    INFO_CLEARCHOICES(90150);
    AI_STOPPROCESSINFOS(SELF);
    B_ATTACK(SELF, OTHER, AR_KILL, 1);
    AI_RESETFACEANI(OTHER);
}

func void DIA_TRIMEGISTO_Q602_DEATH_PURE_SLEEP() {
    AI_RESETFACEANI(OTHER);
    AI_STARTFACEANI(SELF, S_THINK, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Trimegisto_Q602_Death_Sleep_15_01");
    AI_TURNAWAY(SELF, OTHER);
    B_READYSPELL(OTHER, SPL_SLEEP, SPL_COST_SCROLL);
    AI_PLAYANI(OTHER, "T_MAGRUN_2_SLESHOOT");
    AI_FUNCTION(OTHER, 90162);
    AI_PLAYANI(OTHER, "T_SLESHOOT_2_STAND");
    AI_UNREADYSPELL(OTHER);
    AI_OUTPUT(SELF, OTHER, "DIA_Trimegisto_Q602_Death_Sleep_03_02");
    AI_WAITTILLEND(SELF, OTHER);
    INFO_CLEARCHOICES(90150);
    AI_STOPPROCESSINFOS(SELF);
    AI_FUNCTION(SELF, 90163);
}

func void TRIMEGISTO_Q602_FIRERING() {
    Q602_TRIMEGISTO_CUTSCENEENABLE = 1;
}

func void TRIMEGISTO_Q602_SLEEP_EFFECT() {
    WLD_PLAYEFFECT("FX_SLEEP_ORIGIN", HERO, HERO, 0, 0, 0, FALSE);
    WLD_PLAYEFFECT("FX_SLEEP_TARGET", KDF_6404_TRIMEGISTO_Q602, KDF_6404_TRIMEGISTO_Q602, 0, 0, 0, FALSE);
    SND_PLAY("MFX_Sleep_Cast");
}

func void TRIMEGISTO_Q602_SLEEP() {
    Q602_TELEPORTTENGRAL = 1;
    Q602_TRIMEGISTO_FINISHWAY = 2;
    NPC_EXCHANGEROUTINE(KDF_6404_TRIMEGISTO_Q602, "Q602_SLEEP");
    NPC_REMOVEINVITEMS(HERO, 34695, 1);
    HERO.ATTRIBUTE[2] = (HERO.ATTRIBUTE[2]) - (5);
}


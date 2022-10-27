func void B_SPEECH_HERALD() {
    AI_REMOVEWEAPON(SELF);
    CREATEINVITEM(SELF, 0x8486);
    AI_USEITEMTOSTATE(SELF, 0x8486, 1);
    AI_OUTPUT(SELF, SELF, "DIA_Herald_Speech_05_01");
    if ((HERALD_SPEECH_STORY_01) == (TRUE)) {
        HERALD_SPEECH_STORY_01 = FALSE;
        AI_OUTPUT(SELF, SELF, "DIA_Herald_Speech_05_16");
        AI_OUTPUT(SELF, SELF, "DIA_Herald_Speech_05_17");
        AI_OUTPUT(SELF, SELF, "DIA_Herald_Speech_05_18");
        AI_OUTPUT(SELF, SELF, "DIA_Herald_Speech_05_19");
    };
    if ((HERALD_SPEECH_STORY_02) == (TRUE)) {
        HERALD_SPEECH_STORY_02 = FALSE;
        AI_OUTPUT(SELF, SELF, "DIA_Herald_Speech_05_20");
        AI_OUTPUT(SELF, SELF, "DIA_Herald_Speech_05_21");
        AI_OUTPUT(SELF, SELF, "DIA_Herald_Speech_05_22");
        AI_OUTPUT(SELF, SELF, "DIA_Herald_Speech_05_23");
        AI_OUTPUT(SELF, SELF, "DIA_Herald_Speech_05_24");
    };
    if ((HERALD_SPEECH_STORY_03) == (TRUE)) {
        HERALD_SPEECH_STORY_03 = FALSE;
        AI_OUTPUT(SELF, SELF, "DIA_Herald_Speech_05_25");
        AI_OUTPUT(SELF, SELF, "DIA_Herald_Speech_05_26");
        AI_OUTPUT(SELF, SELF, "DIA_Herald_Speech_05_27");
        AI_OUTPUT(SELF, SELF, "DIA_Herald_Speech_05_29");
    };
    if ((HERALD_SPEECH_STORY_04) == (TRUE)) {
        HERALD_SPEECH_STORY_04 = FALSE;
        AI_OUTPUT(SELF, SELF, "DIA_Herald_Speech_05_30");
        AI_OUTPUT(SELF, SELF, "DIA_Herald_Speech_05_31");
    };
    if ((HERALD_SPEECH_RANDOM_01) == (TRUE)) {
        HERALD_SPEECH_RANDOM_01 = FALSE;
        AI_OUTPUT(SELF, SELF, "DIA_Herald_Speech_05_02");
        AI_OUTPUT(SELF, SELF, "DIA_Herald_Speech_05_03");
        AI_OUTPUT(SELF, SELF, "DIA_Herald_Speech_05_04");
        AI_OUTPUT(SELF, SELF, "DIA_Herald_Speech_05_05");
    };
    if ((HERALD_SPEECH_RANDOM_02) == (TRUE)) {
        HERALD_SPEECH_RANDOM_02 = FALSE;
        AI_OUTPUT(SELF, SELF, "DIA_Herald_Speech_05_06");
        AI_OUTPUT(SELF, SELF, "DIA_Herald_Speech_05_07");
        AI_OUTPUT(SELF, SELF, "DIA_Herald_Speech_05_08");
        AI_OUTPUT(SELF, SELF, "DIA_Herald_Speech_05_09");
        AI_OUTPUT(SELF, SELF, "DIA_Herald_Speech_05_10");
        AI_OUTPUT(SELF, SELF, "DIA_Herald_Speech_05_11");
    };
    if ((HERALD_SPEECH_RANDOM_03) == (TRUE)) {
        HERALD_SPEECH_RANDOM_03 = FALSE;
        AI_OUTPUT(SELF, SELF, "DIA_Herald_Speech_05_12");
        AI_OUTPUT(SELF, SELF, "DIA_Herald_Speech_05_13");
        AI_OUTPUT(SELF, SELF, "DIA_Herald_Speech_05_14");
        AI_OUTPUT(SELF, SELF, "DIA_Herald_Speech_05_15");
    };
    if ((HERALD_SPEECH_RANDOM_04) == (TRUE)) {
        HERALD_SPEECH_RANDOM_04 = FALSE;
        AI_OUTPUT(SELF, SELF, "DIA_Herald_Speech_05_33");
        AI_OUTPUT(SELF, SELF, "DIA_Herald_Speech_05_34");
        AI_OUTPUT(SELF, SELF, "DIA_Herald_Speech_05_35");
    };
    if ((HERALD_SPEECH_RANDOM_05) == (TRUE)) {
        HERALD_SPEECH_RANDOM_05 = FALSE;
        AI_OUTPUT(SELF, SELF, "DIA_Herald_Speech_05_36");
        AI_OUTPUT(SELF, SELF, "DIA_Herald_Speech_05_37");
        AI_OUTPUT(SELF, SELF, "DIA_Herald_Speech_05_38");
    };
    PRINTD("NIE MAM CO MÓWIÆ!");
    AI_USEITEMTOSTATE(SELF, 0x8486, -(1));
    AI_SETWALKMODE(SELF, NPC_WALK);
}


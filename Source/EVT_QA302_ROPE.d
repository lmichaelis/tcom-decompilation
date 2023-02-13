func void EVT_QA302_ROPE() {
    var int QA302_ROPE_DIALOGUE;
    if ((QA302_ROPE_DIALOGUE) == (FALSE)) {
        QA302_ROPE_DIALOGUE = TRUE;
        QA302_CLUECOUNTS = (QA302_CLUECOUNTS) + (1);
        MOB_CHANGEFOCUSNAME("QA302_ROPE", "MOBNAME_NOTHING");
        WLD_SENDTRIGGER("QA302_MOVER_CLUES_01");
        AI_OUTPUT(HERO, HERO, "DIA_Marvin_QA302_Clues_15_01");
        AI_USEMOB(HERO, NPC_GETDETECTEDMOB(HERO), -(1));
    };
}

func void EVT_QA302_STONES() {
    var int QA302_STONES_DIALOGUE;
    if ((QA302_STONES_DIALOGUE) == (FALSE)) {
        QA302_STONES_DIALOGUE = TRUE;
        QA302_CLUECOUNTS = (QA302_CLUECOUNTS) + (1);
        MOB_CHANGEFOCUSNAME("QA302_STONES", "MOBNAME_NOTHING");
        AI_OUTPUT(HERO, HERO, "DIA_Marvin_QA302_Clues_15_02");
        AI_USEMOB(HERO, NPC_GETDETECTEDMOB(HERO), -(1));
    };
}

func void EVT_QA302_SHIELDS() {
    var int QA302_SHIELDS_DIALOGUE;
    if ((QA302_SHIELDS_DIALOGUE) == (FALSE)) {
        QA302_SHIELDS_DIALOGUE = TRUE;
        QA302_CLUECOUNTS = (QA302_CLUECOUNTS) + (1);
        MOB_CHANGEFOCUSNAME("QA302_SHIELDS", "MOBNAME_NOTHING");
        AI_OUTPUT(HERO, HERO, "DIA_Marvin_QA302_Clues_15_03");
        AI_USEMOB(HERO, NPC_GETDETECTEDMOB(HERO), -(1));
    };
}

func void EVT_QA302_SIGN() {
    var int QA302_SIGN_DIALOGUE;
    if ((QA302_SIGN_DIALOGUE) == (FALSE)) {
        QA302_SIGN_DIALOGUE = TRUE;
        QA302_CLUECOUNTS = (QA302_CLUECOUNTS) + (1);
        MOB_CHANGEFOCUSNAME("QA302_SIGN", "MOBNAME_NOTHING");
        AI_OUTPUT(HERO, HERO, "DIA_Marvin_QA302_Clues_15_04");
        AI_USEMOB(HERO, NPC_GETDETECTEDMOB(HERO), -(1));
    };
}


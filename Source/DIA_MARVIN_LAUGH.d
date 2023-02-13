func void DIA_MARVIN_LAUGH() {
    var int RND_CLOWN2;
    var int RND_CLOWN;
    RND_CLOWN = HLP_RANDOM(9);
    if (((RND_CLOWN) == (7)) || ((RND_CLOWN) == (1))) {
        PRINTD("Marvin sie œmieje");
        MDL_STARTFACEANI(OTHER, S_SMILE, 1065353216, -1082130432);
        RND_CLOWN2 = HLP_RANDOM(3);
        if ((RND_CLOWN2) == (0)) {
            B_SAY(OTHER, SELF, "$MARVIN_LAUGH01");
        } else if ((RND_CLOWN2) == (1)) {
            B_SAY(OTHER, SELF, "$MARVIN_LAUGH02");
        } else {
            B_SAY(OTHER, SELF, "$MARVIN_LAUGH03");
        };
    };
}

instance DIA_CLOWN_EXIT(C_INFO) {
    NPC = 53878;
    NR = 999;
    CONDITION = DIA_CLOWN_EXIT_CONDITION;
    INFORMATION = DIA_CLOWN_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_CLOWN_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_CLOWN_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_CLOWN_AMBIENT(C_INFO) {
    NPC = 53878;
    NR = 1;
    CONDITION = DIA_CLOWN_AMBIENT_CONDITION;
    INFORMATION = DIA_CLOWN_AMBIENT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_JOKELISTEN;
}

func int DIA_CLOWN_AMBIENT_CONDITION() {
    return TRUE;
}

func void DIA_CLOWN_AMBIENT_INFO() {
    NPC_INITAMBIENTS(SELF, 6);
    if ((NPC_GETLASTAMBIENT(SELF)) == (1)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Clown_Ambient_13_01");
        AI_WAIT(OTHER, 1073741824);
        AI_OUTPUT(SELF, OTHER, "DIA_Clown_Ambient_13_03");
        if ((NS17_JOKEOCUNTER) == (0)) {
            NS17_JOKEOCUNTER = (NS17_JOKEOCUNTER) + (1);
            DIA_MARVIN_LAUGH();
        };
    };
    if ((NPC_GETLASTAMBIENT(SELF)) == (2)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Clown_Ambient_13_04");
        AI_WAIT(OTHER, 1073741824);
        AI_OUTPUT(SELF, OTHER, "DIA_Clown_Ambient_13_05");
        if ((NS17_JOKEOCUNTER) == (1)) {
            NS17_JOKEOCUNTER = (NS17_JOKEOCUNTER) + (1);
            DIA_MARVIN_LAUGH();
        };
    };
    if ((NPC_GETLASTAMBIENT(SELF)) == (3)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Clown_Ambient_13_06");
        AI_WAIT(OTHER, 1073741824);
        AI_OUTPUT(SELF, OTHER, "DIA_Clown_Ambient_13_07");
        if ((NS17_JOKEOCUNTER) == (2)) {
            NS17_JOKEOCUNTER = (NS17_JOKEOCUNTER) + (1);
            DIA_MARVIN_LAUGH();
        };
    };
    if ((NPC_GETLASTAMBIENT(SELF)) == (4)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Clown_Ambient_13_08");
        AI_WAIT(OTHER, 1073741824);
        AI_OUTPUT(SELF, OTHER, "DIA_Clown_Ambient_13_09");
        if ((NS17_JOKEOCUNTER) == (3)) {
            NS17_JOKEOCUNTER = (NS17_JOKEOCUNTER) + (1);
            DIA_MARVIN_LAUGH();
        };
    };
    if ((NPC_GETLASTAMBIENT(SELF)) == (5)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Clown_Ambient_13_10");
        AI_WAIT(OTHER, 1073741824);
        AI_OUTPUT(SELF, OTHER, "DIA_Clown_Ambient_13_11");
        if ((NS17_JOKEOCUNTER) == (4)) {
            NS17_JOKEOCUNTER = (NS17_JOKEOCUNTER) + (1);
            DIA_MARVIN_LAUGH();
        };
    };
    if ((NPC_GETLASTAMBIENT(SELF)) == (6)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Clown_Ambient_13_12");
        AI_OUTPUT(SELF, OTHER, "DIA_Clown_Ambient_13_13");
        AI_OUTPUT(SELF, OTHER, "DIA_Clown_Ambient_13_14");
        AI_OUTPUT(SELF, OTHER, "DIA_Clown_Ambient_13_15");
        AI_OUTPUT(SELF, OTHER, "DIA_Clown_Ambient_13_16");
        AI_OUTPUT(SELF, OTHER, "DIA_Clown_Ambient_13_17");
        AI_OUTPUT(SELF, OTHER, "DIA_Clown_Ambient_13_18");
        AI_OUTPUT(SELF, OTHER, "DIA_Clown_Ambient_13_19");
        AI_OUTPUT(SELF, OTHER, "DIA_Clown_Ambient_13_20");
        AI_OUTPUT(SELF, OTHER, "DIA_Clown_Ambient_13_21");
        AI_OUTPUT(SELF, OTHER, "DIA_Clown_Ambient_13_22");
        AI_OUTPUT(SELF, OTHER, "DIA_Clown_Ambient_13_23");
        if ((NS17_JOKEOCUNTER) == (5)) {
            NS17_JOKEOCUNTER = (NS17_JOKEOCUNTER) + (1);
            DIA_MARVIN_LAUGH();
        };
    };
}


func void ZS_SPEECH_HERALD() {
    PERCEPTION_SET_INTROVERT();
    NPC_PERCDISABLE(SELF, PERC_ASSESSQUIETSOUND);
    B_RESETALL(SELF);
    AI_SETWALKMODE(SELF, NPC_WALK);
    AI_GOTOWP(SELF, SELF.WP);
    AI_ALIGNTOWP(SELF);
}

func void ZS_SPEECH_HERALD_STARTSPEECH() {
    B_SPEECH_HERALD();
    NPC_SETSTATETIME(SELF, 0);
}

func void ZS_SPEECH_HERALD_RANDOMSPEECH() {
    var int RNDHERALDSPEECH;
    RNDHERALDSPEECH = HLP_RANDOM(100);
    if ((NPC_GETSTATETIME(SELF)) >= (85)) {
        if ((KAPITEL) <= (4)) {
            if (((RNDHERALDSPEECH) >= (0)) && ((RNDHERALDSPEECH) < (33))) {
                if ((HERALD_SPEECH_RANDOM_01) == (FALSE)) {
                    HERALD_SPEECH_RANDOM_01 = TRUE;
                };
            } else if (((RNDHERALDSPEECH) >= (33)) && ((RNDHERALDSPEECH) < (66))) {
                if ((HERALD_SPEECH_RANDOM_02) == (FALSE)) {
                    HERALD_SPEECH_RANDOM_02 = TRUE;
                };
            } else if (((RNDHERALDSPEECH) >= (66)) && ((RNDHERALDSPEECH) <= (100))) {
                if ((HERALD_SPEECH_RANDOM_03) == (FALSE)) {
                    HERALD_SPEECH_RANDOM_03 = TRUE;
                };
            };
            ZS_SPEECH_HERALD_STARTSPEECH();
        } else if ((KAPITEL) == (5)) {
            if (((RNDHERALDSPEECH) >= (0)) && ((RNDHERALDSPEECH) < (12))) {
                if ((HERALD_SPEECH_RANDOM_01) == (FALSE)) {
                    HERALD_SPEECH_RANDOM_01 = TRUE;
                };
            } else if (((RNDHERALDSPEECH) >= (12)) && ((RNDHERALDSPEECH) <= (24))) {
                if ((HERALD_SPEECH_RANDOM_03) == (FALSE)) {
                    HERALD_SPEECH_RANDOM_03 = TRUE;
                };
            } else if (((RNDHERALDSPEECH) >= (24)) && ((RNDHERALDSPEECH) < (62))) {
                if ((HERALD_SPEECH_RANDOM_04) == (FALSE)) {
                    HERALD_SPEECH_RANDOM_04 = TRUE;
                };
            } else if (((RNDHERALDSPEECH) >= (62)) && ((RNDHERALDSPEECH) <= (100))) {
                if ((HERALD_SPEECH_RANDOM_05) == (FALSE)) {
                    HERALD_SPEECH_RANDOM_05 = TRUE;
                };
            };
            ZS_SPEECH_HERALD_STARTSPEECH();
        };
    };
}

func void ZS_SPEECH_HERALD_STORYSPEECH() {
    var int RNDHERALDSPEECHSTORY;
    if ((((((LOG_GETSTATUS(MIS_Q307)) == (LOG_SUCCESS)) && ((KAPITEL) != (5))) || (((LOG_GETSTATUS(MIS_Q312)) == (LOG_RUNNING)) || ((LOG_GETSTATUS(MIS_Q308)) == (LOG_RUNNING)))) || ((LOG_GETSTATUS(MIS_Q404)) == (LOG_SUCCESS))) || (((LOG_GETSTATUS(MIS_Q404)) == (LOG_SUCCESS)) && ((KAPITEL) < (5)))) {
        if ((NPC_GETSTATETIME(SELF)) >= (85)) {
            RNDHERALDSPEECHSTORY = HLP_RANDOM(100);
            if (((RNDHERALDSPEECHSTORY) >= (0)) && ((RNDHERALDSPEECHSTORY) < (25))) {
                if ((((HERALD_SPEECH_STORY_01) == (FALSE)) && ((LOG_GETSTATUS(MIS_Q307)) == (LOG_SUCCESS))) && ((KAPITEL) != (5))) {
                    HERALD_SPEECH_STORY_01 = TRUE;
                    ZS_SPEECH_HERALD_STARTSPEECH();
                } else {
                    ZS_SPEECH_HERALD_RANDOMSPEECH();
                };
            } else if (((RNDHERALDSPEECHSTORY) >= (25)) && ((RNDHERALDSPEECHSTORY) < (50))) {
                if ((((HERALD_SPEECH_STORY_02) == (FALSE)) && ((LOG_GETSTATUS(MIS_Q312)) == (LOG_RUNNING))) || (((HERALD_SPEECH_STORY_02) == (FALSE)) && ((LOG_GETSTATUS(MIS_Q308)) == (LOG_RUNNING)))) {
                    HERALD_SPEECH_STORY_02 = TRUE;
                    ZS_SPEECH_HERALD_STARTSPEECH();
                } else {
                    ZS_SPEECH_HERALD_RANDOMSPEECH();
                };
            } else if (((RNDHERALDSPEECHSTORY) >= (50)) && ((RNDHERALDSPEECHSTORY) < (75))) {
                if (((HERALD_SPEECH_STORY_03) == (FALSE)) && ((LOG_GETSTATUS(MIS_Q404)) == (LOG_SUCCESS))) {
                    HERALD_SPEECH_STORY_03 = TRUE;
                    ZS_SPEECH_HERALD_STARTSPEECH();
                } else {
                    ZS_SPEECH_HERALD_RANDOMSPEECH();
                };
            } else if (((RNDHERALDSPEECHSTORY) >= (75)) && ((RNDHERALDSPEECHSTORY) <= (100))) {
                if ((((HERALD_SPEECH_STORY_04) == (FALSE)) && ((LOG_GETSTATUS(MIS_Q404)) == (LOG_SUCCESS))) && ((KAPITEL) < (5))) {
                    HERALD_SPEECH_STORY_04 = TRUE;
                    ZS_SPEECH_HERALD_STARTSPEECH();
                } else {
                    ZS_SPEECH_HERALD_RANDOMSPEECH();
                };
            } else {
                PRINTD("Nie nie wylosowa³o z story!");
                ZS_SPEECH_HERALD_RANDOMSPEECH();
            };
        };
    };
    ZS_SPEECH_HERALD_RANDOMSPEECH();
}

func int ZS_SPEECH_HERALD_LOOP() {
    ZS_SPEECH_HERALD_STORYSPEECH();
    return LOOP_CONTINUE;
}

func void ZS_SPEECH_HERALD_END() {
}


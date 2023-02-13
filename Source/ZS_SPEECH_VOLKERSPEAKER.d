func void ZS_SPEECH_VOLKERSPEAKER() {
    PERCEPTION_SET_NORMAL();
    NPC_PERCDISABLE(SELF, PERC_ASSESSQUIETSOUND);
    B_RESETALL(SELF);
    AI_SETWALKMODE(SELF, NPC_WALK);
    AI_GOTOWP(SELF, SELF.WP);
    AI_ALIGNTOWP(SELF);
}

func int ZS_SPEECH_VOLKERSPEAKER_LOOP() {
    if (((ISINCAMERA) == (FALSE)) && (INFOMANAGER_HASFINISHED())) {
        if ((NPC_GETSTATETIME(SELF)) >= (6)) {
            if (((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(NONE_13398_VOLKERGUARD))) && ((SQ505_WAITVOLKERGUARD_M3) == (2))) {
                if ((SELF.AIVAR[19]) > (5)) {
                    SELF.AIVAR[19] = 0;
                };
            } else if ((SELF.AIVAR[19]) > (13)) {
                SELF.AIVAR[19] = 0;
            };
            B_SPEECH_VOLKERSPEAKER(SELF.AIVAR[19]);
            SELF.AIVAR[19] = (SELF.AIVAR[19]) + (1);
            NPC_SETSTATETIME(SELF, 0);
        };
    };
    return LOOP_CONTINUE;
}

func void ZS_SPEECH_VOLKERSPEAKER_END() {
}

func void ZS_SPEECH_VOLKERSPEAKER2() {
    PERCEPTION_SET_NORMAL();
    NPC_PERCDISABLE(SELF, PERC_ASSESSQUIETSOUND);
    B_RESETALL(SELF);
    AI_SETWALKMODE(SELF, NPC_WALK);
    AI_GOTOWP(SELF, SELF.WP);
    AI_ALIGNTOWP(SELF);
}

func int ZS_SPEECH_VOLKERSPEAKER2_LOOP() {
    if (((ISINCAMERA) == (FALSE)) && (INFOMANAGER_HASFINISHED())) {
        if ((NPC_GETSTATETIME(SELF)) >= (6)) {
            if (((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(NONE_13398_VOLKERGUARD))) && ((SQ505_WAITVOLKERGUARD_M3) == (2))) {
                if ((SELF.AIVAR[19]) > (5)) {
                    SELF.AIVAR[19] = 0;
                };
            } else if ((SELF.AIVAR[19]) > (13)) {
                SELF.AIVAR[19] = 0;
            };
            B_SPEECH_VOLKERSPEAKER2(SELF.AIVAR[19]);
            SELF.AIVAR[19] = (SELF.AIVAR[19]) + (1);
            NPC_SETSTATETIME(SELF, 0);
        };
    };
    return LOOP_CONTINUE;
}

func void ZS_SPEECH_VOLKERSPEAKER2_END() {
}

func void ZS_SPEECH_VOLKERSPEAKER3() {
    PERCEPTION_SET_NORMAL();
    NPC_PERCDISABLE(SELF, PERC_ASSESSQUIETSOUND);
    B_RESETALL(SELF);
    AI_SETWALKMODE(SELF, NPC_WALK);
    AI_GOTOWP(SELF, SELF.WP);
    AI_ALIGNTOWP(SELF);
}

func int ZS_SPEECH_VOLKERSPEAKER3_LOOP() {
    if (((ISINCAMERA) == (FALSE)) && (INFOMANAGER_HASFINISHED())) {
        if ((NPC_GETSTATETIME(SELF)) >= (6)) {
            if (((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(NONE_13391_VOLKERGUARD))) && ((SQ505_WAITVOLKERGUARD_M3) == (2))) {
                if ((SELF.AIVAR[19]) > (5)) {
                    SELF.AIVAR[19] = 0;
                };
            } else if ((SELF.AIVAR[19]) > (13)) {
                SELF.AIVAR[19] = 0;
            };
            B_SPEECH_VOLKERSPEAKER3(SELF.AIVAR[19]);
            SELF.AIVAR[19] = (SELF.AIVAR[19]) + (1);
            NPC_SETSTATETIME(SELF, 0);
        };
    };
    return LOOP_CONTINUE;
}

func void ZS_SPEECH_VOLKERSPEAKER3_END() {
}


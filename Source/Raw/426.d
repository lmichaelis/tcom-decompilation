instance DIA_Q308_REFUGEEHELPERS_GOAWAY(C_INFO) {
    NR = 1;
    CONDITION = DIA_Q308_REFUGEEHELPERS_GOAWAY_CONDITION;
    INFORMATION = DIA_Q308_REFUGEEHELPERS_GOAWAY_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_Q308_REFUGEEHELPERS_GOAWAY_CONDITION() {
    if (NPC_ISINSTATE(SELF, 0xf09f)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_Q308_REFUGEEHELPERS_GOAWAY_INFO() {
    RND_Q308_REFUGEEHELPER = HLP_RANDOM(2);
    if ((SELF.GUILD) == (GIL_MIL)) {
        if ((OTHER.GUILD) == (GIL_MIL)) {
            if ((RND_Q308_REFUGEEHELPER) == (0)) {
                AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
                B_SAY(SELF, OTHER, "$DIA_Q308_RefugeeHelpers_GoAway_03_01");
            } else if ((RND_Q308_REFUGEEHELPER) == (1)) {
                AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
                B_SAY(SELF, OTHER, "$DIA_Q308_RefugeeHelpers_GoAway_03_02");
            };
        } else if ((OTHER.GUILD) == (GIL_SLD)) {
            if ((RND_Q308_REFUGEEHELPER) == (0)) {
                AI_STARTFACEANI(SELF, "S_ANGRY", 1, -(1));
                B_SAY(SELF, OTHER, "$DIA_Q308_RefugeeHelpers_GoAway_03_03");
            } else if ((RND_Q308_REFUGEEHELPER) == (1)) {
                AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
                B_SAY(SELF, OTHER, "$DIA_Q308_RefugeeHelpers_GoAway_03_04");
            };
        };
    };
    if ((SELF.GUILD) == (GIL_SLD)) {
        if ((OTHER.GUILD) == (GIL_MIL)) {
            if ((RND_Q308_REFUGEEHELPER) == (0)) {
                AI_STARTFACEANI(SELF, "S_ANGRY", 1, -(1));
                B_SAY(SELF, OTHER, "$DIA_Q308_RefugeeHelpers_GoAway_03_05");
            } else if ((RND_Q308_REFUGEEHELPER) == (1)) {
                AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
                B_SAY(SELF, OTHER, "$DIA_Q308_RefugeeHelpers_GoAway_03_06");
            };
        } else if ((OTHER.GUILD) == (GIL_SLD)) {
            if ((RND_Q308_REFUGEEHELPER) == (0)) {
                AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
                B_SAY(SELF, OTHER, "$DIA_Q308_RefugeeHelpers_GoAway_03_07");
            } else if ((RND_Q308_REFUGEEHELPER) == (1)) {
                AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
                B_SAY(SELF, OTHER, "$DIA_Q308_RefugeeHelpers_GoAway_03_08");
            };
        };
    };
    AI_RESETFACEANI(SELF);
    AI_STOPPROCESSINFOS(SELF);
}

var int DIA_Q308_REFUGEEHELPERS_GOAWAY_INFO.RND_Q308_REFUGEEHELPER = 0;
func void B_ASSIGNAMBIENTINFOS_Q308_REFUGEEHELPERS(var C_NPC SLF) {
    DIA_Q308_REFUGEEHELPERS_GOAWAY.NPC = HLP_GETINSTANCEID(SLF);
}


var int ZSTALKBUGFIX;
func void ZS_TALK() {
    var C_NPC TARGET;
    if ((OTHER.AIVAR[94]) == (TRUE)) {
        OTHER.AIVAR[94] = 0;
    };
    if ((OTHER.AIVAR[95]) == (TRUE)) {
        OTHER.AIVAR[95] = 0;
    };
    if (((FMQ001_BLOCKDIALOGUE) == (TRUE)) && ((HLP_GETINSTANCEID(SELF)) != (HLP_GETINSTANCEID(MIL_4043_INSTRUCTOR)))) {
        return;
    };
    if ((((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(KDF_9004_TENGRAL))) || ((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(KDW_865_LAUDUS)))) || ((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(KDF_6404_TRIMEGISTO_Q602)))) {
        MDL_REMOVEOVERLAYMDS(SELF, "HumanS_MageSpeech.mds");
    };
    if ((OTHER.AIVAR[4]) == (TRUE)) {
        return;
    };
    SELF.AIVAR[4] = TRUE;
    OTHER.AIVAR[4] = TRUE;
    if ((SELF.GUILD) < (GIL_SEPERATOR_HUM)) {
        if (C_BODYSTATECONTAINS(SELF, BS_SIT)) {
            TARGET = NPC_GETLOOKATTARGET(SELF);
            if (!(HLP_ISVALIDNPC(TARGET))) {
                if (((((HLP_GETINSTANCEID(SELF)) != (HLP_GETINSTANCEID(NONE_1396_INEXTREMO_FLEX_SACK))) && ((HLP_GETINSTANCEID(SELF)) != (HLP_GETINSTANCEID(NONE_13336_DOGGO)))) && ((HLP_GETINSTANCEID(SELF)) != (HLP_GETINSTANCEID(VLK_13641_OLDDOG)))) && ((HLP_GETINSTANCEID(SELF)) != (HLP_GETINSTANCEID(SLD_1009_CARAMON_Q602)))) {
                    AI_LOOKATNPC(SELF, OTHER);
                };
            };
        } else if ((((((HLP_GETINSTANCEID(SELF)) != (HLP_GETINSTANCEID(NONE_1396_INEXTREMO_FLEX_SACK))) && ((HLP_GETINSTANCEID(SELF)) != (HLP_GETINSTANCEID(NONE_13336_DOGGO)))) && ((HLP_GETINSTANCEID(SELF)) != (HLP_GETINSTANCEID(VLK_13641_OLDDOG)))) && ((HLP_GETINSTANCEID(SELF)) != (HLP_GETINSTANCEID(SLD_1009_CARAMON_Q602)))) && (!(C_IAMMANNEQUIN(SELF)))) {
            B_LOOKATNPC(SELF, OTHER);
        };
        AI_REMOVEWEAPON(SELF);
    };
    if ((!(C_BODYSTATECONTAINS(SELF, BS_SIT))) && (!(C_IAMMANNEQUIN(SELF)))) {
        B_TURNTONPC(SELF, OTHER);
    };
    if (!(C_BODYSTATECONTAINS(OTHER, BS_SIT))) {
        B_TURNTONPC(OTHER, SELF);
        if ((NPC_GETDISTTONPC(OTHER, SELF)) < (80)) {
            AI_DODGE(OTHER);
        };
    };
    if ((SELF.GUILD) < (GIL_SEPERATOR_HUM)) {
        if (((NPC_GETATTITUDE(SELF, OTHER)) == (ATT_ANGRY)) || ((NPC_GETATTITUDE(SELF, OTHER)) == (ATT_HOSTILE))) {
            MDL_STARTFACEANI(SELF, S_ANGRY, 1065353216, -1082130432);
        };
        B_ASSIGNAMBIENTINFOS(SELF, FALSE);
        if ((SELF.AIVAR[15]) == (TRUE)) {
            B_ADDON_GIVEPOTION(SELF);
        };
        if ((C_NPCISTOUGHGUY(SELF)) && ((SELF.AIVAR[25]) == (FALSE))) {
            B_ASSIGNTOUGHGUYNEWS(SELF);
        };
        if (C_NPCHASAMBIENTNEWS(SELF)) {
            B_ASSIGNAMBIENTNEWS(SELF);
        };
    };
    B_STOPLOOKAT(SELF);
    MDL_STARTFACEANI(SELF, S_NEUTRAL, 1065353216, -1082130432);
    AI_PROCESSINFOS(SELF);
    ZSTALKBUGFIX = FALSE;
}

func int ZS_TALK_LOOP() {
    if ((INFOMANAGER_HASFINISHED()) && ((ZSTALKBUGFIX) == (TRUE))) {
        SELF.AIVAR[4] = FALSE;
        OTHER.AIVAR[4] = FALSE;
        SELF.AIVAR[3] = FALSE;
        SELF.AIVAR[5] = TRUE;
        if ((SELF.GUILD) < (GIL_SEPERATOR_HUM)) {
            B_STOPLOOKAT(SELF);
            MDL_STARTFACEANI(SELF, S_NEUTRAL, 1065353216, -1082130432);
        };
        return LOOP_END;
    };
    ZSTALKBUGFIX = TRUE;
    return LOOP_CONTINUE;
}

func void ZS_TALK_END() {
    NPC_SETREFUSETALK(OTHER, 20);
    if ((C_NPCISBOTHEREDBYPLAYERROOMGUILD(SELF)) || (((WLD_GETPLAYERPORTALGUILD()) == (GIL_PUBLIC)) && ((NPC_GETATTITUDE(SELF, OTHER)) != (ATT_FRIENDLY)))) {
        AI_STARTSTATE(SELF, 61582, 0, "");
    };
    if ((HERO.GUILD) == (GIL_MIL)) {
        if ((((((SELF.GUILD) == (GIL_MIL)) && ((SELF.AIVAR[15]) == (FALSE))) && ((CURRENTLEVEL) == (ARCHOLOS_ZEN))) && ((HLP_GETINSTANCEID(SELF)) != (HLP_GETINSTANCEID(MIL_4017_ARWID)))) && ((HLP_GETINSTANCEID(SELF)) != (HLP_GETINSTANCEID(MIL_4017_ARWID_KQ402)))) {
            B_MILITIAGOODBYE();
        };
    };
    if (((HLP_GETINSTANCEID(SELF)) != (HLP_GETINSTANCEID(NONE_13336_DOGGO))) && ((HLP_GETINSTANCEID(SELF)) != (HLP_GETINSTANCEID(VLK_13641_OLDDOG)))) {
        AI_RESETFACEANI(SELF);
    };
    if (TRIA_RUNNING) {
        MEM_ERROR("Trialog has not finished! It has to be ended with TRIA_Finish()");
    };
}


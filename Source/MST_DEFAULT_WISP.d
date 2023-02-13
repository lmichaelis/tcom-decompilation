prototype MST_DEFAULT_WISP(C_NPC) {
    NAME[0] = NAME_WISP;
    GUILD = GIL_BLOODFLY;
    AIVAR[43] = ID_WISP;
    LEVEL = 4;
    ATTRIBUTE[4] = 20;
    ATTRIBUTE[5] = 20;
    ATTRIBUTE[1] = 40;
    ATTRIBUTE[0] = 40;
    ATTRIBUTE[3] = 100;
    ATTRIBUTE[2] = 100;
    PROTECTION[1] = 0;
    PROTECTION[2] = 0;
    PROTECTION[6] = 0;
    PROTECTION[3] = 0;
    PROTECTION[4] = 0;
    PROTECTION[5] = 0;
    DAMAGETYPE = DAM_EDGE;
    FIGHT_TACTIC = FAI_BLOODFLY;
    SENSES = ((SENSE_HEAR) | (SENSE_SEE)) | (SENSE_SMELL);
    SENSES_RANGE = PERC_DIST_MONSTER_ACTIVE_MAX;
    AIVAR[26] = TRUE;
    AIVAR[27] = FOLLOWTIME_SHORT;
    AIVAR[28] = TRUE;
    AIVAR[50] = FALSE;
    START_AISTATE = ZS_MM_ALLSCHEDULER;
    AIVAR[38] = ONLYROUTINE;
}

func void B_SETVISUALS_WISP() {
    MDL_SETVISUAL(SELF, "Irrlicht.mds");
    MDL_SETVISUALBODY(SELF, "Irrlicht_Body", DEFAULT, DEFAULT, "", DEFAULT, DEFAULT, -(1));
}

instance NOEXP_SKELETON(MST_DEFAULT_SKELETON) {
    MST_DEFAULT_SKELETON();
    NAME[0] = RESERVED_CONST_STRING_37;
    LEVEL = 0;
    MDL_SETVISUAL(NOEXP_SKELETON, HUMANSMDS);
    MDL_APPLYOVERLAYMDS(NOEXP_SKELETON, HUMANS1HST1);
    MDL_APPLYOVERLAYMDS(NOEXP_SKELETON, HUMANS2HST2);
    MDL_APPLYOVERLAYMDS(NOEXP_SKELETON, HUMANSBOWT1);
    MDL_APPLYOVERLAYMDS(NOEXP_SKELETON, HUMANSCBOWT1);
    MDL_APPLYOVERLAYMDS(NOEXP_SKELETON, HUMANSSKELETONMDS);
    MDL_SETVISUALBODY(NOEXP_SKELETON, RESERVED_CONST_STRING_34, DEFAULT, DEFAULT, RESERVED_CONST_STRING_30, DEFAULT, DEFAULT, -(1));
    EQUIPITEM(NOEXP_SKELETON, 34019);
}

instance NOEXP_SKELETON_ARCHER(C_NPC) {
    GUILD = GIL_DRACONIAN;
    AIVAR[43] = ID_SKELETON;
    ATTRIBUTE[4] = 100;
    ATTRIBUTE[5] = 120;
    ATTRIBUTE[1] = 150;
    ATTRIBUTE[0] = 150;
    ATTRIBUTE[3] = 0;
    ATTRIBUTE[2] = 0;
    PROTECTION[1] = 80;
    PROTECTION[2] = 115;
    PROTECTION[6] = 120;
    PROTECTION[3] = 30;
    PROTECTION[4] = 10;
    PROTECTION[5] = 50;
    DAMAGETYPE = DAM_EDGE;
    FIGHT_TACTIC = FAI_HUMAN_RANGED;
    SENSES = ((SENSE_HEAR) | (SENSE_SEE)) | (SENSE_SMELL);
    SENSES_RANGE = PERC_DIST_MONSTER_ACTIVE_MAX;
    AIVAR[27] = FOLLOWTIME_MEDIUM;
    AIVAR[28] = FALSE;
    START_AISTATE = ZS_SKELETONARCHER;
    NAME[0] = RESERVED_CONST_STRING_36;
    LEVEL = 0;
    MDL_SETVISUAL(NOEXP_SKELETON_ARCHER, HUMANSMDS);
    MDL_APPLYOVERLAYMDS(NOEXP_SKELETON_ARCHER, HUMANS1HST1);
    MDL_APPLYOVERLAYMDS(NOEXP_SKELETON_ARCHER, HUMANS2HST2);
    MDL_APPLYOVERLAYMDS(NOEXP_SKELETON_ARCHER, HUMANSBOWT1);
    MDL_APPLYOVERLAYMDS(NOEXP_SKELETON_ARCHER, HUMANSCBOWT1);
    MDL_APPLYOVERLAYMDS(NOEXP_SKELETON_ARCHER, HUMANSSKELETONMDS);
    MDL_SETVISUALBODY(NOEXP_SKELETON_ARCHER, RESERVED_CONST_STRING_34, DEFAULT, DEFAULT, RESERVED_CONST_STRING_30, DEFAULT, DEFAULT, -(1));
    CREATEINVITEMS(NOEXP_SKELETON_ARCHER, 34383, 10);
    EQUIPITEM(NOEXP_SKELETON_ARCHER, 39766);
}

func void ZS_MM_RTN_FRIENDLYWISP() {
    NPC_SETPERCTIME(SELF, 1065353216);
    NPC_PERCENABLE(SELF, PERC_ASSESSPLAYER, 91632);
    NPC_PERCENABLE(SELF, PERC_ASSESSENEMY, 91629);
    NPC_PERCENABLE(SELF, PERC_ASSESSMAGIC, 43309);
    NPC_PERCENABLE(SELF, PERC_ASSESSDAMAGE, 91628);
    NPC_PERCENABLE(SELF, PERC_ASSESSFIGHTSOUND, 91631);
    NPC_PERCENABLE(SELF, PERC_ASSESSTALK, 41645);
    B_SETATTITUDE(SELF, ATT_FRIENDLY);
    AI_STANDUP(SELF);
    AI_SETWALKMODE(SELF, NPC_RUN);
    if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), SELF.WP)) == (FALSE)) {
        AI_GOTOWP(SELF, SELF.WP);
    };
    SELF.AIVAR[19] = NOTINPOS;
}

func int ZS_MM_RTN_FRIENDLYWISP_LOOP() {
    var int RANDOMMOVE;
    var int WANDERTIME;
    if ((SELF.AIVAR[19]) == (NOTINPOS)) {
        WANDERTIME = HLP_RANDOM(5);
        NPC_SETSTATETIME(SELF, 0);
        SELF.AIVAR[19] = ISINPOS;
    };
    if ((NPC_GETSTATETIME(SELF)) > (WANDERTIME)) {
        if (WLD_ISNEXTFPAVAILABLE(SELF, "FP_ROAM")) {
            AI_GOTONEXTFP(SELF, "FP_ROAM");
        };
        SELF.AIVAR[19] = NOTINPOS;
    };
    if ((HLP_RANDOM(1000)) <= (5)) {
        RANDOMMOVE = HLP_RANDOM(3);
        if ((RANDOMMOVE) == (0)) {
            AI_PLAYANI(SELF, "R_ROAM1");
        };
        if ((RANDOMMOVE) == (1)) {
            AI_PLAYANI(SELF, "R_ROAM2");
        };
        if ((RANDOMMOVE) == (2)) {
            AI_PLAYANI(SELF, "R_ROAM3");
        };
    };
    return LOOP_CONTINUE;
}

func void ZS_MM_RTN_FRIENDLYWISP_END() {
}

instance WISP_VZ(MST_DEFAULT_WISP) {
    MST_DEFAULT_WISP();
    LEVEL = 0;
    NPCTYPE = NPCTYPE_MAIN;
    FLAGS = 2;
    B_SETVISUALS_WISP();
    B_SETATTITUDE(WISP_VZ, ATT_FRIENDLY);
    NPC_SETTOFISTMODE(WISP_VZ);
    AIVAR[71] = TRUE;
    START_AISTATE = ZS_MM_RTN_FRIENDLYWISP;
}


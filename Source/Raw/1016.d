prototype MST_DEFAULT_SKELETON(C_NPC) {
    NAME[0] = NAME_SKELETONWARRIOR;
    GUILD = GIL_SKELETON;
    AIVAR[43] = ID_SKELETON;
    LEVEL = 30;
    ATTRIBUTE[4] = 100;
    ATTRIBUTE[5] = 150;
    ATTRIBUTE[1] = 150;
    ATTRIBUTE[0] = 150;
    ATTRIBUTE[3] = 0;
    ATTRIBUTE[2] = 0;
    PROTECTION[1] = 90;
    PROTECTION[2] = 120;
    PROTECTION[6] = 170;
    PROTECTION[3] = 30;
    PROTECTION[4] = 10;
    PROTECTION[5] = 50;
    DAMAGETYPE = DAM_EDGE;
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    SENSES = ((SENSE_HEAR) | (SENSE_SEE)) | (SENSE_SMELL);
    SENSES_RANGE = PERC_DIST_MONSTER_ACTIVE_MAX;
    AIVAR[27] = FOLLOWTIME_MEDIUM;
    AIVAR[28] = FALSE;
    START_AISTATE = ZS_MM_ALLSCHEDULER;
    AIVAR[32] = ONLYROUTINE;
}

prototype MST_DEFAULT_SKELETON_WEAK(C_NPC) {
    NAME[0] = NAME_SKELETON;
    GUILD = GIL_SKELETON;
    AIVAR[43] = ID_SKELETON;
    LEVEL = 10;
    ATTRIBUTE[4] = 24;
    ATTRIBUTE[5] = 35;
    ATTRIBUTE[1] = 35;
    ATTRIBUTE[0] = 35;
    ATTRIBUTE[3] = 0;
    ATTRIBUTE[2] = 0;
    PROTECTION[1] = 15;
    PROTECTION[2] = 30;
    PROTECTION[6] = 50;
    PROTECTION[3] = 30;
    PROTECTION[4] = 0;
    PROTECTION[5] = 30;
    DAMAGETYPE = DAM_BLUNT;
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    SENSES = ((SENSE_HEAR) | (SENSE_SEE)) | (SENSE_SMELL);
    SENSES_RANGE = PERC_DIST_MONSTER_ACTIVE_MAX;
    AIVAR[27] = FOLLOWTIME_MEDIUM;
    AIVAR[28] = FALSE;
    START_AISTATE = ZS_MM_ALLSCHEDULER;
    AIVAR[32] = ONLYROUTINE;
}

prototype MST_DEFAULT_SKELETON_ARCHER(C_NPC) {
    GUILD = GIL_DRACONIAN;
    AIVAR[43] = ID_SKELETON;
    LEVEL = 30;
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
}

func void B_SETVISUALS_SKELETON() {
    MDL_SETVISUAL(SELF, HUMANSMDS);
    MDL_APPLYOVERLAYMDS(SELF, HUMANS1HST1);
    MDL_APPLYOVERLAYMDS(SELF, HUMANS2HST2);
    MDL_APPLYOVERLAYMDS(SELF, HUMANSBOWT1);
    MDL_APPLYOVERLAYMDS(SELF, HUMANSCBOWT1);
    MDL_APPLYOVERLAYMDS(SELF, HUMANSSKELETONMDS);
    MDL_SETVISUALBODY(SELF, "Ske_Body2", DEFAULT, DEFAULT, "", DEFAULT, DEFAULT, -(1));
}

func void B_SETVISUALS_LESSER_SKELETON() {
    MDL_SETVISUAL(SELF, HUMANSMDS);
    MDL_APPLYOVERLAYMDS(SELF, HUMANS1HST1);
    MDL_APPLYOVERLAYMDS(SELF, HUMANS2HST2);
    MDL_APPLYOVERLAYMDS(SELF, HUMANSBOWT1);
    MDL_APPLYOVERLAYMDS(SELF, HUMANSCBOWT1);
    MDL_APPLYOVERLAYMDS(SELF, HUMANSSKELETONMDS);
    MDL_SETVISUALBODY(SELF, "Ske_Body", DEFAULT, DEFAULT, "", DEFAULT, DEFAULT, -(1));
}

func void B_SETVISUALS_LESSER_SKELETON_SUM() {
    MDL_SETVISUAL(SELF, HUMANSMDS);
    MDL_APPLYOVERLAYMDS(SELF, HUMANS1HST1);
    MDL_APPLYOVERLAYMDS(SELF, HUMANS2HST2);
    MDL_APPLYOVERLAYMDS(SELF, HUMANSBOWT1);
    MDL_APPLYOVERLAYMDS(SELF, HUMANSCBOWT1);
    MDL_APPLYOVERLAYMDS(SELF, HUMANSSKELETONMDS);
    MDL_SETVISUALBODY(SELF, "SKE_SUM_BODY", DEFAULT, DEFAULT, "", DEFAULT, DEFAULT, -(1));
}

func void B_SETVISUALS_SCOUT_SKELETON() {
    MDL_SETVISUAL(SELF, HUMANSMDS);
    MDL_APPLYOVERLAYMDS(SELF, HUMANS1HST1);
    MDL_APPLYOVERLAYMDS(SELF, HUMANS2HST2);
    MDL_APPLYOVERLAYMDS(SELF, HUMANSBOWT1);
    MDL_APPLYOVERLAYMDS(SELF, HUMANSCBOWT1);
    MDL_APPLYOVERLAYMDS(SELF, HUMANSSKELETONMDS);
    MDL_SETVISUALBODY(SELF, "ske_scout_body", DEFAULT, DEFAULT, "", DEFAULT, DEFAULT, -(1));
}

func void B_SETVISUALS_DAMAGED_SKELETON() {
    MDL_SETVISUAL(SELF, HUMANSMDS);
    MDL_APPLYOVERLAYMDS(SELF, HUMANSSKELETONMDS);
    MDL_SETVISUALBODY(SELF, "SKE_BODY_DAMAGED", DEFAULT, DEFAULT, "", DEFAULT, DEFAULT, -(1));
}

func void B_SETVISUALS_DAMAGED_SKELETON2() {
    MDL_SETVISUAL(SELF, HUMANSMDS);
    MDL_APPLYOVERLAYMDS(SELF, HUMANSSKELETONMDS);
    MDL_SETVISUALBODY(SELF, "SKE_BODY_DAMAGED2", DEFAULT, DEFAULT, "", DEFAULT, DEFAULT, -(1));
}

func void B_SETVISUALS_HEADLESS_SKELETON() {
    MDL_SETVISUAL(SELF, HUMANSMDS);
    MDL_APPLYOVERLAYMDS(SELF, HUMANSSKELETONMDS);
    MDL_SETVISUALBODY(SELF, "SKE_BODY_HEADLESS", DEFAULT, DEFAULT, "", DEFAULT, DEFAULT, -(1));
}

func void B_SETVISUALS_SKELETONRISE() {
    MDL_SETVISUAL(SELF, HUMANSMDS);
    MDL_APPLYOVERLAYMDS(SELF, HUMANS1HST1);
    MDL_APPLYOVERLAYMDS(SELF, HUMANS2HST2);
    MDL_APPLYOVERLAYMDS(SELF, HUMANSBOWT1);
    MDL_APPLYOVERLAYMDS(SELF, HUMANSCBOWT1);
    MDL_APPLYOVERLAYMDS(SELF, HUMANSSKELETONMDS);
    MDL_APPLYOVERLAYMDS(SELF, "HUMANS_NOSTUMBLE.mds");
    MDL_SETVISUALBODY(SELF, "Ske_Body2", DEFAULT, DEFAULT, "", DEFAULT, DEFAULT, -(1));
}

instance SKELETON(MST_DEFAULT_SKELETON) {
    MST_DEFAULT_SKELETON();
    B_SETVISUALS_SKELETON();
    EQUIPITEM(SKELETON, 0x84e3);
}

instance SKELETON_ARCHER(MST_DEFAULT_SKELETON_ARCHER) {
    MST_DEFAULT_SKELETON_ARCHER();
    NAME[0] = NAME_SKELETONARCHER;
    B_SETVISUALS_SCOUT_SKELETON();
    CREATEINVITEMS(SKELETON_ARCHER, 0x864f, 10);
    EQUIPITEM(SKELETON_ARCHER, 0x9b56);
}

instance SKELETON_CROSSBOWMAN(MST_DEFAULT_SKELETON_ARCHER) {
    MST_DEFAULT_SKELETON_ARCHER();
    NAME[0] = NAME_SKELETONCROSSBOWMAN;
    B_SETVISUALS_SCOUT_SKELETON();
    CREATEINVITEMS(SKELETON_CROSSBOWMAN, 0x8650, 10);
    EQUIPITEM(SKELETON_CROSSBOWMAN, 0x9b57);
}

instance SKELETON_BEFORE_QA303_01(MST_DEFAULT_SKELETON) {
    MST_DEFAULT_SKELETON();
    B_SETVISUALS_SKELETON();
    EQUIPITEM(SKELETON_BEFORE_QA303_01, 0x84e3);
}

instance SKELETON_BEFORE_QA303_02(MST_DEFAULT_SKELETON) {
    MST_DEFAULT_SKELETON();
    B_SETVISUALS_SKELETON();
    EQUIPITEM(SKELETON_BEFORE_QA303_02, 0x84e3);
}

instance SKELETON_BEFORE_QA303_03(MST_DEFAULT_SKELETON) {
    MST_DEFAULT_SKELETON();
    B_SETVISUALS_SKELETON();
    EQUIPITEM(SKELETON_BEFORE_QA303_03, 0x84e3);
}

instance SKELETON_QA303_01(MST_DEFAULT_SKELETON) {
    MST_DEFAULT_SKELETON();
    B_SETVISUALS_SKELETON();
    EQUIPITEM(SKELETON_QA303_01, 0x84e3);
}

instance SKELETON_QA303_02(MST_DEFAULT_SKELETON) {
    MST_DEFAULT_SKELETON();
    B_SETVISUALS_SKELETON();
    EQUIPITEM(SKELETON_QA303_02, 0x84e3);
}

instance SKELETON_QA303_03(MST_DEFAULT_SKELETON) {
    MST_DEFAULT_SKELETON();
    B_SETVISUALS_SKELETON();
    EQUIPITEM(SKELETON_QA303_03, 0x84e3);
}

const int SUMMONEDSKELETON_STR = 100;
const int SUMMONEDSKELETON_HP = 150;
const int SUMMONEDSKELETON_DEF_BLUNT = 125;
const int SUMMONEDSKELETON_DEF_EDGE = 125;
const int SUMMONEDSKELETON_DEF_POINT = 175;
const int SUMMONEDSKELETON_DEF_FIRE = 125;
const int SUMMONEDSKELETON_DEF_FLY = 125;
const int SUMMONEDSKELETON_DEF_MAGIC = 50;
instance SUMMONED_SKELETON(MST_DEFAULT_SKELETON) {
    MST_DEFAULT_SKELETON();
    NAME[0] = NAME_SKELETONSUMMONED;
    GUILD = GIL_SUMMONED_SKELETON;
    AIVAR[43] = ID_SUMMONED_SKELETON;
    LEVEL = 0;
    ATTRIBUTE[4] = (SUMMONEDSKELETON_STR) + (SUMMONER_SETBONUS_DAMAGE);
    ATTRIBUTE[5] = 150;
    ATTRIBUTE[1] = (SUMMONEDSKELETON_HP) + (SUMMONER_SETBONUS_HP);
    ATTRIBUTE[0] = (SUMMONEDSKELETON_HP) + (SUMMONER_SETBONUS_HP);
    PROTECTION[1] = (SUMMONEDSKELETON_DEF_BLUNT) + (SUMMONER_SETBONUS_DEF);
    PROTECTION[2] = (SUMMONEDSKELETON_DEF_EDGE) + (SUMMONER_SETBONUS_DEF);
    PROTECTION[6] = (SUMMONEDSKELETON_DEF_POINT) + (SUMMONER_SETBONUS_DEF);
    PROTECTION[3] = (SUMMONEDSKELETON_DEF_FIRE) + (SUMMONER_SETBONUS_DEF);
    PROTECTION[4] = (SUMMONEDSKELETON_DEF_FLY) + (SUMMONER_SETBONUS_DEF);
    PROTECTION[5] = (SUMMONEDSKELETON_DEF_MAGIC) + (SUMMONER_SETBONUS_DEF);
    FIGHT_TACTIC = FAI_HUMAN_NORMAL;
    B_SETVISUALS_LESSER_SKELETON_SUM();
    AIVAR[15] = TRUE;
    B_SETATTITUDE(SUMMONED_SKELETON, ATT_FRIENDLY);
    START_AISTATE = ZS_MM_RTN_SUMMONED;
    EQUIPITEM(SUMMONED_SKELETON, 0x84e4);
}

instance LESSER_SKELETON(MST_DEFAULT_SKELETON) {
    MST_DEFAULT_SKELETON();
    NAME[0] = NAME_SKELETONLESSER;
    LEVEL = 15;
    ATTRIBUTE[4] = 45;
    ATTRIBUTE[5] = 75;
    ATTRIBUTE[1] = 150;
    ATTRIBUTE[0] = 150;
    ATTRIBUTE[3] = 0;
    ATTRIBUTE[2] = 0;
    PROTECTION[1] = 50;
    PROTECTION[2] = 80;
    PROTECTION[6] = 130;
    PROTECTION[3] = 80;
    PROTECTION[4] = 80;
    FIGHT_TACTIC = FAI_HUMAN_NORMAL;
    B_SETVISUALS_LESSER_SKELETON();
    EQUIPITEM(LESSER_SKELETON, 0x84e0);
}

instance SCOUT_SKELETON(MST_DEFAULT_SKELETON) {
    MST_DEFAULT_SKELETON();
    NAME[0] = NAME_SKELETONSCOUT;
    LEVEL = 20;
    ATTRIBUTE[4] = 55;
    ATTRIBUTE[5] = 75;
    ATTRIBUTE[1] = 150;
    ATTRIBUTE[0] = 150;
    ATTRIBUTE[3] = 0;
    ATTRIBUTE[2] = 0;
    PROTECTION[1] = 65;
    PROTECTION[2] = 90;
    PROTECTION[6] = 100;
    PROTECTION[3] = 80;
    PROTECTION[4] = 80;
    FIGHT_TACTIC = FAI_HUMAN_NORMAL;
    B_SETVISUALS_SCOUT_SKELETON();
    EQUIPITEM(SCOUT_SKELETON, 0x84e6);
}

instance DAMAGED_SKELETON(MST_DEFAULT_SKELETON_WEAK) {
    MST_DEFAULT_SKELETON_WEAK();
    B_SETVISUALS_DAMAGED_SKELETON();
}

instance DAMAGED_SKELETON2(MST_DEFAULT_SKELETON_WEAK) {
    MST_DEFAULT_SKELETON_WEAK();
    B_SETVISUALS_DAMAGED_SKELETON2();
    EQUIPITEM(DAMAGED_SKELETON2, 0x9a9e);
}

instance DAMAGED_SKELETON3(MST_DEFAULT_SKELETON_WEAK) {
    MST_DEFAULT_SKELETON_WEAK();
    B_SETVISUALS_HEADLESS_SKELETON();
}

func void ZS_SKELETONDOWN() {
    SELF.SENSES = SENSE_SMELL;
    SELF.SENSES_RANGE = 0xdac;
    NPC_SETPERCTIME(SELF, 0x3f800000);
    NPC_PERCENABLE(SELF, PERC_ASSESSPLAYER, 0xc69e);
    NPC_PERCENABLE(SELF, PERC_ASSESSDAMAGE, 0xc69e);
    SELF.AIVAR[19] = NOTINPOS;
}

func int ZS_SKELETONDOWN_LOOP() {
    if ((SELF.AIVAR[19]) == (NOTINPOS)) {
        AI_PLAYANI(SELF, T_DEAD);
        SELF.AIVAR[19] = ISINPOS;
    };
    return LOOP_CONTINUE;
}

func void ZS_SKELETONDOWN_END() {
}

func void B_SKELETONRISE() {
    if (((NPC_GETDISTTONPC(SELF, HERO)) <= (600)) || ((SELF.ATTRIBUTE[0]) != (SELF.ATTRIBUTE[1]))) {
        AI_PLAYANI(SELF, "T_SPAWN");
        SELF.GUILD = GIL_SKELETON;
        NPC_SETTRUEGUILD(SELF, GIL_SKELETON);
        SELF.NAME[0] = NAME_SKELETON;
        SELF.FLAGS = 0;
        SELF.AIVAR[4] = FALSE;
        AI_STARTSTATE(SELF, 0x1661a, 0, "");
        SELF.BODYSTATEINTERRUPTABLEOVERRIDE = FALSE;
        SELF.START_AISTATE = ZS_MM_ALLSCHEDULER;
        SELF.AIVAR[32] = ONLYROUTINE;
        B_IMMEDIATEATTACKPLAYER(SELF, AR_KILL);
    };
}

instance SKELETON_RISE(MST_DEFAULT_SKELETON) {
    MST_DEFAULT_SKELETON();
    NAME[0] = "";
    GUILD = GIL_SKELETON;
    AIVAR[43] = ID_SKELETON;
    LEVEL = 30;
    FLAGS = NPC_FLAG_IMMORTAL;
    BODYSTATEINTERRUPTABLEOVERRIDE = TRUE;
    B_SETVISUALS_SKELETONRISE();
    START_AISTATE = ZS_SKELETONDOWN;
    AIVAR[32] = ONLYROUTINE;
    EQUIPITEM(SKELETON_RISE, 0x84e3);
}

instance SKELETON_SQ508_01(MST_DEFAULT_SKELETON) {
    MST_DEFAULT_SKELETON();
    NAME[0] = NAME_SKELETONARCHER;
    B_SETVISUALS_SCOUT_SKELETON();
    CREATEINVITEMS(SKELETON_SQ508_01, 0x864f, 10);
    EQUIPITEM(SKELETON_SQ508_01, 0x9b56);
}

instance SKELETON_SQ508_02(MST_DEFAULT_SKELETON) {
    MST_DEFAULT_SKELETON();
    NAME[0] = NAME_SKELETONARCHER;
    B_SETVISUALS_SCOUT_SKELETON();
    CREATEINVITEMS(SKELETON_SQ508_02, 0x864f, 10);
    EQUIPITEM(SKELETON_SQ508_02, 0x9b56);
}

instance SKELETON_SQ508_03(MST_DEFAULT_SKELETON) {
    MST_DEFAULT_SKELETON();
    B_SETVISUALS_SKELETON();
    EQUIPITEM(SKELETON_SQ508_03, 0x84e3);
}

instance SKELETON_SQ508_04(MST_DEFAULT_SKELETON) {
    MST_DEFAULT_SKELETON();
    B_SETVISUALS_SKELETON();
    EQUIPITEM(SKELETON_SQ508_04, 0x84e3);
}

instance SKELETON_SQ508_05(MST_DEFAULT_SKELETON) {
    MST_DEFAULT_SKELETON();
    B_SETVISUALS_SKELETON();
    EQUIPITEM(SKELETON_SQ508_05, 0x84e3);
}

instance SKELETON_VZ_STORY_01(MST_DEFAULT_SKELETON_WEAK) {
    MST_DEFAULT_SKELETON_WEAK();
    NAME[0] = NAME_SKELETON;
    B_SETVISUALS_DAMAGED_SKELETON();
}

instance SKELETON_VZ_STORY_02(MST_DEFAULT_SKELETON_WEAK) {
    MST_DEFAULT_SKELETON_WEAK();
    NAME[0] = NAME_SKELETON;
    B_SETVISUALS_DAMAGED_SKELETON2();
    EQUIPITEM(SKELETON_VZ_STORY_02, 0x9a9e);
}

instance SKELETON_VZ_STORY_03(MST_DEFAULT_SKELETON_WEAK) {
    MST_DEFAULT_SKELETON_WEAK();
    NAME[0] = NAME_SKELETON;
    B_SETVISUALS_HEADLESS_SKELETON();
    EQUIPITEM(SKELETON_VZ_STORY_03, 0x9a9e);
}

instance SKELETON_VZ_STORY_04(MST_DEFAULT_SKELETON_WEAK) {
    MST_DEFAULT_SKELETON_WEAK();
    NAME[0] = NAME_SKELETON;
    B_SETVISUALS_DAMAGED_SKELETON();
}

instance SKELETON_VZ_STORY_05(MST_DEFAULT_SKELETON_WEAK) {
    MST_DEFAULT_SKELETON_WEAK();
    NAME[0] = NAME_SKELETON;
    B_SETVISUALS_DAMAGED_SKELETON2();
    EQUIPITEM(SKELETON_VZ_STORY_05, 0x9a9e);
}

instance SKELETON_VZ_STORY_06(MST_DEFAULT_SKELETON_WEAK) {
    MST_DEFAULT_SKELETON_WEAK();
    NAME[0] = NAME_SKELETON;
    B_SETVISUALS_HEADLESS_SKELETON();
}

instance SKELETON_VZ_STORY_07(MST_DEFAULT_SKELETON_WEAK) {
    MST_DEFAULT_SKELETON_WEAK();
    NAME[0] = NAME_SKELETON;
    B_SETVISUALS_DAMAGED_SKELETON();
    EQUIPITEM(SKELETON_VZ_STORY_07, 0x9a9e);
}


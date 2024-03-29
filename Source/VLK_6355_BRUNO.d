instance VLK_6355_BRUNO(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_BRUNO;
    GUILD = GIL_VLK;
    ID = 6355;
    VOICE = 64;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(VLK_6355_BRUNO, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(VLK_6355_BRUNO, MALE, HUMHEADPONY, FACE_P_BRUNO, 0, 35549);
    MDL_APPLYOVERLAYMDS(VLK_6355_BRUNO, HUMANSRELAXEDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_6355_BRUNO);
    B_GIVENPCTALENTS(VLK_6355_BRUNO);
    B_SETFIGHTSKILLS(VLK_6355_BRUNO, 40);
    DAILY_ROUTINE = RTN_START_6355;
}

func void RTN_START_6355() {
    TA_STAND_ARMSCROSSED(8, 0, 18, 0, "PARTM4_TAVERN_STAND_02");
    TA_STAND_ARMSCROSSED(18, 0, 8, 0, "PARTM4_TAVERN_STAND_02");
}

func void RTN_CITYGATE_6355() {
    TA_RUNTOWP(8, 0, 18, 0, "PARTM2_PATH_02");
    TA_RUNTOWP(18, 0, 8, 0, "PARTM2_PATH_02");
}

func void RTN_RUNMINE_6355() {
    TA_GUIDE_PLAYER(8, 0, 18, 0, "PART3_PATH_133");
    TA_GUIDE_PLAYER(18, 0, 8, 0, "PART3_PATH_133");
}

func void RTN_WAITMINE_6355() {
    TA_STAND_ARMSCROSSED(8, 0, 18, 0, "PART3_WAIT_BRUNO");
    TA_STAND_ARMSCROSSED(18, 0, 8, 0, "PART3_WAIT_BRUNO");
}

func void RTN_FOLLOWHERO_6355() {
    TA_FOLLOW_PLAYER(8, 0, 18, 0, "PARTM2_CONTROL_10");
    TA_FOLLOW_PLAYER(18, 0, 8, 0, "PARTM2_CONTROL_10");
}

func void RTN_GOLDMINE_6355() {
    TA_GUARD_PASSAGE(8, 0, 18, 0, "PART3_GOLDMINE_02");
    TA_GUARD_PASSAGE(18, 0, 8, 0, "PART3_GOLDMINE_02");
}


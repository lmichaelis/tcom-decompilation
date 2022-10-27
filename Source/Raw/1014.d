prototype MST_DEFAULT_SHADOWBEAST_SKELETON(C_NPC) {
    NAME[0] = NAME_SHADOWBEASTSKELETON;
    GUILD = GIL_SHADOWBEAST_SKELETON;
    AIVAR[43] = ID_SHADOWBEAST_SKELETON;
    LEVEL = 60;
    ATTRIBUTE[4] = 320;
    ATTRIBUTE[5] = 200;
    ATTRIBUTE[1] = 450;
    ATTRIBUTE[0] = 450;
    ATTRIBUTE[3] = 0;
    ATTRIBUTE[2] = 0;
    PROTECTION[1] = 130;
    PROTECTION[2] = 170;
    PROTECTION[6] = 210;
    PROTECTION[3] = 200;
    PROTECTION[4] = 50;
    PROTECTION[5] = 150;
    DAMAGETYPE = DAM_EDGE;
    FIGHT_TACTIC = FAI_SHADOWBEAST;
    SENSES = ((SENSE_HEAR) | (SENSE_SEE)) | (SENSE_SMELL);
    SENSES_RANGE = PERC_DIST_MONSTER_ACTIVE_MAX;
    AIVAR[27] = FOLLOWTIME_MEDIUM;
    AIVAR[28] = FALSE;
    START_AISTATE = ZS_MM_ALLSCHEDULER;
    AIVAR[34] = ONLYROUTINE;
    BODYSTATEINTERRUPTABLEOVERRIDE = TRUE;
}

func void B_SETVISUALS_SHADOWBEAST_SKELETON() {
    MDL_SETVISUAL(SELF, "Shadow.mds");
    MDL_SETVISUALBODY(SELF, "Shadowbeast_Skeleton_Body", DEFAULT, DEFAULT, "", DEFAULT, DEFAULT, -(1));
}

instance SHADOWBEAST_SKELETON(MST_DEFAULT_SHADOWBEAST_SKELETON) {
    MST_DEFAULT_SHADOWBEAST_SKELETON();
    B_SETVISUALS_SHADOWBEAST_SKELETON();
    NPC_SETTOFISTMODE(SHADOWBEAST_SKELETON);
}

instance SHADOWBEAST_SKELETON_ANGAR(MST_DEFAULT_SHADOWBEAST_SKELETON) {
    MST_DEFAULT_SHADOWBEAST_SKELETON();
    B_SETVISUALS_SHADOWBEAST_SKELETON();
    NPC_SETTOFISTMODE(SHADOWBEAST_SKELETON_ANGAR);
}


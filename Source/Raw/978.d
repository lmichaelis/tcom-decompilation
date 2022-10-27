prototype MST_DEFAULT_SWARM(C_NPC) {
    NAME[0] = "Lataj�cy r�j";
    GUILD = GIL_BLOODFLY;
    AIVAR[43] = ID_BLOODFLY;
    LEVEL = 6;
    ATTRIBUTE[4] = 30;
    ATTRIBUTE[5] = 30;
    ATTRIBUTE[1] = 60;
    ATTRIBUTE[0] = 60;
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

func void B_SETVISUALS_SWARM() {
    MDL_SETVISUAL(SELF, "Swarm.mds");
    MDL_SETVISUALBODY(SELF, "Irrlicht_Body", DEFAULT, DEFAULT, "", DEFAULT, DEFAULT, -(1));
}

instance SWARM(MST_DEFAULT_SWARM) {
    MST_DEFAULT_SWARM();
    FIGHT_TACTIC = FAI_BLOODFLY;
    B_SETVISUALS_SWARM();
    NPC_SETTOFISTMODE(SWARM);
}

instance SWARM_DETECTOR(MST_DEFAULT_SWARM) {
    MST_DEFAULT_SWARM();
    LEVEL = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETVISUALS_SWARM();
    SENSES_RANGE = 0xbb8;
    AIVAR[15] = TRUE;
    B_SETATTITUDE(SWARM_DETECTOR, ATT_FRIENDLY);
    NPC_SETTOFISTMODE(SWARM_DETECTOR);
    AIVAR[71] = TRUE;
    START_AISTATE = ZS_MM_RTN_SUMMONED;
}


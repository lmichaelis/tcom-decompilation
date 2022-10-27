instance BDT_8030_RAT(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_WANTEDPOSTER_RAT;
    GUILD = GIL_GIANT_RAT;
    ID = 0x1f5e;
    AIVAR[43] = ID_WANTEDPOSTER_GIANTRAT;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(BDT_8030_RAT, 35);
    ATTRIBUTE[1] = 800;
    ATTRIBUTE[0] = 800;
    PROTECTION[1] = 80;
    PROTECTION[2] = 80;
    PROTECTION[6] = 125;
    PROTECTION[3] = 45;
    PROTECTION[4] = 60;
    PROTECTION[5] = 70;
    LEVEL = 90;
    MDL_SETVISUAL(BDT_8030_RAT, BLACKRATMDS);
    MDL_SETVISUALBODY(BDT_8030_RAT, "Rat_WantedPoster_Body", DEFAULT, DEFAULT, "", DEFAULT, DEFAULT, -(1));
    DAMAGETYPE = DAM_EDGE;
    FIGHT_TACTIC = FAI_GIANT_RAT;
    SENSES = ((SENSE_HEAR) | (SENSE_SEE)) | (SENSE_SMELL);
    SENSES_RANGE = 0xdac;
    AIVAR[26] = FALSE;
    AIVAR[27] = FOLLOWTIME_MEDIUM;
    AIVAR[28] = TRUE;
    AIVAR[50] = FALSE;
    BODYSTATEINTERRUPTABLEOVERRIDE = TRUE;
    START_AISTATE = ZS_MM_ALLSCHEDULER;
    AIVAR[34] = ONLYROUTINE;
    MDL_SETMODELSCALE(BDT_8030_RAT, 0x3fc00000, 0x3fc00000, 0x3fc00000);
    NPC_SETTOFISTMODE(BDT_8030_RAT);
}


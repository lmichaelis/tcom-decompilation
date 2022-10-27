instance BDT_8027_SHADOWBEAST(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_WANTEDPOSTER_SHADOWBEAST;
    GUILD = GIL_SHADOWBEAST;
    ID = 0x1f5b;
    AIVAR[43] = ID_WANTEDPOSTER_SHADOW;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(BDT_8027_SHADOWBEAST, 45);
    ATTRIBUTE[1] = 1000;
    ATTRIBUTE[0] = 1000;
    PROTECTION[1] = 150;
    PROTECTION[2] = 150;
    PROTECTION[6] = 150;
    PROTECTION[3] = 150;
    PROTECTION[4] = 150;
    PROTECTION[5] = 120;
    LEVEL = 115;
    MDL_SETVISUAL(BDT_8027_SHADOWBEAST, "Shadow.mds");
    MDL_SETVISUALBODY(BDT_8027_SHADOWBEAST, "SHA_WantedPoster_Body", DEFAULT, DEFAULT, "", DEFAULT, DEFAULT, -(1));
    DAMAGETYPE = DAM_EDGE;
    FIGHT_TACTIC = FAI_SHADOWBEAST;
    SENSES = ((SENSE_HEAR) | (SENSE_SEE)) | (SENSE_SMELL);
    SENSES_RANGE = 0xdac;
    AIVAR[26] = FALSE;
    AIVAR[27] = FOLLOWTIME_MEDIUM;
    AIVAR[28] = FALSE;
    BODYSTATEINTERRUPTABLEOVERRIDE = TRUE;
    DAILY_ROUTINE = RTN_START_8027;
    CREATEINVITEMS(BDT_8027_SHADOWBEAST, 0x8e47, 2);
    MDL_SETMODELSCALE(BDT_8027_SHADOWBEAST, 0x3f99999a, 0x3f99999a, 0x3f99999a);
    NPC_SETTOFISTMODE(BDT_8027_SHADOWBEAST);
}

func void RTN_START_8027() {
    TA_SLEEP_BEAR_NOIQ(4, 0, 22, 0, "PART15_PATH_33");
    TA_SLEEP_BEAR_NOIQ(22, 0, 4, 0, "PART15_PATH_33");
}

func void RTN_FIGHT_8027() {
    TA_FOLLOW_PLAYER(4, 0, 22, 0, "PART15_PATH_33");
    TA_FOLLOW_PLAYER(22, 0, 4, 0, "PART15_PATH_33");
}

func void RTN_DANCE_8027() {
    TA_DANCE_MONSTER(4, 0, 22, 0, "PART15_PATH_33");
    TA_DANCE_MONSTER(22, 0, 4, 0, "PART15_PATH_33");
}

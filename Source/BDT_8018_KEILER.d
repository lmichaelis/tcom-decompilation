instance BDT_8018_KEILER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_WANTEDPOSTER_BOAR;
    GUILD = GIL_WOLF;
    ID = 8018;
    AIVAR[43] = ID_WANTEDPOSTER_KEILER;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(BDT_8018_KEILER, 25);
    ATTRIBUTE[1] = 550;
    ATTRIBUTE[0] = 550;
    PROTECTION[1] = 50;
    PROTECTION[2] = 60;
    PROTECTION[6] = 45;
    PROTECTION[3] = 10;
    PROTECTION[4] = 20;
    PROTECTION[5] = 15;
    LEVEL = 70;
    MDL_SETVISUAL(BDT_8018_KEILER, "Keiler.mds");
    MDL_SETVISUALBODY(BDT_8018_KEILER, "Keiler_WantedPoster_Body", DEFAULT, DEFAULT, "", DEFAULT, DEFAULT, -(1));
    DAMAGETYPE = DAM_BLUNT;
    FIGHT_TACTIC = FAI_WOLF;
    SENSES = ((SENSE_SEE) | (SENSE_SMELL)) | (SENSE_HEAR);
    SENSES_RANGE = 3500;
    AIVAR[26] = FALSE;
    AIVAR[27] = FOLLOWTIME_LONG;
    AIVAR[28] = TRUE;
    AIVAR[50] = FALSE;
    BODYSTATEINTERRUPTABLEOVERRIDE = TRUE;
    START_AISTATE = ZS_MM_ALLSCHEDULER;
    AIVAR[34] = ONLYROUTINE;
    CREATEINVITEMS(BDT_8018_KEILER, 36407, 2);
    MDL_SETMODELSCALE(BDT_8018_KEILER, 1067030938, 1067030938, 1067030938);
    NPC_SETTOFISTMODE(BDT_8018_KEILER);
}

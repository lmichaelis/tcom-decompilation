prototype MST_DEFAULT_ORCDOG(C_NPC) {
    NAME[0] = NAME_ORCDOG;
    GUILD = GIL_WOLF;
    AIVAR[43] = ID_ORCDOG;
    LEVEL = 40;
    ATTRIBUTE[4] = 135;
    ATTRIBUTE[5] = 215;
    ATTRIBUTE[1] = 220;
    ATTRIBUTE[0] = 220;
    ATTRIBUTE[3] = 0;
    ATTRIBUTE[2] = 0;
    PROTECTION[1] = 110;
    PROTECTION[2] = 110;
    PROTECTION[6] = 95;
    PROTECTION[3] = 25;
    PROTECTION[4] = 30;
    PROTECTION[5] = 45;
    DAMAGETYPE = DAM_EDGE;
    FIGHT_TACTIC = FAI_WOLF;
    SENSES = ((SENSE_HEAR) | (SENSE_SEE)) | (SENSE_SMELL);
    SENSES_RANGE = 3000;
    AIVAR[26] = TRUE;
    AIVAR[27] = FOLLOWTIME_LONG;
    AIVAR[28] = TRUE;
    AIVAR[50] = FALSE;
    START_AISTATE = ZS_MM_ALLSCHEDULER;
    AIVAR[34] = ONLYROUTINE;
}

func void SET_ORCDOG_VISUALS() {
    MDL_SETVISUAL(SELF, WOLFMDS);
    MDL_SETVISUALBODY(SELF, "Dog_Body", DEFAULT, DEFAULT, "", DEFAULT, DEFAULT, -(1));
}

instance ORCDOG(MST_DEFAULT_ORCDOG) {
    MST_DEFAULT_ORCDOG();
    SET_ORCDOG_VISUALS();
    NPC_SETTOFISTMODE(ORCDOG);
}

prototype NPC_DEFAULT(C_NPC) {
    ATTRIBUTE[4] = 10;
    AIVAR[81] = 10;
    ATTRIBUTE[5] = 10;
    AIVAR[82] = 10;
    ATTRIBUTE[3] = 10;
    AIVAR[83] = 10;
    ATTRIBUTE[2] = 10;
    ATTRIBUTE[1] = 40;
    ATTRIBUTE[0] = 40;
    HITCHANCE[1] = 0;
    HITCHANCE[2] = 0;
    HITCHANCE[3] = 0;
    HITCHANCE[4] = 0;
    PROTECTION[2] = 0;
    PROTECTION[1] = 0;
    PROTECTION[6] = 0;
    PROTECTION[3] = 0;
    PROTECTION[5] = 0;
    DAMAGETYPE = DAM_BLUNT;
    SENSES = (SENSE_HEAR) | (SENSE_SEE);
    SENSES_RANGE = PERC_DIST_ACTIVE_MAX;
    AIVAR[27] = NPC_TIME_FOLLOW;
    AIVAR[63] = FIGHT_DIST_CANCEL;
    BODYSTATEINTERRUPTABLEOVERRIDE = FALSE;
}

instance KDF_11263_FIREMAGE(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_FIREMAGE;
    GUILD = GIL_KDF;
    ID = 11263;
    VOICE = 13;
    FLAGS = NPC_FLAG_IMPORTANT;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(KDF_11263_FIREMAGE, 40);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    AIVAR[51] = MAGIC_ALWAYS;
    B_SETNPCVISUAL(KDF_11263_FIREMAGE, MALE, HUMHEADFATBALD, FACE_L_FIREMAGE03, 2, 33916);
    MDL_APPLYOVERLAYMDS(KDF_11263_FIREMAGE, HUMANSMAGEMDS);
    B_CREATEAMBIENTINV(KDF_11263_FIREMAGE);
    B_GIVENPCTALENTS(KDF_11263_FIREMAGE);
    B_SETFIGHTSKILLS(KDF_11263_FIREMAGE, 40);
    DAILY_ROUTINE = RTN_START_11263;
    AIVAR[74] = NPC_IAMBUSY;
}

func void RTN_START_11263() {
    TA_SIT_THRONE(7, 0, 11, 25, "PARTM1_FIREMAGES_THRONE_02");
    TA_COOK_STOVE(11, 25, 15, 15, "PARTM1_FIREMAGES_STOVE_01");
    TA_WATCHVINE(15, 15, 19, 25, "PARTM1_FIREMAGES_TABLE_01");
    TA_SIT_THRONE(19, 25, 23, 0, "PARTM1_FIREMAGES_THRONE_02");
    TA_SLEEP(23, 0, 7, 0, "PARTM1_FIREMAGES_BED_06");
}

func void RTN_Q308_11263() {
    TA_WATERPEARL(8, 0, 11, 25, "PARTM1_CHURCH_BLOCKTELEPORT");
    TA_WATERPEARL(11, 25, 8, 0, "PARTM1_CHURCH_BLOCKTELEPORT");
}


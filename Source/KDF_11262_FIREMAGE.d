instance KDF_11262_FIREMAGE(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_FIREMAGE;
    GUILD = GIL_KDF;
    ID = 11262;
    VOICE = 73;
    FLAGS = NPC_FLAG_IMPORTANT;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(KDF_11262_FIREMAGE, 40);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    AIVAR[51] = MAGIC_ALWAYS;
    B_SETNPCVISUAL(KDF_11262_FIREMAGE, MALE, HUMHEADPSIONIC, FACE_B_FIREMAGE02, 3, 33916);
    MDL_APPLYOVERLAYMDS(KDF_11262_FIREMAGE, HUMANSMAGEMDS);
    B_CREATEAMBIENTINV(KDF_11262_FIREMAGE);
    B_GIVENPCTALENTS(KDF_11262_FIREMAGE);
    B_SETFIGHTSKILLS(KDF_11262_FIREMAGE, 40);
    DAILY_ROUTINE = RTN_START_11262;
    AIVAR[74] = NPC_IAMBUSY;
}

func void RTN_START_11262() {
    TA_READ_BOOKSTAND(7, 0, 13, 45, "PARTM1_FIREMAGES_BOOK_01");
    TA_SIT_THRONE_READING(13, 45, 16, 30, "PARTM1_FIREMAGES_THRONE_02");
    TA_SMALLTALK(16, 30, 20, 0, "PARTM1_FIREMAGES_SMALLTALK_01");
    TA_READ_BOOKSTAND(20, 0, 22, 0, "PARTM1_FIREMAGES_BOOK_01");
    TA_SLEEP(22, 0, 7, 0, "PARTM1_FIREMAGES_BED_06");
}


instance VLK_6111_CITYTRADE05(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_TRADER;
    GUILD = GIL_VLK;
    ID = 6111;
    VOICE = 42;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(VLK_6111_CITYTRADE05, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(VLK_6111_CITYTRADE05, MALE, HUMHEADPONY, FACE_N_MERCHANT06, 1, 35549);
    B_CREATEWEAPONINV();
    MDL_APPLYOVERLAYMDS(VLK_6111_CITYTRADE05, HUMANSARROGANCEMDS);
    B_GIVENPCTALENTS(VLK_6111_CITYTRADE05);
    B_SETFIGHTSKILLS(VLK_6111_CITYTRADE05, 40);
    DAILY_ROUTINE = RTN_START_6111;
    AIVAR[74] = NPC_SQ225_KNOWGERHARD;
}

func void RTN_START_6111() {
    TA_STAND_ARMSCROSSED(8, 0, 22, 0, "PARTM2_TRADESMAN_01");
    TA_SMALLTALK(22, 0, 8, 0, "PARTM2_CHILLHOUSE_SMALLTALK_01");
}

func void RTN_TRADING_6117() {
    TA_SMALLTALK(8, 0, 22, 0, "PARTM2_TRADESMAN_01");
    TA_SMALLTALK(22, 0, 8, 0, "PARTM2_TRADESMAN_01");
}


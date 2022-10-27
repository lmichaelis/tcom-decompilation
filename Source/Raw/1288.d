instance VLK_6110_CITYTRADE04(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_TRADER;
    GUILD = GIL_VLK;
    ID = 0x17de;
    VOICE = 70;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(VLK_6110_CITYTRADE04, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(VLK_6110_CITYTRADE04, MALE, HUMHEADTHIEF, FACE_N_MERCHANT05, 1, 0x8ada);
    B_CREATEWEAPONINV();
    MDL_APPLYOVERLAYMDS(VLK_6110_CITYTRADE04, HUMANSARROGANCEMDS);
    B_GIVENPCTALENTS(VLK_6110_CITYTRADE04);
    B_SETFIGHTSKILLS(VLK_6110_CITYTRADE04, 40);
    DAILY_ROUTINE = RTN_START_6110;
    AIVAR[74] = NPC_SQ225_KNOWGERHARD;
}

func void RTN_START_6110() {
    TA_STAND_ARMSCROSSED(8, 0, 22, 0, "PARTM2_TRADESMAN_04");
    TA_SMALLTALK(22, 0, 8, 0, "PARTM2_CHILLHOUSE_SMALLTALK_02");
}

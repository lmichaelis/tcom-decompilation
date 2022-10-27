instance VLK_6025_WORKER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_ARBEITER;
    GUILD = GIL_VLK;
    ID = 0x1789;
    VOICE = 25;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(VLK_6025_WORKER, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(VLK_6025_WORKER, MALE, HUMHEADFIGHTER, FACE_B_CITIZEN71, 3, 0x8af4);
    MDL_APPLYOVERLAYMDS(VLK_6025_WORKER, HUMANSMILITIAMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_6025_WORKER);
    B_GIVENPCTALENTS(VLK_6025_WORKER);
    B_SETFIGHTSKILLS(VLK_6025_WORKER, 40);
    DAILY_ROUTINE = RTN_START_6025;
    AIVAR[74] = NPC_CITY_IMFROMSLUMS;
    AIVAR[70] = NPC_AMB_CITY_SLUMS;
}

func void RTN_START_6025() {
    TA_SAW(5, 10, 6, 10, "SLUMS_SAW_01");
    TA_SMITH_SHARP(6, 10, 7, 10, "SLUMS_SHARP_01");
    TA_SAW(7, 10, 8, 10, "SLUMS_SAW_01");
    TA_SMITH_SHARP(8, 10, 9, 10, "SLUMS_SHARP_01");
    TA_SAW(9, 10, 10, 10, "SLUMS_SAW_01");
    TA_SMITH_SHARP(10, 10, 11, 10, "SLUMS_SHARP_01");
    TA_SAW(11, 10, 12, 10, "SLUMS_SAW_01");
    TA_SMITH_SHARP(12, 10, 13, 10, "SLUMS_SHARP_01");
    TA_SAW(13, 10, 14, 10, "SLUMS_SAW_01");
    TA_SMITH_SHARP(14, 10, 15, 10, "SLUMS_SHARP_01");
    TA_SAW(15, 10, 16, 10, "SLUMS_SAW_01");
    TA_SMITH_SHARP(16, 10, 17, 10, "SLUMS_SHARP_01");
    TA_SAW(17, 10, 18, 10, "SLUMS_SAW_01");
    TA_SMITH_SHARP(18, 10, 19, 10, "SLUMS_SHARP_01");
    TA_SAW(19, 10, 20, 5, "SLUMS_SAW_01");
    TA_SLEEP(20, 5, 5, 10, "SLUMS_HOUSE01_03");
}


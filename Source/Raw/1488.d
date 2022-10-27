instance VLK_6395_BERNAND(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_BERNAND;
    GUILD = GIL_VLK;
    ID = 0x18fb;
    VOICE = 42;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(VLK_6395_BERNAND, 10);
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    B_SETNPCVISUAL(VLK_6395_BERNAND, MALE, HUMHEADTHIEF, FACE_P_BERNARD, 0, 0x8472);
    MDL_APPLYOVERLAYMDS(VLK_6395_BERNAND, HUMANSTIREDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_6395_BERNAND);
    B_GIVENPCTALENTS(VLK_6395_BERNAND);
    B_SETFIGHTSKILLS(VLK_6395_BERNAND, 30);
    DAILY_ROUTINE = RTN_START_6395;
}

func void RTN_START_6395() {
    TA_PLUNDER(8, 0, 8, 30, "PARTM4_VOLKERGARDEN_PLUNDER_01");
    TA_PLUNDER(8, 30, 9, 0, "PARTM4_VOLKERGARDEN_PLUNDER_02");
    TA_PLUNDER(9, 0, 9, 30, "PARTM4_VOLKERGARDEN_PLUNDER_03");
    TA_PLUNDER(9, 30, 10, 0, "PARTM4_VOLKERGARDEN_PLUNDER_04");
    TA_PLUNDER(10, 0, 10, 30, "PARTM4_VOLKERGARDEN_PLUNDER_05");
    TA_PLUNDER(10, 30, 11, 0, "PARTM4_VOLKERGARDEN_PLUNDER_06");
    TA_PLUNDER(11, 0, 11, 30, "PARTM4_VOLKERGARDEN_PLUNDER_07");
    TA_PLUNDER(11, 30, 12, 0, "PARTM4_VOLKERGARDEN_PLUNDER_08");
    TA_PLUNDER(12, 0, 12, 30, "PARTM4_VOLKERGARDEN_PLUNDER_09");
    TA_PLUNDER(12, 30, 13, 0, "PARTM4_VOLKERGARDEN_PLUNDER_08");
    TA_PLUNDER(13, 0, 13, 30, "PARTM4_VOLKERGARDEN_PLUNDER_06");
    TA_PLUNDER(13, 30, 14, 0, "PARTM4_VOLKERGARDEN_PLUNDER_07");
    TA_PLUNDER(14, 0, 14, 30, "PARTM4_VOLKERGARDEN_PLUNDER_05");
    TA_PLUNDER(14, 30, 15, 0, "PARTM4_VOLKERGARDEN_PLUNDER_04");
    TA_PLUNDER(15, 0, 15, 30, "PARTM4_VOLKERGARDEN_PLUNDER_03");
    TA_PLUNDER(15, 30, 16, 0, "PARTM4_VOLKERGARDEN_PLUNDER_02");
    TA_PLUNDER(16, 0, 16, 30, "PARTM4_VOLKERGARDEN_PLUNDER_01");
    TA_PLUNDER(16, 30, 17, 0, "PARTM4_VOLKERGARDEN_PLUNDER_03");
    TA_PLUNDER(17, 0, 17, 30, "PARTM4_VOLKERGARDEN_PLUNDER_05");
    TA_PLUNDER(17, 30, 18, 0, "PARTM4_VOLKERGARDEN_PLUNDER_09");
    TA_PLUNDER(18, 0, 18, 30, "PARTM4_VOLKERGARDEN_PLUNDER_02");
    TA_PLUNDER(18, 30, 19, 0, "PARTM4_VOLKERGARDEN_PLUNDER_04");
    TA_PLUNDER(19, 0, 19, 30, "PARTM4_VOLKERGARDEN_PLUNDER_07");
    TA_PLUNDER(19, 30, 20, 0, "PARTM4_VOLKERGARDEN_PLUNDER_01");
    TA_PLUNDER(20, 0, 20, 30, "PARTM4_VOLKERGARDEN_PLUNDER_09");
    TA_PLUNDER(20, 30, 21, 0, "PARTM4_VOLKERGARDEN_PLUNDER_05");
    TA_PLUNDER(21, 0, 21, 30, "PARTM4_VOLKERGARDEN_PLUNDER_03");
    TA_PLUNDER(21, 30, 22, 0, "PARTM4_VOLKERGARDEN_PLUNDER_07");
    TA_SIT_BENCH_DRINK(22, 0, 8, 0, "PARTM4_BENCH_01");
}

func void RTN_CLEANWALL_6395() {
    TA_CLEANWALL(8, 0, 9, 0, "PARTM4_PATH_110");
    TA_CLEANWALL(9, 0, 8, 0, "PARTM4_PATH_110");
}

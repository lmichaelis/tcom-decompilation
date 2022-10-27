instance BDT_8004_SEWERBOY(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_WANTEDPOSTER_SEWERBOY;
    GUILD = GIL_BDT;
    ID = 0x1f44;
    VOICE = 18;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(BDT_8004_SEWERBOY, 30);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    EQUIPITEM(BDT_8004_SEWERBOY, 0x84e6);
    ATTRIBUTE[1] = 500;
    ATTRIBUTE[0] = 500;
    LEVEL = 75;
    B_SETNPCVISUAL(BDT_8004_SEWERBOY, MALE, HUMHEADPSIONIC, FACE_N_BOUNTYTARGET02, 1, 0x8a59);
    MDL_APPLYOVERLAYMDS(BDT_8004_SEWERBOY, HUMANSARROGANCEMDS);
    B_GIVENPCTALENTS(BDT_8004_SEWERBOY);
    B_SETFIGHTSKILLS(BDT_8004_SEWERBOY, 50);
    BODYSTATEINTERRUPTABLEOVERRIDE = TRUE;
    DAILY_ROUTINE = RTN_START_8004;
}

func void RTN_START_8004() {
    TA_OBSERVE(22, 0, 8, 0, "S1_WANTEDPOSTER_SEWER_01");
    TA_OBSERVE(8, 0, 22, 0, "S1_WANTEDPOSTER_SEWER_01");
}


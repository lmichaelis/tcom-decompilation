instance BDT_9045_REFUGEE(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_REFUGEE;
    GUILD = GIL_BDT;
    ID = 0x2355;
    VOICE = 64;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(BDT_9045_REFUGEE, 17);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(BDT_9045_REFUGEE, MALE, HUMHEADBALD, FACE_N_BANDIT72, BODYTEX_N_HOMELESS02, 0x8b05);
    B_CREATEAMBIENTINV(BDT_9045_REFUGEE);
    MDL_APPLYOVERLAYMDS(BDT_9045_REFUGEE, HUMANSPOCKETWALKMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(BDT_9045_REFUGEE);
    B_GIVENPCTALENTS(BDT_9045_REFUGEE);
    B_SETFIGHTSKILLS(BDT_9045_REFUGEE, 35);
    DAILY_ROUTINE = RTN_START_9045;
}

func void RTN_START_9045() {
    TA_PLUNDER(8, 0, 12, 0, "PART2_PLUNDER_02");
    TA_PLUNDER(12, 0, 8, 0, "PART2_PLUNDER_02");
}


instance BDT_9047_REFUGEE(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_REFUGEE;
    GUILD = GIL_BDT;
    ID = 9047;
    VOICE = 11;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(BDT_9047_REFUGEE, 18);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(BDT_9047_REFUGEE, MALE, HUMHEADBALD, FACE_P_BANDIT74, BODYTEX_P_HOMELESS01, 35589);
    B_CREATEAMBIENTINV(BDT_9047_REFUGEE);
    MDL_APPLYOVERLAYMDS(BDT_9047_REFUGEE, HUMANSPOCKETWALKMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(BDT_9047_REFUGEE);
    B_GIVENPCTALENTS(BDT_9047_REFUGEE);
    B_SETFIGHTSKILLS(BDT_9047_REFUGEE, 35);
    DAILY_ROUTINE = RTN_START_9047;
}

func void RTN_START_9047() {
    TA_PLUNDER(8, 0, 12, 0, "PART2_PLUNDER_04");
    TA_PLUNDER(12, 0, 8, 0, "PART2_PLUNDER_04");
}


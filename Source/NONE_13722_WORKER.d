instance NONE_13722_WORKER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_DIGGER;
    GUILD = GIL_NONE;
    ID = 13722;
    VOICE = 30;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(NONE_13722_WORKER, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    EQUIPITEM(NONE_13722_WORKER, 34015);
    B_CREATEAMBIENTINV(NONE_13722_WORKER);
    B_SETNPCVISUAL(NONE_13722_WORKER, MALE, HUMHEADBALD, FACE_P_WORKER47, BODYTEX_P_HOMELESS01, 35587);
    MDL_APPLYOVERLAYMDS(NONE_13722_WORKER, HUMANSPOCKETWALKMDS);
    B_GIVENPCTALENTS(NONE_13722_WORKER);
    B_SETFIGHTSKILLS(NONE_13722_WORKER, 20);
    DAILY_ROUTINE = RTN_START_13722;
}

func void RTN_START_13722() {
    TA_PICK_ORE(7, 0, 12, 30, "PART7_MINE_GOLDMOB_12");
    TA_PICK_ORE(12, 30, 7, 0, "PART7_MINE_GOLDMOB_12");
}

func void RTN_TOT_13722() {
    TA_STAND_WP(8, 0, 13, 0, TOT);
    TA_STAND_WP(13, 0, 8, 0, TOT);
}

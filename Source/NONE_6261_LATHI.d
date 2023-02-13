instance NONE_6261_LATHI(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_LATHI;
    GUILD = GIL_VLK;
    ID = 6261;
    VOICE = 59;
    FLAGS = NPC_FLAG_IMPORTANT;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(NONE_6261_LATHI, 10);
    FIGHT_TACTIC = FAI_HUMAN_NORMAL;
    B_SETNPCVISUAL(NONE_6261_LATHI, MALE, HUMHEADTHIEF, FACE_N_LATHI, BODYTEX_N, 35572);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(NONE_6261_LATHI);
    B_GIVENPCTALENTS(NONE_6261_LATHI);
    B_SETFIGHTSKILLS(NONE_6261_LATHI, 30);
    DAILY_ROUTINE = RTN_START_6261;
}

func void RTN_START_6261() {
    TA_FISHING(7, 0, 15, 0, "PART2_FISHERMAN_05");
    TA_NETREPAIR(15, 0, 22, 0, "PART2_FISHERMAN_CHAIR");
    TA_SLEEP(22, 0, 7, 0, "PART2_FISHERMAN_HOUSE_BED_01");
}

func void RTN_FAQ004_WAIT_6261() {
    TA_STAND_DRINKING(7, 0, 22, 0, "PART2_FISHERMAN_STAND_01");
    TA_STAND_DRINKING(22, 0, 7, 0, "PART2_FISHERMAN_STAND_01");
}

func void RTN_FISHNET_6261() {
    TA_NETREPAIR(7, 0, 22, 0, "PART2_FISHERMAN_STAND_01");
    TA_NETREPAIR(22, 0, 7, 0, "PART2_FISHERMAN_STAND_01");
}


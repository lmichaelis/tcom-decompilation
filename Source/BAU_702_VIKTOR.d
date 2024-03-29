instance BAU_702_VIKTOR(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_VIKTOR;
    GUILD = GIL_BAU;
    ID = 702;
    VOICE = 28;
    FLAGS = NPC_FLAG_IMPORTANT;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(BAU_702_VIKTOR, 10);
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    B_SETNPCVISUAL(BAU_702_VIKTOR, MALE, HUMHEADPONY, FACE_N_VIKTOR, 1, 35572);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(BAU_702_VIKTOR);
    B_GIVENPCTALENTS(BAU_702_VIKTOR);
    B_SETFIGHTSKILLS(BAU_702_VIKTOR, 60);
    DAILY_ROUTINE = RTN_START_702;
}

func void RTN_START_702() {
    TA_STAND_ARMSCROSSED(0, 0, 1, 0, "VILLAGE_PUB_29");
    TA_STAND_ARMSCROSSED(1, 0, 0, 0, "VILLAGE_PUB_29");
}

func void RTN_GUIDETOPUB_702() {
    TA_GUIDE_PLAYER(0, 0, 1, 0, "VILLAGE_PUB_07");
    TA_GUIDE_PLAYER(1, 0, 0, 0, "VILLAGE_PUB_07");
}

func void RTN_GUIDETOJORN_702() {
    TA_GUIDE_PLAYER(0, 0, 1, 0, "VILLAGE_PUB_ROOM01_PATH04");
    TA_GUIDE_PLAYER(1, 0, 0, 0, "VILLAGE_PUB_ROOM01_PATH04");
}

func void RTN_PUB_702() {
    TA_STAND_ARMSCROSSED(0, 0, 1, 0, "VILLAGE_PUB_11");
    TA_STAND_ARMSCROSSED(1, 0, 0, 0, "VILLAGE_PUB_11");
}

func void RTN_MARTHATRIALOG_702() {
    TA_STAYSTRAIGHT(0, 0, 1, 0, "VILLAGE_PUB_08");
    TA_STAYSTRAIGHT(1, 0, 0, 0, "VILLAGE_PUB_08");
}

func void RTN_MARTHATRIALOG2_702() {
    TA_RUNTOWP(0, 0, 1, 0, "VILLAGE_PUB_07");
    TA_RUNTOWP(1, 0, 0, 0, "VILLAGE_PUB_07");
}

func void RTN_WAKEUP_702() {
    TA_OBSERVE(0, 0, 1, 0, "VILLAGE_PUB_ROOM02_PATH02");
    TA_OBSERVE(1, 0, 0, 0, "VILLAGE_PUB_ROOM02_PATH02");
}

func void RTN_GQ001BEGGINING_702() {
    TA_IDLE(0, 0, 9, 0, "VILLAGE_POORPLACE_01");
    TA_IDLE(9, 0, 0, 0, "VILLAGE_POORPLACE_01");
}

func void RTN_SQ410_INN_702() {
    TA_SIT_CHAIR_DRINK(0, 0, 9, 0, "VILLAGE_PUB_100");
    TA_SIT_CHAIR_DRINK(9, 0, 0, 0, "VILLAGE_PUB_100");
}

func void RTN_SQ410_OUTSIDEINN_702() {
    TA_STAYSTRAIGHT_NOIQ(0, 0, 9, 0, "VILLAGE_SQ410_VIKTOR");
    TA_STAYSTRAIGHT_NOIQ(9, 0, 0, 0, "VILLAGE_SQ410_VIKTOR");
}

func void RTN_SQ410_FIGHT_11036() {
    TA_SQ410_FIGHT(0, 0, 9, 0, "VILLAGE_SQ410_VIKTOR");
    TA_SQ410_FIGHT(9, 0, 0, 0, "VILLAGE_SQ410_VIKTOR");
}

func void RTN_Q505_WAREHOUSE_702() {
    TA_STAND_ARMSCROSSED(0, 0, 1, 0, "VILLAGE_PLACE_10");
    TA_STAND_ARMSCROSSED(1, 0, 0, 0, "VILLAGE_PLACE_10");
}

func void RTN_Q106_FOLLOW_702() {
    TA_FOLLOW_PLAYER(0, 0, 1, 0, "VILLAGE_POORPLACE_01");
    TA_FOLLOW_PLAYER(1, 0, 0, 0, "VILLAGE_POORPLACE_01");
}


instance NONE_14_VRAZKA(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_VRAZKA;
    GUILD = GIL_NONE;
    ID = 14;
    VOICE = 31;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    AIVAR[95] = TRUE;
    B_SETATTRIBUTESTOLEVEL(NONE_14_VRAZKA, 3);
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    B_SETNPCVISUAL(NONE_14_VRAZKA, FEMALE, HUMHEADBABE3, FACE_WL_VRAZKA, 6, 35609);
    MDL_APPLYOVERLAYMDS(NONE_14_VRAZKA, HUMANSBABEMDS);
    B_GIVENPCTALENTS(NONE_14_VRAZKA);
    B_SETFIGHTSKILLS(NONE_14_VRAZKA, 30);
    DAILY_ROUTINE = RTN_START_14;
}

func void RTN_START_14() {
    TA_STAND_ARMSCROSSED(7, 0, 22, 0, "SHIP_SABINA_01");
    TA_STAND_ARMSCROSSED(22, 0, 7, 0, "SHIP_SABINA_01");
}

func void RTN_OBSERVE_14() {
    TA_OBSERVE(7, 0, 22, 0, "SHIP_JORN_01");
    TA_OBSERVE(22, 0, 7, 0, "SHIP_JORN_01");
}

func void RTN_SHIP_14() {
    TA_SEARCH_SCARED(7, 0, 22, 0, "SHIP_SABINA_02");
    TA_SEARCH_SCARED(22, 0, 7, 0, "SHIP_SABINA_02");
}

func void RTN_TOT_14() {
    TA_STAYSTRAIGHT(7, 0, 22, 0, TOT);
    TA_STAYSTRAIGHT(22, 0, 7, 0, TOT);
}


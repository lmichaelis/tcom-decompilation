instance VLK_11249_REFUGEE(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_SCAREDWOMANREFUGEE;
    GUILD = GIL_NONE;
    ID = 11249;
    VOICE = 63;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    AIVAR[52] = TRUE;
    B_SETATTRIBUTESTOLEVEL(VLK_11249_REFUGEE, 8);
    FIGHT_TACTIC = FAI_HUMAN_NORMAL;
    B_SETNPCVISUAL(VLK_11249_REFUGEE, FEMALE, HUMHEADBABE4, FACE_WB_REFUGEE36, 7, 35603);
    MDL_APPLYOVERLAYMDS(VLK_11249_REFUGEE, HUMANSBABEMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_11249_REFUGEE);
    B_GIVENPCTALENTS(VLK_11249_REFUGEE);
    B_SETFIGHTSKILLS(VLK_11249_REFUGEE, 10);
    DAILY_ROUTINE = RTN_START_11249;
}

func void RTN_START_11249() {
    TA_SEARCH_SCARED_NODIALOGE(7, 0, 22, 0, RNG_TRAP63_WAYPOINT);
    TA_SEARCH_SCARED_NODIALOGE(22, 0, 7, 0, RNG_TRAP63_WAYPOINT);
}

func void RTN_AFTEREVENT_11249() {
    TA_SEARCH_SCARED_NODIALOGE(7, 0, 22, 0, RNG_TRAP63_WAYPOINT);
    TA_SEARCH_SCARED_NODIALOGE(22, 0, 7, 0, RNG_TRAP63_WAYPOINT);
}

func void RTN_TOT_11249() {
    TA_SEARCH_SCARED_NODIALOGE(7, 0, 22, 0, TOT2);
    TA_SEARCH_SCARED_NODIALOGE(22, 0, 7, 0, TOT2);
}


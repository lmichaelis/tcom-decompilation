instance NONE_10_DARRYL(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_DARRYL;
    GUILD = GIL_NONE;
    ID = 10;
    VOICE = 4;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    AIVAR[95] = TRUE;
    B_SETATTRIBUTESTOLEVEL(NONE_10_DARRYL, 3);
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    B_SETNPCVISUAL(NONE_10_DARRYL, MALE, HUMHEADFIGHTER, FACE_N_DARRYL, BODYTEX_N, 35549);
    MDL_APPLYOVERLAYMDS(NONE_10_DARRYL, HUMANSRELAXEDMDS);
    B_GIVENPCTALENTS(NONE_10_DARRYL);
    B_SETFIGHTSKILLS(NONE_10_DARRYL, 30);
    DAILY_ROUTINE = RTN_START_10;
}

func void RTN_START_10() {
    TA_SIT_BENCH(7, 0, 22, 0, "SHIP_MAIWEN_01");
    TA_SIT_BENCH(22, 0, 7, 0, "SHIP_MAIWEN_01");
}

func void RTN_SHIP_10() {
    TA_IDLE(7, 0, 22, 0, "SHIP_DARRYL_02");
    TA_IDLE(22, 0, 7, 0, "SHIP_DARRYL_02");
}

func void RTN_TOT_10() {
    TA_STAYSTRAIGHT(7, 0, 22, 0, TOT);
    TA_STAYSTRAIGHT(22, 0, 7, 0, TOT);
}

instance NONE_100010_DARRYL(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_DARRYL;
    GUILD = GIL_NONE;
    ID = 100010;
    VOICE = 4;
    FLAGS = NPC_FLAG_IMPORTANT;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(NONE_100010_DARRYL, 10);
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    B_SETNPCVISUAL(NONE_100010_DARRYL, MALE, HUMHEADFIGHTER, FACE_N_DARRYL, BODYTEX_N, 35549);
    MDL_APPLYOVERLAYMDS(NONE_100010_DARRYL, HUMANSHURTMDS);
    B_GIVENPCTALENTS(NONE_100010_DARRYL);
    B_SETFIGHTSKILLS(NONE_100010_DARRYL, 30);
    DAILY_ROUTINE = RTN_ALIVE_100010;
}

func void RTN_ALIVE_100010() {
    TA_STAYSTRAIGHT(7, 0, 22, 0, "PART_13_DARRYL_ALIVE");
    TA_STAYSTRAIGHT(22, 0, 7, 0, "PART_13_DARRYL_ALIVE");
}

func void RTN_CAVE_100010() {
    TA_SIT_DARRYL(7, 0, 22, 0, "PART_13_CAVE_DARRYL");
    TA_SIT_DARRYL(22, 0, 7, 0, "PART_13_CAVE_DARRYL");
}

func void RTN_SITCAVE_100010() {
    TA_SIT_DARRYL(7, 0, 22, 0, "PART13_CAMPFIRE_SIT_01");
    TA_SIT_DARRYL(22, 0, 7, 0, "PART13_CAMPFIRE_SIT_01");
}

func void RTN_SQ103_CAVE_100010() {
    TA_SIT_DARRYL(7, 0, 22, 0, "PART_13_CAVE_01");
    TA_SIT_DARRYL(22, 0, 7, 0, "PART_13_CAVE_01");
}

func void RTN_TOT_100010() {
    TA_SMALLTALK(7, 0, 22, 0, TOT);
    TA_SMALLTALK(22, 0, 7, 0, TOT);
}


instance BAU_13947_HORNPLAYER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_NOISYFARMER;
    GUILD = GIL_NONE;
    ID = 13947;
    VOICE = 6;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(BAU_13947_HORNPLAYER, 12);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(BAU_13947_HORNPLAYER, MALE, HUMHEADPONY, FACE_P_HORNPLAYER, 0, 33907);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(BAU_13947_HORNPLAYER);
    MDL_APPLYOVERLAYMDS(BAU_13947_HORNPLAYER, HUMANSARROGANCEMDS);
    B_GIVENPCTALENTS(BAU_13947_HORNPLAYER);
    B_SETFIGHTSKILLS(BAU_13947_HORNPLAYER, 40);
    DAILY_ROUTINE = RTN_START_13947;
}

func void RTN_START_13947() {
    TA_HORNPLAY(8, 0, 9, 0, "VILLAGE_PATH_85B");
    TA_HORNPLAY(9, 0, 8, 0, "VILLAGE_PATH_85B");
}

func void RTN_TOT_13947() {
    TA_RUNTOWP_NOIQ(8, 0, 9, 0, TOT);
    TA_RUNTOWP_NOIQ(9, 0, 8, 0, TOT);
}


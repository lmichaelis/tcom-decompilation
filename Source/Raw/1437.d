instance VLK_6416_PROPAGANDIST(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_PROPAGANDIST;
    GUILD = GIL_NONE;
    ID = 0x1910;
    VOICE = 28;
    FLAGS = NPC_FLAG_IMPORTANT;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(VLK_6416_PROPAGANDIST, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(VLK_6416_PROPAGANDIST, MALE, HUMHEADBALD, FACE_N_PROPAGANDIST01, 1, 0x8ade);
    MDL_APPLYOVERLAYMDS(VLK_6416_PROPAGANDIST, HUMANSRELAXEDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_6416_PROPAGANDIST);
    B_GIVENPCTALENTS(VLK_6416_PROPAGANDIST);
    B_SETFIGHTSKILLS(VLK_6416_PROPAGANDIST, 45);
    DAILY_ROUTINE = RTN_START_6416;
}

func void RTN_START_6416() {
    TA_ANNOUNCE_PROPAGANDIST(8, 0, 18, 0, "HARBOUR_TAVERN_PROPAGANDIST_01");
    TA_ANNOUNCE_PROPAGANDIST(18, 0, 8, 0, "HARBOUR_TAVERN_PROPAGANDIST_01");
}

func void RTN_FLEE_6416() {
    TA_FLEE_NOIQ(8, 0, 18, 0, "PARTM1_PATH_95");
    TA_FLEE_NOIQ(18, 0, 8, 0, "PARTM1_PATH_95");
}

func void RTN_SCARED_6416() {
    TA_SEARCH_SCARED(8, 0, 18, 0, "PARTM1_PATH_95");
    TA_SEARCH_SCARED(18, 0, 8, 0, "PARTM1_PATH_95");
}

func void RTN_TOT_6416() {
    TA_STAYSTRAIGHT(8, 0, 18, 0, TOT);
    TA_STAYSTRAIGHT(18, 0, 8, 0, TOT);
}


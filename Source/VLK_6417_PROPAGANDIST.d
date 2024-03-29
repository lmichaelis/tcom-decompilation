instance VLK_6417_PROPAGANDIST(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_PROPAGANDIST;
    GUILD = GIL_NONE;
    ID = 6417;
    VOICE = 25;
    FLAGS = NPC_FLAG_IMPORTANT;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(VLK_6417_PROPAGANDIST, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(VLK_6417_PROPAGANDIST, MALE, HUMHEADBALD, FACE_N_PROPAGANDIST02, 1, 35547);
    MDL_APPLYOVERLAYMDS(VLK_6417_PROPAGANDIST, HUMANSRELAXEDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_6417_PROPAGANDIST);
    B_GIVENPCTALENTS(VLK_6417_PROPAGANDIST);
    B_SETFIGHTSKILLS(VLK_6417_PROPAGANDIST, 45);
    DAILY_ROUTINE = RTN_CUTSCENE_6417;
}

func void RTN_START_6417() {
    TA_ANNOUNCE_PROPAGANDIST(8, 0, 18, 0, "PARTM4_TAVERN_30");
    TA_ANNOUNCE_PROPAGANDIST(18, 0, 8, 0, "PARTM4_TAVERN_30");
}

func void RTN_CUTSCENE_6417() {
    TA_STAYSTRAIGHT(8, 0, 18, 0, "PARTM4_TAVERN_CUTSCENE_PROPAGANDIST");
    TA_STAYSTRAIGHT(18, 0, 8, 0, "PARTM4_TAVERN_CUTSCENE_PROPAGANDIST");
}

func void RTN_FLEE_6417() {
    TA_FLEE_NOIQ(8, 0, 18, 0, TOT);
    TA_FLEE_NOIQ(18, 0, 8, 0, TOT);
}

func void RTN_TOT_6417() {
    TA_STAYSTRAIGHT(8, 0, 18, 0, TOT);
    TA_STAYSTRAIGHT(18, 0, 8, 0, TOT);
}


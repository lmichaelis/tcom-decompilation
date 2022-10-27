instance VLK_13799_JOHNYSILVERHAND(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_REBELLIOUSCITIZEN;
    GUILD = GIL_VLK;
    ID = 0x35e7;
    VOICE = 61;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(VLK_13799_JOHNYSILVERHAND, 20);
    FIGHT_TACTIC = FAI_HUMAN_NORMAL;
    B_SETNPCVISUAL(VLK_13799_JOHNYSILVERHAND, MALE, HUMHEADPONY, FACE_N_JOHNYSILVERHAND, BODYTEX_N, 0x8add);
    MDL_APPLYOVERLAYMDS(VLK_13799_JOHNYSILVERHAND, HUMANSRELAXEDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_13799_JOHNYSILVERHAND);
    B_GIVENPCTALENTS(VLK_13799_JOHNYSILVERHAND);
    B_SETFIGHTSKILLS(VLK_13799_JOHNYSILVERHAND, 30);
    DAILY_ROUTINE = RTN_START_13799;
}

func void RTN_START_13799() {
    TA_WATCHFIGHT(7, 0, 22, 0, RNG_NS64_WAYPOINT);
    TA_WATCHFIGHT(22, 0, 7, 0, RNG_NS64_WAYPOINT);
}

func void RTN_TOT_13799() {
    TA_STAYSTRAIGHT(7, 0, 22, 0, TOT);
    TA_STAYSTRAIGHT(22, 0, 7, 0, TOT);
}


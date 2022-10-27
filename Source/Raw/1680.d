instance NONE_13861_SOUTHERNER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_SOUTHERNER;
    GUILD = GIL_NONE;
    ID = 0x3625;
    VOICE = 25;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(NONE_13861_SOUTHERNER, 30);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(NONE_13861_SOUTHERNER, MALE, HUMHEADBALD, FACE_B_SOUTHERNER_10, 3, 0x8a6b);
    MDL_APPLYOVERLAYMDS(NONE_13861_SOUTHERNER, HUMANSMILITIAMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(NONE_13861_SOUTHERNER);
    B_GIVENPCTALENTS(NONE_13861_SOUTHERNER);
    B_SETFIGHTSKILLS(NONE_13861_SOUTHERNER, 40);
    DAILY_ROUTINE = RTN_START_13861;
    AIVAR[70] = NPC_AMB_CITY_SOUTHERNER;
}

func void RTN_START_13861() {
    TA_SMALLTALK(7, 30, 22, 0, "HARBOUR_PATH_143");
    TA_STAND_EATING(22, 0, 7, 30, TOT2);
}

func void RTN_KQ404_13861() {
    TA_SMALLTALK(7, 30, 22, 0, TOT2);
    TA_SMALLTALK(22, 0, 7, 30, TOT2);
}

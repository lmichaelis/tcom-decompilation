instance VLK_3021_MIKKEL(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_MIKKEL;
    GUILD = GIL_VLK;
    ID = 3021;
    VOICE = 64;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(VLK_3021_MIKKEL, 9);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    EQUIPITEM(VLK_3021_MIKKEL, 34001);
    B_SETNPCVISUAL(VLK_3021_MIKKEL, MALE, HUMHEADBALD, FACE_P_MIKKEL, 0, 35549);
    MDL_APPLYOVERLAYMDS(VLK_3021_MIKKEL, HUMANSPOCKETWALKMDS);
    B_CREATEAMBIENTINV(VLK_3021_MIKKEL);
    B_GIVENPCTALENTS(VLK_3021_MIKKEL);
    B_SETFIGHTSKILLS(VLK_3021_MIKKEL, 30);
    DAILY_ROUTINE = RTN_START_3021;
    AIVAR[75] = WALKMODE_WALK;
}

func void RTN_START_3021() {
    TA_SIT_CHAIR_DRINK(8, 0, 22, 0, "HARBOUR_TAVERN_GUEST_07");
    TA_SIT_CHAIR_DRINK(22, 0, 8, 0, "HARBOUR_TAVERN_GUEST_07");
}

func void RTN_AFTERFAQ003_3021() {
    TA_VOMIT(8, 0, 22, 0, "SLUMS_STAND_MIKKEL");
    TA_VOMIT(22, 0, 8, 0, "SLUMS_STAND_MIKKEL");
}

func void RTN_NORMALDAY_3021() {
    TA_SMALLTALK(8, 0, 22, 0, "SLUMS_STAND_ARNOLD");
    TA_SMALLTALK(22, 0, 8, 0, "SLUMS_STAND_ARNOLD");
}

func void RTN_FOLLOW_3021() {
    TA_FOLLOW_PLAYER(8, 0, 22, 0, "SLUMS_STAND_ARNOLD");
    TA_FOLLOW_PLAYER(22, 0, 8, 0, "SLUMS_STAND_ARNOLD");
}

func void RTN_FLEE_3021() {
    TA_FLEE_NOIQ(8, 0, 22, 0, TOT);
    TA_FLEE_NOIQ(22, 0, 8, 0, TOT);
}


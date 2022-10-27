instance VLK_3020_TOM(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_TOM;
    GUILD = GIL_VLK;
    ID = 0xbcc;
    VOICE = 6;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(VLK_3020_TOM, 9);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    EQUIPITEM(VLK_3020_TOM, 0x84e0);
    B_SETNPCVISUAL(VLK_3020_TOM, MALE, HUMHEADBALD, FACE_N_TOM, 1, 0x8ad6);
    MDL_APPLYOVERLAYMDS(VLK_3020_TOM, HUMANSPOCKETWALKMDS);
    B_CREATEAMBIENTINV(VLK_3020_TOM);
    B_GIVENPCTALENTS(VLK_3020_TOM);
    B_SETFIGHTSKILLS(VLK_3020_TOM, 30);
    DAILY_ROUTINE = RTN_START_3020;
    AIVAR[75] = WALKMODE_WALK;
}

func void RTN_START_3020() {
    TA_SIT_CHAIR_DRINK(8, 0, 22, 0, "HARBOUR_TAVERN_GUEST_06");
    TA_SIT_CHAIR_DRINK(22, 0, 8, 0, "HARBOUR_TAVERN_GUEST_06");
}

func void RTN_AFTERFAQ003_3020() {
    TA_VOMIT(8, 0, 22, 0, "SLUMS_STAND_TOM");
    TA_VOMIT(22, 0, 8, 0, "SLUMS_STAND_TOM");
}

func void RTN_NORMALDAY_3020() {
    TA_SMALLTALK(8, 0, 22, 0, "SLUMS_STAND_ARNOLD");
    TA_SMALLTALK(22, 0, 8, 0, "SLUMS_STAND_ARNOLD");
}

func void RTN_FOLLOW_3020() {
    TA_FOLLOW_PLAYER(8, 0, 22, 0, "SLUMS_STAND_ARNOLD");
    TA_FOLLOW_PLAYER(22, 0, 8, 0, "SLUMS_STAND_ARNOLD");
}

func void RTN_FLEE_3020() {
    TA_FLEE_NOIQ(8, 0, 22, 0, TOT);
    TA_FLEE_NOIQ(22, 0, 8, 0, TOT);
}


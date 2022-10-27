instance NONE_10121_THIEF_Q602(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_THUG;
    GUILD = GIL_NONE;
    ID = 0xc3eb;
    VOICE = 26;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_FRIEND;
    B_SETATTRIBUTESTOLEVEL(NONE_10121_THIEF_Q602, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(NONE_10121_THIEF_Q602, MALE, HUMHEADBALD, FACE_N_THIEF02, 1, 0x8a4b);
    MDL_APPLYOVERLAYMDS(NONE_10121_THIEF_Q602, HUMANSPOCKETWALKMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(NONE_10121_THIEF_Q602);
    B_GIVENPCTALENTS(NONE_10121_THIEF_Q602);
    B_SETFIGHTSKILLS(NONE_10121_THIEF_Q602, 50);
    MDL_APPLYOVERLAYMDS(NONE_10121_THIEF_Q602, HUMANS1HST1);
    MDL_APPLYOVERLAYMDS(NONE_10121_THIEF_Q602, HUMANS2HST1);
    MDL_APPLYOVERLAYMDS(NONE_10121_THIEF_Q602, HUMANSBOWT1);
    MDL_APPLYOVERLAYMDS(NONE_10121_THIEF_Q602, HUMANSCBOWT1);
    DAILY_ROUTINE = RTN_START_50155;
}

func void RTN_START_50155() {
    TA_PLUNDER_Q602(8, 0, 23, 0, "PARTE5_THIEF_01");
    TA_PLUNDER_Q602(23, 0, 8, 0, "PARTE5_THIEF_01");
}

func void RTN_TOT_50155() {
    TA_PLUNDER_Q602(8, 0, 23, 0, TOT);
    TA_PLUNDER_Q602(23, 0, 8, 0, TOT);
}

func void RTN_Q602_FLEE_50155() {
    TA_FLEE_NOIQ(8, 0, 23, 0, "Q602_START");
    TA_FLEE_NOIQ(23, 0, 8, 0, "Q602_START");
}

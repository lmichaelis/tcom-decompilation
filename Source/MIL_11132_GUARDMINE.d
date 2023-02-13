instance MIL_11132_GUARDMINE(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_MILIZ;
    GUILD = GIL_MIL;
    ID = 11132;
    VOICE = 71;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(MIL_11132_GUARDMINE, 28);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(MIL_11132_GUARDMINE, MALE, HUMHEADBALD, FACE_B_MILITIA67, 3, 35493);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(MIL_11132_GUARDMINE);
    MDL_APPLYOVERLAYMDS(MIL_11132_GUARDMINE, HUMANSMILITIAMDS);
    B_GIVENPCTALENTS(MIL_11132_GUARDMINE);
    B_SETFIGHTSKILLS(MIL_11132_GUARDMINE, 60);
    DAILY_ROUTINE = RTN_START_11132;
}

func void RTN_START_11132() {
    TA_GUARD_PASSAGE(8, 0, 12, 0, "PART10_MINE_GUARDENTRY");
    TA_GUARD_PASSAGE(12, 0, 8, 0, "PART10_MINE_GUARDENTRY");
}

func void RTN_SQ311_FIGHT_11132() {
    TA_STAYSTRAIGHT(8, 0, 12, 0, "PART10_MINE_40");
    TA_STAYSTRAIGHT(12, 0, 8, 0, "PART10_MINE_40");
}


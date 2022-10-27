instance MIL_710_FOLKARD(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_FOLKARD;
    GUILD = GIL_BAU;
    ID = 710;
    VOICE = 2;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(MIL_710_FOLKARD, 25);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(MIL_710_FOLKARD, MALE, HUMHEADPONY, FACE_N_FOLKARD, 1, 0x8a5e);
    EQUIPITEM(MIL_710_FOLKARD, 0x84e8);
    B_CREATEAMBIENTINV(MIL_710_FOLKARD);
    MDL_APPLYOVERLAYMDS(MIL_710_FOLKARD, HUMANSMILITIAMDS);
    B_GIVENPCTALENTS(MIL_710_FOLKARD);
    B_SETFIGHTSKILLS(MIL_710_FOLKARD, 60);
    DAILY_ROUTINE = RTN_START_710;
}

func void RTN_START_710() {
    TA_STAND_DRINKING(8, 0, 9, 0, "VILLAGE_SQ118_MARKUS");
    TA_STAND_GUARDING(9, 0, 16, 0, "VILLAGE_SQ118_MARKUS");
    TA_STAND_EATING(16, 0, 17, 0, "VILLAGE_SQ118_MARKUS");
    TA_STAND_GUARDING(17, 0, 23, 0, "VILLAGE_SQ118_MARKUS");
    TA_STAND_EATING(23, 0, 0, 0, "VILLAGE_SQ118_MARKUS");
    TA_STAND_GUARDING(0, 0, 8, 0, "VILLAGE_SQ118_MARKUS");
}

func void RTN_SQ118_GUARD_710() {
    TA_STAND_GUARDING(8, 0, 9, 0, "VILLAGE_SQ118_FOLKARD");
    TA_STAND_GUARDING(9, 0, 8, 0, "VILLAGE_SQ118_FOLKARD");
}

func void RTN_GQ001BEGGINING_710() {
    TA_STAND_GUARDING(8, 0, 0, 0, "VILLAGE_POORPLACE_01");
    TA_STAND_GUARDING(0, 0, 8, 0, "VILLAGE_POORPLACE_01");
}


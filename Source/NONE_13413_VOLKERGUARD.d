instance NONE_13413_VOLKERGUARD(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BODYGUARD;
    GUILD = GIL_NONE;
    ID = 13413;
    VOICE = 60;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(NONE_13413_VOLKERGUARD, 50);
    FIGHT_TACTIC = FAI_HUMAN_MASTER;
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(NONE_13413_VOLKERGUARD, MALE, HUMHEADBALD, FACE_N_VOLKERGUARD57, 1, 35479);
    MDL_APPLYOVERLAYMDS(NONE_13413_VOLKERGUARD, HUMANSMILITIAMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(NONE_13413_VOLKERGUARD);
    B_GIVENPCTALENTS(NONE_13413_VOLKERGUARD);
    B_SETFIGHTSKILLS(NONE_13413_VOLKERGUARD, 75);
    DAILY_ROUTINE = RTN_START_13413;
}

func void RTN_START_13413() {
    TA_STAND_ARMSCROSSED(8, 0, 8, 45, "VILLAGE_Q105_VOLKER_03");
    TA_STAND_ARMSCROSSED(8, 45, 8, 0, "VILLAGE_Q105_VOLKER_03");
}

func void RTN_Q105_GOTOCITY_13413() {
    TA_SMALLTALK(8, 0, 8, 45, "PART2_Q105_VOLKER_02");
    TA_SMALLTALK(8, 45, 8, 0, "PART2_Q105_VOLKER_02");
}

func void RTN_TOT_13413() {
    TA_STAND_ARMSCROSSED(8, 0, 8, 45, TOT2);
    TA_STAND_ARMSCROSSED(8, 45, 8, 0, TOT2);
}


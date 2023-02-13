instance NONE_6398_VOLKERGUARD(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BODYGUARD;
    GUILD = GIL_VLK;
    ID = 6398;
    VOICE = 59;
    FLAGS = NPC_FLAG_IMPORTANT;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(NONE_6398_VOLKERGUARD, 40);
    FIGHT_TACTIC = FAI_HUMAN_MASTER;
    B_SETNPCVISUAL(NONE_6398_VOLKERGUARD, MALE, HUMHEADWITHOUTPONY, FACE_L_VOLKERGUARD03, 2, 35479);
    MDL_APPLYOVERLAYMDS(NONE_6398_VOLKERGUARD, HUMANSMILITIAMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(NONE_6398_VOLKERGUARD);
    B_GIVENPCTALENTS(NONE_6398_VOLKERGUARD);
    B_SETFIGHTSKILLS(NONE_6398_VOLKERGUARD, 75);
    DAILY_ROUTINE = RTN_START_6398;
}

func void RTN_START_6398() {
    TA_STAND_GUARDING(8, 0, 18, 0, "PARTM4_VOLKER_HOUSE_GUARD_03");
    TA_STAND_GUARDING(18, 0, 8, 0, "PARTM4_VOLKER_HOUSE_GUARD_03");
}

func void RTN_JORNHOUSE_6398() {
    TA_SLEEP(8, 0, 18, 0, "SLUMS_HOUSE17_29");
    TA_SLEEP(18, 0, 8, 0, "SLUMS_HOUSE17_29");
}

func void RTN_FIGHT_6398() {
    TA_STAYSTRAIGHT(8, 0, 18, 0, "SLUMS_HOUSE17_29");
    TA_STAYSTRAIGHT(18, 0, 8, 0, "SLUMS_HOUSE17_29");
}

func void RTN_TOT_6398() {
    TA_STAYSTRAIGHT(8, 0, 18, 0, TOT);
    TA_STAYSTRAIGHT(18, 0, 8, 0, TOT);
}

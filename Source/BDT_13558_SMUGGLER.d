instance BDT_13558_SMUGGLER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_COYOTE;
    GUILD = GIL_BDT;
    ID = 13558;
    VOICE = 3;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(BDT_13558_SMUGGLER, 38);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(BDT_13558_SMUGGLER, MALE, HUMHEADFATBALD, FACE_L_SMUGGLER01, 2, 35438);
    MDL_APPLYOVERLAYMDS(BDT_13558_SMUGGLER, HUMANSPOCKETWALKMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(BDT_13558_SMUGGLER);
    B_GIVENPCTALENTS(BDT_13558_SMUGGLER);
    B_SETFIGHTSKILLS(BDT_13558_SMUGGLER, 45);
    DAILY_ROUTINE = RTN_START_13558;
}

func void RTN_START_13558() {
    TA_SMOKE_JOINT(6, 0, 20, 0, "PART1_CAVE_IN_33");
    TA_SMOKE_JOINT(20, 0, 6, 0, "PART1_CAVE_IN_33");
}

func void RTN_QA401_CUTSCENE_13558() {
    TA_STAYSTRAIGHT_NOIQ(6, 0, 20, 0, "PART1_CAVE_IN_33");
    TA_STAYSTRAIGHT_NOIQ(20, 0, 6, 0, "PART1_CAVE_IN_33");
}


instance MIL_14037_MILITIA(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_GUARDSMAN;
    GUILD = GIL_MIL;
    ID = 14037;
    VOICE = 64;
    FLAGS = NPC_FLAG_IMPORTANT;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(MIL_14037_MILITIA, 40);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(MIL_14037_MILITIA, MALE, HUMHEADPSIONIC, FACE_N_GUARDSMAN_16, 1, 35615);
    MDL_APPLYOVERLAYMDS(MIL_14037_MILITIA, HUMANSMILITIAMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(MIL_14037_MILITIA);
    B_GIVENPCTALENTS(MIL_14037_MILITIA);
    B_SETFIGHTSKILLS(MIL_14037_MILITIA, 60);
    DAILY_ROUTINE = RTN_START_14037;
    AIVAR[70] = NPC_AMB_ROYALGUARD;
}

func void RTN_START_14037() {
    TA_SMALLTALK(7, 0, 22, 0, "PARTM4_VOLKERHOUSE_OUTSIDE_SMALLTALK_01");
    TA_SMALLTALK(22, 0, 7, 0, "PARTM4_VOLKERHOUSE_OUTSIDE_SMALLTALK_01");
}


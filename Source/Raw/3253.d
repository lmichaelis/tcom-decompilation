instance MIL_13525_MILITIA(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_MILIZ;
    GUILD = GIL_MIL;
    ID = 0x34d5;
    VOICE = 70;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(MIL_13525_MILITIA, 45);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(MIL_13525_MILITIA, MALE, HUMHEADBALD, FACE_N_MILITIA92, 1, 0x8aad);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(MIL_13525_MILITIA);
    MDL_APPLYOVERLAYMDS(MIL_13525_MILITIA, HUMANS1HST2);
    MDL_APPLYOVERLAYMDS(MIL_13525_MILITIA, HUMANS2HST2);
    MDL_APPLYOVERLAYMDS(MIL_13525_MILITIA, HUMANSBOWT2);
    MDL_APPLYOVERLAYMDS(MIL_13525_MILITIA, HUMANSCBOWT2);
    B_GIVENPCTALENTS(MIL_13525_MILITIA);
    B_SETFIGHTSKILLS(MIL_13525_MILITIA, 0);
    DAILY_ROUTINE = RTN_START_13525;
    AIVAR[74] = NPC_KQ407_ARMY;
}

func void RTN_START_13525() {
    TA_MILSTAND(1, 0, 6, 0, "PART1_SQ503_MILITIA_01");
    TA_MILSTAND(6, 0, 1, 0, "PART1_SQ503_MILITIA_01");
}

func void RTN_SQ503_HAVEN_13525() {
    TA_MILSTAND(1, 0, 6, 0, "P17_HAVEN_SQ503_MILITIA_03");
    TA_MILSTAND(6, 0, 1, 0, "P17_HAVEN_SQ503_MILITIA_03");
}

func void RTN_TOT_13525() {
    TA_SIT_SLAVSQUAT(1, 0, 6, 0, TOT);
    TA_SIT_SLAVSQUAT(6, 0, 1, 0, TOT);
}


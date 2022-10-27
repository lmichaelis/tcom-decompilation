instance MIL_13664_MILITIA(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_SWORDSMAN;
    GUILD = GIL_MIL;
    ID = 0x3560;
    VOICE = 26;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(MIL_13664_MILITIA, 50);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(MIL_13664_MILITIA, MALE, HUMHEADFATBALD, FACE_B_MILITIA98, 3, 0x8aad);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(MIL_13664_MILITIA);
    MDL_APPLYOVERLAYMDS(MIL_13664_MILITIA, HUMANS1HST2);
    MDL_APPLYOVERLAYMDS(MIL_13664_MILITIA, HUMANS2HST2);
    MDL_APPLYOVERLAYMDS(MIL_13664_MILITIA, HUMANSBOWT2);
    MDL_APPLYOVERLAYMDS(MIL_13664_MILITIA, HUMANSCBOWT2);
    B_GIVENPCTALENTS(MIL_13664_MILITIA);
    B_SETFIGHTSKILLS(MIL_13664_MILITIA, 0);
    DAILY_ROUTINE = RTN_START_13664;
    AIVAR[74] = NPC_KQ407_ARMY;
}

func void RTN_START_13664() {
    TA_MILSTAND(1, 0, 6, 0, "PART17_KQ407_OKTAV_STAND_03");
    TA_MILSTAND(6, 0, 1, 0, "PART17_KQ407_OKTAV_STAND_03");
}

func void RTN_KQ407_ORCFIGHT_13664() {
    TA_GUIDE_PLAYER(1, 0, 6, 0, "PART15_PATH_222");
    TA_GUIDE_PLAYER(6, 0, 1, 0, "PART15_PATH_222");
}

func void RTN_TOT_13664() {
    TA_SIT_SLAVSQUAT(1, 0, 6, 0, TOT);
    TA_SIT_SLAVSQUAT(6, 0, 1, 0, TOT);
}

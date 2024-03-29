instance MIL_6310_GUARD(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_MILIZ;
    GUILD = GIL_MIL;
    ID = 6310;
    VOICE = 72;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(MIL_6310_GUARD, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    EQUIPITEM(MIL_6310_GUARD, 39564);
    MDL_SETVISUAL(MIL_6310_GUARD, HUMANSSPEARMDS);
    MDL_SETVISUALBODY(MIL_6310_GUARD, HUMBODYNAKED0, 1, 0, HUMHEADBALD, FACE_N_MILITIA24, 0, 35488);
    B_GIVENPCTALENTS(MIL_6310_GUARD);
    B_SETFIGHTSKILLS(MIL_6310_GUARD, 40);
    DAILY_ROUTINE = RTN_START_6310;
    AIVAR[70] = NPC_AMB_CITY_MILITIA;
}

func void RTN_START_6310() {
    TA_STAND_GUARDING2(8, 0, 14, 0, "PARTM1_GATEGUARD_01");
    TA_STAND_GUARDING2(14, 0, 8, 0, "PARTM1_GATEGUARD_01");
}


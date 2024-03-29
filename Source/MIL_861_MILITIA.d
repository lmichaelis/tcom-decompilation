instance MIL_861_MILITIA(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_MILIZ;
    GUILD = GIL_MIL;
    ID = 861;
    VOICE = 61;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(MIL_861_MILITIA, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    EQUIPITEM(MIL_861_MILITIA, 39564);
    MDL_SETVISUAL(MIL_861_MILITIA, HUMANSSPEARMDS);
    MDL_SETVISUALBODY(MIL_861_MILITIA, HUMBODYNAKED0, 1, 0, HUMHEADFATBALD, FACE_N_PATRON_61, 0, 35488);
    B_CREATEAMBIENTINV(MIL_861_MILITIA);
    B_GIVENPCTALENTS(MIL_861_MILITIA);
    B_SETFIGHTSKILLS(MIL_861_MILITIA, 30);
    DAILY_ROUTINE = RTN_START_861;
    AIVAR[70] = NPC_AMB_CITY_MILITIA;
}

func void RTN_START_861() {
    TA_STAND_GUARDING2(7, 0, 22, 0, "PARTM2_GATEGUARD_06");
    TA_STAND_GUARDING2(22, 0, 7, 0, "PARTM2_GATEGUARD_06");
}


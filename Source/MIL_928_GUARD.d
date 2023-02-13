instance MIL_928_GUARD(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_MILIZ;
    GUILD = GIL_MIL;
    ID = 928;
    VOICE = 6;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(MIL_928_GUARD, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(MIL_928_GUARD, MALE, HUMHEADFATBALD, FACE_P_MILITIA06, 0, 35488);
    MDL_APPLYOVERLAYMDS(MIL_928_GUARD, HUMANSMILITIAMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(MIL_928_GUARD);
    B_GIVENPCTALENTS(MIL_928_GUARD);
    B_SETFIGHTSKILLS(MIL_928_GUARD, 40);
    DAILY_ROUTINE = RTN_START_928;
    AIVAR[70] = NPC_AMB_CITY_MILITIA;
}

func void RTN_START_928() {
    TA_READ(7, 0, 21, 0, "PARTM2_CONTROL_19");
    TA_READ(21, 0, 7, 0, "PARTM2_CONTROL_19");
}

func void RTN_LORENZOISGONE_928() {
    TA_LORENZOISGONE(8, 0, 22, 0, "XXX");
    TA_LORENZOISGONE(22, 0, 8, 0, "XXX");
}


instance BDT_13352_THUG(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_THUG;
    GUILD = GIL_BDT;
    ID = 0x3428;
    VOICE = 21;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    AIVAR[95] = TRUE;
    AIVAR[57] = TRUE;
    AIVAR[25] = TRUE;
    B_SETATTRIBUTESTOLEVEL(BDT_13352_THUG, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(BDT_13352_THUG, MALE, HUMHEADPYMONTENEU, FACE_B_THUG34, 3, 0x8a56);
    MDL_APPLYOVERLAYMDS(BDT_13352_THUG, HUMANSRELAXEDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(BDT_13352_THUG);
    B_GIVENPCTALENTS(BDT_13352_THUG);
    B_SETFIGHTSKILLS(BDT_13352_THUG, 40);
    DAILY_ROUTINE = RTN_START_13352;
}

func void RTN_START_13352() {
    TA_STAND_WP(5, 0, 6, 0, RNG_TRAP32_WAYPOINT);
    TA_STAND_WP(6, 0, 5, 0, TOT);
}


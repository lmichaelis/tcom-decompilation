instance NONE_11149_SMOKER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_CHAINSMOKER;
    GUILD = GIL_NONE;
    ID = 11149;
    VOICE = 66;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    AIVAR[52] = TRUE;
    B_SETATTRIBUTESTOLEVEL(NONE_11149_SMOKER, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(NONE_11149_SMOKER, MALE, HUMHEADPSIONIC, FACE_P_THUG21, 0, 35546);
    MDL_APPLYOVERLAYMDS(NONE_11149_SMOKER, HUMANSPOCKETWALKMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(NONE_11149_SMOKER);
    B_GIVENPCTALENTS(NONE_11149_SMOKER);
    B_SETFIGHTSKILLS(NONE_11149_SMOKER, 45);
    DAILY_ROUTINE = RTN_START_11149;
}

func void RTN_START_11149() {
    TA_SMOKE_JOINT(19, 30, 3, 0, RNG_TRAP09_WAYPOINT);
    TA_SMOKE_JOINT(3, 0, 19, 30, TOT2);
}


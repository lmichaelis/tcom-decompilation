instance SLD_11060_KOLG(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_KOLG;
    GUILD = GIL_SLD;
    ID = 11060;
    VOICE = 12;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(SLD_11060_KOLG, 30);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(SLD_11060_KOLG, MALE, HUMHEADWITHOUTPONY, FACE_P_KOLG, 0, 35465);
    B_CREATEWEAPONINV();
    B_GIVENPCTALENTS(SLD_11060_KOLG);
    B_SETFIGHTSKILLS(SLD_11060_KOLG, 45);
    DAILY_ROUTINE = RTN_START_11060;
    AIVAR[74] = NPC_SQ225_KNOWGERHARD;
}

func void RTN_START_11060() {
    TA_LEAN(8, 0, 9, 0, "PARTM2_LEAN_03");
    TA_LEAN(9, 0, 8, 0, "PARTM2_LEAN_03");
}


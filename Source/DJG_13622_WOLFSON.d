instance DJG_13622_WOLFSON(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_WOLFSON;
    GUILD = GIL_DJG;
    ID = 13622;
    VOICE = 42;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(DJG_13622_WOLFSON, 44);
    FIGHT_TACTIC = FAI_HUMAN_MASTER;
    B_SETNPCVISUAL(DJG_13622_WOLFSON, MALE, HUMHEADTHIEF, FACE_B_WOLFSON86, BODYTEX_B, 35520);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(DJG_13622_WOLFSON);
    MDL_APPLYOVERLAYMDS(DJG_13622_WOLFSON, HUMANSARROGANCEMDS);
    B_GIVENPCTALENTS(DJG_13622_WOLFSON);
    B_SETFIGHTSKILLS(DJG_13622_WOLFSON, 80);
    DAILY_ROUTINE = RTN_START_13622;
    AIVAR[74] = NPC_IAMBUSY;
}

func void RTN_START_13622() {
    TA_SPYGLASS(8, 0, 13, 0, RNG_NS38_WAYPOINT);
    TA_SPYGLASS(13, 0, 8, 0, RNG_NS38_WAYPOINT);
}

func void RTN_TOT_13622() {
    TA_SPYGLASS(8, 0, 13, 0, TOT2);
    TA_SPYGLASS(13, 0, 8, 0, TOT2);
}


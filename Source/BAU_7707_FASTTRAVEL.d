instance BAU_7707_FASTTRAVEL(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_FARMER_FASTTRAVEL;
    GUILD = GIL_BAU;
    ID = 7707;
    VOICE = 25;
    FLAGS = NPC_FLAG_IMPORTANT;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(BAU_7707_FASTTRAVEL, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(BAU_7707_FASTTRAVEL, MALE, HUMHEADBALD, FACE_N_FISHERMAN10, 1, 35395);
    MDL_APPLYOVERLAYMDS(BAU_7707_FASTTRAVEL, HUMANSRELAXEDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(BAU_7707_FASTTRAVEL);
    B_GIVENPCTALENTS(BAU_7707_FASTTRAVEL);
    B_SETFIGHTSKILLS(BAU_7707_FASTTRAVEL, 30);
    DAILY_ROUTINE = RTN_START_7707;
    AIVAR[74] = NPC_FASTTRAVEL_IAMFISHERMAN;
    AIVAR[70] = NPC_AMB_BOAT_FASTTRAVEL;
}

func void RTN_START_7707() {
    TA_SPYGLASS(7, 0, 15, 30, "PARTM6_FASTTRAVEL_GUY_01");
    TA_SPYGLASS(15, 30, 7, 0, "PARTM6_FASTTRAVEL_GUY_01");
}

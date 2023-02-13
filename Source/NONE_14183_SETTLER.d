instance NONE_14183_SETTLER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_FEMALESETTLER;
    GUILD = GIL_NONE;
    ID = 14183;
    VOICE = 69;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(NONE_14183_SETTLER, 10);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(NONE_14183_SETTLER, FEMALE, HUMHEADBABE4, FACE_WP_FSETTLER08, 4, 35602);
    MDL_APPLYOVERLAYMDS(NONE_14183_SETTLER, HUMANSBABEMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(NONE_14183_SETTLER);
    B_GIVENPCTALENTS(NONE_14183_SETTLER);
    B_SETFIGHTSKILLS(NONE_14183_SETTLER, 60);
    DAILY_ROUTINE = RTN_START_14183;
    AIVAR[74] = NPC_PART4_IAMFISHERMAN;
    AIVAR[70] = NPC_AMB_FISHERMANS;
}

func void RTN_START_14183() {
    TA_SIT_CAMPFIRE(6, 0, 23, 0, "PART4_FISHERMAN_135");
    TA_SIT_CAMPFIRE(23, 0, 6, 0, "PART4_FISHERMAN_135");
}


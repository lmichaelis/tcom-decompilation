instance NONE_14178_SETTLER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_FEMALESETTLER;
    GUILD = GIL_NONE;
    ID = 14178;
    VOICE = 16;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(NONE_14178_SETTLER, 10);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(NONE_14178_SETTLER, FEMALE, HUMHEADBABE7, FACE_WL_FSETTLER03, 6, 33911);
    MDL_APPLYOVERLAYMDS(NONE_14178_SETTLER, HUMANSBABEMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(NONE_14178_SETTLER);
    B_GIVENPCTALENTS(NONE_14178_SETTLER);
    B_SETFIGHTSKILLS(NONE_14178_SETTLER, 60);
    DAILY_ROUTINE = RTN_START_14178;
    AIVAR[74] = NPC_PART1_IAMFISHERMAN;
    AIVAR[70] = NPC_AMB_FISHERMANS;
}

func void RTN_START_14178() {
    TA_SMALLTALK(6, 0, 21, 0, "PART1_FISHER_BEACH_83");
    TA_SIT_CAMPFIRE(21, 0, 6, 0, "PART1_FISHER_BEACH_90");
}

func void RTN_TOT_14178() {
    TA_STAND_EATING(6, 0, 8, 0, TOT);
    TA_STAND_DRINKING(8, 0, 6, 0, TOT);
}


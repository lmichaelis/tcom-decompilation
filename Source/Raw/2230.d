instance NONE_14179_SETTLER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_FEMALESETTLER;
    GUILD = GIL_NONE;
    ID = 0x3763;
    VOICE = 69;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(NONE_14179_SETTLER, 10);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(NONE_14179_SETTLER, FEMALE, HUMHEADBABEHAIR1, FACE_WB_FSETTLER04, 7, 0x8b14);
    MDL_APPLYOVERLAYMDS(NONE_14179_SETTLER, HUMANSBABEMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(NONE_14179_SETTLER);
    B_GIVENPCTALENTS(NONE_14179_SETTLER);
    B_SETFIGHTSKILLS(NONE_14179_SETTLER, 60);
    DAILY_ROUTINE = RTN_START_14179;
    AIVAR[74] = NPC_PART4_IAMFISHERMAN;
    AIVAR[70] = NPC_AMB_FISHERMANS;
}

func void RTN_START_14179() {
    TA_SMALLTALK(6, 0, 21, 0, "PART4_FISHERMAN_131");
    TA_SMALLTALK(21, 0, 6, 0, TOT2);
}


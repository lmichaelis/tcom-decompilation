instance BAU_13502_FAKEFARMER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BAEUERIN;
    GUILD = GIL_NONE;
    ID = 13502;
    VOICE = 33;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    B_SETATTRIBUTESTOLEVEL(BAU_13502_FAKEFARMER, 20);
    B_SETNPCVISUAL(BAU_13502_FAKEFARMER, FEMALE, HUMHEADBABE3, FACE_WB_FAKEFARMER, 7, 35603);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(BAU_13502_FAKEFARMER);
    MDL_APPLYOVERLAYMDS(BAU_13502_FAKEFARMER, HUMANSHURTMDS);
    B_GIVENPCTALENTS(BAU_13502_FAKEFARMER);
    B_SETFIGHTSKILLS(BAU_13502_FAKEFARMER, 60);
    DAILY_ROUTINE = RTN_START_13502;
}

func void RTN_START_13502() {
    TA_CRYINGFORHELP(8, 0, 13, 0, "PART15_PATH_90B");
    TA_CRYINGFORHELP(13, 0, 8, 0, "PART15_PATH_90B");
}

func void RTN_ATTACK_13502() {
    TA_FOLLOW_PLAYER(8, 0, 13, 0, "PART15_PATH_90B");
    TA_FOLLOW_PLAYER(13, 0, 8, 0, "PART15_PATH_90B");
}


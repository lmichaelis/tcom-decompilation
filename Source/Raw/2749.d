instance BAU_13493_FAKEFARMER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BAUER;
    GUILD = GIL_NONE;
    ID = 0x34b5;
    VOICE = 14;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    B_SETATTRIBUTESTOLEVEL(BAU_13493_FAKEFARMER, 20);
    B_SETNPCVISUAL(BAU_13493_FAKEFARMER, MALE, HUMHEADBALD, FACE_N_MILITIA21, 1, 0x8af4);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(BAU_13493_FAKEFARMER);
    MDL_APPLYOVERLAYMDS(BAU_13493_FAKEFARMER, HUMANSWOUNDEDMDS);
    B_GIVENPCTALENTS(BAU_13493_FAKEFARMER);
    B_SETFIGHTSKILLS(BAU_13493_FAKEFARMER, 29);
    DAILY_ROUTINE = RTN_START_13493;
}

func void RTN_START_13493() {
    TA_OBSERVE(8, 0, 13, 0, "PART15_PATH_90C");
    TA_OBSERVE(13, 0, 8, 0, "PART15_PATH_90C");
}

func void RTN_ATTACK_13493() {
    TA_FOLLOW_PLAYER(8, 0, 13, 0, "PART15_PATH_90C");
    TA_FOLLOW_PLAYER(13, 0, 8, 0, "PART15_PATH_90C");
}


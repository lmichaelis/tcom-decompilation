instance NONE_13695_WOUNDEDREFUGEE(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_WOUNDEDREFUGEE_FEMALE;
    GUILD = GIL_NONE;
    ID = 13695;
    VOICE = 16;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(NONE_13695_WOUNDEDREFUGEE, 20);
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    B_SETNPCVISUAL(NONE_13695_WOUNDEDREFUGEE, FEMALE, HUMHEADBABE1, FACE_WN_REFUGEE59, 5, 35599);
    MDL_APPLYOVERLAYMDS(NONE_13695_WOUNDEDREFUGEE, HUMANSWOUNDEDMDS);
    B_GIVENPCTALENTS(NONE_13695_WOUNDEDREFUGEE);
    B_SETFIGHTSKILLS(NONE_13695_WOUNDEDREFUGEE, 29);
    DAILY_ROUTINE = RTN_START_13695;
}

func void RTN_START_13695() {
    TA_SIT_BED_TIRED(22, 0, 23, 0, "PART8_NOV_HOUSE_BED_08");
    TA_SIT_BED_TIRED(23, 0, 22, 0, "PART8_NOV_HOUSE_BED_08");
}

func void RTN_TOT_13695() {
    TA_SIT_BENCH(22, 0, 23, 0, TOT);
    TA_SIT_BENCH(23, 0, 22, 0, TOT);
}

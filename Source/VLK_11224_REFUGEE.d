instance VLK_11224_REFUGEE(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_WOMANREFUGEE;
    GUILD = GIL_VLK;
    ID = 11224;
    VOICE = 33;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(VLK_11224_REFUGEE, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(VLK_11224_REFUGEE, FEMALE, HUMHEADBABE4, FACE_WP_REFUGEE24, 4, 35608);
    MDL_APPLYOVERLAYMDS(VLK_11224_REFUGEE, HUMANSBABEMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_11224_REFUGEE);
    B_GIVENPCTALENTS(VLK_11224_REFUGEE);
    B_SETFIGHTSKILLS(VLK_11224_REFUGEE, 40);
    DAILY_ROUTINE = RTN_START_11224;
    AIVAR[70] = NPC_AMB_REFUGEE;
}

func void RTN_START_11224() {
    TA_SMALLTALK(7, 0, 22, 0, "PART15_VINEYARD_REFUGEE_05");
    TA_SMALLTALK(22, 0, 7, 0, TOT2);
}


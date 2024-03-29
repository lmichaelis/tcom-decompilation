instance VLK_11225_REFUGEE(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_WOMANREFUGEE;
    GUILD = GIL_VLK;
    ID = 11225;
    VOICE = 16;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(VLK_11225_REFUGEE, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(VLK_11225_REFUGEE, FEMALE, HUMHEADBABE3, FACE_WP_REFUGEE25, 4, 33912);
    MDL_APPLYOVERLAYMDS(VLK_11225_REFUGEE, HUMANSBABEMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_11225_REFUGEE);
    B_GIVENPCTALENTS(VLK_11225_REFUGEE);
    B_SETFIGHTSKILLS(VLK_11225_REFUGEE, 40);
    DAILY_ROUTINE = RTN_START_11225;
    AIVAR[70] = NPC_AMB_REFUGEE;
}

func void RTN_START_11225() {
    TA_SMALLTALK(7, 0, 22, 0, "PART15_VINEYARD_REFUGEE_06");
    TA_SMALLTALK(22, 0, 7, 0, TOT2);
}


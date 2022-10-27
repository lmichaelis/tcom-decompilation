instance VLK_11176_REFUGEE(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_WOMANREFUGEE;
    GUILD = GIL_VLK;
    ID = 0x2ba8;
    VOICE = 44;
    FLAGS = NPC_FLAG_IMPORTANT;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(VLK_11176_REFUGEE, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(VLK_11176_REFUGEE, FEMALE, HUMHEADBABE3, FACE_WN_REFUGEE09, 5, 0x846c);
    MDL_APPLYOVERLAYMDS(VLK_11176_REFUGEE, HUMANSBABEMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_11176_REFUGEE);
    B_GIVENPCTALENTS(VLK_11176_REFUGEE);
    B_SETFIGHTSKILLS(VLK_11176_REFUGEE, 40);
    DAILY_ROUTINE = RTN_START_11176;
}

func void RTN_START_11176() {
    TA_SIT_DEPRESSION(5, 0, 22, 0, "PART15_VINEYARD_REFUGEE_02");
    TA_SIT_DEPRESSION(22, 0, 5, 0, "PART15_VINEYARD_REFUGEE_02");
}


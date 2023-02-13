instance VLK_11230_REFUGEE(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_WOMANREFUGEE;
    GUILD = GIL_VLK;
    ID = 11230;
    VOICE = 31;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(VLK_11230_REFUGEE, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(VLK_11230_REFUGEE, FEMALE, HUMHEADBABE4, FACE_WL_REFUGEE30, 6, 35607);
    MDL_APPLYOVERLAYMDS(VLK_11230_REFUGEE, HUMANSBABEMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_11230_REFUGEE);
    B_GIVENPCTALENTS(VLK_11230_REFUGEE);
    B_SETFIGHTSKILLS(VLK_11230_REFUGEE, 40);
    DAILY_ROUTINE = RTN_START_11230;
    AIVAR[70] = NPC_AMB_REFUGEE;
}

func void RTN_START_11230() {
    TA_STAND_EATING(8, 0, 22, 0, "PART9_VINEYARD_REFUGEE_03");
    TA_STAND_EATING(22, 0, 8, 0, "PART9_VINEYARD_REFUGEE_03");
}

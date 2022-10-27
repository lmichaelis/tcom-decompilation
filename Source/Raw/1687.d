instance VLK_11226_REFUGEE(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_WOMANREFUGEE;
    GUILD = GIL_VLK;
    ID = 0x2bda;
    VOICE = 69;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(VLK_11226_REFUGEE, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(VLK_11226_REFUGEE, FEMALE, HUMHEADBABEHAIR, FACE_WP_REFUGEE26, 4, 0x8b16);
    MDL_APPLYOVERLAYMDS(VLK_11226_REFUGEE, HUMANSBABEMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_11226_REFUGEE);
    B_GIVENPCTALENTS(VLK_11226_REFUGEE);
    B_SETFIGHTSKILLS(VLK_11226_REFUGEE, 40);
    DAILY_ROUTINE = RTN_START_11226;
    AIVAR[70] = NPC_AMB_REFUGEE;
}

func void RTN_START_11226() {
    TA_SIT_CASUAL(8, 0, 22, 0, "PART15_VINEYARD_REFUGEE_07");
    TA_SIT_CASUAL(22, 0, 8, 0, "PART15_VINEYARD_REFUGEE_07");
}


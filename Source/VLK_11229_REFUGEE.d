instance VLK_11229_REFUGEE(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_REFUGEE;
    GUILD = GIL_VLK;
    ID = 11229;
    VOICE = 61;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(VLK_11229_REFUGEE, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(VLK_11229_REFUGEE, MALE, HUMHEADPONY, FACE_P_REFUGEE29, 0, 35542);
    MDL_APPLYOVERLAYMDS(VLK_11229_REFUGEE, HUMANSTIREDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_11229_REFUGEE);
    B_GIVENPCTALENTS(VLK_11229_REFUGEE);
    B_SETFIGHTSKILLS(VLK_11229_REFUGEE, 40);
    DAILY_ROUTINE = RTN_START_11229;
    AIVAR[70] = NPC_AMB_REFUGEE;
}

func void RTN_START_11229() {
    TA_SIT_DEPRESSION(8, 0, 22, 0, "PART9_VINEYARD_REFUGEE_02");
    TA_SIT_DEPRESSION(22, 0, 8, 0, "PART9_VINEYARD_REFUGEE_02");
}


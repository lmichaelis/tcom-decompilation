instance VLK_6219_REFUGEE(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_REFUGEE;
    GUILD = GIL_VLK;
    ID = 6219;
    VOICE = 37;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(VLK_6219_REFUGEE, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(VLK_6219_REFUGEE, MALE, HUMHEADBALD, FACE_N_REFUGEE12, 24, 35585);
    MDL_APPLYOVERLAYMDS(VLK_6219_REFUGEE, HUMANSTIREDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_6219_REFUGEE);
    B_GIVENPCTALENTS(VLK_6219_REFUGEE);
    B_SETFIGHTSKILLS(VLK_6219_REFUGEE, 40);
    DAILY_ROUTINE = RTN_START_6219;
    AIVAR[70] = NPC_AMB_REFUGEE;
}

func void RTN_START_6219() {
    TA_SIT_DEPRESSION(8, 0, 22, 0, "VILLAGE_REFUGEE_01");
    TA_SIT_DEPRESSION(22, 0, 8, 0, "VILLAGE_REFUGEE_01");
}


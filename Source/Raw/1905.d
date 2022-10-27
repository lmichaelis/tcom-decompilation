instance VLK_11207_REFUGEE(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_REFUGEE;
    GUILD = GIL_VLK;
    ID = 0x2bc7;
    VOICE = 25;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(VLK_11207_REFUGEE, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(VLK_11207_REFUGEE, MALE, HUMHEADFATBALD, FACE_P_REFUGEE00, BODYTEX_P_HOMELESS02, 0x8b07);
    MDL_APPLYOVERLAYMDS(VLK_11207_REFUGEE, HUMANSTIREDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_11207_REFUGEE);
    B_GIVENPCTALENTS(VLK_11207_REFUGEE);
    B_SETFIGHTSKILLS(VLK_11207_REFUGEE, 40);
    DAILY_ROUTINE = RTN_START_11207;
    AIVAR[70] = NPC_AMB_REFUGEE;
}

func void RTN_START_11207() {
    TA_STAND_EATING(7, 0, 22, 0, "VILLAGE_REFUGEE_06");
    TA_STAND_EATING(22, 0, 7, 0, "VILLAGE_REFUGEE_06");
}


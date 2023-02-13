instance VLK_11206_REFUGEE(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_REFUGEE;
    GUILD = GIL_VLK;
    ID = 11206;
    VOICE = 61;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(VLK_11206_REFUGEE, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(VLK_11206_REFUGEE, MALE, HUMHEADFATBALD, FACE_P_REFUGEE16, BODYTEX_P_HOMELESS02, 35544);
    MDL_APPLYOVERLAYMDS(VLK_11206_REFUGEE, HUMANSTIREDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_11206_REFUGEE);
    B_GIVENPCTALENTS(VLK_11206_REFUGEE);
    B_SETFIGHTSKILLS(VLK_11206_REFUGEE, 40);
    DAILY_ROUTINE = RTN_START_11206;
    AIVAR[70] = NPC_AMB_REFUGEE;
}

func void RTN_START_11206() {
    TA_SMOKE_JOINT(7, 0, 22, 0, "VILLAGE_REFUGEE_05");
    TA_SMOKE_JOINT(22, 0, 7, 0, "VILLAGE_REFUGEE_05");
}


instance VLK_11211_REFUGEE(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_REFUGEE;
    GUILD = GIL_VLK;
    ID = 0x2bcb;
    VOICE = 6;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(VLK_11211_REFUGEE, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(VLK_11211_REFUGEE, MALE, HUMHEADFIGHTER, FACE_L_REFUGEE20, BODYTEX_L_HOMELESS02, -(1));
    MDL_APPLYOVERLAYMDS(VLK_11211_REFUGEE, HUMANSTIREDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_11211_REFUGEE);
    B_GIVENPCTALENTS(VLK_11211_REFUGEE);
    B_SETFIGHTSKILLS(VLK_11211_REFUGEE, 40);
    DAILY_ROUTINE = RTN_START_11211;
    AIVAR[70] = NPC_AMB_REFUGEE;
}

func void RTN_START_11211() {
    TA_STAND_DRINKING(8, 0, 22, 0, "VILLAGE_REFUGEE_10");
    TA_STAND_DRINKING(22, 0, 8, 0, "VILLAGE_REFUGEE_10");
}


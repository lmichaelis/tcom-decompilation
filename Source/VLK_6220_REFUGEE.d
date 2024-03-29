instance VLK_6220_REFUGEE(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_REFUGEE;
    GUILD = GIL_VLK;
    ID = 6220;
    VOICE = 64;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(VLK_6220_REFUGEE, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(VLK_6220_REFUGEE, MALE, HUMHEADWITHOUTPONY, FACE_L_REFUGEE13, 2, 35413);
    MDL_APPLYOVERLAYMDS(VLK_6220_REFUGEE, HUMANSTIREDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_6220_REFUGEE);
    B_GIVENPCTALENTS(VLK_6220_REFUGEE);
    B_SETFIGHTSKILLS(VLK_6220_REFUGEE, 40);
    DAILY_ROUTINE = RTN_START_6220;
    AIVAR[70] = NPC_AMB_REFUGEE;
}

func void RTN_START_6220() {
    TA_SMALLTALK(7, 0, 22, 0, "VILLAGE_REFUGEE_04");
    TA_SMALLTALK(22, 0, 7, 0, TOT2);
}


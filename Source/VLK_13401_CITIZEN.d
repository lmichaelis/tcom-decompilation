instance VLK_13401_CITIZEN(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_VOLKERLISTENER;
    GUILD = GIL_VLK;
    ID = 13401;
    VOICE = 63;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(VLK_13401_CITIZEN, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(VLK_13401_CITIZEN, MALE, HUMHEADFATBALD, FACE_N_LISTENER06, 1, 35545);
    MDL_APPLYOVERLAYMDS(VLK_13401_CITIZEN, HUMANSRELAXEDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_13401_CITIZEN);
    B_GIVENPCTALENTS(VLK_13401_CITIZEN);
    B_SETFIGHTSKILLS(VLK_13401_CITIZEN, 45);
    DAILY_ROUTINE = RTN_START_13401;
    AIVAR[74] = NPC_IAMBUSY;
}

func void RTN_START_13401() {
    TA_IDLE(7, 0, 21, 0, "PARTM3_VOLKERLISTENER01");
    TA_IDLE(21, 0, 7, 0, TOT2);
}

func void RTN_SQ505_ANGRYMOB_13401() {
    TA_ANGRYMOB_SQ505(7, 0, 21, 0, "PARTM3_VOLKERLISTENER01");
    TA_ANGRYMOB_SQ505(21, 0, 7, 0, TOT2);
}

func void RTN_TOT_13401() {
    TA_IDLE(7, 0, 21, 0, TOT2);
    TA_IDLE(21, 0, 7, 0, TOT2);
}


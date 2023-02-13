instance VLK_6428_WORKER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_ARBEITER;
    GUILD = GIL_VLK;
    ID = 6428;
    VOICE = 64;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(VLK_6428_WORKER, 10);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(VLK_6428_WORKER, MALE, HUMHEADFATBALD, FACE_P_KLAUDIOS, 1, 35579);
    MDL_APPLYOVERLAYMDS(VLK_6428_WORKER, HUMANSTIREDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_6428_WORKER);
    B_GIVENPCTALENTS(VLK_6428_WORKER);
    B_SETFIGHTSKILLS(VLK_6428_WORKER, 10);
    DAILY_ROUTINE = RTN_START_6428;
    AIVAR[70] = NPC_AMB_CITY_WORKER;
}

func void RTN_START_6428() {
    TA_CLEANWALL(6, 0, 10, 0, "PARTM5_PATH_97");
    TA_CLEANWALL(10, 0, 14, 0, "PARTM5_PATH_101");
    TA_CLEANWALL(14, 0, 18, 0, "PARTM5_PATH_93");
    TA_STAND_DRINKING(18, 0, 6, 0, "HARBOUR_TAVERN_61");
}


instance VLK_6432_MAURICE(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BUERGER;
    GUILD = GIL_VLK;
    ID = 6432;
    VOICE = 28;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(VLK_6432_MAURICE, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(VLK_6432_MAURICE, MALE, HUMHEADPONY, FACE_N_MAURICE, 1, 35547);
    MDL_APPLYOVERLAYMDS(VLK_6432_MAURICE, HUMANSRELAXEDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_6432_MAURICE);
    B_GIVENPCTALENTS(VLK_6432_MAURICE);
    B_SETFIGHTSKILLS(VLK_6432_MAURICE, 50);
    DAILY_ROUTINE = RTN_START_6432;
    AIVAR[70] = NPC_AMB_CITY_CITIZEN;
}

func void RTN_START_6432() {
    TA_STAND_SWEEPING(7, 0, 8, 0, "PARTM3_WORKSHOP_BREAK");
    TA_STAND_SWEEPING(8, 0, 7, 0, "PARTM3_WORKSHOP_BREAK");
}


instance VLK_6056_GUY(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BUERGER;
    GUILD = GIL_VLK;
    ID = 6056;
    VOICE = 59;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(VLK_6056_GUY, 20);
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    B_SETNPCVISUAL(VLK_6056_GUY, MALE, HUMHEADFIGHTER, FACE_B_BEGGAR24, 3, 35572);
    MDL_APPLYOVERLAYMDS(VLK_6056_GUY, HUMANSPOCKETWALKMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_6056_GUY);
    B_GIVENPCTALENTS(VLK_6056_GUY);
    B_SETFIGHTSKILLS(VLK_6056_GUY, 40);
    DAILY_ROUTINE = RTN_START_6056;
    AIVAR[74] = NPC_CITY_IMFROMSLUMS;
    AIVAR[70] = NPC_AMB_CITY_SLUMS;
}

func void RTN_START_6056() {
    TA_OBSERVE(7, 30, 21, 20, "SLUMS_STAND_17");
    TA_SLEEP(21, 20, 7, 30, "SLUMS_HOUSE05_07");
}


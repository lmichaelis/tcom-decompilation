instance VLK_11158_ELDERLYWOMAN(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_WIDOW;
    GUILD = GIL_VLK;
    ID = 11158;
    VOICE = 33;
    FLAGS = NPC_FLAG_IMPORTANT;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(VLK_11158_ELDERLYWOMAN, 30);
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    B_SETNPCVISUAL(VLK_11158_ELDERLYWOMAN, FEMALE, HUMHEADBABE5, FACE_WN_ELDERLYWOMAN, 5, 35603);
    MDL_APPLYOVERLAYMDS(VLK_11158_ELDERLYWOMAN, HUMANSBABEMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_11158_ELDERLYWOMAN);
    B_GIVENPCTALENTS(VLK_11158_ELDERLYWOMAN);
    B_SETFIGHTSKILLS(VLK_11158_ELDERLYWOMAN, 30);
    DAILY_ROUTINE = RTN_START_11158;
}

func void RTN_START_11158() {
    TA_OBSERVE(7, 0, 20, 0, RNG_NS05_WAYPOINT);
    TA_OBSERVE(20, 0, 7, 0, TOT2);
}

func void RTN_TOT_11158() {
    TA_OBSERVE(7, 0, 20, 0, TOT2);
    TA_OBSERVE(20, 0, 7, 0, TOT2);
}


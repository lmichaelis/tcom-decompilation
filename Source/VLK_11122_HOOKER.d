instance VLK_11122_HOOKER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_HOOKER;
    GUILD = GIL_VLK;
    ID = 11122;
    VOICE = 65;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(VLK_11122_HOOKER, 20);
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    B_SETNPCVISUAL(VLK_11122_HOOKER, FEMALE, HUMHEADBABE3, FACE_WN_HOOKER01, BODYTEXBABE_S, NO_ARMOR);
    B_CREATEAMBIENTINV(VLK_11122_HOOKER);
    MDL_APPLYOVERLAYMDS(VLK_11122_HOOKER, HUMANSBABEMDS);
    B_GIVENPCTALENTS(VLK_11122_HOOKER);
    B_SETFIGHTSKILLS(VLK_11122_HOOKER, 30);
    DAILY_ROUTINE = RTN_START_11122;
}

func void RTN_START_11122() {
    TA_OBSERVE(7, 30, 21, 30, "HARBOUR_HOOKER_01");
    TA_OBSERVE(21, 30, 7, 30, "TOT2");
}

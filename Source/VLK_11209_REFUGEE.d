instance VLK_11209_REFUGEE(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_WOMANREFUGEE;
    GUILD = GIL_VLK;
    ID = 11209;
    VOICE = 69;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(VLK_11209_REFUGEE, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(VLK_11209_REFUGEE, FEMALE, HUMHEADBABE2, FACE_WN_REFUGEE18, 5, 33911);
    MDL_APPLYOVERLAYMDS(VLK_11209_REFUGEE, HUMANSBABEMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_11209_REFUGEE);
    B_GIVENPCTALENTS(VLK_11209_REFUGEE);
    B_SETFIGHTSKILLS(VLK_11209_REFUGEE, 40);
    DAILY_ROUTINE = RTN_START_11209;
    AIVAR[70] = NPC_AMB_REFUGEE;
}

func void RTN_START_11209() {
    TA_SIT_BENCH(8, 0, 18, 0, "VILLAGE_BENCH_01");
    TA_STAND_DRINKING(18, 0, 8, 0, "VILLAGE_REFUGEE_08");
}

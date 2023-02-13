instance VLK_6007_GUY(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BUERGER;
    GUILD = GIL_VLK;
    ID = 6007;
    VOICE = 61;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(VLK_6007_GUY, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(VLK_6007_GUY, MALE, HUMHEADFATBALD, FACE_L_CITIZEN26, 2, 35549);
    MDL_APPLYOVERLAYMDS(VLK_6007_GUY, HUMANSMILITIAMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_6007_GUY);
    B_GIVENPCTALENTS(VLK_6007_GUY);
    B_SETFIGHTSKILLS(VLK_6007_GUY, 40);
    DAILY_ROUTINE = RTN_START_6007;
    AIVAR[70] = NPC_AMB_CITY_CITIZEN;
}

func void RTN_START_6007() {
    TA_READ(8, 25, 13, 25, "PARTM4_MUSEUM_STAND_03");
    TA_STAND_EATING(13, 25, 14, 40, "HARBOUR_MARKETSTALLBUY_01");
    TA_SIT_BENCH(14, 40, 18, 0, "HARBOUR_BENCH_19");
    TA_SIT_BENCH_DRINK(18, 0, 19, 30, "HARBOUR_BENCH_19");
    TA_SIT_BENCH(19, 30, 23, 0, "HARBOUR_BENCH_19");
    TA_SLEEP(23, 0, 8, 25, "HARBOUR_HOUSE12_08");
}

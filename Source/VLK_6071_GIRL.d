instance VLK_6071_GIRL(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BUERGERIN;
    GUILD = GIL_VLK;
    ID = 6071;
    VOICE = 32;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(VLK_6071_GIRL, 20);
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    B_SETNPCVISUAL(VLK_6071_GIRL, FEMALE, HUMHEADBABEHAIR1, FACE_WN_CITIZEN42, 5, 35602);
    MDL_APPLYOVERLAYMDS(VLK_6071_GIRL, HUMANSBABEMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_6071_GIRL);
    B_GIVENPCTALENTS(VLK_6071_GIRL);
    B_SETFIGHTSKILLS(VLK_6071_GIRL, 30);
    DAILY_ROUTINE = RTN_START_6071;
    AIVAR[70] = NPC_AMB_CITY_CITIZEN;
}

func void RTN_START_6071() {
    TA_STAND_DRINKING(6, 30, 9, 30, "PARTM3_PATH_248");
    TA_STAND_EATING(9, 30, 11, 30, "HARBOUR_MARKETSTALLBUY_01");
    TA_STAND_EATING(11, 30, 14, 10, "HARBOUR_STAND_02");
    TA_SIT_BENCH(14, 10, 18, 0, "HARBOUR_BENCH_06");
    TA_PRAYSTAND(18, 0, 19, 0, "HARBOUR_PRAY_03");
    TA_STAND_SWEEPING(19, 0, 22, 30, "HARBOUR_TAVERN_GUEST_14");
    TA_SLEEP(22, 30, 6, 30, "PARTM1_HOTEL_BED_02");
}

func void RTN_Q206_FINBARBODY_6071() {
    TA_STAND_EATING(7, 0, 22, 0, "HARBOUR_STAND_02");
    TA_STAND_EATING(22, 0, 7, 0, TOT2);
}


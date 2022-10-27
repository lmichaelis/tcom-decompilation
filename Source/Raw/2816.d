instance DJG_13329_TONAN(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_TONAN;
    GUILD = GIL_DJG;
    ID = 0x3411;
    VOICE = 72;
    FLAGS = NPC_FLAG_IMPORTANT;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(DJG_13329_TONAN, 50);
    FIGHT_TACTIC = FAI_HUMAN_MASTER;
    B_SETNPCVISUAL(DJG_13329_TONAN, MALE, HUMHEADBALD, FACE_N_TONAN, 1, 0x8ac0);
    MDL_APPLYOVERLAYMDS(DJG_13329_TONAN, HUMANSMILITIAMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(DJG_13329_TONAN);
    B_GIVENPCTALENTS(DJG_13329_TONAN);
    B_SETFIGHTSKILLS(DJG_13329_TONAN, 60);
    DAILY_ROUTINE = RTN_START_13329;
}

func void RTN_START_13329() {
    TA_SIT_BENCH_DRINK(8, 0, 10, 0, "PART11_TONAN_BENCH");
    TA_SIT_BENCH_DRINK(10, 0, 8, 0, "PART11_TONAN_BENCH");
}

func void RTN_SQ414_FARM_13329() {
    TA_STAND_ARMSCROSSED(8, 0, 10, 0, "PART6_SQ414_TONAN");
    TA_STAND_ARMSCROSSED(10, 0, 8, 0, "PART6_SQ414_TONAN");
}

func void RTN_SQ414_GUIDE_V1_13329() {
    TA_GUIDE_PLAYER(8, 0, 10, 0, "PART6_FOREST_33");
    TA_GUIDE_PLAYER(10, 0, 8, 0, "PART6_FOREST_33");
}

func void RTN_SQ414_GUIDE_V2_13329() {
    TA_GUIDE_PLAYER(8, 0, 10, 0, "PART6_TOWERGHOST_02");
    TA_GUIDE_PLAYER(10, 0, 8, 0, "PART6_TOWERGHOST_02");
}

func void RTN_SQ414_TOWER_13329() {
    TA_PLUNDER(8, 0, 10, 0, "PART6_TOWERGHOST_02");
    TA_PLUNDER(10, 0, 8, 0, "PART6_TOWERGHOST_02");
}

func void RTN_SQ414_OBSERVE_13329() {
    TA_GAWK(8, 0, 10, 0, "PART6_TOWERGHOST_02");
    TA_GAWK(10, 0, 8, 0, "PART6_TOWERGHOST_02");
}

func void RTN_SQ414_DIALOGUE_13329() {
    TA_STAYSTRAIGHT(8, 0, 10, 0, "PART6_TOWERGHOST_02");
    TA_STAYSTRAIGHT(10, 0, 8, 0, "PART6_TOWERGHOST_02");
}


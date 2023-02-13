instance VLK_3014_GERHARD(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_GERHARD;
    GUILD = GIL_VLK;
    ID = 3014;
    VOICE = 22;
    FLAGS = NPC_FLAG_IMPORTANT;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(VLK_3014_GERHARD, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(VLK_3014_GERHARD, MALE, HUMHEADWITHOUTPONY, FACE_B_GERHARD, 3, 35550);
    MDL_APPLYOVERLAYMDS(VLK_3014_GERHARD, HUMANSARROGANCEMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_3014_GERHARD);
    B_GIVENPCTALENTS(VLK_3014_GERHARD);
    B_SETFIGHTSKILLS(VLK_3014_GERHARD, 30);
    DAILY_ROUTINE = RTN_START_3014;
    AIVAR[75] = WALKMODE_WALK;
}

func void RTN_START_3014() {
    TA_STAYSTRAIGHT(8, 0, 22, 0, "PARTM4_TAVERN_BENCH_01");
    TA_STAYSTRAIGHT(22, 0, 8, 0, "PARTM4_TAVERN_BENCH_01");
}

func void RTN_SQ225_UPSTAIRS_3014() {
    TA_STAND_ARMSCROSSED(8, 0, 22, 0, "PARTM4_TAVERN_GERHARD");
    TA_STAND_ARMSCROSSED(22, 0, 8, 0, "PARTM4_TAVERN_GERHARD");
}

func void RTN_SQ225_TAVERN_3014() {
    TA_STAND_ARMSCROSSED(8, 0, 22, 0, "PARTM4_TAVERN_GERHARD");
    TA_STAND_ARMSCROSSED(22, 0, 8, 0, "PARTM4_TAVERN_GERHARD");
}

func void RTN_TOT_3014() {
    TA_SIT_CHAIR(8, 0, 22, 0, TOT);
    TA_SIT_CHAIR(22, 0, 8, 0, TOT);
}

instance VLK_3014_GERHARD_VINEYARDFIGHT(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_GERHARD;
    GUILD = GIL_VLK;
    ID = 30140;
    VOICE = 22;
    FLAGS = NPC_FLAG_IMPORTANT;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(VLK_3014_GERHARD_VINEYARDFIGHT, 30);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    EQUIPITEM(VLK_3014_GERHARD_VINEYARDFIGHT, 34021);
    B_SETNPCVISUAL(VLK_3014_GERHARD_VINEYARDFIGHT, MALE, HUMHEADWITHOUTPONY, FACE_B_GERHARD, 3, 35417);
    MDL_APPLYOVERLAYMDS(VLK_3014_GERHARD_VINEYARDFIGHT, HUMANSARROGANCEMDS);
    MDL_APPLYOVERLAYMDS(VLK_3014_GERHARD_VINEYARDFIGHT, HUMANS1HST1);
    B_GIVENPCTALENTS(VLK_3014_GERHARD_VINEYARDFIGHT);
    B_SETFIGHTSKILLS(VLK_3014_GERHARD_VINEYARDFIGHT, 20);
    DAILY_ROUTINE = RTN_SQ225_SPAWNSPOT_01_30140;
}

func void RTN_SQ225_SPAWNSPOT_01_30140() {
    TA_STAYSTRAIGHT(8, 0, 22, 0, "PART9_SQ225_GERHARD_SPAWNSPOT_01");
    TA_STAYSTRAIGHT(22, 0, 8, 0, "PART9_SQ225_GERHARD_SPAWNSPOT_01");
}

func void RTN_SQ225_SPAWNSPOT_02_30140() {
    TA_STAYSTRAIGHT(8, 0, 22, 0, "PART9_SQ225_GERHARD_SPAWNSPOT_02");
    TA_STAYSTRAIGHT(22, 0, 8, 0, "PART9_SQ225_GERHARD_SPAWNSPOT_02");
}

func void RTN_SQ225_SPAWNSPOT_03_30140() {
    TA_STAYSTRAIGHT(8, 0, 22, 0, "PART9_SQ225_GERHARD_SPAWNSPOT_03");
    TA_STAYSTRAIGHT(22, 0, 8, 0, "PART9_SQ225_GERHARD_SPAWNSPOT_03");
}

func void RTN_SQ225_SPAWNSPOT_04_30140() {
    TA_STAYSTRAIGHT(8, 0, 22, 0, "PART9_SQ225_GERHARD_SPAWNSPOT_04");
    TA_STAYSTRAIGHT(22, 0, 8, 0, "PART9_SQ225_GERHARD_SPAWNSPOT_04");
}

func void RTN_SQ225_GUIDE_30140() {
    TA_GUIDE_PLAYER(8, 0, 22, 0, "PART9_VINEYARD_51");
    TA_GUIDE_PLAYER(22, 0, 8, 0, "PART9_VINEYARD_51");
}

func void RTN_SQ225_FOLLOW_30140() {
    TA_FOLLOW_PLAYER_ONLYDIALOGUE(8, 0, 22, 0, "PART9_VINEYARD_51");
    TA_FOLLOW_PLAYER_ONLYDIALOGUE(22, 0, 8, 0, "PART9_VINEYARD_51");
}

func void RTN_TOT_30140() {
    TA_STAYSTRAIGHT(8, 0, 22, 0, TOT);
    TA_STAYSTRAIGHT(22, 0, 8, 0, TOT);
}


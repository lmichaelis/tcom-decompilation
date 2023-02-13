instance SQ225_HOLDWIGWAY_FINISH(CUTSCENE) {
    ONSTART = FUNCTION(92911);
}

func void SQ225_HOLDWIGWAY_FINISH_WAIT() {
    AI_WAITTILLEND(HERO, BAU_11182_FARMER);
    AI_WAITTILLEND(HERO, BAU_2265_FARMER);
    AI_WAITTILLEND(HERO, BAU_2267_FARMER);
    AI_WAITTILLEND(HERO, BAU_2245_HOLDWIG);
    AI_WAITTILLEND(BAU_11182_FARMER, HERO);
    AI_WAITTILLEND(BAU_11182_FARMER, BAU_2265_FARMER);
    AI_WAITTILLEND(BAU_11182_FARMER, BAU_2267_FARMER);
    AI_WAITTILLEND(BAU_11182_FARMER, BAU_2245_HOLDWIG);
    AI_WAITTILLEND(BAU_2267_FARMER, HERO);
    AI_WAITTILLEND(BAU_2267_FARMER, BAU_2265_FARMER);
    AI_WAITTILLEND(BAU_2267_FARMER, BAU_11182_FARMER);
    AI_WAITTILLEND(BAU_2267_FARMER, BAU_2245_HOLDWIG);
    AI_WAITTILLEND(BAU_2265_FARMER, HERO);
    AI_WAITTILLEND(BAU_2265_FARMER, BAU_2267_FARMER);
    AI_WAITTILLEND(BAU_2265_FARMER, BAU_11182_FARMER);
    AI_WAITTILLEND(BAU_2265_FARMER, BAU_2245_HOLDWIG);
    AI_WAITTILLEND(BAU_2245_HOLDWIG, BAU_11182_FARMER);
    AI_WAITTILLEND(BAU_2245_HOLDWIG, BAU_2265_FARMER);
    AI_WAITTILLEND(BAU_2245_HOLDWIG, BAU_2267_FARMER);
    AI_WAITTILLEND(BAU_2245_HOLDWIG, HERO);
}

func void SQ225_HOLDWIGWAY_FINISH_START() {
    WLD_SENDTRIGGER("KM_SQ225_ANDERASFINISH_01");
    MDL_APPLYOVERLAYMDS(BAU_2245_HOLDWIG, "HumanS_Leader.mds");
    TELEPORTNPCTOWP(1819, "PART9_SQ225_CUTSCENE_HERO");
    TELEPORTNPCTOWP(57074, "PART9_SQ225_CUTSCENE_GERHARD");
    TELEPORTNPCTOWP(57086, "PART9_SQ225_CUTSCENE_HOLDWIG_DOWN");
    TELEPORTNPCTOWP(57001, "PART9_SQ225_CUTSCENE_FARMER_01");
    TELEPORTNPCTOWP(57013, "PART9_SQ225_CUTSCENE_FARMER_02");
    TELEPORTNPCTOWP(56877, "PART9_VINEYARD_40");
    NPC_CLEARAIQUEUE(BAU_2245_HOLDWIG);
    NPC_CLEARAIQUEUE(BAU_11182_FARMER);
    BAU_2245_HOLDWIG.AIVAR[92] = TRUE;
    BAU_2265_FARMER.AIVAR[92] = TRUE;
    BAU_2267_FARMER.AIVAR[92] = TRUE;
    BAU_11182_FARMER.AIVAR[92] = TRUE;
    B_TURNTONPC(BAU_2265_FARMER, VLK_11181_ANDERAS_VINEYARDFIGHT);
    B_TURNTONPC(BAU_2267_FARMER, VLK_11181_ANDERAS_VINEYARDFIGHT);
    B_TURNTONPC(BAU_11182_FARMER, VLK_11181_ANDERAS_VINEYARDFIGHT);
    B_TURNTONPC(BAU_2245_HOLDWIG, BAU_2265_FARMER);
    B_TURNTONPC(HERO, BAU_2267_FARMER);
    SQ225_HOLDWIGWAY_FINISH_WAIT();
    AI_SETWALKMODE(BAU_11182_FARMER, NPC_RUN);
    AI_GOTOWP(BAU_11182_FARMER, "PART9_VINEYARD_50");
    AI_TURNTONPC(BAU_11182_FARMER, BAU_2245_HOLDWIG);
    AI_STARTFACEANI(BAU_2265_FARMER, S_ANGRY, 1, -(1));
    AI_STARTFACEANI(BAU_2267_FARMER, S_ANGRY, 1, -(1));
    AI_STARTFACEANI(BAU_11182_FARMER, S_ANGRY, 1, -(1));
    AI_OUTPUT(BAU_2265_FARMER, HERO, "DIA_Farmer_HoldwigFinish_Cutscene_03_01");
    SQ225_HOLDWIGWAY_FINISH_WAIT();
    AI_OUTPUT(BAU_2267_FARMER, HERO, "DIA_Farmer_HoldwigFinish_Cutscene_03_02");
    SQ225_HOLDWIGWAY_FINISH_WAIT();
    AI_OUTPUT(BAU_11182_FARMER, HERO, "DIA_Farmer_HoldwigFinish_Cutscene_03_03");
    SQ225_HOLDWIGWAY_FINISH_WAIT();
    AI_FUNCTION(BAU_2245_HOLDWIG, 92914);
    AI_TURNTONPC(BAU_2245_HOLDWIG, BAU_11182_FARMER);
    AI_OUTPUT(BAU_2245_HOLDWIG, HERO, "DIA_Holdwig_HoldwigFinish_Cutscene_03_04");
    SQ225_HOLDWIGWAY_FINISH_WAIT();
    AI_FUNCTION(BAU_2245_HOLDWIG, 92915);
    AI_TURNTONPC(BAU_2265_FARMER, BAU_2245_HOLDWIG);
    AI_TURNTONPC(BAU_2267_FARMER, BAU_2245_HOLDWIG);
    AI_TURNTONPC(BAU_11182_FARMER, HERO);
    AI_WAIT(BAU_2245_HOLDWIG, 1087373312);
    SQ225_HOLDWIGWAY_FINISH_WAIT();
    AI_FUNCTION(BAU_2245_HOLDWIG, 92918);
    if ((NPC_HASITEMS(BAU_2245_HOLDWIG, 36037)) == (0)) {
        CREATEINVITEM(BAU_2245_HOLDWIG, 36037);
        AI_USEITEMTOSTATE(BAU_2245_HOLDWIG, 36037, 1);
        AI_WAIT(BAU_2245_HOLDWIG, 1082130432);
        AI_USEITEMTOSTATE(BAU_2245_HOLDWIG, 36037, -(1));
    };
    AI_WAIT(BAU_2245_HOLDWIG, 1036831949);
    AI_FUNCTION(BAU_2245_HOLDWIG, 92919);
    AI_WAIT(BAU_2245_HOLDWIG, 1045220557);
    AI_TURNTONPC(BAU_2245_HOLDWIG, VLK_11181_ANDERAS_VINEYARDFIGHT);
    AI_OUTPUT(BAU_2245_HOLDWIG, HERO, "DIA_Holdwig_HoldwigFinish_Cutscene_03_05");
    SQ225_HOLDWIGWAY_FINISH_WAIT();
    AI_FUNCTION(BAU_2245_HOLDWIG, 92913);
    AI_SETWALKMODE(BAU_2245_HOLDWIG, NPC_WALK);
    AI_GOTOWP(BAU_2245_HOLDWIG, "PART9_SQ225_CUTSCENE_ANDERAS");
}

func void SQ225_HOLDWIGWAY_FINISH_WATCHFIGHT() {
    AI_STARTFACEANI(BAU_2265_FARMER, S_SMILE, 1, -(1));
    AI_STARTFACEANI(BAU_2267_FARMER, S_SMILE, 1, -(1));
    AI_STARTFACEANI(BAU_11182_FARMER, S_SMILE, 1, -(1));
    AI_WAIT(BAU_2265_FARMER, 1050253722);
    AI_PLAYANI(BAU_2265_FARMER, "T_WATCHFIGHT_YEAH_02");
    AI_WAIT(BAU_2267_FARMER, 1060320051);
    AI_PLAYANI(BAU_2267_FARMER, "T_WATCHFIGHT_YEAH_03");
    AI_WAIT(BAU_11182_FARMER, 1053609165);
    AI_PLAYANI(BAU_11182_FARMER, "T_WATCHFIGHT_YEAH_03");
}

func void SQ225_HOLDWIGWAY_FINISH_END() {
    SQ225_REMOVEHOLDWIGPORTALCHECK = FALSE;
    WLD_ASSIGNROOMTOGUILD("9WINERY01", GIL_PUBLIC);
    FADESCREENTOBLACKF(5, 61101, 1000);
}

func void SQ225_HOLDWIGWAY_CHANGECAMERA_01() {
    WLD_SENDTRIGGER("KM_SQ225_ANDERASFINISH_02");
    WLD_SENDUNTRIGGER("KM_SQ225_ANDERASFINISH_01");
}

func void SQ225_HOLDWIGWAY_CHANGECAMERA_02() {
    WLD_SENDTRIGGER("KM_SQ225_ANDERASFINISH_04");
    WLD_SENDUNTRIGGER("KM_SQ225_ANDERASFINISH_02");
    TELEPORTNPCTOWP(57074, "PART9_VINEYARD_STAND_08");
    TELEPORTNPCTOWP(57086, "PART9_SQ225_CUTSCENE_ANDERAS");
    TELEPORTNPCTOWP(57001, "PART9_SQ225_CUTSCENE_FARMER_03");
    TELEPORTNPCTOWP(57013, "PART9_VINEYARD_43");
    TELEPORTNPCTOWP(56877, "PART9_VINEYARD_32");
    TELEPORTNPCTOWP(1819, "PART9_VINEYARD_47");
    FF_APPLYONCEEXT(92916, 1000, 6);
}

func void SQ225_HOLDWIGWAY_PREPAREANDERAS() {
    var int SQ225_HOLDWIGWAY_PREPAREANDERAS_COUNT;
    SQ225_HOLDWIGWAY_PREPAREANDERAS_COUNT = (SQ225_HOLDWIGWAY_PREPAREANDERAS_COUNT) + (1);
    if ((SQ225_HOLDWIGWAY_PREPAREANDERAS_COUNT) == (1)) {
        VLK_11181_ANDERAS_VINEYARDFIGHT.AIVAR[96] = 0;
        AI_TURNTONPC(VLK_11181_ANDERAS_VINEYARDFIGHT, BAU_2245_HOLDWIG);
    };
    if ((SQ225_HOLDWIGWAY_PREPAREANDERAS_COUNT) == (6)) {
        MDL_APPLYOVERLAYMDS(VLK_11181_ANDERAS_VINEYARDFIGHT, "Humans_Marvin_RenegadePrison.MDS");
        MDL_STARTFACEANI(VLK_11181_ANDERAS_VINEYARDFIGHT, "S_EYESCLOSED", 1065353216, -1082130432);
    };
}

func void SQ225_HOLDWIGWAY_CHANGECAMERA_03() {
    WLD_SENDTRIGGER("KM_SQ225_ANDERASFINISH_05");
    WLD_SENDUNTRIGGER("KM_SQ225_ANDERASFINISH_04");
}

func void SQ225_HOLDWIGWAY_CHANGECAMERA_04() {
    WLD_SENDTRIGGER("KM_SQ225_ANDERASFINISH_06");
    WLD_SENDUNTRIGGER("KM_SQ225_ANDERASFINISH_05");
    TELEPORTNPCTOWP(1819, "PART9_VINEYARD_38");
}

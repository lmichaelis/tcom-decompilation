func void Q105_STARTQUEST_APPLY() {
    if ((Q105_STARTQUEST_COUNT) == (0)) {
        PRINTD("Rozpoczynam - Q105_StartQuest_Apply");
        MOVPTR1 = MEM_SEARCHVOBBYNAME("Q105_MOVER_BOTTLES_01");
        MOVER1 = MEM_PTRTOINST(MOVPTR1);
        CHANGEVOBCOLLISION("Q105_CRATE_PESANT_01", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("Q105_CRATE_PESANT_02", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("Q105_CRATE_PESANT_03", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("Q105_CRATE_PESANT_04", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("Q105_CRATE_PESANT_05", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("Q105_BEER_01", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("Q105_BEER_02", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("Q105_BEER_03", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("Q105_BEER_04", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("Q105_BEER_05", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("Q105_BEER_06", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("Q105_BEER_07", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("Q105_BEER_08", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("Q105_BEER_09", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("Q105_BEER_10", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("Q105_BEER_11", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("Q105_BEER_12", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("Q105_BEER_13", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("Q105_BEER_14", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("Q105_BEER_15", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("Q105_BEER_16", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("Q105_BEER_17", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("Q105_BEER_18", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("Q105_BEER_19", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("Q105_BEER_20", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("Q105_BEER_21", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("Q105_BIGCHEST", FALSE, FALSE, FALSE, TRUE);
        WLD_SENDTRIGGER("Q105_MOVER_BOTTLES_01");
        Q105_STARTQUEST_COUNT = 1;
    };
    if (((MOVER1.MOVERSTATE) != (MOVER_STATE_OPENING)) && ((MOVER1.MOVERSTATE) != (MOVER_STATE_CLOSING))) {
        PRINTD("Sko�czy�em - Q105_StartQuest_Apply");
        CHANGEVOBCOLLISION("Q105_CRATE_PESANT_01", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("Q105_CRATE_PESANT_02", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("Q105_CRATE_PESANT_03", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("Q105_CRATE_PESANT_04", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("Q105_CRATE_PESANT_05", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("Q105_BEER_01", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("Q105_BEER_02", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("Q105_BEER_03", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("Q105_BEER_04", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("Q105_BEER_05", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("Q105_BEER_06", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("Q105_BEER_07", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("Q105_BEER_08", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("Q105_BEER_09", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("Q105_BEER_10", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("Q105_BEER_11", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("Q105_BEER_12", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("Q105_BEER_13", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("Q105_BEER_14", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("Q105_BEER_15", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("Q105_BEER_16", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("Q105_BEER_17", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("Q105_BEER_18", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("Q105_BEER_19", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("Q105_BEER_20", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("Q105_BEER_21", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("Q105_BIGCHEST", TRUE, TRUE, TRUE, TRUE);
        FF_REMOVE(0xf266);
        Q105_STARTQUEST_COUNT = 0;
    };
}

var int Q105_STARTQUEST_APPLY.Q105_STARTQUEST_COUNT = 0;
instance Q105_STARTQUEST_APPLY.MOVER1(ZCMOVER)
var int Q105_STARTQUEST_APPLY.MOVPTR1 = 0;
func void Q105_STARTQUEST() {
    FF_APPLYONCEEXTGT(0xf266, 0, -(1));
    B_STARTOTHERROUTINE(BAU_701_KURT, TOT);
    NPC_REFRESH(BAU_701_KURT);
    TELEPORTNPCTOWP(0xe0a6, BAU_701_KURT.WP);
    B_STARTOTHERROUTINE(NONE_1_JORN, "Q105_TAVERN");
    NPC_REFRESH(NONE_1_JORN);
    TELEPORTNPCTOWP(0xc8ef, NONE_1_JORN.WP);
    B_STARTOTHERROUTINE(BAU_719_BAKER, "Q105");
    NPC_REFRESH(BAU_719_BAKER);
    TELEPORTNPCTOWP(0xe103, BAU_719_BAKER.WP);
    B_STARTOTHERROUTINE(BAU_11019_FARMER, "Q105");
    NPC_REFRESH(BAU_11019_FARMER);
    TELEPORTNPCTOWP(0xe059, BAU_11019_FARMER.WP);
    B_STARTOTHERROUTINE(BAU_11017_FARMER, "Q105");
    NPC_REFRESH(BAU_11017_FARMER);
    TELEPORTNPCTOWP(0xe054, BAU_11017_FARMER.WP);
    B_STARTOTHERROUTINE(BAU_11028_FARMER, "Q105");
    NPC_REFRESH(BAU_11028_FARMER);
    TELEPORTNPCTOWP(0xe071, BAU_11028_FARMER.WP);
    B_STARTOTHERROUTINE(BAU_11033_FARMER, "Q105");
    NPC_REFRESH(BAU_11033_FARMER);
    TELEPORTNPCTOWP(0xe080, BAU_11033_FARMER.WP);
    B_STARTOTHERROUTINE(BAU_724_PAULUS, "Q105");
    NPC_REFRESH(BAU_724_PAULUS);
    TELEPORTNPCTOWP(0xe117, BAU_724_PAULUS.WP);
    WLD_INSERTNPC(0xd09e, "VILLAGE_Q105_VOLKER_01");
    WLD_INSERTNPC(0xe006, "VILLAGE_Q105_VOLKER_02");
    WLD_INSERTNPC(0xe00a, "VILLAGE_Q105_VOLKER_03");
    Q105_AVOID_RANDOM_TRAPS();
    LOG_CREATETOPIC(TOPIC_Q105, LOG_MISSION);
    LOG_SETSTATUS(_@(MIS_Q105), TOPIC_Q105, LOG_RUNNING);
    B_LOGENTRY(TOPIC_Q105, LOG_Q105_START);
}

func void Q105_VOLKERGOTOCITY() {
    PRINTD("Idzie Volker �mie� i oszust");
    MDL_APPLYOVERLAYMDS(NONE_13413_VOLKERGUARD, "Humans_Leader.mds");
    MDL_APPLYOVERLAYMDS(NONE_13412_VOLKERGUARD, "Humans_Leader.mds");
    B_STARTOTHERROUTINE(VLK_15000_VOLKER_Q105, "Q105_GOTOCITY");
    NPC_REFRESH(VLK_15000_VOLKER_Q105);
    B_STARTOTHERROUTINE(NONE_13412_VOLKERGUARD, "Q105_GOTOCITY");
    NPC_REFRESH(NONE_13412_VOLKERGUARD);
    B_STARTOTHERROUTINE(NONE_13413_VOLKERGUARD, "Q105_GOTOCITY");
    NPC_REFRESH(NONE_13413_VOLKERGUARD);
}

func void Q105_HEALJORN() {
    if ((NONE_1_JORN.ATTRIBUTE[0]) != (NONE_1_JORN.ATTRIBUTE[1])) {
        NONE_1_JORN.ATTRIBUTE[0] = NONE_1_JORN.ATTRIBUTE[1];
    };
    if ((HERO.ATTRIBUTE[0]) != (HERO.ATTRIBUTE[1])) {
        HERO.ATTRIBUTE[0] = HERO.ATTRIBUTE[1];
    };
}

func void Q105_DRINKWINE() {
    AI_STOPLOOKAT(NONE_1_JORN);
    AI_STOPLOOKAT(HERO);
    CREATEINVITEMS(NONE_1_JORN, 0x8cb7, 1);
    CREATEINVITEMS(HERO, 0x8cb7, 1);
    RND = HLP_RANDOM(3);
    if ((RND) == (0)) {
        AI_WAIT(HERO, 0x3dcccccd);
        AI_WAIT(NONE_1_JORN, 0x3e4ccccd);
    };
    if ((RND) == (1)) {
        AI_WAIT(HERO, 0x3e99999a);
        AI_WAIT(NONE_1_JORN, 0x3dcccccd);
    };
    if ((RND) == (2)) {
        AI_WAIT(HERO, 0x3e4ccccd);
        AI_WAIT(NONE_1_JORN, 0x3ecccccd);
    };
    AI_USEITEM(HERO, 0x8cb7);
    AI_USEITEM(NONE_1_JORN, 0x8cb7);
}

var int Q105_DRINKWINE.RND = 0;
func void Q105_DRINKWINE_ONLYJORN() {
    AI_STOPLOOKAT(SELF);
    CREATEINVITEMS(NONE_1_JORN, 0x8cb7, 1);
    AI_USEITEM(NONE_1_JORN, 0x8cb7);
}

func void Q105_REMOVENPC() {
    PRINTD("NPC posprz�tane");
    FF_APPLYONCEEXTGT(0xf266, 0, -(1));
    B_STARTOTHERROUTINE(BAU_719_BAKER, START);
    NPC_REFRESH(BAU_719_BAKER);
    TELEPORTNPCTOWP(0xe103, BAU_719_BAKER.WP);
    B_STARTOTHERROUTINE(BAU_11019_FARMER, START);
    NPC_REFRESH(BAU_11019_FARMER);
    TELEPORTNPCTOWP(0xe059, BAU_11019_FARMER.WP);
    B_STARTOTHERROUTINE(BAU_11017_FARMER, START);
    NPC_REFRESH(BAU_11017_FARMER);
    TELEPORTNPCTOWP(0xe054, BAU_11017_FARMER.WP);
    B_STARTOTHERROUTINE(BAU_11028_FARMER, START);
    NPC_REFRESH(BAU_11028_FARMER);
    TELEPORTNPCTOWP(0xe071, BAU_11028_FARMER.WP);
    B_STARTOTHERROUTINE(BAU_11033_FARMER, START);
    NPC_REFRESH(BAU_11033_FARMER);
    TELEPORTNPCTOWP(0xe080, BAU_11033_FARMER.WP);
    B_STARTOTHERROUTINE(KDW_203_RIORDIAN, START);
    NPC_REFRESH(KDW_203_RIORDIAN);
    TELEPORTNPCTOWP(0xdd28, KDW_203_RIORDIAN.WP);
    B_STARTOTHERROUTINE(BAU_706_LOKVAR, START);
    NPC_REFRESH(BAU_706_LOKVAR);
    TELEPORTNPCTOWP(0xe0db, BAU_706_LOKVAR.WP);
    B_STARTOTHERROUTINE(BAU_724_PAULUS, START);
    NPC_REFRESH(BAU_724_PAULUS);
    TELEPORTNPCTOWP(0xe117, BAU_724_PAULUS.WP);
    B_REMOVENPC(0xd09e);
    B_REMOVENPC(0xe006);
    B_REMOVENPC(0xe00a);
}


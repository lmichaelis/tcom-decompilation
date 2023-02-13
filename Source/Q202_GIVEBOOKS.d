func void Q202_GIVEBOOKS() {
    if ((NPC_HASITEMS(HERO, 37419)) >= (1)) {
        NPC_REMOVEINVITEMS(HERO, 37419, 1);
    };
    if ((NPC_HASITEMS(OTHER, 37163)) >= (1)) {
        NPC_REMOVEINVITEMS(HERO, 37163, 1);
    };
    if ((NPC_HASITEMS(OTHER, 37158)) >= (1)) {
        NPC_REMOVEINVITEMS(HERO, 37158, 1);
    };
    if ((NPC_HASITEMS(OTHER, 37162)) >= (1)) {
        NPC_REMOVEINVITEMS(HERO, 37162, 1);
    };
    if ((NPC_HASITEMS(OTHER, 37165)) >= (1)) {
        NPC_REMOVEINVITEMS(HERO, 37165, 1);
    };
    if ((NPC_HASITEMS(OTHER, 37166)) >= (1)) {
        NPC_REMOVEINVITEMS(HERO, 37166, 1);
    };
    if ((NPC_HASITEMS(OTHER, 37156)) >= (1)) {
        NPC_REMOVEINVITEMS(HERO, 37156, 1);
    };
    if ((NPC_HASITEMS(OTHER, 37155)) >= (1)) {
        NPC_REMOVEINVITEMS(HERO, 37155, 1);
    };
}

func void Q202_FINISHQUEST() {
    AI_LOGENTRY(TOPIC_Q202, LOG_Q202_FINISH);
    LOG_SETSTATUS(_@(MIS_Q202), TOPIC_Q202, LOG_SUCCESS);
    B_GIVEPLAYERXP((XP_Q202_REFERENCEBOOK) * (Q202_CITIZENDONECOUNT));
    CREATEINVITEMS(SELF, 37138, 1);
    B_GIVEINVITEMS(SELF, OTHER, 37138, 1);
    CREATEINVITEMS(SELF, 37039, 1);
    if ((WHONEEDPEON) == (FALSE)) {
        WHONEEDPEON = TRUE;
    };
    if ((LOG_GETSTATUS(MIS_Q204)) != (LOG_RUNNING)) {
        LOG_CREATETOPIC(TOPIC_Q204, LOG_MISSION);
        LOG_SETSTATUS(_@(MIS_Q204), TOPIC_Q204, LOG_RUNNING);
        AI_LOGENTRY(TOPIC_Q204, LOG_Q204_START_V1);
    };
    if ((LOG_GETSTATUS(MIS_Q203)) != (LOG_RUNNING)) {
        LOG_CREATETOPIC(TOPIC_Q203, LOG_MISSION);
        LOG_SETSTATUS(_@(MIS_Q203), TOPIC_Q203, LOG_RUNNING);
        AI_LOGENTRY(TOPIC_Q203, LOG_Q203_START_V1);
    };
    if ((LOG_GETSTATUS(MIS_CQ001)) == (LOG_SUCCESS)) {
        NPC_EXCHANGEROUTINE(VLK_6128_LEON, "OLDCITY");
    };
    B_GIVEINVITEMS(SELF, OTHER, 37039, 1);
    B_REMOVENPC(52538);
    B_REMOVENPC(53230);
}

func void Q202_MAKEHEROVLK() {
    NPC_SETTRUEGUILD(HERO, GIL_VLK);
    HERO.GUILD = GIL_VLK;
    WLD_INSERTNPC(51868, "PARTM1_MATEY_LEAN_01");
}


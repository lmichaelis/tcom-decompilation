func void ZS_SEARCH_ONLY_BIGFIGHT() {
    NPC_PERCENABLE(SELF, PERC_ASSESSPLAYER, 0xa92a);
    NPC_PERCENABLE(SELF, PERC_ASSESSENEMY, 0xa2a1);
    NPC_PERCENABLE(SELF, PERC_ASSESSMAGIC, 0xa92d);
    NPC_PERCENABLE(SELF, PERC_ASSESSDAMAGE, 0xa2a3);
    NPC_PERCENABLE(SELF, PERC_ASSESSMURDER, 0xa2aa);
    NPC_PERCENABLE(SELF, PERC_ASSESSTHEFT, 0xa2b1);
    NPC_PERCENABLE(SELF, PERC_ASSESSUSEMOB, 0xa2b3);
    NPC_PERCENABLE(SELF, PERC_ASSESSENTERROOM, 0xa2a7);
    NPC_PERCENABLE(SELF, PERC_ASSESSTHREAT, 0xa2b2);
    NPC_PERCENABLE(SELF, PERC_DRAWWEAPON, 0xa2a4);
    NPC_PERCENABLE(SELF, PERC_ASSESSFIGHTSOUND, 0xa2a9);
    NPC_PERCENABLE(SELF, PERC_ASSESSQUIETSOUND, 0xa2ac);
    NPC_PERCENABLE(SELF, PERC_ASSESSWARN, 0xa2b5);
    NPC_PERCENABLE(SELF, PERC_MOVEMOB, 0xa2b6);
    SELF.SENSES = (SENSE_SEE) | (SENSE_HEAR);
    SELF.SENSES_RANGE = 0xdac;
    B_RESETALL(SELF);
    AI_SETWALKMODE(SELF, NPC_WALK);
    if ((NPC_GETDISTTOWP(SELF, SELF.WP)) > (TA_DIST_SELFWP_MAX)) {
        AI_GOTOWP(SELF, SELF.WP);
        AI_ALIGNTOWP(SELF);
    };
}

func int ZS_SEARCH_ONLY_BIGFIGHT_LOOP() {
    SEARCHSTYLE = HLP_RANDOM(10);
    if ((SEARCHSTYLE) == (0)) {
        AI_PLAYANI(SELF, T_SEARCH);
        AI_WAIT(SELF, 0x3f800000);
    };
    if ((SEARCHSTYLE) == (1)) {
        AI_PLAYANI(SELF, T_SEARCH);
        AI_WAIT(SELF, 0x400ccccd);
    };
    if ((SEARCHSTYLE) == (2)) {
        AI_PLAYANI(SELF, T_SEARCH);
        AI_WAIT(SELF, 0x3fa66666);
    };
    if ((SEARCHSTYLE) == (3)) {
        AI_PLAYANI(SELF, T_SEARCH);
        AI_WAIT(SELF, 0x3f333333);
    };
    if ((SEARCHSTYLE) == (4)) {
        AI_PLAYANI(SELF, T_SEARCH);
        AI_WAIT(SELF, 0x3fc00000);
    };
    if ((SEARCHSTYLE) == (5)) {
        AI_PLAYANI(SELF, T_SEARCH);
        AI_WAIT(SELF, 0x40000000);
    };
    if ((SEARCHSTYLE) == (6)) {
        AI_PLAYANI(SELF, T_SEARCH);
        AI_WAIT(SELF, 0x3e99999a);
    };
    if ((SEARCHSTYLE) == (7)) {
        AI_PLAYANI(SELF, T_SEARCH);
        AI_WAIT(SELF, 0x3f666666);
    };
    if ((SEARCHSTYLE) == (8)) {
        AI_PLAYANI(SELF, T_SEARCH);
        AI_WAIT(SELF, 0x40066666);
    };
    if ((SEARCHSTYLE) == (9)) {
        AI_PLAYANI(SELF, T_SEARCH);
        AI_WAIT(SELF, 0x40200000);
    };
    AI_GOTOWP(SELF, SELF.WP);
    AI_ALIGNTOWP(SELF);
    return LOOP_CONTINUE;
}

var int ZS_SEARCH_ONLY_BIGFIGHT_LOOP.SEARCHSTYLE = 0;
func void ZS_SEARCH_ONLY_BIGFIGHT_END() {
    AI_STANDUP(SELF);
}


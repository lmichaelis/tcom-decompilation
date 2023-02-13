func void ZS_SEARCH_ONLY_BIGFIGHT() {
    NPC_PERCENABLE(SELF, PERC_ASSESSPLAYER, 43306);
    NPC_PERCENABLE(SELF, PERC_ASSESSENEMY, 41633);
    NPC_PERCENABLE(SELF, PERC_ASSESSMAGIC, 43309);
    NPC_PERCENABLE(SELF, PERC_ASSESSDAMAGE, 41635);
    NPC_PERCENABLE(SELF, PERC_ASSESSMURDER, 41642);
    NPC_PERCENABLE(SELF, PERC_ASSESSTHEFT, 41649);
    NPC_PERCENABLE(SELF, PERC_ASSESSUSEMOB, 41651);
    NPC_PERCENABLE(SELF, PERC_ASSESSENTERROOM, 41639);
    NPC_PERCENABLE(SELF, PERC_ASSESSTHREAT, 41650);
    NPC_PERCENABLE(SELF, PERC_DRAWWEAPON, 41636);
    NPC_PERCENABLE(SELF, PERC_ASSESSFIGHTSOUND, 41641);
    NPC_PERCENABLE(SELF, PERC_ASSESSQUIETSOUND, 41644);
    NPC_PERCENABLE(SELF, PERC_ASSESSWARN, 41653);
    NPC_PERCENABLE(SELF, PERC_MOVEMOB, 41654);
    SELF.SENSES = (SENSE_SEE) | (SENSE_HEAR);
    SELF.SENSES_RANGE = 3500;
    B_RESETALL(SELF);
    AI_SETWALKMODE(SELF, NPC_WALK);
    if ((NPC_GETDISTTOWP(SELF, SELF.WP)) > (TA_DIST_SELFWP_MAX)) {
        AI_GOTOWP(SELF, SELF.WP);
        AI_ALIGNTOWP(SELF);
    };
}

func int ZS_SEARCH_ONLY_BIGFIGHT_LOOP() {
    var int SEARCHSTYLE;
    SEARCHSTYLE = HLP_RANDOM(10);
    if ((SEARCHSTYLE) == (0)) {
        AI_PLAYANI(SELF, T_SEARCH);
        AI_WAIT(SELF, 1065353216);
    };
    if ((SEARCHSTYLE) == (1)) {
        AI_PLAYANI(SELF, T_SEARCH);
        AI_WAIT(SELF, 1074580685);
    };
    if ((SEARCHSTYLE) == (2)) {
        AI_PLAYANI(SELF, T_SEARCH);
        AI_WAIT(SELF, 1067869798);
    };
    if ((SEARCHSTYLE) == (3)) {
        AI_PLAYANI(SELF, T_SEARCH);
        AI_WAIT(SELF, 1060320051);
    };
    if ((SEARCHSTYLE) == (4)) {
        AI_PLAYANI(SELF, T_SEARCH);
        AI_WAIT(SELF, 1069547520);
    };
    if ((SEARCHSTYLE) == (5)) {
        AI_PLAYANI(SELF, T_SEARCH);
        AI_WAIT(SELF, 1073741824);
    };
    if ((SEARCHSTYLE) == (6)) {
        AI_PLAYANI(SELF, T_SEARCH);
        AI_WAIT(SELF, 1050253722);
    };
    if ((SEARCHSTYLE) == (7)) {
        AI_PLAYANI(SELF, T_SEARCH);
        AI_WAIT(SELF, 1063675494);
    };
    if ((SEARCHSTYLE) == (8)) {
        AI_PLAYANI(SELF, T_SEARCH);
        AI_WAIT(SELF, 1074161254);
    };
    if ((SEARCHSTYLE) == (9)) {
        AI_PLAYANI(SELF, T_SEARCH);
        AI_WAIT(SELF, 1075838976);
    };
    AI_GOTOWP(SELF, SELF.WP);
    AI_ALIGNTOWP(SELF);
    return LOOP_CONTINUE;
}

func void ZS_SEARCH_ONLY_BIGFIGHT_END() {
    AI_STANDUP(SELF);
}

instance CRA_14052_WARRIOR(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_MINECRAWLERSOLDIER;
    GUILD = GIL_MINECRAWLER;
    ID = 0x36e4;
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    NPC_SETTOFISTMODE(CRA_14052_WARRIOR);
    B_SETVISUALS_MINECRAWLERSOLDIER();
    B_SETATTRIBUTESRNDCRAWLER(CRA_14052_WARRIOR);
    DAILY_ROUTINE = RTN_START_14052;
}

func void RTN_START_14052() {
    TA_STAYSTRAIGHT(12, 0, 16, 0, RNG_CRAEVENT_03_WAYPOINT);
    TA_STAYSTRAIGHT(16, 0, 12, 0, RNG_CRAEVENT_03_WAYPOINT);
}

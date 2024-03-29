instance PIR_14126_PIRATE(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_ADDON_PIRAT;
    GUILD = GIL_PIR;
    ID = 14126;
    VOICE = 17;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(PIR_14126_PIRATE, 30);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(PIR_14126_PIRATE, MALE, HUMHEADPONY, FACE_N_PIRATEFAN02, 1, 33570);
    MDL_APPLYOVERLAYMDS(PIR_14126_PIRATE, HUMANSPOCKETWALKMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(PIR_14126_PIRATE);
    B_GIVENPCTALENTS(PIR_14126_PIRATE);
    B_SETFIGHTSKILLS(PIR_14126_PIRATE, 55);
    DAILY_ROUTINE = RTN_START_14126;
}

func void RTN_START_14126() {
    TA_WATCHFIGHT_NODIALOGE(1, 0, 6, 0, "P17_HAVEN_EVENT02");
    TA_WATCHFIGHT_NODIALOGE(6, 0, 1, 0, "P17_HAVEN_EVENT02");
}

func void RTN_TOT_14126() {
    TA_WATCHFIGHT_NODIALOGE(1, 0, 6, 0, TOT2);
    TA_WATCHFIGHT_NODIALOGE(6, 0, 1, 0, TOT2);
}


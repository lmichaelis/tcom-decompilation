instance VLK_14010_WORRIEDCITIZEN(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BUERGER;
    GUILD = GIL_VLK;
    ID = 0x36ba;
    VOICE = 63;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(VLK_14010_WORRIEDCITIZEN, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(VLK_14010_WORRIEDCITIZEN, MALE, HUMHEADFATBALD, FACE_N_WORRIEDCITIZEN02, 1, 0x8ac8);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_14010_WORRIEDCITIZEN);
    MDL_APPLYOVERLAYMDS(VLK_14010_WORRIEDCITIZEN, HUMANSRELAXEDMDS);
    B_GIVENPCTALENTS(VLK_14010_WORRIEDCITIZEN);
    B_SETFIGHTSKILLS(VLK_14010_WORRIEDCITIZEN, 40);
    DAILY_ROUTINE = RTN_START_14010;
}

func void RTN_START_14010() {
    TA_SEARCH_SCARED_NODIALOGE(7, 0, 10, 20, "PARTM5_BELIAREVENT_02");
    TA_SEARCH_SCARED_NODIALOGE(10, 20, 7, 0, "PARTM5_BELIAREVENT_02");
}

func void RTN_TOT_14010() {
    TA_SEARCH_SCARED_NODIALOGE(7, 0, 10, 20, TOT);
    TA_SEARCH_SCARED_NODIALOGE(10, 20, 7, 0, TOT);
}

func void RTN_FLEE_14010() {
    TA_FLEE_NOIQ(7, 0, 10, 20, TOT);
    TA_FLEE_NOIQ(10, 20, 7, 0, TOT);
}


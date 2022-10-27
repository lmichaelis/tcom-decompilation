instance NOV_222_NOVIZE(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_NOVIZE;
    GUILD = GIL_NOV;
    ID = 222;
    VOICE = 64;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(NOV_222_NOVIZE, 25);
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    B_SETNPCVISUAL(NOV_222_NOVIZE, MALE, HUMHEADFIGHTER, FACE_B_NOVIZE_11, 3, 0x8b0a);
    MDL_APPLYOVERLAYMDS(NOV_222_NOVIZE, HUMANSMAGEMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(NOV_222_NOVIZE);
    B_GIVENPCTALENTS(NOV_222_NOVIZE);
    B_SETFIGHTSKILLS(NOV_222_NOVIZE, 40);
    DAILY_ROUTINE = RTN_START_222;
    AIVAR[70] = NPC_AMB_NOVIZE;
}

func void RTN_START_222() {
    TA_COOK_STOVE(6, 0, 22, 0, "PART8_UNDERGROUND_LIVINGROOM_COOK");
    TA_COOK_STOVE(22, 0, 6, 0, "PART8_UNDERGROUND_LIVINGROOM_COOK");
}

func void RTN_NORMALDAY_V2_222() {
    TA_COOK_STOVE(6, 0, 13, 0, "PART8_UNDERGROUND_LIVINGROOM_COOK");
    TA_DRINKBARREL(13, 0, 18, 0, "PART8_UNDERGROUND_LIVINGROOM_BARREL");
    TA_STOMP_HERB(18, 0, 19, 40, "PART8_MONASTERY_HERB_01");
    TA_COOK_STOVE(19, 40, 22, 0, "PART8_UNDERGROUND_LIVINGROOM_COOK");
    TA_COOK_STOVE(22, 0, 6, 0, TOT2);
}

func void RTN_TOT_222() {
    TA_COOK_STOVE(6, 0, 22, 0, TOT);
    TA_COOK_STOVE(22, 0, 6, 0, TOT);
}

instance NONE_13847_HOMELESS(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_HOMELESS;
    GUILD = GIL_NONE;
    ID = 0x3617;
    VOICE = 28;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(NONE_13847_HOMELESS, 8);
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    MDL_SETVISUAL(NONE_13847_HOMELESS, HUMANSMDS);
    MDL_SETVISUALBODY(NONE_13847_HOMELESS, HUMBODYNAKED0, BODYTEX_P_HOMELESS01, 0, HUMHEADBALD, FACE_P_HOBO68, TEETHTEX_ROTTEN_V1, 0x8b05);
    MDL_APPLYOVERLAYMDS(NONE_13847_HOMELESS, HUMANSTIREDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(NONE_13847_HOMELESS);
    B_GIVENPCTALENTS(NONE_13847_HOMELESS);
    B_SETFIGHTSKILLS(NONE_13847_HOMELESS, 10);
    DAILY_ROUTINE = RTN_START_13847;
    AIVAR[70] = NPC_AMB_CITY_HOMELESS;
}

func void RTN_START_13847() {
    TA_SIT_DEPRESSION(6, 0, 20, 0, "SLUMS_SIT_02");
    TA_SIT_DEPRESSION(20, 0, 6, 0, "SLUMS_SIT_02");
}

instance MIL_14036_MILITIA(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_GUARDSMAN;
    GUILD = GIL_MIL;
    ID = 0x36d4;
    VOICE = 67;
    FLAGS = NPC_FLAG_IMPORTANT;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(MIL_14036_MILITIA, 40);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(MIL_14036_MILITIA, MALE, HUMHEADFATBALD, FACE_B_GUARDSMAN_15, 3, 0x8b1f);
    MDL_APPLYOVERLAYMDS(MIL_14036_MILITIA, HUMANSMILITIAMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(MIL_14036_MILITIA);
    B_GIVENPCTALENTS(MIL_14036_MILITIA);
    B_SETFIGHTSKILLS(MIL_14036_MILITIA, 60);
    DAILY_ROUTINE = RTN_START_14036;
    AIVAR[70] = NPC_AMB_ROYALGUARD;
}

func void RTN_START_14036() {
    TA_OBSERVE(7, 0, 22, 0, "PARTM4_GUARDSMAN_02");
    TA_OBSERVE(22, 0, 7, 0, "PARTM4_GUARDSMAN_02");
}


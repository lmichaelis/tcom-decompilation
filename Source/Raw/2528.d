instance MIL_12156_MILITIA(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_MILIZ;
    GUILD = GIL_MIL;
    ID = 0x2f7c;
    VOICE = 37;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(MIL_12156_MILITIA, 28);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(MIL_12156_MILITIA, MALE, HUMHEADBALD, FACE_L_MILITIA126, 2, 0x8aad);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(MIL_12156_MILITIA);
    MDL_APPLYOVERLAYMDS(MIL_12156_MILITIA, HUMANSMILITIAMDS);
    B_GIVENPCTALENTS(MIL_12156_MILITIA);
    B_SETFIGHTSKILLS(MIL_12156_MILITIA, 60);
    DAILY_ROUTINE = RTN_START_12156;
}

func void RTN_START_12156() {
    TA_WAITING(8, 0, 12, 0, "PART10_MINE_GUARDENTRY");
    TA_WAITING(12, 0, 8, 0, "PART10_MINE_GUARDENTRY");
}

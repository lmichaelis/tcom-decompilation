instance NONE_13607_SOUTHERNER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_SOUTHERNER;
    GUILD = GIL_NONE;
    ID = 13607;
    VOICE = 35;
    FLAGS = NPC_FLAG_IMPORTANT;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(NONE_13607_SOUTHERNER, 30);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    CREATEINVITEMS(NONE_13607_SOUTHERNER, 35348, 1);
    B_SETNPCVISUAL(NONE_13607_SOUTHERNER, MALE, HUMHEADFATBALD, FACE_B_SOUTHERNER_03, 3, 35430);
    MDL_APPLYOVERLAYMDS(NONE_13607_SOUTHERNER, HUMANSMILITIAMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(NONE_13607_SOUTHERNER);
    B_GIVENPCTALENTS(NONE_13607_SOUTHERNER);
    B_SETFIGHTSKILLS(NONE_13607_SOUTHERNER, 30);
    DAILY_ROUTINE = RTN_START_13607;
}

func void RTN_START_13607() {
    TA_STAYSTRAIGHT(6, 0, 8, 0, "PARTM3_QM402_SOUTHERNER_02");
    TA_STAYSTRAIGHT(8, 0, 6, 0, "PARTM3_QM402_SOUTHERNER_02");
}


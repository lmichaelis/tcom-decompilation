instance DJG_10047_WOLFSON_Q602(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_WOLFSON;
    GUILD = GIL_NONE;
    ID = 50001;
    VOICE = 4;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(DJG_10047_WOLFSON_Q602, 60);
    EQUIPITEM(DJG_10047_WOLFSON_Q602, 39532);
    FIGHT_TACTIC = FAI_HUMAN_MASTER;
    B_SETNPCVISUAL(DJG_10047_WOLFSON_Q602, MALE, HUMHEADFIGHTER, FACE_B_WOLFSON17, 3, 35512);
    MDL_APPLYOVERLAYMDS(DJG_10047_WOLFSON_Q602, HUMANSARROGANCEMDS);
    B_CREATEAMBIENTINV(DJG_10047_WOLFSON_Q602);
    B_GIVENPCTALENTS(DJG_10047_WOLFSON_Q602);
    B_SETFIGHTSKILLS(DJG_10047_WOLFSON_Q602, 70);
    MDL_APPLYOVERLAYMDS(DJG_10047_WOLFSON_Q602, HUMANS1HST2);
    MDL_APPLYOVERLAYMDS(DJG_10047_WOLFSON_Q602, HUMANS2HST2);
    MDL_APPLYOVERLAYMDS(DJG_10047_WOLFSON_Q602, HUMANSBOWT2);
    MDL_APPLYOVERLAYMDS(DJG_10047_WOLFSON_Q602, HUMANSCBOWT2);
    DAILY_ROUTINE = RTN_START_50001;
}

func void RTN_START_50001() {
    TA_STAYSTRAIGHT_NOIQ(8, 0, 23, 0, "Q602_CUTSCENE_01_WOLFSSON");
    TA_STAYSTRAIGHT_NOIQ(23, 0, 8, 0, "Q602_CUTSCENE_01_WOLFSSON");
}

func void RTN_Q602_OBSERVE_50001() {
    TA_OBSERVE_Q602(8, 0, 23, 0, "Q602_CUTSCENE_01_WOLFSSON");
    TA_OBSERVE_Q602(23, 0, 8, 0, "Q602_CUTSCENE_01_WOLFSSON");
}

func void RTN_Q602_FIGHT_50001() {
    TA_KILLMARVIN(8, 0, 23, 0, "Q602_CUTSCENE_01_WOLFSSON");
    TA_KILLMARVIN(23, 0, 8, 0, "Q602_CUTSCENE_01_WOLFSSON");
}

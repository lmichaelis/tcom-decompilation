instance NONE_7204_STONEGUARDIAN(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_STONEGUARDIAN;
    GUILD = GIL_BDT;
    ID = 0x1c24;
    VOICE = 0;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    AIVAR[51] = MAGIC_ALWAYS;
    B_SETATTRIBUTESTOLEVEL(NONE_7204_STONEGUARDIAN, 50);
    FIGHT_TACTIC = FAI_HUMAN_MASTER;
    PROTECTION[1] = 25;
    PROTECTION[2] = 50;
    PROTECTION[6] = 50;
    PROTECTION[3] = 40;
    PROTECTION[4] = 50;
    PROTECTION[5] = 40;
    MDL_SETVISUAL(NONE_7204_STONEGUARDIAN, HUMANSMDS);
    MDL_SETVISUALBODY(NONE_7204_STONEGUARDIAN, "KM_guardian_temple", 0, 0, "HUM_HEAD_NOTHING", 0, 0, -(1));
    B_GIVENPCTALENTS(NONE_7204_STONEGUARDIAN);
    DAILY_ROUTINE = RTN_START_7204;
}

func void RTN_START_7204() {
    TA_FOLLOW_PLAYER(1, 0, 6, 0, "PART17_TEMPLE_GUARDIAN_05");
    TA_FOLLOW_PLAYER(6, 0, 1, 0, "PART17_TEMPLE_GUARDIAN_05");
}


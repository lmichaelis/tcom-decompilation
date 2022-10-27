instance SLD_1010_INGOR_Q602(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_INGOR;
    GUILD = GIL_SLD;
    ID = 0xc3f0;
    VOICE = 29;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_FRIEND;
    AIVAR[15] = TRUE;
    B_SETATTRIBUTESTOLEVEL(SLD_1010_INGOR_Q602, 30);
    FIGHT_TACTIC = FAI_HUMAN_NOJUMP;
    B_SETNPCVISUAL(SLD_1010_INGOR_Q602, MALE, HUMHEADBALD, FACE_P_INGOR, 0, 0x8a79);
    MDL_APPLYOVERLAYMDS(SLD_1010_INGOR_Q602, HUMANSHURTMDS);
    B_GIVENPCTALENTS(SLD_1010_INGOR_Q602);
    B_SETFIGHTSKILLS(SLD_1010_INGOR_Q602, 25);
    B_CREATEWEAPONINV();
    DAILY_ROUTINE = RTN_START_50160;
}

func void RTN_START_50160() {
    TA_OBSERVE_Q602(6, 0, 21, 0, "PARTE1_INGOR");
    TA_OBSERVE_Q602(21, 0, 6, 0, "PARTE1_INGOR");
}

func void RTN_Q602_TIRED_50160() {
    TA_SIT_CAMPFIRE(6, 0, 21, 0, "PARTM1_GUILDHOUSE02_29");
    TA_SIT_CAMPFIRE(21, 0, 6, 0, "PARTM1_GUILDHOUSE02_29");
}

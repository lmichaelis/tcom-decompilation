instance NONE_13612_CREEPYTRADER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_MYSTERIOUSTRADER;
    ID = 13612;
    GUILD = GIL_FRIENDLY_HUMAN;
    VOICE = 12;
    FLAGS = NPC_FLAG_IMMORTAL;
    NPCTYPE = NPCTYPE_FRIEND;
    AIVAR[57] = TRUE;
    AIVAR[25] = TRUE;
    AIVAR[54] = TRUE;
    AIVAR[55] = TRUE;
    AIVAR[56] = TRUE;
    AIVAR[95] = TRUE;
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    B_SETATTRIBUTESTOLEVEL(NONE_13612_CREEPYTRADER, 65);
    B_SETNPCVISUAL(NONE_13612_CREEPYTRADER, MALE, HUMHEADFLEXNEU, FACE_P_CREEPYTRADER, 0, 35410);
    MDL_APPLYOVERLAYMDS(NONE_13612_CREEPYTRADER, HUMANSARROGANCEMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(NONE_13612_CREEPYTRADER);
    B_GIVENPCTALENTS(NONE_13612_CREEPYTRADER);
    B_SETFIGHTSKILLS(NONE_13612_CREEPYTRADER, 30);
    DAILY_ROUTINE = RTN_START_13612;
}

func void RTN_START_13612() {
    TA_THROWBAG(7, 0, 15, 30, RNG_NS36_WAYPOINT);
    TA_THROWBAG(15, 30, 7, 0, RNG_NS36_WAYPOINT);
}

func void RTN_TOT_13612() {
    TA_THROWBAG(7, 0, 15, 30, TOT2);
    TA_THROWBAG(15, 30, 7, 0, TOT2);
}


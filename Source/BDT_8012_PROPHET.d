instance BDT_8012_PROPHET(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_WANTEDPOSTER_PROPHET;
    GUILD = GIL_NONE;
    ID = 8012;
    VOICE = 51;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    AIVAR[15] = TRUE;
    B_SETATTRIBUTESTOLEVEL(BDT_8012_PROPHET, 55);
    FIGHT_TACTIC = FAI_HUMAN_MASTER;
    AIVAR[51] = MAGIC_ALWAYS;
    ATTRIBUTE[1] = 1000;
    ATTRIBUTE[0] = 1000;
    LEVEL = 140;
    B_SETNPCVISUAL(BDT_8012_PROPHET, MALE, HUMHEADFATBALD, FACE_N_BOUNTYTARGET01, 1, 35412);
    MDL_APPLYOVERLAYMDS(BDT_8012_PROPHET, HUMANSMAGEMDS);
    B_GIVENPCTALENTS(BDT_8012_PROPHET);
    B_SETFIGHTSKILLS(BDT_8012_PROPHET, 80);
    BODYSTATEINTERRUPTABLEOVERRIDE = TRUE;
    DAILY_ROUTINE = RTN_START_8012;
}

func void RTN_START_8012() {
    TA_PRAYSTAND(4, 0, 22, 0, "HARBOUR_WANTEDPOSTER_PROPETH");
    TA_PRAYSTAND(22, 0, 4, 0, "HARBOUR_WANTEDPOSTER_PROPETH");
}


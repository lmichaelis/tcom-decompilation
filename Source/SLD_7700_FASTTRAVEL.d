instance SLD_7700_FASTTRAVEL(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_ARAXOS_FASTTRAVEL;
    GUILD = GIL_SLD;
    ID = 7700;
    VOICE = 25;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(SLD_7700_FASTTRAVEL, 30);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(SLD_7700_FASTTRAVEL, MALE, HUMHEADWITHOUTPONY, FACE_L_ARAXOS12, 2, 35465);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(SLD_7700_FASTTRAVEL);
    MDL_APPLYOVERLAYMDS(SLD_7700_FASTTRAVEL, HUMANSPOCKETWALKMDS);
    B_GIVENPCTALENTS(SLD_7700_FASTTRAVEL);
    B_SETFIGHTSKILLS(SLD_7700_FASTTRAVEL, 50);
    DAILY_ROUTINE = RTN_START_7700;
    AIVAR[74] = NPC_FASTTRAVEL_IAMARAXOS;
    AIVAR[70] = NPC_AMB_CITY_ARAXOSGUIDE;
}

func void RTN_START_7700() {
    TA_CHECKLIST(7, 0, 15, 30, "PART11_FASTTRAVEL_GUY");
    TA_CHECKLIST(15, 30, 7, 0, "PART11_FASTTRAVEL_GUY");
}


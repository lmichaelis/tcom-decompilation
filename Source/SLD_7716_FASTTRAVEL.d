instance SLD_7716_FASTTRAVEL(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_ARAXOS_FASTTRAVEL;
    GUILD = GIL_SLD;
    ID = 7716;
    VOICE = 64;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(SLD_7716_FASTTRAVEL, 30);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(SLD_7716_FASTTRAVEL, MALE, HUMHEADBALD, FACE_L_ARAXOS64, 2, 35465);
    MDL_APPLYOVERLAYMDS(SLD_7716_FASTTRAVEL, HUMANSPOCKETWALKMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(SLD_7716_FASTTRAVEL);
    B_GIVENPCTALENTS(SLD_7716_FASTTRAVEL);
    B_SETFIGHTSKILLS(SLD_7716_FASTTRAVEL, 50);
    DAILY_ROUTINE = RTN_START_7716;
    AIVAR[74] = NPC_FASTTRAVEL_IAMARAXOS;
    AIVAR[70] = NPC_AMB_CITY_ARAXOSGUIDE;
}

func void RTN_START_7716() {
    TA_CHECKLIST(7, 0, 15, 30, "PARTM7_FASTTRAVEL_GUY");
    TA_CHECKLIST(15, 30, 7, 0, "PARTM7_FASTTRAVEL_GUY");
}


instance SLD_7702_FASTTRAVEL(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_ARAXOS_FASTTRAVEL;
    GUILD = GIL_SLD;
    ID = 7702;
    VOICE = 59;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(SLD_7702_FASTTRAVEL, 30);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(SLD_7702_FASTTRAVEL, MALE, HUMHEADBALD, FACE_B_ARAXOS14, 3, 35465);
    MDL_APPLYOVERLAYMDS(SLD_7702_FASTTRAVEL, HUMANSPOCKETWALKMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(SLD_7702_FASTTRAVEL);
    B_GIVENPCTALENTS(SLD_7702_FASTTRAVEL);
    B_SETFIGHTSKILLS(SLD_7702_FASTTRAVEL, 50);
    DAILY_ROUTINE = RTN_START_7702;
    AIVAR[74] = NPC_FASTTRAVEL_IAMARAXOS;
    AIVAR[70] = NPC_AMB_CITY_ARAXOSGUIDE;
}

func void RTN_START_7702() {
    TA_CHECKLIST(7, 0, 15, 30, "PART7_FASTTRAVEL_GUY");
    TA_CHECKLIST(15, 30, 7, 0, "PART7_FASTTRAVEL_GUY");
}

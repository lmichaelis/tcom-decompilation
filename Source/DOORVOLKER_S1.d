func void DOORVOLKER_S1() {
    var C_NPC HER;
    HER = HLP_GETNPC(53168);
    if ((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(HER))) {
        if ((HLP_ISVALIDNPC(NONE_6396_VOLKERGUARD)) && (HLP_ISVALIDNPC(NONE_6397_VOLKERGUARD))) {
            PRINTD("Zmiana gildi!");
            if ((Q405_CLOSEDDOORLOGENTRY) == (3)) {
                B_STARTOTHERROUTINE(NONE_6396_VOLKERGUARD, "JORNHOUSEOUTSIDE3");
                NPC_REFRESH(NONE_6396_VOLKERGUARD);
                B_STARTOTHERROUTINE(NONE_6397_VOLKERGUARD, "JORNHOUSEOUTSIDE3");
                NPC_REFRESH(NONE_6397_VOLKERGUARD);
            };
            NONE_6396_VOLKERGUARD.FLAGS = 0;
            NONE_6397_VOLKERGUARD.FLAGS = 0;
            NONE_6396_VOLKERGUARD.GUILD = GIL_BDT;
            NONE_6397_VOLKERGUARD.GUILD = GIL_BDT;
            NPC_SETTRUEGUILD(NONE_6397_VOLKERGUARD, GIL_BDT);
            NPC_SETTRUEGUILD(HERO, HERO.GUILD);
        };
    };
}

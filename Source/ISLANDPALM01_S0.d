func void ISLANDPALM01_S0() {
    var C_NPC HER;
    HER = HLP_GETNPC(50091);
    if ((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(HER))) {
        HERO.AIVAR[4] = FALSE;
        WLD_SENDTRIGGER("KM_ISLAND_PALM_01");
        MOB_CHANGEFOCUSNAME("Q305_PALM_01", "MOBNAME_PLUNDERPALM");
        Q305_CHANGEPALMTRUNKNAME();
        Q305_BLOCKOTHERPALMS();
        B_ENDPRODUCTIONDIALOG();
    };
}


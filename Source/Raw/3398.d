func void ISLANDPALM03_S0() {
    HER = HLP_GETNPC(0xc3ab);
    if ((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(HER))) {
        HERO.AIVAR[4] = FALSE;
        WLD_SENDTRIGGER("KM_ISLAND_PALM_03");
        MOB_CHANGEFOCUSNAME("Q305_PALM_03", "MOBNAME_PLUNDERPALM");
        Q305_CHANGEPALMTRUNKNAME();
        Q305_BLOCKOTHERPALMS();
        B_ENDPRODUCTIONDIALOG();
    };
}

instance ISLANDPALM03_S0.HER(C_NPC)

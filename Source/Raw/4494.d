func void EVT_ULRYKTHRONE() {
    HER = HLP_GETNPC(0xc3ab);
    if ((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(HER))) {
        PRINTD("Nie jeste� godny!");
        if (HLP_ISVALIDNPC(DJG_16030_WOLFSON)) {
            B_IMMEDIATEATTACKPLAYER(DJG_16030_WOLFSON, AR_KILL);
            B_ADDPETZCRIME(DJG_16030_WOLFSON, CRIME_ATTACK);
        };
        if (HLP_ISVALIDNPC(DJG_16031_WOLFSON)) {
            B_IMMEDIATEATTACKPLAYER(DJG_16031_WOLFSON, AR_KILL);
            B_ADDPETZCRIME(DJG_16031_WOLFSON, CRIME_ATTACK);
        };
        if (HLP_ISVALIDNPC(DJG_16032_WOLFSON)) {
            B_IMMEDIATEATTACKPLAYER(DJG_16032_WOLFSON, AR_KILL);
            B_ADDPETZCRIME(DJG_16032_WOLFSON, CRIME_ATTACK);
        };
        if (HLP_ISVALIDNPC(DJG_16033_WOLFSON)) {
            B_IMMEDIATEATTACKPLAYER(DJG_16033_WOLFSON, AR_KILL);
            B_ADDPETZCRIME(DJG_16033_WOLFSON, CRIME_ATTACK);
        };
        if (HLP_ISVALIDNPC(DJG_16034_WOLFSON)) {
            B_IMMEDIATEATTACKPLAYER(DJG_16034_WOLFSON, AR_KILL);
            B_ADDPETZCRIME(DJG_16034_WOLFSON, CRIME_ATTACK);
        };
        if (HLP_ISVALIDNPC(DJG_16035_WOLFSON)) {
            B_IMMEDIATEATTACKPLAYER(DJG_16035_WOLFSON, AR_KILL);
            B_ADDPETZCRIME(DJG_16035_WOLFSON, CRIME_ATTACK);
        };
    };
}

instance EVT_ULRYKTHRONE.HER(C_NPC)

func void B_MEMORIZEPLAYERCRIME(var C_NPC SLF, var C_NPC TAETER, var int CRIME) {
    if (!(NPC_ISPLAYER(TAETER))) {
        return;
    };
    if (((SLF.GUILD) == (GIL_DMT)) || ((SLF.GUILD) == (GIL_NONE))) {
        return;
    };
    if ((CRIME) > (B_GETPLAYERCRIME(SLF))) {
        B_DELETEPETZCRIME(SLF);
        B_ADDPETZCRIME(SLF, CRIME);
    };
    if ((CRIME) >= (B_GETPLAYERCRIME(SLF))) {
        SLF.AIVAR[1] = CRIME;
        SLF.AIVAR[2] = WLD_GETDAY();
        SLF.AIVAR[46] = B_GETCURRENTABSOLUTIONLEVEL(SLF);
    };
}


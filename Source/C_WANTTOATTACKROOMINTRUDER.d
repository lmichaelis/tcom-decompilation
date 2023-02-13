func int C_WANTTOATTACKROOMINTRUDER(var C_NPC SLF) {
    if ((((((SELF.GUILD) == (GIL_MIL)) || ((SELF.GUILD) == (GIL_PAL))) || ((SELF.GUILD) == (GIL_SLD))) || ((SELF.GUILD) == (GIL_DJG))) || ((B_GETPLAYERCRIME(SELF)) != (CRIME_NONE))) {
        return TRUE;
    };
    return FALSE;
}


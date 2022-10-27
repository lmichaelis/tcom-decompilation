func void B_SAY_GUILDGREETINGS(var C_NPC SLF, var C_NPC OTH) {
    if (((SLF.GUILD) == (GIL_MIL)) && ((OTH.GUILD) == (GIL_MIL))) {
        B_SAY_OVERLAY(SLF, OTH, "$MILGREETINGS");
        return;
    };
    if (((SLF.GUILD) == (GIL_PAL)) && ((OTH.GUILD) == (GIL_MIL))) {
        B_SAY_OVERLAY(SLF, OTH, "$PALGREETINGS");
        return;
    };
    if ((SLF.NPCTYPE) == (NPCTYPE_AMBIENT)) {
        if ((((SLF.GUILD) == (GIL_MIL)) && (MARVIN_LOSTGUILDMILITA)) || (((SLF.GUILD) == (GIL_SLD)) && (MARVIN_LOSTGUILDARAXOS))) {
            B_SAY_OVERLAY(SLF, OTH, "$GoddamnBug");
            return;
        };
    };
    ZUFALL = HLP_RANDOM(100);
    if (((ZUFALL) <= (10)) && (WLD_ISRAINING())) {
        B_SAY_OVERLAY(SLF, OTH, "$WEATHER");
    };
}

var int B_SAY_GUILDGREETINGS.ZUFALL = 0;

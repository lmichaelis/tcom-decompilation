func void B_ATTACK(var C_NPC SLF, var C_NPC OTH, var int ATTACK_REASON, var int WAIT) {
    SLF.AIVAR[23] = WAIT;
    if ((ATTACK_REASON) == (AR_SUDDENENEMYINFERNO)) {
        SLF.AIVAR[61] = FALSE;
        NPC_SENDPASSIVEPERC(SLF, PERC_ASSESSFIGHTSOUND, SLF, OTH);
    };
    if (NPC_ISINSTATE(SLF, 0xf09f)) {
        SLF.AIVAR[4] = FALSE;
        OTH.AIVAR[4] = FALSE;
    };
    if ((NPC_ISINSTATE(SLF, 0xf0af)) && ((HLP_GETINSTANCEID(OTH)) == (SLF.AIVAR[7]))) {
        if ((!(C_NPCHASATTACKREASONTOKILL(SLF))) && ((ATTACK_REASON) > (SLF.AIVAR[9]))) {
            SLF.AIVAR[9] = ATTACK_REASON;
            if (NPC_ISPLAYER(OTH)) {
                SLF.AIVAR[47] = ATTACK_REASON;
            };
        };
    };
    SLF.AIVAR[9] = ATTACK_REASON;
    if (NPC_ISPLAYER(OTH)) {
        SLF.AIVAR[47] = ATTACK_REASON;
    };
    if ((SLF.AIVAR[9]) == (AR_SHEEPKILLER)) {
        B_MEMORIZEPLAYERCRIME(SLF, OTH, CRIME_SHEEPKILLER);
    };
    if (((SLF.AIVAR[9]) == (AR_REACTTODAMAGE)) || ((SLF.AIVAR[9]) == (AR_REACTTOWEAPON))) {
        if ((!(C_NPCISTOUGHGUY(SLF))) && (!((NPC_ISPLAYER(OTH)) && ((SLF.NPCTYPE) == (NPCTYPE_FRIEND))))) {
            if ((VICTIM.GUILD) != (GIL_NONE)) {
                B_MEMORIZEPLAYERCRIME(SLF, OTH, CRIME_ATTACK);
            };
        };
    };
    if (((SLF.AIVAR[9]) == (AR_THEFT)) || ((SLF.AIVAR[9]) == (AR_USEMOB))) {
        B_MEMORIZEPLAYERCRIME(SLF, OTH, CRIME_THEFT);
    };
    if ((SLF.AIVAR[9]) == (AR_HUMANMURDEREDHUMAN)) {
        if ((VICTIM.GUILD) != (GIL_NONE)) {
            B_MEMORIZEPLAYERCRIME(SLF, OTH, CRIME_MURDER);
        };
    };
    if (NPC_ISINSTATE(SLF, 0xf0af)) {
        return;
    };
    if ((SLF.AIVAR[9]) == (AR_KILL)) {
        B_SETATTITUDE(SLF, ATT_HOSTILE);
    };
    if (NPC_ISPLAYER(OTH)) {
        SLF.AIVAR[0] = FIGHT_CANCEL;
        SLF.AIVAR[64] = FALSE;
    };
    if (!(NPC_ISINSTATE(SLF, 0xf09f))) {
        NPC_CLEARAIQUEUE(SLF);
    };
    B_CLEARPERCEPTIONS(SLF);
    NPC_SETTARGET(SLF, OTH);
    if (C_BODYSTATECONTAINS(SLF, BS_LIE)) {
        AI_STARTSTATE(SLF, 0xf0af, 1, "");
    };
    AI_STARTSTATE(SLF, 0xf0af, 0, "");
}


func int C_NPCHASATTACKREASONTOKILL(var C_NPC SLF) {
    if ((((((SLF.AIVAR[9]) == (AR_KILL)) || ((SLF.AIVAR[9]) == (AR_GUILDENEMY))) || ((SLF.AIVAR[9]) == (AR_HUMANMURDEREDHUMAN))) || ((SLF.AIVAR[9]) == (AR_GUARDSTOPSINTRUDER))) || ((SLF.AIVAR[9]) == (AR_GUARDCALLEDTOKILL))) {
        return TRUE;
    };
    return FALSE;
}


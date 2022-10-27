func void B_MAGICHURTNPC(var C_NPC SLF, var C_NPC OTH, var int DAMAGE) {
    NPC_CHANGEATTRIBUTE(OTH, ATR_HITPOINTS, -(DAMAGE));
    if (NPC_ISDEAD(OTH)) {
        if (((NPC_ISPLAYER(SLF)) || ((SLF.AIVAR[15]) == (TRUE))) && ((OTH.AIVAR[16]) == (FALSE))) {
            B_GIVEPLAYERXP((SELF.LEVEL) * (XP_PER_VICTORY));
            OTH.AIVAR[16] = TRUE;
        };
    };
}


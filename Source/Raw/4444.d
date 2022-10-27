var int Q308_ARSCORPSE_CHECKED = 0;
var int Q308_ARSCORPSE_CHECKED_DAY = 0;
func void EVT_Q308_ARSCORPSE_FUNCTION() {
    NPC = HLP_GETNPC(0x71b);
    NPCPTR = _@(0x166b7);
    FF_APPLYEXTDATAGT(0x166ba, 75, -(1), NPCPTR);
}

instance EVT_Q308_ARSCORPSE_FUNCTION.NPC(C_NPC)
var int EVT_Q308_ARSCORPSE_FUNCTION.NPCPTR = 0;
func void EVT_Q308_ARSCORPSE() {
    if ((Q308_ARSCORPSE_CHECKED) == (FALSE)) {
        Q308_ARSCORPSE_CHECKED = TRUE;
        Q308_ARSCORPSE_CHECKED_DAY = WLD_GETDAY();
        EVT_Q308_ARSCORPSE_FUNCTION();
    };
}

func void Q308_ARSCORPSE_REMOVECORPSE() {
    if ((CURRENTLEVEL) == (ARCHOLOS_ZEN)) {
        if ((Q308_ARSCORPSE_CHECKED) == (TRUE)) {
            if (((Q308_ARSCORPSE_CHECKED_DAY) <= ((WLD_GETDAY()) - (1))) && ((NPC_GETDISTTOWP(HERO, "SLUMS_BRAZIER_07")) >= (0x5dc))) {
                Q308_ARSCORPSE_CHECKED = 2;
                FF_APPLYONCEEXTGT(0xf946, 0, -(1));
                FF_REMOVE(0x166ba);
            } else {
                PRINTD("Oddal siê i przeczekaj 1 dzieñ");
            };
        };
    };
    if (((CURRENTLEVEL) == (ARCHOLOS_ENDGAME_ZEN)) || ((CURRENTLEVEL) == (ARCHOLOS_VOLFZACKE_ZEN))) {
        PRINTD("I tak nie zobaczysz efektów");
        FF_REMOVE(0x166ba);
    };
    PRINTD("Mogê funkcjê wykonaæ tylko w zenie Archolos! - Q308_ARSCORPSE_REMOVECORPSE");
}


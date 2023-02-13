var int Q308_ARSCORPSE_CHECKED;
var int Q308_ARSCORPSE_CHECKED_DAY;
func void EVT_Q308_ARSCORPSE_FUNCTION() {
    var int NPCPTR;
    var C_NPC NPC;
    NPC = HLP_GETNPC(1819);
    NPCPTR = _@(91831);
    FF_APPLYEXTDATAGT(91834, 75, -(1), NPCPTR);
}

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
            if (((Q308_ARSCORPSE_CHECKED_DAY) <= ((WLD_GETDAY()) - (1))) && ((NPC_GETDISTTOWP(HERO, "SLUMS_BRAZIER_07")) >= (1500))) {
                Q308_ARSCORPSE_CHECKED = 2;
                FF_APPLYONCEEXTGT(63814, 0, -(1));
                FF_REMOVE(91834);
            } else {
                PRINTD("Oddal siê i przeczekaj 1 dzieñ");
            };
        };
    };
    if (((CURRENTLEVEL) == (ARCHOLOS_ENDGAME_ZEN)) || ((CURRENTLEVEL) == (ARCHOLOS_VOLFZACKE_ZEN))) {
        PRINTD("I tak nie zobaczysz efektów");
        FF_REMOVE(91834);
    };
    PRINTD("Mogê funkcjê wykonaæ tylko w zenie Archolos! - Q308_ARSCORPSE_REMOVECORPSE");
}


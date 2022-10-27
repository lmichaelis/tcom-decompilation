func void EVT_SQ417_LEVER() {
    if ((SQ417_LEVER_USE) == (FALSE)) {
        SQ417_LEVER_USE = TRUE;
        FF_APPLYONCEEXTGT(0xf883, 0, -(1));
    };
}

var int EVT_SQ417_LEVER.SQ417_LEVER_USE = 0;

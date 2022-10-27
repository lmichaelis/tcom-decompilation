func void EVT_Q206_PABLOTRIGGER() {
    if ((Q206_FOUNDSTORAGE) == (TRUE)) {
        Q206_FOUNDSTORAGE = 2;
        FF_APPLYONCEEXT(0xee7b, 75, 4);
        HERO.AIVAR[4] = TRUE;
    };
}


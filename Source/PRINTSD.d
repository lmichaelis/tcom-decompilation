func void PRINTSD(var string TEXT) {
    if ((GAME_RUNTIMECONFIG) == (TARGET_SHIPPING)) {
        return;
    };
    MEM_SENDTOSPY(ZERR_TYPE_INFO, CS2("PrintSD: ", TEXT));
    if ((GAME_RUNTIMECONFIG) == (TARGET_DEBUG)) {
        PRINTS(CS2("D: ", TEXT));
    };
}


func void GAME_KEYEVENT(var int KEY) {
    TORCH_KEYEVENT(KEY);
    CRAFTINGVIEW_TABSWITCHER(KEY);
}

func void GAME_KEYEVENTINIT() {
    HOOKENGINEF(OCGAME__HANDLEEVENT_DFLTCASE, 6, 94816);
}

func void INIT_INPUT() {
    GAME_KEYEVENTINIT();
}


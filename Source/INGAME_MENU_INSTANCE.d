const string INGAME_MENU_INSTANCE = "MENU_GAME";
func void INIT_INGAMEMENU() {
    var int SPTR;
    var int LEN;
    LEN = STR_LEN(INGAME_MENU_INSTANCE);
    if ((LEN) != (9)) {
        return;
    };
    SPTR = STRINT_TOCHAR(INGAME_MENU_INSTANCE);
    MEM_COPYBYTES(SPTR, 8980576, LEN);
}


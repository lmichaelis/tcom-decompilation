func void INIT_INVTRANSPARENCYHACK() {
    HOOKENGINEF(0x7a6060, 7, 0x55f6);
}

func void INVTRANSPARENCYHACK_HOOK() {
    if ((!(ECX)) || (!(ESP))) {
        return;
    };
    if ((MEM_READINT((ESP) + (4))) == (64)) {
        MEM_WRITEINT((ESP) + (4), 255);
    };
}


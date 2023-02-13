func void INIT_INVTRANSPARENCYHACK() {
    HOOKENGINEF(8020064, 7, 22006);
}

func void INVTRANSPARENCYHACK_HOOK() {
    if ((!(ECX)) || (!(ESP))) {
        return;
    };
    if ((MEM_READINT((ESP) + (4))) == (64)) {
        MEM_WRITEINT((ESP) + (4), 255);
    };
}


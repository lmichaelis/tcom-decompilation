func void B_CLEARDEADTRADER(var C_NPC TRADER) {
    NPC_CLEARINVENTORY(TRADER);
    if ((TRADER.AIVAR[16]) == (FALSE)) {
        B_CREATEAMBIENTINV(TRADER);
    };
    TRADER.AIVAR[49] = (KAPITEL) - (1);
}


func void PLAYER_PLUNDER_IS_EMPTY() {
    var int RND;
    RND = HLP_RANDOM(100);
    if ((RND) <= (40)) {
        PRINT(PRINT_NOTHINGTOGET);
        B_SAY_OVERLAY(SELF, SELF, "$NOTHINGTOGET");
    };
    if ((RND) <= (80)) {
        PRINT(PRINT_NOTHINGTOGET02);
        B_SAY_OVERLAY(SELF, SELF, "$NOTHINGTOGET02");
    };
    if ((RND) <= (99)) {
        PRINT(PRINT_NOTHINGTOGET03);
        B_SAY_OVERLAY(SELF, SELF, "$NOTHINGTOGET03");
    };
}


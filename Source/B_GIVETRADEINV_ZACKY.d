func void B_GIVETRADEINV_ZACKY(var C_NPC SLF) {
    if (((KAPITEL) >= (1)) && ((ZACKY_ITEMSGIVEN_CHAPTER_1) == (FALSE))) {
        CREATEINVITEMS(SLF, 34344, 3);
        CREATEINVITEMS(SLF, 34339, 6);
        CREATEINVITEMS(SLF, 34334, 9);
        CREATEINVITEMS(SLF, 34703, 2);
        CREATEINVITEMS(SLF, 34699, 6);
        CREATEINVITEMS(SLF, 34693, 7);
        CREATEINVITEMS(SLF, 38181, 4);
        CREATEINVITEMS(SLF, 38180, 3);
        CREATEINVITEMS(SLF, 34690, 5);
        ZACKY_ITEMSGIVEN_CHAPTER_1 = TRUE;
    };
}


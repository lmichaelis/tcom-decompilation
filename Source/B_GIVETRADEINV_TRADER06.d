func void B_GIVETRADEINV_TRADER06(var C_NPC SLF) {
    if (((KAPITEL) >= (1)) && ((TRADER06_ITEMSGIVEN_CHAPTER_1) == (FALSE))) {
        CREATEINVITEMS(SLF, 38228, 10);
        CREATEINVITEMS(SLF, 38234, 10);
        CREATEINVITEMS(SLF, 34379, 8);
        CREATEINVITEMS(SLF, 34229, 2);
        CREATEINVITEMS(SLF, 34742, 20);
        CREATEINVITEMS(SLF, 33984, 4);
        CREATEINVITEMS(SLF, 34686, 8);
        CREATEINVITEMS(SLF, 34687, 8);
        CREATEINVITEMS(SLF, 34688, 8);
        CREATEINVITEMS(SLF, 34692, 5);
        CREATEINVITEMS(SLF, 34701, 3);
        CREATEINVITEMS(SLF, 34694, 3);
        CREATEINVITEMS(SLF, 34742, 10);
        CREATEINVITEMS(SLF, 34177, 19);
        CREATEINVITEMS(SLF, 36363, 15);
        CREATEINVITEMS(SLF, 36383, 3);
        CREATEINVITEMS(SLF, 34334, 4);
        CREATEINVITEMS(SLF, 34339, 4);
        CREATEINVITEMS(SLF, 34344, 4);
        CREATEINVITEMS(SLF, 34352, 4);
        CREATEINVITEMS(SLF, 34354, 4);
        CREATEINVITEMS(SLF, 34357, 4);
        CREATEINVITEMS(SLF, 36372, 4);
        CREATEINVITEMS(SLF, 36447, 5);
        CREATEINVITEMS(SLF, 35873, 1);
        CREATEINVITEMS(SLF, 40700, 1);
        CREATEINVITEMS(SLF, 40668, 1);
        CREATEINVITEMS(SLF, 40090, 1);
        TRADER06_ITEMSGIVEN_CHAPTER_1 = TRUE;
    };
}


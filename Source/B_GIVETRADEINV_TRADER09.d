func void B_GIVETRADEINV_TRADER09(var C_NPC SLF) {
    if (((KAPITEL) >= (1)) && ((TRADER09_ITEMSGIVEN_CHAPTER_1) == (FALSE))) {
        CREATEINVITEMS(SLF, 38228, 5);
        CREATEINVITEMS(SLF, 38234, 5);
        CREATEINVITEMS(SLF, 34379, 1);
        CREATEINVITEMS(SLF, 34742, 8);
        CREATEINVITEMS(SLF, 33984, 2);
        CREATEINVITEMS(SLF, 34686, 6);
        CREATEINVITEMS(SLF, 34687, 4);
        CREATEINVITEMS(SLF, 34688, 4);
        CREATEINVITEMS(SLF, 34701, 3);
        CREATEINVITEMS(SLF, 34694, 3);
        CREATEINVITEMS(SLF, 38188, 1);
        CREATEINVITEMS(SLF, 34742, 10);
        CREATEINVITEMS(SLF, 34177, 4);
        CREATEINVITEMS(SLF, 36363, 4);
        CREATEINVITEMS(SLF, 36383, 2);
        CREATEINVITEMS(SLF, 34334, 2);
        CREATEINVITEMS(SLF, 34339, 1);
        CREATEINVITEMS(SLF, 34352, 2);
        CREATEINVITEMS(SLF, 34354, 1);
        CREATEINVITEMS(SLF, 33656, 1);
        CREATEINVITEMS(SLF, 35899, 1);
        CREATEINVITEMS(SLF, 40692, 1);
        CREATEINVITEMS(SLF, 40644, 1);
        CREATEINVITEMS(SLF, 40680, 1);
        CREATEINVITEMS(SLF, 40043, 1);
        TRADER09_ITEMSGIVEN_CHAPTER_1 = TRUE;
    };
}

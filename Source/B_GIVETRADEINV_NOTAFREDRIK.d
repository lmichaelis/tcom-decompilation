func void B_GIVETRADEINV_NOTAFREDRIK(var C_NPC SLF) {
    if (((KAPITEL) >= (1)) && ((NOTAFREDRIK_ITEMSGIVEN_CHAPTER_1) == (FALSE))) {
        CREATEINVITEMS(SLF, 34339, 4);
        CREATEINVITEMS(SLF, 34354, 4);
        CREATEINVITEMS(SLF, 34344, 4);
        CREATEINVITEMS(SLF, 34357, 4);
        CREATEINVITEMS(SLF, 37202, 3);
        CREATEINVITEMS(SLF, 34194, 25);
        CREATEINVITEMS(SLF, 36977, 17);
        CREATEINVITEMS(SLF, 36980, 6);
        CREATEINVITEMS(SLF, 34272, 12);
        CREATEINVITEMS(SLF, 34302, 10);
        CREATEINVITEMS(SLF, 34177, 10);
        CREATEINVITEMS(SLF, 34742, 4);
        CREATEINVITEMS(SLF, 34716, 4);
        CREATEINVITEMS(SLF, 34719, 5);
        CREATEINVITEMS(SLF, 34722, 2);
        CREATEINVITEMS(SLF, 34723, 1);
        CREATEINVITEMS(SLF, 38188, 6);
        CREATEINVITEMS(SLF, 34726, 1);
        CREATEINVITEMS(SLF, 33660, 30);
        CREATEINVITEMS(SLF, 36941, 4);
        CREATEINVITEMS(SLF, 35980, 8);
        CREATEINVITEMS(SLF, 34228, 4);
        CREATEINVITEMS(SLF, 35982, 4);
        CREATEINVITEMS(SLF, 35981, 8);
        CREATEINVITEMS(SLF, 35859, 1);
        NOTAFREDRIK_ITEMSGIVEN_CHAPTER_1 = TRUE;
    };
}


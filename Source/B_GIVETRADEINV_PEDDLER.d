func void B_GIVETRADEINV_PEDDLER(var C_NPC SLF) {
    if (((KAPITEL) >= (4)) && ((PEDDLER_ITEMSGIVEN_CHAPTER_4) == (FALSE))) {
        CREATEINVITEMS(SLF, 36861, 1);
        CREATEINVITEMS(SLF, 36860, 1);
        CREATEINVITEMS(SLF, 36857, 1);
        CREATEINVITEMS(SLF, 36854, 1);
        CREATEINVITEMS(SLF, 36851, 5);
        CREATEINVITEMS(SLF, 36845, 3);
        CREATEINVITEMS(SLF, 36846, 3);
        CREATEINVITEMS(SLF, 36847, 3);
        CREATEINVITEMS(SLF, 36848, 3);
        CREATEINVITEMS(SLF, 36849, 3);
        CREATEINVITEMS(SLF, 36850, 3);
        CREATEINVITEMS(SLF, 36827, 2);
        CREATEINVITEMS(SLF, 36828, 2);
        CREATEINVITEMS(SLF, 36829, 2);
        CREATEINVITEMS(SLF, 36830, 2);
        CREATEINVITEMS(SLF, 36831, 2);
        CREATEINVITEMS(SLF, 36832, 2);
        CREATEINVITEMS(SLF, 36833, 2);
        CREATEINVITEMS(SLF, 36834, 2);
        CREATEINVITEMS(SLF, 36835, 2);
        CREATEINVITEMS(SLF, 36821, 1);
        CREATEINVITEMS(SLF, 36822, 1);
        CREATEINVITEMS(SLF, 36818, 1);
        CREATEINVITEMS(SLF, 36798, 2);
        CREATEINVITEMS(SLF, 36799, 2);
        CREATEINVITEMS(SLF, 36800, 2);
        CREATEINVITEMS(SLF, 36801, 2);
        CREATEINVITEMS(SLF, 36802, 2);
        CREATEINVITEMS(SLF, 36803, 2);
        CREATEINVITEMS(SLF, 36804, 2);
        CREATEINVITEMS(SLF, 36805, 2);
        CREATEINVITEMS(SLF, 36806, 2);
        CREATEINVITEMS(SLF, 36840, 1);
        CREATEINVITEMS(SLF, 36874, 1);
        PEDDLER_ITEMSGIVEN_CHAPTER_4 = TRUE;
    };
}


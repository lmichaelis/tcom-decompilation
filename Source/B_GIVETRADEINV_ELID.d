func void B_GIVETRADEINV_ELID(var C_NPC SLF) {
    if (((KAPITEL) >= (2)) && ((ELID_ITEMSGIVEN_CHAPTER_2) == (FALSE))) {
        CREATEINVITEMS(SLF, 33603, 1);
        CREATEINVITEMS(SLF, 33624, 1);
        CREATEINVITEMS(SLF, 33636, 1);
        CREATEINVITEMS(SLF, 33627, 1);
        CREATEINVITEMS(SLF, 33606, 1);
        CREATEINVITEMS(SLF, 33612, 1);
        CREATEINVITEMS(SLF, 33618, 1);
        CREATEINVITEMS(SLF, 35675, 1);
        CREATEINVITEMS(SLF, 35678, 1);
        CREATEINVITEMS(SLF, 35681, 1);
        CREATEINVITEMS(SLF, 35684, 1);
        CREATEINVITEMS(SLF, 35748, 1);
        CREATEINVITEMS(SLF, 35751, 1);
        CREATEINVITEMS(SLF, 35707, 1);
        CREATEINVITEMS(SLF, 35757, 1);
        CREATEINVITEMS(SLF, 34192, 2);
        CREATEINVITEMS(SLF, 34177, 4);
        CREATEINVITEMS(SLF, 34174, 2);
        CREATEINVITEMS(SLF, 34180, 2);
        CREATEINVITEMS(SLF, 34181, 2);
        CREATEINVITEMS(SLF, 34186, 2);
        CREATEINVITEMS(SLF, 34230, 2);
        CREATEINVITEMS(SLF, 34179, 2);
        CREATEINVITEMS(SLF, 33994, 15);
        CREATEINVITEMS(SLF, 36952, 2);
        CREATEINVITEMS(SLF, 34742, 4);
        ELID_ITEMSGIVEN_CHAPTER_2 = TRUE;
    };
}

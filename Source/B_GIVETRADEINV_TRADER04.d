func void B_GIVETRADEINV_TRADER04(var C_NPC SLF) {
    if (((KAPITEL) >= (1)) && ((TRADER04_ITEMSGIVEN_CHAPTER_1) == (FALSE))) {
        CREATEINVITEMS(SLF, 38228, 3);
        CREATEINVITEMS(SLF, 38234, 3);
        CREATEINVITEMS(SLF, 34687, 8);
        CREATEINVITEMS(SLF, 34688, 8);
        CREATEINVITEMS(SLF, 34742, 14);
        CREATEINVITEMS(SLF, 34079, 2);
        CREATEINVITEMS(SLF, 34419, 2);
        CREATEINVITEMS(SLF, 33988, 14);
        CREATEINVITEMS(SLF, 36382, 17);
        CREATEINVITEMS(SLF, 34334, 3);
        CREATEINVITEMS(SLF, 34339, 3);
        CREATEINVITEMS(SLF, 34379, 1);
        CREATEINVITEMS(SLF, 33966, 11);
        CREATEINVITEMS(SLF, 33970, 6);
        CREATEINVITEMS(SLF, 34280, 6);
        CREATEINVITEMS(SLF, 34274, 6);
        CREATEINVITEMS(SLF, 34352, 3);
        CREATEINVITEMS(SLF, 34354, 3);
        CREATEINVITEMS(SLF, 35857, 1);
        CREATEINVITEMS(SLF, 35949, 1);
        CREATEINVITEMS(SLF, 40656, 1);
        CREATEINVITEMS(SLF, 40672, 1);
        CREATEINVITEMS(SLF, 39986, 1);
        TRADER04_ITEMSGIVEN_CHAPTER_1 = TRUE;
    };
}


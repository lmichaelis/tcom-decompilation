var int FISHMONGER2_ITEMSGIVEN_CHAPTER_3;
func void B_GIVETRADEINV_FISHMONGER2(var C_NPC SLF) {
    if (((KAPITEL) >= (2)) && ((FISHMONGER2_ITEMSGIVEN_CHAPTER_2) == (FALSE))) {
        CREATEINVITEMS(SLF, 33972, 20);
        CREATEINVITEMS(SLF, 33650, 4);
        CREATEINVITEMS(SLF, 36439, 8);
        CREATEINVITEMS(SLF, 36441, 2);
        CREATEINVITEMS(SLF, 38259, 10);
        CREATEINVITEMS(SLF, 38261, 7);
        CREATEINVITEMS(SLF, 36136, 5);
        CREATEINVITEMS(SLF, 34733, 2);
        CREATEINVITEMS(SLF, 35855, 1);
        CREATEINVITEMS(SLF, 35875, 1);
        CREATEINVITEMS(SLF, 35885, 1);
        CREATEINVITEMS(SLF, 35915, 1);
        FISHMONGER2_ITEMSGIVEN_CHAPTER_2 = TRUE;
    };
    if (((KAPITEL) >= (3)) && ((FISHMONGER2_ITEMSGIVEN_CHAPTER_3) == (FALSE))) {
        CREATEINVITEMS(SLF, 33972, 12);
        CREATEINVITEMS(SLF, 33650, 4);
        CREATEINVITEMS(SLF, 36439, 8);
        CREATEINVITEMS(SLF, 36441, 2);
        CREATEINVITEMS(SLF, 38259, 10);
        CREATEINVITEMS(SLF, 38261, 7);
        CREATEINVITEMS(SLF, 36136, 5);
        CREATEINVITEMS(SLF, 34733, 2);
        FISHMONGER2_ITEMSGIVEN_CHAPTER_3 = TRUE;
    };
}

var int HAROLD_ITEMSGIVEN_CHAPTER_2;
var int HAROLD_ITEMSGIVEN_CHAPTER_3;
func void B_GIVETRADEINV_HAROLD(var C_NPC SLF) {
    if (((KAPITEL) >= (1)) && ((HAROLD_ITEMSGIVEN_CHAPTER_1) == (FALSE))) {
        CREATEINVITEMS(SLF, 33661, 3);
        CREATEINVITEMS(SLF, 34229, 1);
        CREATEINVITEMS(SLF, 34223, 4);
        CREATEINVITEMS(SLF, 34226, 1);
        CREATEINVITEMS(SLF, 38240, 1);
        CREATEINVITEMS(SLF, 36385, 1);
        CREATEINVITEMS(SLF, 35855, 1);
        CREATEINVITEMS(SLF, 35875, 1);
        CREATEINVITEMS(SLF, 35885, 1);
        CREATEINVITEMS(SLF, 35915, 1);
        CREATEINVITEMS(SLF, 35931, 1);
        CREATEINVITEMS(SLF, 35943, 1);
        CREATEINVITEMS(SLF, 35957, 1);
        HAROLD_ITEMSGIVEN_CHAPTER_1 = TRUE;
    };
    if (((KAPITEL) >= (2)) && ((HAROLD_ITEMSGIVEN_CHAPTER_2) == (FALSE))) {
        HAROLD_ITEMSGIVEN_CHAPTER_2 = TRUE;
    };
    if (((KAPITEL) >= (3)) && ((HAROLD_ITEMSGIVEN_CHAPTER_3) == (FALSE))) {
        HAROLD_ITEMSGIVEN_CHAPTER_3 = TRUE;
    };
}


var int SMITHER_ITEMSGIVEN_CHAPTER_2;
var int SMITHER_ITEMSGIVEN_CHAPTER_3;
var int SMITHER_ITEMSGIVEN_CHAPTER_4;
var int SMITHER_ITEMSGIVEN_CHAPTER_5;
func void B_GIVETRADEINV_SMITHER(var C_NPC SLF) {
    if (((KAPITEL) >= (1)) && ((SMITHER_ITEMSGIVEN_CHAPTER_1) == (FALSE))) {
        CREATEINVITEMS(SLF, 33660, 12);
        SMITHER_ITEMSGIVEN_CHAPTER_1 = TRUE;
    };
    if (((KAPITEL) >= (2)) && ((SMITHER_ITEMSGIVEN_CHAPTER_2) == (FALSE))) {
        CREATEINVITEMS(SLF, 33660, 12);
        SMITHER_ITEMSGIVEN_CHAPTER_2 = TRUE;
    };
    if (((KAPITEL) >= (3)) && ((SMITHER_ITEMSGIVEN_CHAPTER_3) == (FALSE))) {
        CREATEINVITEMS(SLF, 33660, 12);
        SMITHER_ITEMSGIVEN_CHAPTER_3 = TRUE;
    };
    if (((KAPITEL) >= (4)) && ((SMITHER_ITEMSGIVEN_CHAPTER_4) == (FALSE))) {
        CREATEINVITEMS(SLF, 33660, 12);
        SMITHER_ITEMSGIVEN_CHAPTER_4 = TRUE;
    };
    if (((KAPITEL) >= (5)) && ((SMITHER_ITEMSGIVEN_CHAPTER_5) == (FALSE))) {
        CREATEINVITEMS(SLF, 33660, 12);
        SMITHER_ITEMSGIVEN_CHAPTER_5 = TRUE;
    };
}


var int KOLG_ITEMSGIVEN_CHAPTER_2;
var int KOLG_ITEMSGIVEN_CHAPTER_3;
var int KOLG_ITEMSGIVEN_CHAPTER_4;
var int KOLG_ITEMSGIVEN_CHAPTER_5;
var int KOLG_ITEMSGIVEN_CHAPTER_6;
func void B_GIVETRADEINV_KOLG(var C_NPC SLF) {
    if (((KAPITEL) >= (1)) && ((KOLG_ITEMSGIVEN_CHAPTER_1) == (FALSE))) {
        CREATEINVITEMS(SLF, 39814, 7);
        CREATEINVITEMS(SLF, 39816, 4);
        CREATEINVITEMS(SLF, 39818, 2);
        KOLG_ITEMSGIVEN_CHAPTER_1 = TRUE;
    };
    if (((KAPITEL) >= (2)) && ((KOLG_ITEMSGIVEN_CHAPTER_2) == (FALSE))) {
        KOLG_ITEMSGIVEN_CHAPTER_2 = TRUE;
    };
    if (((KAPITEL) >= (3)) && ((KOLG_ITEMSGIVEN_CHAPTER_3) == (FALSE))) {
        KOLG_ITEMSGIVEN_CHAPTER_3 = TRUE;
    };
    if (((KAPITEL) >= (4)) && ((KOLG_ITEMSGIVEN_CHAPTER_4) == (FALSE))) {
        KOLG_ITEMSGIVEN_CHAPTER_4 = TRUE;
    };
    if (((KAPITEL) >= (5)) && ((KOLG_ITEMSGIVEN_CHAPTER_5) == (FALSE))) {
        KOLG_ITEMSGIVEN_CHAPTER_5 = TRUE;
    };
    if (((KAPITEL) >= (6)) && ((KOLG_ITEMSGIVEN_CHAPTER_6) == (FALSE))) {
        KOLG_ITEMSGIVEN_CHAPTER_6 = TRUE;
    };
}


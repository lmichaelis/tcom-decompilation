var int FIGARO_ITEMSGIVEN_CHAPTER_2 = 0;
var int FIGARO_ITEMSGIVEN_CHAPTER_3 = 0;
var int FIGARO_ITEMSGIVEN_CHAPTER_4 = 0;
var int FIGARO_ITEMSGIVEN_CHAPTER_5 = 0;
func void B_GIVETRADEINV_FIGARO(var C_NPC SLF) {
    if (((KAPITEL) >= (2)) && ((FIGARO_ITEMSGIVEN_CHAPTER_2) == (FALSE))) {
        CREATEINVITEMS(SLF, 0x8630, 6);
        CREATEINVITEMS(SLF, 0x8632, 3);
        CREATEINVITEMS(SLF, 0x85fe, 10);
        CREATEINVITEMS(SLF, 0x85f4, 8);
        CREATEINVITEMS(SLF, 0x85f6, 7);
        CREATEINVITEMS(SLF, 0x85f8, 14);
        CREATEINVITEMS(SLF, 0x85fa, 20);
        CREATEINVITEMS(SLF, 0x85fc, 20);
        CREATEINVITEMS(SLF, 0x8433, 10);
        CREATEINVITEMS(SLF, 0x85de, 8);
        CREATEINVITEMS(SLF, 0x85f2, 5);
        CREATEINVITEMS(SLF, 0x85b4, 8);
        CREATEINVITEMS(SLF, 0x8581, 16);
        CREATEINVITEMS(SLF, 0x857e, 1);
        CREATEINVITEMS(SLF, 0x8452, 10);
        CREATEINVITEMS(SLF, 0x8453, 6);
        CREATEINVITEMS(SLF, 0x843f, 2);
        CREATEINVITEMS(SLF, 0x8a1a, 5);
        CREATEINVITEMS(SLF, 0x85b1, 5);
        CREATEINVITEMS(SLF, 0x8c23, 1);
        CREATEINVITEMS(SLF, 0x8c43, 1);
        CREATEINVITEMS(SLF, 0x8c67, 1);
        FIGARO_ITEMSGIVEN_CHAPTER_2 = TRUE;
    };
    if (((KAPITEL) >= (3)) && ((FIGARO_ITEMSGIVEN_CHAPTER_3) == (FALSE))) {
        CREATEINVITEMS(SLF, 0x85fe, 8);
        CREATEINVITEMS(SLF, 0x85f4, 4);
        CREATEINVITEMS(SLF, 0x85f6, 3);
        CREATEINVITEMS(SLF, 0x85f8, 4);
        CREATEINVITEMS(SLF, 0x85fa, 5);
        CREATEINVITEMS(SLF, 0x85fc, 5);
        CREATEINVITEMS(SLF, 0x85f2, 5);
        CREATEINVITEMS(SLF, 0x8433, 2);
        CREATEINVITEMS(SLF, 0x85b4, 10);
        CREATEINVITEMS(SLF, 0x8581, 6);
        CREATEINVITEMS(SLF, 0x8452, 10);
        CREATEINVITEMS(SLF, 0x843f, 2);
        FIGARO_ITEMSGIVEN_CHAPTER_3 = TRUE;
    };
    if (((KAPITEL) >= (4)) && ((FIGARO_ITEMSGIVEN_CHAPTER_4) == (FALSE))) {
        CREATEINVITEMS(SLF, 0x85fe, 8);
        CREATEINVITEMS(SLF, 0x85f4, 4);
        CREATEINVITEMS(SLF, 0x85f6, 3);
        CREATEINVITEMS(SLF, 0x85f8, 4);
        CREATEINVITEMS(SLF, 0x85fa, 5);
        CREATEINVITEMS(SLF, 0x85fc, 5);
        CREATEINVITEMS(SLF, 0x8433, 2);
        CREATEINVITEMS(SLF, 0x85b4, 10);
        CREATEINVITEMS(SLF, 0x8581, 6);
        CREATEINVITEMS(SLF, 0x8452, 10);
        CREATEINVITEMS(SLF, 0x8453, 6);
        CREATEINVITEMS(SLF, 0x843f, 2);
        FIGARO_ITEMSGIVEN_CHAPTER_4 = TRUE;
    };
    if (((KAPITEL) >= (5)) && ((FIGARO_ITEMSGIVEN_CHAPTER_5) == (FALSE))) {
        CREATEINVITEMS(SLF, 0x8581, 6);
        FIGARO_ITEMSGIVEN_CHAPTER_5 = TRUE;
    };
}


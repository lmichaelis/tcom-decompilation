var int VENZEL_ITEMSGIVEN_CHAPTER_2 = 0;
var int VENZEL_ITEMSGIVEN_CHAPTER_3 = 0;
var int VENZEL_ITEMSGIVEN_CHAPTER_4 = 0;
var int VENZEL_ITEMSGIVEN_CHAPTER_5 = 0;
func void B_GIVETRADEINV_VENZEL(var C_NPC SLF) {
    if (((KAPITEL) >= (2)) && ((VENZEL_ITEMSGIVEN_CHAPTER_2) == (FALSE))) {
        CREATEINVITEMS(SLF, 0x85b4, 2);
        CREATEINVITEMS(SLF, 0x8ce2, 5);
        CREATEINVITEMS(SLF, 0x8c94, 32);
        CREATEINVITEMS(SLF, 0x9122, 1);
        CREATEINVITEMS(SLF, 0x9f83, 1);
        CREATEINVITEMS(SLF, 0x9f8e, 1);
        CREATEINVITEMS(SLF, 0x9c84, 1);
        CREATEINVITEMS(SLF, 0x9c91, 1);
        CREATEINVITEMS(SLF, 0x9c94, 1);
        CREATEINVITEMS(SLF, 0x9c97, 1);
        CREATEINVITEMS(SLF, 0x9c9a, 1);
        CREATEINVITEMS(SLF, 0x9c9d, 1);
        CREATEINVITEMS(SLF, 0x9ca0, 1);
        CREATEINVITEMS(SLF, 0x9ca3, 1);
        CREATEINVITEMS(SLF, 0x9d94, 1);
        CREATEINVITEMS(SLF, 0x9d9b, 1);
        CREATEINVITEMS(SLF, 0x9de4, 1);
        CREATEINVITEMS(SLF, 0x9ddc, 1);
        CREATEINVITEMS(SLF, 0x9dec, 1);
        VENZEL_ITEMSGIVEN_CHAPTER_2 = TRUE;
    };
    if (((KAPITEL) >= (3)) && ((VENZEL_ITEMSGIVEN_CHAPTER_3) == (FALSE))) {
        CREATEINVITEMS(SLF, 0x8c94, 20);
        CREATEINVITEMS(SLF, 0x8ce2, 1);
        CREATEINVITEMS(SLF, 0xa070, 1);
        CREATEINVITEMS(SLF, 0xa067, 1);
        CREATEINVITEMS(SLF, 0xa05e, 1);
        CREATEINVITEMS(SLF, 0xa055, 1);
        CREATEINVITEMS(SLF, 0xa043, 1);
        CREATEINVITEMS(SLF, 0xa079, 1);
        CREATEINVITEMS(SLF, 0xa04c, 1);
        VENZEL_ITEMSGIVEN_CHAPTER_3 = TRUE;
    };
    if (((KAPITEL) >= (4)) && ((VENZEL_ITEMSGIVEN_CHAPTER_4) == (FALSE))) {
        CREATEINVITEMS(SLF, 0x8c94, 20);
        CREATEINVITEMS(SLF, 0x8ce2, 2);
        VENZEL_ITEMSGIVEN_CHAPTER_4 = TRUE;
    };
    if (((KAPITEL) >= (5)) && ((VENZEL_ITEMSGIVEN_CHAPTER_5) == (FALSE))) {
        CREATEINVITEMS(SLF, 0x8c94, 20);
        CREATEINVITEMS(SLF, 0x8ce2, 2);
        CREATEINVITEMS(SLF, 0xa073, 1);
        CREATEINVITEMS(SLF, 0xa06a, 1);
        CREATEINVITEMS(SLF, 0xa061, 1);
        CREATEINVITEMS(SLF, 0xa058, 1);
        CREATEINVITEMS(SLF, 0xa046, 1);
        CREATEINVITEMS(SLF, 0xa07c, 1);
        CREATEINVITEMS(SLF, 0xa04f, 1);
        CREATEINVITEMS(SLF, 0xa076, 1);
        CREATEINVITEMS(SLF, 0xa06d, 1);
        CREATEINVITEMS(SLF, 0xa064, 1);
        CREATEINVITEMS(SLF, 0xa05b, 1);
        CREATEINVITEMS(SLF, 0xa049, 1);
        CREATEINVITEMS(SLF, 0xa07f, 1);
        CREATEINVITEMS(SLF, 0xa052, 1);
        VENZEL_ITEMSGIVEN_CHAPTER_5 = TRUE;
    };
}


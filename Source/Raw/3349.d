var int NIRKA_ITEMSGIVEN_CHAPTER_1 = 0;
var int NIRKA_ITEMSGIVEN_CHAPTER_3 = 0;
var int NIRKA_ITEMSGIVEN_CHAPTER_4 = 0;
var int NIRKA_ITEMSGIVEN_CHAPTER_5 = 0;
func void B_GIVETRADEINV_NIRKA(var C_NPC SLF) {
    if (((KAPITEL) >= (1)) && ((NIRKA_ITEMSGIVEN_CHAPTER_1) == (FALSE))) {
        CREATEINVITEMS(SLF, 0x9554, 5);
        CREATEINVITEMS(SLF, 0x955a, 5);
        CREATEINVITEMS(SLF, 0x9556, 2);
        CREATEINVITEMS(SLF, 0x955c, 2);
        CREATEINVITEMS(SLF, 0x9558, 3);
        CREATEINVITEMS(SLF, 0x955e, 3);
        CREATEINVITEMS(SLF, 0x8651, 1);
        CREATEINVITEMS(SLF, 0x8653, 1);
        CREATEINVITEMS(SLF, 0x8654, 1);
        CREATEINVITEMS(SLF, 0x8656, 1);
        CREATEINVITEMS(SLF, 0x8449, 2);
        CREATEINVITEMS(SLF, 0x8447, 2);
        CREATEINVITEMS(SLF, 0x8443, 10);
        CREATEINVITEMS(SLF, 0x8446, 10);
        CREATEINVITEMS(SLF, 0x843c, 20);
        CREATEINVITEMS(SLF, 0x843a, 20);
        CREATEINVITEMS(SLF, 0x844c, 2);
        CREATEINVITEMS(SLF, 0x844e, 4);
        CREATEINVITEMS(SLF, 0x844b, 4);
        CREATEINVITEMS(SLF, 0x89ff, 1);
        CREATEINVITEMS(SLF, 0x8c8e, 5);
        CREATEINVITEMS(SLF, 0x8c57, 1);
        NIRKA_ITEMSGIVEN_CHAPTER_1 = TRUE;
    };
    if (((KAPITEL) >= (3)) && ((NIRKA_ITEMSGIVEN_CHAPTER_3) == (FALSE))) {
        CREATEINVITEMS(SLF, 0x9554, 3);
        CREATEINVITEMS(SLF, 0x955a, 3);
        CREATEINVITEMS(SLF, 0x9556, 1);
        CREATEINVITEMS(SLF, 0x955c, 1);
        CREATEINVITEMS(SLF, 0x865e, 1);
        CREATEINVITEMS(SLF, 0x8661, 1);
        CREATEINVITEMS(SLF, 0x8a2d, 4);
        CREATEINVITEMS(SLF, 0x8448, 4);
        CREATEINVITEMS(SLF, 0x8a26, 2);
        NIRKA_ITEMSGIVEN_CHAPTER_3 = TRUE;
    };
    if (((KAPITEL) >= (4)) && ((NIRKA_ITEMSGIVEN_CHAPTER_4) == (FALSE))) {
        CREATEINVITEMS(SLF, 0x9554, 3);
        CREATEINVITEMS(SLF, 0x955a, 3);
        CREATEINVITEMS(SLF, 0x9556, 1);
        CREATEINVITEMS(SLF, 0x955c, 1);
        CREATEINVITEMS(SLF, 0x8663, 1);
        CREATEINVITEMS(SLF, 0x8666, 1);
        CREATEINVITEMS(SLF, 0x89ff, 1);
        NIRKA_ITEMSGIVEN_CHAPTER_4 = TRUE;
    };
    if (((KAPITEL) >= (5)) && ((NIRKA_ITEMSGIVEN_CHAPTER_5) == (FALSE))) {
        CREATEINVITEMS(SLF, 0x9554, 3);
        CREATEINVITEMS(SLF, 0x955a, 3);
        CREATEINVITEMS(SLF, 0x9556, 1);
        CREATEINVITEMS(SLF, 0x955c, 1);
        CREATEINVITEMS(SLF, 0x8667, 1);
        CREATEINVITEMS(SLF, 0x8a2d, 4);
        CREATEINVITEMS(SLF, 0x844b, 4);
        CREATEINVITEMS(SLF, 0x89fa, 4);
        NIRKA_ITEMSGIVEN_CHAPTER_5 = TRUE;
    };
}


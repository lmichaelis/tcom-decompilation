var int JORIS_ITEMSGIVEN_CHAPTER_1 = 0;
var int JORIS_ITEMSGIVEN_CHAPTER_2 = 0;
var int JORIS_ITEMSGIVEN_CHAPTER_3 = 0;
func void B_GIVETRADEINV_JORIS(var C_NPC SLF) {
    if (((KAPITEL) >= (1)) && ((JORIS_ITEMSGIVEN_CHAPTER_1) == (FALSE))) {
        CREATEINVITEMS(SLF, 0x84ac, 2);
        CREATEINVITEMS(SLF, 0x8e05, 2);
        CREATEINVITEMS(SLF, 0x84ae, 20);
        CREATEINVITEMS(SLF, 0x84b4, 10);
        CREATEINVITEMS(SLF, 0x84ba, 10);
        CREATEINVITEMS(SLF, 0x8e3b, 2);
        CREATEINVITEMS(SLF, 0x8e3d, 12);
        CREATEINVITEMS(SLF, 0x8e19, 10);
        CREATEINVITEMS(SLF, 0x8e1a, 2);
        CREATEINVITEMS(SLF, 0x8e1c, 30);
        CREATEINVITEMS(SLF, 0x8e1e, 12);
        CREATEINVITEMS(SLF, 0x8e5f, 18);
        CREATEINVITEMS(SLF, 0x8f04, 3);
        CREATEINVITEMS(SLF, 0x8f27, 2);
        CREATEINVITEMS(SLF, 0x8f2e, 1);
        CREATEINVITEMS(SLF, 0x8f6e, 1);
        CREATEINVITEMS(SLF, 0x8f5e, 4);
        CREATEINVITEMS(SLF, 0x8f60, 1);
        CREATEINVITEMS(SLF, 0x8f6c, 3);
        CREATEINVITEMS(SLF, 0x8efc, 12);
        CREATEINVITEMS(SLF, 0x8c0f, 1);
        CREATEINVITEMS(SLF, 0x8c2f, 1);
        CREATEINVITEMS(SLF, 0x8c35, 1);
        CREATEINVITEMS(SLF, 0x8c77, 1);
        CREATEINVITEMS(SLF, 0x8c67, 1);
        CREATEINVITEMS(SLF, 0x8c69, 1);
        CREATEINVITEMS(SLF, 0x8c75, 1);
        CREATEINVITEMS(SLF, 0x8c07, 1);
        CREATEINVITEMS(SLF, 0x8c90, 12);
        CREATEINVITEMS(SLF, 0x904e, 4);
        CREATEINVITEMS(SLF, 0x85de, 20);
        CREATEINVITEMS(SLF, 0x85fc, 8);
        CREATEINVITEMS(SLF, 0x85f8, 8);
        CREATEINVITEMS(SLF, 0x8e1c, 5);
        CREATEINVITEMS(SLF, 0x84be, 15);
        CREATEINVITEMS(SLF, 0x84c6, 10);
        CREATEINVITEMS(SLF, 0x87b6, 3);
        JORIS_ITEMSGIVEN_CHAPTER_1 = TRUE;
    };
    if (((KAPITEL) >= (2)) && ((JORIS_ITEMSGIVEN_CHAPTER_2) == (FALSE))) {
        CREATEINVITEMS(SLF, 0x84ac, 2);
        CREATEINVITEMS(SLF, 0x8e05, 2);
        CREATEINVITEMS(SLF, 0x84ae, 10);
        CREATEINVITEMS(SLF, 0x84b4, 10);
        CREATEINVITEMS(SLF, 0x84ba, 10);
        CREATEINVITEMS(SLF, 0x8e3b, 2);
        CREATEINVITEMS(SLF, 0x8e3d, 12);
        CREATEINVITEMS(SLF, 0x8e19, 5);
        CREATEINVITEMS(SLF, 0x8e1a, 8);
        CREATEINVITEMS(SLF, 0x8e1c, 8);
        CREATEINVITEMS(SLF, 0x8e1e, 8);
        CREATEINVITEMS(SLF, 0x8e5f, 4);
        CREATEINVITEMS(SLF, 0x8f04, 3);
        CREATEINVITEMS(SLF, 0x8f27, 2);
        CREATEINVITEMS(SLF, 0x8f2e, 1);
        CREATEINVITEMS(SLF, 0x8f6e, 1);
        CREATEINVITEMS(SLF, 0x8f5e, 4);
        CREATEINVITEMS(SLF, 0x8f60, 1);
        CREATEINVITEMS(SLF, 0x8f6c, 3);
        CREATEINVITEMS(SLF, 0x8c90, 12);
        CREATEINVITEMS(SLF, 0x904e, 4);
        CREATEINVITEMS(SLF, 0x85de, 20);
        CREATEINVITEMS(SLF, 0x85fc, 8);
        CREATEINVITEMS(SLF, 0x85f8, 8);
        CREATEINVITEMS(SLF, 0x8e1c, 5);
        CREATEINVITEMS(SLF, 0x84be, 15);
        CREATEINVITEMS(SLF, 0x84c6, 10);
        CREATEINVITEMS(SLF, 0x87b6, 3);
        JORIS_ITEMSGIVEN_CHAPTER_2 = TRUE;
    };
    if (((KAPITEL) >= (3)) && ((JORIS_ITEMSGIVEN_CHAPTER_3) == (FALSE))) {
        CREATEINVITEMS(SLF, 0x84ac, 2);
        CREATEINVITEMS(SLF, 0x8e05, 2);
        CREATEINVITEMS(SLF, 0x84ae, 10);
        CREATEINVITEMS(SLF, 0x84b4, 10);
        CREATEINVITEMS(SLF, 0x84ba, 10);
        CREATEINVITEMS(SLF, 0x8e3b, 2);
        CREATEINVITEMS(SLF, 0x8e3d, 12);
        CREATEINVITEMS(SLF, 0x8e19, 5);
        CREATEINVITEMS(SLF, 0x8e1a, 8);
        CREATEINVITEMS(SLF, 0x8e1c, 8);
        CREATEINVITEMS(SLF, 0x8e1e, 8);
        CREATEINVITEMS(SLF, 0x8e5f, 4);
        CREATEINVITEMS(SLF, 0x8f04, 3);
        CREATEINVITEMS(SLF, 0x8f27, 2);
        CREATEINVITEMS(SLF, 0x8f2e, 1);
        CREATEINVITEMS(SLF, 0x8f6e, 1);
        CREATEINVITEMS(SLF, 0x8f5e, 4);
        CREATEINVITEMS(SLF, 0x8f60, 1);
        CREATEINVITEMS(SLF, 0x8f6c, 3);
        CREATEINVITEMS(SLF, 0x8c90, 12);
        CREATEINVITEMS(SLF, 0x904e, 4);
        CREATEINVITEMS(SLF, 0x85de, 20);
        CREATEINVITEMS(SLF, 0x85fc, 8);
        CREATEINVITEMS(SLF, 0x85f8, 8);
        CREATEINVITEMS(SLF, 0x8e1c, 5);
        CREATEINVITEMS(SLF, 0x84be, 15);
        CREATEINVITEMS(SLF, 0x84c6, 10);
        CREATEINVITEMS(SLF, 0x87b6, 3);
        JORIS_ITEMSGIVEN_CHAPTER_3 = TRUE;
    };
}


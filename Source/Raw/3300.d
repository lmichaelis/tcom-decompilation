var int BASTIAN_ITEMSGIVEN_CHAPTER_1 = 0;
var int BASTIAN_ITEMSGIVEN_CHAPTER_2 = 0;
var int BASTIAN_ITEMSGIVEN_CHAPTER_3 = 0;
var int BASTIAN_ITEMSGIVEN_CHAPTER_3_QUESTMIST = 0;
func void B_GIVETRADEINV_BASTIAN(var C_NPC SLF) {
    if (((KAPITEL) >= (1)) && ((BASTIAN_ITEMSGIVEN_CHAPTER_1) == (FALSE))) {
        CREATEINVITEMS(SLF, 0x8e1f, 3);
        CREATEINVITEMS(SLF, 0x8e23, 2);
        CREATEINVITEMS(SLF, 0x8e29, 3);
        CREATEINVITEMS(SLF, 0x8e21, 3);
        CREATEINVITEMS(SLF, 0x84ac, 2);
        CREATEINVITEMS(SLF, 0x8e05, 2);
        CREATEINVITEMS(SLF, 0x84ae, 10);
        CREATEINVITEMS(SLF, 0x84b4, 10);
        CREATEINVITEMS(SLF, 0x84ba, 10);
        CREATEINVITEMS(SLF, 0x84bc, 12);
        CREATEINVITEMS(SLF, 0x8e4b, 2);
        CREATEINVITEMS(SLF, 0x8e4d, 8);
        CREATEINVITEMS(SLF, 0x8e19, 22);
        CREATEINVITEMS(SLF, 0x8e1a, 2);
        CREATEINVITEMS(SLF, 0x8e1c, 30);
        CREATEINVITEMS(SLF, 0x8e1e, 18);
        CREATEINVITEMS(SLF, 0x90bf, 3);
        CREATEINVITEMS(SLF, 0x84b0, 10);
        CREATEINVITEMS(SLF, 0x8e5f, 4);
        CREATEINVITEMS(SLF, 0x904e, 2);
        CREATEINVITEMS(SLF, 0x8c8f, 2);
        CREATEINVITEMS(SLF, 0x8378, 2);
        CREATEINVITEMS(SLF, 0x85de, 30);
        CREATEINVITEMS(SLF, 0x85f4, 8);
        CREATEINVITEMS(SLF, 0x85f6, 8);
        CREATEINVITEMS(SLF, 0x85fa, 8);
        CREATEINVITEMS(SLF, 0x85fc, 8);
        CREATEINVITEMS(SLF, 0x85f8, 8);
        CREATEINVITEMS(SLF, 0x8e1c, 5);
        CREATEINVITEMS(SLF, 0x84be, 15);
        CREATEINVITEMS(SLF, 0x84c0, 18);
        CREATEINVITEMS(SLF, 0x84c6, 12);
        CREATEINVITEMS(SLF, 0x84c2, 2);
        CREATEINVITEMS(SLF, 0x84c4, 10);
        CREATEINVITEMS(SLF, 0x8e21, 4);
        CREATEINVITEMS(SLF, 0x8582, 2);
        CREATEINVITEMS(SLF, 0x87b6, 8);
        CREATEINVITEMS(SLF, 0x9b8e, 1);
        CREATEINVITEMS(SLF, 0x9b90, 1);
        CREATEINVITEMS(SLF, 0x9b84, 1);
        CREATEINVITEMS(SLF, 0x9b82, 1);
        CREATEINVITEMS(SLF, 0x8c92, 1);
        CREATEINVITEMS(SLF, 0x8437, 5);
        CREATEINVITEMS(SLF, 0x8c07, 1);
        CREATEINVITEMS(SLF, 0x8c09, 1);
        CREATEINVITEMS(SLF, 0x8c15, 1);
        CREATEINVITEMS(SLF, 0x8c21, 1);
        CREATEINVITEMS(SLF, 0x8c49, 1);
        BASTIAN_ITEMSGIVEN_CHAPTER_1 = TRUE;
    };
    if (((KAPITEL) >= (2)) && ((BASTIAN_ITEMSGIVEN_CHAPTER_2) == (FALSE))) {
        CREATEINVITEMS(SLF, 0x8e1f, 3);
        CREATEINVITEMS(SLF, 0x8e23, 2);
        CREATEINVITEMS(SLF, 0x8e29, 3);
        CREATEINVITEMS(SLF, 0x8e21, 1);
        CREATEINVITEMS(SLF, 0x84ac, 2);
        CREATEINVITEMS(SLF, 0x8e05, 2);
        CREATEINVITEMS(SLF, 0x84ae, 5);
        CREATEINVITEMS(SLF, 0x84b2, 5);
        CREATEINVITEMS(SLF, 0x84b4, 5);
        CREATEINVITEMS(SLF, 0x84ba, 5);
        CREATEINVITEMS(SLF, 0x84bc, 10);
        CREATEINVITEMS(SLF, 0x8e3b, 4);
        CREATEINVITEMS(SLF, 0x8e3d, 6);
        CREATEINVITEMS(SLF, 0x8e4b, 2);
        CREATEINVITEMS(SLF, 0x8e4d, 4);
        CREATEINVITEMS(SLF, 0x8e19, 10);
        CREATEINVITEMS(SLF, 0x8e1a, 2);
        CREATEINVITEMS(SLF, 0x8e1c, 24);
        CREATEINVITEMS(SLF, 0x8e1e, 16);
        CREATEINVITEMS(SLF, 0x84be, 6);
        CREATEINVITEMS(SLF, 0x84c0, 12);
        CREATEINVITEMS(SLF, 0x84c6, 4);
        CREATEINVITEMS(SLF, 0x84c2, 5);
        CREATEINVITEMS(SLF, 0x84c4, 12);
        CREATEINVITEMS(SLF, 0x8582, 2);
        CREATEINVITEMS(SLF, 0x87b6, 4);
        CREATEINVITEMS(SLF, 0x8437, 3);
        CREATEINVITEMS(SLF, 0x8c19, 1);
        BASTIAN_ITEMSGIVEN_CHAPTER_2 = TRUE;
    };
    if (((KAPITEL) >= (3)) && ((BASTIAN_ITEMSGIVEN_CHAPTER_3) == (FALSE))) {
        BASTIAN_ITEMSGIVEN_CHAPTER_3 = TRUE;
        CREATEINVITEMS(SLF, 0x8e1a, 2);
        CREATEINVITEMS(SLF, 0x84ac, 2);
        CREATEINVITEMS(SLF, 0x8e05, 2);
        CREATEINVITEMS(SLF, 0x84ae, 10);
        CREATEINVITEMS(SLF, 0x84b4, 10);
        CREATEINVITEMS(SLF, 0x84ba, 10);
        CREATEINVITEMS(SLF, 0x84bc, 8);
        CREATEINVITEMS(SLF, 0x8e19, 12);
        CREATEINVITEMS(SLF, 0x8e1c, 20);
        CREATEINVITEMS(SLF, 0x8e1e, 10);
        CREATEINVITEMS(SLF, 0x90bf, 1);
        CREATEINVITEMS(SLF, 0x8437, 2);
    };
    if (((SQ213_BASTIANVINE) == (TRUE)) && ((BASTIAN_ITEMSGIVEN_CHAPTER_3_QUESTMIST) == (FALSE))) {
        CREATEINVITEMS(SLF, 0x922c, 1);
        BASTIAN_ITEMSGIVEN_CHAPTER_3_QUESTMIST = TRUE;
    };
}

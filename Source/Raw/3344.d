var int LUCY_ITEMSGIVEN_CHAPTER_1 = 0;
var int LUCY_ITEMSGIVEN_CHAPTER_2 = 0;
var int LUCY_ITEMSGIVEN_CHAPTER_3 = 0;
var int LUCY_ITEMSGIVEN_CHAPTER_4 = 0;
var int LUCY_ITEMSGIVEN_CHAPTER_5 = 0;
func void B_GIVETRADEINV_LUCY(var C_NPC SLF) {
    if (((KAPITEL) >= (1)) && ((LUCY_ITEMSGIVEN_CHAPTER_1) == (FALSE))) {
        CREATEINVITEMS(SLF, 0x9558, 1);
        CREATEINVITEMS(SLF, 0x955e, 1);
        CREATEINVITEMS(SLF, 0x9556, 3);
        CREATEINVITEMS(SLF, 0x955c, 3);
        CREATEINVITEMS(SLF, 0x9554, 5);
        CREATEINVITEMS(SLF, 0x955a, 5);
        CREATEINVITEMS(SLF, 0x9b41, 1);
        CREATEINVITEMS(SLF, 0x9b53, 1);
        CREATEINVITEMS(SLF, 0x8658, 1);
        CREATEINVITEMS(SLF, 0x865a, 1);
        CREATEINVITEMS(SLF, 0x866f, 1);
        CREATEINVITEMS(SLF, 0x9b2d, 1);
        CREATEINVITEMS(SLF, 0x942b, 1);
        CREATEINVITEMS(SLF, 0x843a, 4);
        CREATEINVITEMS(SLF, 0x843c, 4);
        CREATEINVITEMS(SLF, 0x8438, 2);
        CREATEINVITEMS(SLF, 0x8a16, 2);
        CREATEINVITEMS(SLF, 0x8a2d, 2);
        CREATEINVITEMS(SLF, 0x8c8d, 10);
        CREATEINVITEMS(SLF, 0x8c8e, 4);
        CREATEINVITEMS(SLF, 0x9a58, 2);
        CREATEINVITEMS(SLF, 0x84d6, 1);
        CREATEINVITEMS(SLF, 0x87b6, 4);
        LUCY_ITEMSGIVEN_CHAPTER_1 = TRUE;
    };
    if (((KAPITEL) >= (2)) && ((LUCY_ITEMSGIVEN_CHAPTER_2) == (FALSE))) {
        CREATEINVITEMS(SLF, 0x9558, 1);
        CREATEINVITEMS(SLF, 0x955e, 1);
        CREATEINVITEMS(SLF, 0x9556, 1);
        CREATEINVITEMS(SLF, 0x955c, 1);
        CREATEINVITEMS(SLF, 0x9554, 1);
        CREATEINVITEMS(SLF, 0x955a, 1);
        CREATEINVITEMS(SLF, 0x9b2d, 1);
        CREATEINVITEMS(SLF, 0x8674, 1);
        CREATEINVITEMS(SLF, 0x89fe, 1);
        CREATEINVITEMS(SLF, 0x89f4, 4);
        CREATEINVITEMS(SLF, 0x8a1c, 2);
        CREATEINVITEMS(SLF, 0x8c8d, 4);
        CREATEINVITEMS(SLF, 0x8c8e, 2);
        LUCY_ITEMSGIVEN_CHAPTER_2 = TRUE;
    };
    if (((KAPITEL) >= (3)) && ((LUCY_ITEMSGIVEN_CHAPTER_3) == (FALSE))) {
        CREATEINVITEMS(SLF, 0x9558, 3);
        CREATEINVITEMS(SLF, 0x955e, 3);
        CREATEINVITEMS(SLF, 0x9556, 2);
        CREATEINVITEMS(SLF, 0x955c, 2);
        CREATEINVITEMS(SLF, 0x9554, 5);
        CREATEINVITEMS(SLF, 0x955a, 5);
        CREATEINVITEMS(SLF, 0x9b44, 1);
        CREATEINVITEMS(SLF, 0x9b50, 1);
        CREATEINVITEMS(SLF, 0x9b24, 1);
        CREATEINVITEMS(SLF, 0x9b35, 1);
        CREATEINVITEMS(SLF, 0x8a2d, 6);
        CREATEINVITEMS(SLF, 0x942f, 1);
        CREATEINVITEMS(SLF, 0x9431, 1);
        CREATEINVITEMS(SLF, 0x9413, 1);
        LUCY_ITEMSGIVEN_CHAPTER_3 = TRUE;
    };
    if (((KAPITEL) >= (4)) && ((LUCY_ITEMSGIVEN_CHAPTER_4) == (FALSE))) {
        CREATEINVITEMS(SLF, 0x9558, 1);
        CREATEINVITEMS(SLF, 0x955e, 1);
        CREATEINVITEMS(SLF, 0x9556, 1);
        CREATEINVITEMS(SLF, 0x955c, 1);
        CREATEINVITEMS(SLF, 0x9554, 3);
        CREATEINVITEMS(SLF, 0x955a, 3);
        CREATEINVITEMS(SLF, 0x9b46, 1);
        CREATEINVITEMS(SLF, 0x8661, 1);
        CREATEINVITEMS(SLF, 0x9b4f, 1);
        CREATEINVITEMS(SLF, 0x9b4c, 1);
        CREATEINVITEMS(SLF, 0x8663, 1);
        CREATEINVITEMS(SLF, 0x865e, 1);
        CREATEINVITEMS(SLF, 0x9b2a, 1);
        CREATEINVITEMS(SLF, 0x8679, 1);
        CREATEINVITEMS(SLF, 0x8672, 1);
        CREATEINVITEMS(SLF, 0x9b31, 1);
        CREATEINVITEMS(SLF, 0x8c8d, 5);
        CREATEINVITEMS(SLF, 0x8c8e, 3);
        CREATEINVITEMS(SLF, 0x8a2d, 2);
        CREATEINVITEMS(SLF, 0x89fe, 6);
        CREATEINVITEMS(SLF, 0x844b, 4);
        CREATEINVITEMS(SLF, 0x89f4, 12);
        CREATEINVITEMS(SLF, 0x8a1c, 4);
        CREATEINVITEMS(SLF, 0x89ff, 2);
        CREATEINVITEMS(SLF, 0x87b6, 4);
        CREATEINVITEMS(SLF, 0x9417, 1);
        CREATEINVITEMS(SLF, 0x9419, 1);
        CREATEINVITEMS(SLF, 0x941b, 1);
        CREATEINVITEMS(SLF, 0x9415, 1);
        CREATEINVITEMS(SLF, 0x9435, 1);
        CREATEINVITEMS(SLF, 0x9433, 1);
        CREATEINVITEMS(SLF, 0x9439, 1);
        LUCY_ITEMSGIVEN_CHAPTER_4 = TRUE;
    };
    if (((KAPITEL) >= (5)) && ((LUCY_ITEMSGIVEN_CHAPTER_5) == (FALSE))) {
        CREATEINVITEMS(SLF, 0x9558, 1);
        CREATEINVITEMS(SLF, 0x955e, 1);
        CREATEINVITEMS(SLF, 0x9556, 1);
        CREATEINVITEMS(SLF, 0x955c, 1);
        CREATEINVITEMS(SLF, 0x9554, 3);
        CREATEINVITEMS(SLF, 0x955a, 3);
        CREATEINVITEMS(SLF, 0x8667, 1);
        CREATEINVITEMS(SLF, 0x8666, 1);
        CREATEINVITEMS(SLF, 0x8668, 1);
        CREATEINVITEMS(SLF, 0x866a, 1);
        CREATEINVITEMS(SLF, 0x8664, 1);
        CREATEINVITEMS(SLF, 0x9b3a, 1);
        CREATEINVITEMS(SLF, 0x8677, 1);
        CREATEINVITEMS(SLF, 0x9b31, 1);
        CREATEINVITEMS(SLF, 0x8a2d, 2);
        CREATEINVITEMS(SLF, 0x844c, 2);
        CREATEINVITEMS(SLF, 0x941d, 1);
        CREATEINVITEMS(SLF, 0x941f, 1);
        CREATEINVITEMS(SLF, 0x943b, 1);
        CREATEINVITEMS(SLF, 0x943d, 1);
        CREATEINVITEMS(SLF, 0x9437, 1);
        LUCY_ITEMSGIVEN_CHAPTER_5 = TRUE;
    };
}


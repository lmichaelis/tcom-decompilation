var int VENZEL_ITEMSGIVEN_CHAPTER_3;
var int VENZEL_ITEMSGIVEN_CHAPTER_4;
var int VENZEL_ITEMSGIVEN_CHAPTER_5;
func void B_GIVETRADEINV_VENZEL(var C_NPC SLF) {
    if (((KAPITEL) >= (2)) && ((VENZEL_ITEMSGIVEN_CHAPTER_2) == (FALSE))) {
        CREATEINVITEMS(SLF, 34228, 2);
        CREATEINVITEMS(SLF, 36066, 5);
        CREATEINVITEMS(SLF, 35988, 32);
        CREATEINVITEMS(SLF, 37154, 1);
        CREATEINVITEMS(SLF, 40835, 1);
        CREATEINVITEMS(SLF, 40846, 1);
        CREATEINVITEMS(SLF, 40068, 1);
        CREATEINVITEMS(SLF, 40081, 1);
        CREATEINVITEMS(SLF, 40084, 1);
        CREATEINVITEMS(SLF, 40087, 1);
        CREATEINVITEMS(SLF, 40090, 1);
        CREATEINVITEMS(SLF, 40093, 1);
        CREATEINVITEMS(SLF, 40096, 1);
        CREATEINVITEMS(SLF, 40099, 1);
        CREATEINVITEMS(SLF, 40340, 1);
        CREATEINVITEMS(SLF, 40347, 1);
        CREATEINVITEMS(SLF, 40420, 1);
        CREATEINVITEMS(SLF, 40412, 1);
        CREATEINVITEMS(SLF, 40428, 1);
        VENZEL_ITEMSGIVEN_CHAPTER_2 = TRUE;
    };
    if (((KAPITEL) >= (3)) && ((VENZEL_ITEMSGIVEN_CHAPTER_3) == (FALSE))) {
        CREATEINVITEMS(SLF, 35988, 20);
        CREATEINVITEMS(SLF, 36066, 1);
        CREATEINVITEMS(SLF, 41072, 1);
        CREATEINVITEMS(SLF, 41063, 1);
        CREATEINVITEMS(SLF, 41054, 1);
        CREATEINVITEMS(SLF, 41045, 1);
        CREATEINVITEMS(SLF, 41027, 1);
        CREATEINVITEMS(SLF, 41081, 1);
        CREATEINVITEMS(SLF, 41036, 1);
        VENZEL_ITEMSGIVEN_CHAPTER_3 = TRUE;
    };
    if (((KAPITEL) >= (4)) && ((VENZEL_ITEMSGIVEN_CHAPTER_4) == (FALSE))) {
        CREATEINVITEMS(SLF, 35988, 20);
        CREATEINVITEMS(SLF, 36066, 2);
        VENZEL_ITEMSGIVEN_CHAPTER_4 = TRUE;
    };
    if (((KAPITEL) >= (5)) && ((VENZEL_ITEMSGIVEN_CHAPTER_5) == (FALSE))) {
        CREATEINVITEMS(SLF, 35988, 20);
        CREATEINVITEMS(SLF, 36066, 2);
        CREATEINVITEMS(SLF, 41075, 1);
        CREATEINVITEMS(SLF, 41066, 1);
        CREATEINVITEMS(SLF, 41057, 1);
        CREATEINVITEMS(SLF, 41048, 1);
        CREATEINVITEMS(SLF, 41030, 1);
        CREATEINVITEMS(SLF, 41084, 1);
        CREATEINVITEMS(SLF, 41039, 1);
        CREATEINVITEMS(SLF, 41078, 1);
        CREATEINVITEMS(SLF, 41069, 1);
        CREATEINVITEMS(SLF, 41060, 1);
        CREATEINVITEMS(SLF, 41051, 1);
        CREATEINVITEMS(SLF, 41033, 1);
        CREATEINVITEMS(SLF, 41087, 1);
        CREATEINVITEMS(SLF, 41042, 1);
        VENZEL_ITEMSGIVEN_CHAPTER_5 = TRUE;
    };
}

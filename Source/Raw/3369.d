var int THAMIL_ITEMSGIVEN_CHAPTER_1 = 0;
var int THAMIL_ITEMSGIVEN_CHAPTER_2 = 0;
var int THAMIL_ITEMSGIVEN_CHAPTER_3 = 0;
var int THAMIL_ITEMSGIVEN_CHAPTER_4 = 0;
var int THAMIL_ITEMSGIVEN_CHAPTER_5 = 0;
var int THAMIL_ITEMSGIVEN_CHAPTER_6 = 0;
func void B_GIVETRADEINV_THAMIL(var C_NPC SLF) {
    if (((KAPITEL) >= (1)) && ((THAMIL_ITEMSGIVEN_CHAPTER_1) == (FALSE))) {
        THAMIL_ITEMSGIVEN_CHAPTER_1 = TRUE;
    };
    if (((KAPITEL) >= (2)) && ((THAMIL_ITEMSGIVEN_CHAPTER_2) == (FALSE))) {
        THAMIL_ITEMSGIVEN_CHAPTER_2 = TRUE;
    };
    if (((KAPITEL) >= (3)) && ((THAMIL_ITEMSGIVEN_CHAPTER_3) == (FALSE))) {
        CREATEINVITEMS(SLF, 0x8966, 1);
        CREATEINVITEMS(SLF, 0x896c, 1);
        CREATEINVITEMS(SLF, 0x8960, 1);
        CREATEINVITEMS(SLF, 0x895d, 1);
        CREATEINVITEMS(SLF, 0xca4a, 1);
        CREATEINVITEMS(SLF, 0x947c, 1);
        CREATEINVITEMS(SLF, 0x9485, 1);
        CREATEINVITEMS(SLF, 0xca47, 1);
        CREATEINVITEMS(SLF, 0x947f, 1);
        CREATEINVITEMS(SLF, 0x9491, 1);
        CREATEINVITEMS(SLF, 0x949b, 1);
        CREATEINVITEMS(SLF, 0x949e, 2);
        CREATEINVITEMS(SLF, 0x94a1, 2);
        CREATEINVITEMS(SLF, 0x85b5, 1);
        THAMIL_ITEMSGIVEN_CHAPTER_3 = TRUE;
    };
    if (((KAPITEL) >= (4)) && ((THAMIL_ITEMSGIVEN_CHAPTER_4) == (FALSE))) {
        THAMIL_ITEMSGIVEN_CHAPTER_4 = TRUE;
    };
    if (((KAPITEL) >= (5)) && ((THAMIL_ITEMSGIVEN_CHAPTER_5) == (FALSE))) {
        THAMIL_ITEMSGIVEN_CHAPTER_5 = TRUE;
    };
    if (((KAPITEL) >= (6)) && ((THAMIL_ITEMSGIVEN_CHAPTER_6) == (FALSE))) {
        THAMIL_ITEMSGIVEN_CHAPTER_6 = TRUE;
    };
}


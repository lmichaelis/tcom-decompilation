var int HAROLD_ITEMSGIVEN_CHAPTER_1 = 0;
var int HAROLD_ITEMSGIVEN_CHAPTER_2 = 0;
var int HAROLD_ITEMSGIVEN_CHAPTER_3 = 0;
func void B_GIVETRADEINV_HAROLD(var C_NPC SLF) {
    if (((KAPITEL) >= (1)) && ((HAROLD_ITEMSGIVEN_CHAPTER_1) == (FALSE))) {
        CREATEINVITEMS(SLF, 0x837d, 3);
        CREATEINVITEMS(SLF, 0x85b5, 1);
        CREATEINVITEMS(SLF, 0x85af, 4);
        CREATEINVITEMS(SLF, 0x85b2, 1);
        CREATEINVITEMS(SLF, 0x9560, 1);
        CREATEINVITEMS(SLF, 0x8e21, 1);
        CREATEINVITEMS(SLF, 0x8c0f, 1);
        CREATEINVITEMS(SLF, 0x8c23, 1);
        CREATEINVITEMS(SLF, 0x8c2d, 1);
        CREATEINVITEMS(SLF, 0x8c4b, 1);
        CREATEINVITEMS(SLF, 0x8c5b, 1);
        CREATEINVITEMS(SLF, 0x8c67, 1);
        CREATEINVITEMS(SLF, 0x8c75, 1);
        HAROLD_ITEMSGIVEN_CHAPTER_1 = TRUE;
    };
    if (((KAPITEL) >= (2)) && ((HAROLD_ITEMSGIVEN_CHAPTER_2) == (FALSE))) {
        HAROLD_ITEMSGIVEN_CHAPTER_2 = TRUE;
    };
    if (((KAPITEL) >= (3)) && ((HAROLD_ITEMSGIVEN_CHAPTER_3) == (FALSE))) {
        HAROLD_ITEMSGIVEN_CHAPTER_3 = TRUE;
    };
}

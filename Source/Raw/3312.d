var int DISMAS_ITEMSGIVEN_CHAPTER_1 = 0;
var int DISMAS_ITEMSGIVEN_CHAPTER_2 = 0;
var int DISMAS_ITEMSGIVEN_CHAPTER_3 = 0;
func void B_GIVETRADEINV_DISMAS(var C_NPC SLF) {
    if (((KAPITEL) >= (1)) && ((DISMAS_ITEMSGIVEN_CHAPTER_1) == (FALSE))) {
        CREATEINVITEMS(SLF, 0x84df, 2);
        CREATEINVITEMS(SLF, 0x8c8c, 12);
        CREATEINVITEMS(SLF, 0x904b, 4);
        CREATEINVITEMS(SLF, 0x8c95, 20);
        CREATEINVITEMS(SLF, 0x837c, 12);
        CREATEINVITEMS(SLF, 0x85af, 5);
        CREATEINVITEMS(SLF, 0x85ae, 8);
        CREATEINVITEMS(SLF, 0x85b1, 5);
        DISMAS_ITEMSGIVEN_CHAPTER_1 = TRUE;
    };
    if (((KAPITEL) >= (2)) && ((DISMAS_ITEMSGIVEN_CHAPTER_2) == (FALSE))) {
        CREATEINVITEMS(SLF, 0x8c8c, 2);
        CREATEINVITEMS(SLF, 0x904b, 1);
        CREATEINVITEMS(SLF, 0x8c95, 15);
        CREATEINVITEMS(SLF, 0x85af, 3);
        CREATEINVITEMS(SLF, 0x85ae, 5);
    };
    if (((KAPITEL) >= (3)) && ((DISMAS_ITEMSGIVEN_CHAPTER_3) == (FALSE))) {
        CREATEINVITEMS(SLF, 0x84df, 1);
        CREATEINVITEMS(SLF, 0x8c8c, 4);
        CREATEINVITEMS(SLF, 0x904b, 2);
        CREATEINVITEMS(SLF, 0x837c, 20);
        CREATEINVITEMS(SLF, 0x8c95, 14);
        CREATEINVITEMS(SLF, 0x837c, 3);
        DISMAS_ITEMSGIVEN_CHAPTER_3 = TRUE;
    };
}

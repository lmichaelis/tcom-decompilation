var int BEVIN_ITEMSGIVEN_CHAPTER_3;
var int BEVIN_ITEMSGIVEN_CHAPTER_5;
func void B_GIVETRADEINV_BEVIN(var C_NPC SLF) {
    if (((KAPITEL) >= (1)) && ((BEVIN_ITEMSGIVEN_CHAPTER_1) == (FALSE))) {
        CREATEINVITEMS(SLF, 33990, 20);
        CREATEINVITEMS(SLF, 33982, 10);
        CREATEINVITEMS(SLF, 33980, 40);
        CREATEINVITEMS(SLF, 36610, 10);
        CREATEINVITEMS(SLF, 35853, 1);
        CREATEINVITEMS(SLF, 35903, 1);
        BEVIN_ITEMSGIVEN_CHAPTER_1 = TRUE;
    };
    if (((KAPITEL) >= (3)) && ((BEVIN_ITEMSGIVEN_CHAPTER_3) == (FALSE))) {
        CREATEINVITEMS(SLF, 33980, 30);
        BEVIN_ITEMSGIVEN_CHAPTER_3 = TRUE;
    };
    if (((KAPITEL) >= (5)) && ((BEVIN_ITEMSGIVEN_CHAPTER_5) == (FALSE))) {
        CREATEINVITEMS(SLF, 33980, 30);
        BEVIN_ITEMSGIVEN_CHAPTER_5 = TRUE;
    };
}


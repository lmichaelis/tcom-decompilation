var int ARMORSELLER_ITEMSGIVEN_CHAPTER_3;
var int ARMORSELLER_ITEMSGIVEN_CHAPTER_4;
func void B_GIVETRADEINV_ARMORSELLER(var C_NPC SLF) {
    if (((KAPITEL) >= (2)) && ((ARMORSELLER_ITEMSGIVEN_CHAPTER_2) == (FALSE))) {
        CREATEINVITEMS(SLF, 35980, 20);
        CREATEINVITEMS(SLF, 35361, 10);
        CREATEINVITEMS(SLF, 35360, 12);
        CREATEINVITEMS(SLF, 33862, 8);
        CREATEINVITEMS(SLF, 33660, 12);
        ARMORSELLER_ITEMSGIVEN_CHAPTER_2 = TRUE;
    };
    if (((KAPITEL) >= (3)) && ((ARMORSELLER_ITEMSGIVEN_CHAPTER_3) == (FALSE))) {
        CREATEINVITEMS(SLF, 35980, 10);
        CREATEINVITEMS(SLF, 35361, 4);
        CREATEINVITEMS(SLF, 35360, 6);
        CREATEINVITEMS(SLF, 33862, 4);
        CREATEINVITEMS(SLF, 33660, 8);
        ARMORSELLER_ITEMSGIVEN_CHAPTER_3 = TRUE;
    };
    if (((KAPITEL) >= (4)) && ((ARMORSELLER_ITEMSGIVEN_CHAPTER_4) == (FALSE))) {
        CREATEINVITEMS(SLF, 35980, 10);
        CREATEINVITEMS(SLF, 35361, 5);
        CREATEINVITEMS(SLF, 35360, 6);
        CREATEINVITEMS(SLF, 33862, 10);
        CREATEINVITEMS(SLF, 33660, 8);
        CREATEINVITEMS(SLF, 36939, 10);
        ARMORSELLER_ITEMSGIVEN_CHAPTER_4 = TRUE;
    };
}

var int DORRAN_ITEMSGIVEN_CHAPTER_2;
var int DORRAN_ITEMSGIVEN_CHAPTER_3;
var int DORRAN_ITEMSGIVEN_CHAPTER_4;
var int DORRAN_ITEMSGIVEN_CHAPTER_5;
var int DORRAN_ITEMSGIVEN_CHAPTER_6;
func void B_GIVETRADEINV_DORRAN(var C_NPC SLF) {
    if (((KAPITEL) >= (1)) && ((DORRAN_ITEMSGIVEN_CHAPTER_1) == (FALSE))) {
        CREATEINVITEMS(SLF, 34228, 8);
        CREATEINVITEMS(SLF, 35980, 10);
        CREATEINVITEMS(SLF, 36939, 2);
        CREATEINVITEMS(SLF, 34178, 3);
        CREATEINVITEMS(SLF, 34186, 2);
        CREATEINVITEMS(SLF, 34174, 1);
        CREATEINVITEMS(SLF, 34180, 3);
        CREATEINVITEMS(SLF, 34181, 2);
        CREATEINVITEMS(SLF, 36952, 3);
        CREATEINVITEMS(SLF, 34015, 5);
        CREATEINVITEMS(SLF, 34014, 3);
        CREATEINVITEMS(SLF, 34003, 4);
        DORRAN_ITEMSGIVEN_CHAPTER_1 = TRUE;
    };
    if (((KAPITEL) >= (2)) && ((DORRAN_ITEMSGIVEN_CHAPTER_2) == (FALSE))) {
        CREATEINVITEMS(SLF, 34228, 2);
        CREATEINVITEMS(SLF, 35980, 3);
        CREATEINVITEMS(SLF, 34015, 1);
        CREATEINVITEMS(SLF, 34014, 1);
        DORRAN_ITEMSGIVEN_CHAPTER_2 = TRUE;
    };
    if (((KAPITEL) >= (3)) && ((DORRAN_ITEMSGIVEN_CHAPTER_3) == (FALSE))) {
        CREATEINVITEMS(SLF, 34228, 2);
        CREATEINVITEMS(SLF, 35980, 3);
        CREATEINVITEMS(SLF, 34015, 1);
        DORRAN_ITEMSGIVEN_CHAPTER_3 = TRUE;
    };
    if (((KAPITEL) >= (4)) && ((DORRAN_ITEMSGIVEN_CHAPTER_4) == (FALSE))) {
        CREATEINVITEMS(SLF, 34228, 2);
        CREATEINVITEMS(SLF, 35980, 3);
        CREATEINVITEMS(SLF, 34015, 1);
        DORRAN_ITEMSGIVEN_CHAPTER_4 = TRUE;
    };
}


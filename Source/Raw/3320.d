var int FISHMONGER1_ITEMSGIVEN_CHAPTER_1 = 0;
var int FISHMONGER1_ITEMSGIVEN_CHAPTER_3 = 0;
func void B_GIVETRADEINV_FISHMONGER1(var C_NPC SLF) {
    if (((KAPITEL) >= (1)) && ((FISHMONGER1_ITEMSGIVEN_CHAPTER_1) == (FALSE))) {
        CREATEINVITEMS(SLF, 0x84b4, 25);
        CREATEINVITEMS(SLF, 0x8372, 10);
        CREATEINVITEMS(SLF, 0x8e57, 8);
        CREATEINVITEMS(SLF, 0x8e59, 3);
        CREATEINVITEMS(SLF, 0x9573, 5);
        CREATEINVITEMS(SLF, 0x9575, 5);
        CREATEINVITEMS(SLF, 0x8d28, 2);
        CREATEINVITEMS(SLF, 0x8c0f, 1);
        CREATEINVITEMS(SLF, 0x8c25, 1);
        CREATEINVITEMS(SLF, 0x8c2f, 1);
        CREATEINVITEMS(SLF, 0x8c75, 1);
        FISHMONGER1_ITEMSGIVEN_CHAPTER_1 = TRUE;
    };
    if (((KAPITEL) >= (3)) && ((FISHMONGER1_ITEMSGIVEN_CHAPTER_3) == (FALSE))) {
        CREATEINVITEMS(SLF, 0x84b4, 25);
        CREATEINVITEMS(SLF, 0x8372, 10);
        CREATEINVITEMS(SLF, 0x8e57, 8);
        CREATEINVITEMS(SLF, 0x8e59, 3);
        CREATEINVITEMS(SLF, 0x9573, 5);
        CREATEINVITEMS(SLF, 0x9575, 5);
        CREATEINVITEMS(SLF, 0x8d28, 2);
        FISHMONGER1_ITEMSGIVEN_CHAPTER_3 = TRUE;
    };
}

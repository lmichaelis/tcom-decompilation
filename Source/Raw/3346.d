var int MAILOR_ITEMSGIVEN_CHAPTER_1 = 0;
func void B_GIVETRADEINV_MAILOR(var C_NPC SLF) {
    if (((KAPITEL) >= (1)) && ((MAILOR_ITEMSGIVEN_CHAPTER_1) == (FALSE))) {
        CREATEINVITEMS(SLF, 0x9051, 5);
        CREATEINVITEMS(SLF, 0x9052, 14);
        CREATEINVITEMS(SLF, 0x9053, 21);
        MAILOR_ITEMSGIVEN_CHAPTER_1 = TRUE;
    };
}

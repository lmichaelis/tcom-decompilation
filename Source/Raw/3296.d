var int ASTRONOMER_ITEMSGIVEN_CHAPTER_3 = 0;
var int ASTRONOMER_ITEMSGIVEN_CHAPTER_4 = 0;
var int ASTRONOMER_ITEMSGIVEN_CHAPTER_5 = 0;
func void B_GIVETRADEINV_ASTRONOMER(var C_NPC SLF) {
    if (((KAPITEL) >= (3)) && ((ASTRONOMER_ITEMSGIVEN_CHAPTER_3) == (FALSE))) {
        CREATEINVITEMS(SLF, 0x947c, 1);
        CREATEINVITEMS(SLF, 0x9485, 1);
        CREATEINVITEMS(SLF, 0x86de, 1);
        CREATEINVITEMS(SLF, 0x86e1, 1);
        CREATEINVITEMS(SLF, 0x9c15, 1);
        CREATEINVITEMS(SLF, 0x9c1c, 1);
        CREATEINVITEMS(SLF, 0x9cfc, 1);
        CREATEINVITEMS(SLF, 0x9d05, 1);
        CREATEINVITEMS(SLF, 0x9d08, 1);
        CREATEINVITEMS(SLF, 0x9d0b, 1);
        CREATEINVITEMS(SLF, 0x9e7f, 1);
        CREATEINVITEMS(SLF, 0x85aa, 1);
        CREATEINVITEMS(SLF, 0x8ce2, 10);
        CREATEINVITEMS(SLF, 0x9501, 1);
        CREATEINVITEMS(SLF, 0x9526, 10);
        CREATEINVITEMS(SLF, 0x87ab, 1);
        CREATEINVITEMS(SLF, 0xa073, 1);
        CREATEINVITEMS(SLF, 0xa06a, 1);
        CREATEINVITEMS(SLF, 0xa061, 1);
        CREATEINVITEMS(SLF, 0xa058, 1);
        CREATEINVITEMS(SLF, 0xa046, 1);
        CREATEINVITEMS(SLF, 0xa07c, 1);
        CREATEINVITEMS(SLF, 0xa04f, 1);
        ASTRONOMER_ITEMSGIVEN_CHAPTER_3 = TRUE;
    };
    if (((KAPITEL) >= (4)) && ((ASTRONOMER_ITEMSGIVEN_CHAPTER_4) == (FALSE))) {
        CREATEINVITEMS(SLF, 0xa076, 1);
        CREATEINVITEMS(SLF, 0xa06d, 1);
        CREATEINVITEMS(SLF, 0xa064, 1);
        CREATEINVITEMS(SLF, 0xa05b, 1);
        CREATEINVITEMS(SLF, 0xa049, 1);
        CREATEINVITEMS(SLF, 0xa07f, 1);
        CREATEINVITEMS(SLF, 0xa052, 1);
        ASTRONOMER_ITEMSGIVEN_CHAPTER_4 = TRUE;
    };
    if (((KAPITEL) >= (5)) && ((ASTRONOMER_ITEMSGIVEN_CHAPTER_5) == (FALSE))) {
        ASTRONOMER_ITEMSGIVEN_CHAPTER_5 = TRUE;
    };
}


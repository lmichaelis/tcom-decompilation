var int TRADER836_ITEMSGIVEN_CHAPTER_2 = 0;
func void B_GIVETRADEINV_TRADER836(var C_NPC SLF) {
    if (((KAPITEL) >= (2)) && ((TRADER836_ITEMSGIVEN_CHAPTER_2) == (FALSE))) {
        CREATEINVITEMS(SLF, 0x84c6, 8);
        CREATEINVITEMS(SLF, 0x84bc, 4);
        CREATEINVITEMS(SLF, 0x84be, 5);
        CREATEINVITEMS(SLF, 0x8e5f, 12);
        CREATEINVITEMS(SLF, 0x8e15, 5);
        CREATEINVITEMS(SLF, 0x8f6e, 6);
        CREATEINVITEMS(SLF, 0x8f54, 4);
        CREATEINVITEMS(SLF, 0x8f68, 4);
        CREATEINVITEMS(SLF, 0x8f56, 8);
        CREATEINVITEMS(SLF, 0x8f46, 4);
        CREATEINVITEMS(SLF, 0x8f30, 5);
        CREATEINVITEMS(SLF, 0x8f34, 4);
        CREATEINVITEMS(SLF, 0x8f32, 8);
        CREATEINVITEMS(SLF, 0x8f12, 4);
        CREATEINVITEMS(SLF, 0x8c92, 1);
        CREATEINVITEMS(SLF, 0x8c90, 1);
        CREATEINVITEMS(SLF, 0x8c8f, 1);
        CREATEINVITEMS(SLF, 0x904e, 1);
        CREATEINVITEMS(SLF, 0x8c91, 1);
        CREATEINVITEMS(SLF, 0x8c93, 1);
        CREATEINVITEMS(SLF, 0x84d0, 5);
        CREATEINVITEMS(SLF, 0x8c45, 1);
        TRADER836_ITEMSGIVEN_CHAPTER_2 = TRUE;
    };
}

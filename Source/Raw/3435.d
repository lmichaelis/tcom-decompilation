func void RUNESTRADE_CHECKBOUGHTRUNES() {
    if ((((((((((((((((((((((((((((((((((NPC_HASITEMS(HERO, 0x94e4)) >= (1)) || ((NPC_HASITEMS(HERO, 0x94e5)) >= (1))) || ((NPC_HASITEMS(HERO, 0x94e6)) >= (1))) || ((NPC_HASITEMS(HERO, 0x94e7)) >= (1))) || ((NPC_HASITEMS(HERO, 0x94e8)) >= (1))) || ((NPC_HASITEMS(HERO, 0x94e9)) >= (1))) || ((NPC_HASITEMS(HERO, 0x94ea)) >= (1))) || ((NPC_HASITEMS(HERO, 0x94eb)) >= (1))) || ((NPC_HASITEMS(HERO, 0x94ec)) >= (1))) || ((NPC_HASITEMS(HERO, 0x94ed)) >= (1))) || ((NPC_HASITEMS(HERO, 0x94ee)) >= (1))) || ((NPC_HASITEMS(HERO, 0x94ef)) >= (1))) || ((NPC_HASITEMS(HERO, 0x94f0)) >= (1))) || ((NPC_HASITEMS(HERO, 0x94f1)) >= (1))) || ((NPC_HASITEMS(HERO, 0x94f2)) >= (1))) || ((NPC_HASITEMS(HERO, 0x94f3)) >= (1))) || ((NPC_HASITEMS(HERO, 0x94f4)) >= (1))) || ((NPC_HASITEMS(HERO, 0x94f5)) >= (1))) || ((NPC_HASITEMS(HERO, 0x94f6)) >= (1))) || ((NPC_HASITEMS(HERO, 0x94f7)) >= (1))) || ((NPC_HASITEMS(HERO, 0x94f8)) >= (1))) || ((NPC_HASITEMS(HERO, 0x94f9)) >= (1))) || ((NPC_HASITEMS(HERO, 0x94fa)) >= (1))) || ((NPC_HASITEMS(HERO, 0x94fb)) >= (1))) || ((NPC_HASITEMS(HERO, 0x94fc)) >= (1))) || ((NPC_HASITEMS(HERO, 0x94fd)) >= (1))) || ((NPC_HASITEMS(HERO, 0x94fe)) >= (1))) || ((NPC_HASITEMS(HERO, 0x94ff)) >= (1))) || ((NPC_HASITEMS(HERO, 0x9500)) >= (1))) || ((NPC_HASITEMS(HERO, 0x9502)) >= (1))) || ((NPC_HASITEMS(HERO, 0x9503)) >= (1))) || ((NPC_HASITEMS(HERO, 0x9504)) >= (1))) || ((NPC_HASITEMS(HERO, 0x9501)) >= (1))) {
        PRINTD("Wymieniam runy");
        if ((NPC_HASITEMS(HERO, 0x94e4)) >= (1)) {
            CREATEINVITEMS(HERO, 0x871a, NPC_HASITEMS(HERO, 0x94e4));
            NPC_REMOVEINVITEMS(HERO, 0x94e4, NPC_HASITEMS(HERO, 0x94e4));
        };
        if ((NPC_HASITEMS(HERO, 0x94e5)) >= (1)) {
            CREATEINVITEMS(HERO, 0x871b, NPC_HASITEMS(HERO, 0x94e5));
            NPC_REMOVEINVITEMS(HERO, 0x94e5, NPC_HASITEMS(HERO, 0x94e5));
        };
        if ((NPC_HASITEMS(HERO, 0x94e6)) >= (1)) {
            CREATEINVITEMS(HERO, 0x871c, NPC_HASITEMS(HERO, 0x94e6));
            NPC_REMOVEINVITEMS(HERO, 0x94e6, NPC_HASITEMS(HERO, 0x94e6));
        };
        if ((NPC_HASITEMS(HERO, 0x94e7)) >= (1)) {
            CREATEINVITEMS(HERO, 0x871d, NPC_HASITEMS(HERO, 0x94e7));
            NPC_REMOVEINVITEMS(HERO, 0x94e7, NPC_HASITEMS(HERO, 0x94e7));
        };
        if ((NPC_HASITEMS(HERO, 0x94e8)) >= (1)) {
            CREATEINVITEMS(HERO, 0x871e, NPC_HASITEMS(HERO, 0x94e8));
            NPC_REMOVEINVITEMS(HERO, 0x94e8, NPC_HASITEMS(HERO, 0x94e8));
        };
        if ((NPC_HASITEMS(HERO, 0x94e8)) >= (1)) {
            CREATEINVITEMS(HERO, 0x871f, NPC_HASITEMS(HERO, 0x94e9));
            NPC_REMOVEINVITEMS(HERO, 0x94e9, NPC_HASITEMS(HERO, 0x94e9));
        };
        if ((NPC_HASITEMS(HERO, 0x94e8)) >= (1)) {
            CREATEINVITEMS(HERO, 0x8720, NPC_HASITEMS(HERO, 0x94ea));
            NPC_REMOVEINVITEMS(HERO, 0x94ea, NPC_HASITEMS(HERO, 0x94ea));
        };
        if ((NPC_HASITEMS(HERO, 0x94eb)) >= (1)) {
            CREATEINVITEMS(HERO, 0x8723, NPC_HASITEMS(HERO, 0x94eb));
            NPC_REMOVEINVITEMS(HERO, 0x94eb, NPC_HASITEMS(HERO, 0x94eb));
        };
        if ((NPC_HASITEMS(HERO, 0x94ec)) >= (1)) {
            CREATEINVITEMS(HERO, 0x8725, NPC_HASITEMS(HERO, 0x94ec));
            NPC_REMOVEINVITEMS(HERO, 0x94ec, NPC_HASITEMS(HERO, 0x94ec));
        };
        if ((NPC_HASITEMS(HERO, 0x94ec)) >= (1)) {
            CREATEINVITEMS(HERO, 0x8726, NPC_HASITEMS(HERO, 0x94ed));
            NPC_REMOVEINVITEMS(HERO, 0x94ed, NPC_HASITEMS(HERO, 0x94ed));
        };
        if ((NPC_HASITEMS(HERO, 0x94ee)) >= (1)) {
            CREATEINVITEMS(HERO, 0x8729, NPC_HASITEMS(HERO, 0x94ee));
            NPC_REMOVEINVITEMS(HERO, 0x94ee, NPC_HASITEMS(HERO, 0x94ee));
        };
        if ((NPC_HASITEMS(HERO, 0x94ef)) >= (1)) {
            CREATEINVITEMS(HERO, 0x872a, NPC_HASITEMS(HERO, 0x94ef));
            NPC_REMOVEINVITEMS(HERO, 0x94ef, NPC_HASITEMS(HERO, 0x94ef));
        };
        if ((NPC_HASITEMS(HERO, 0x94f0)) >= (1)) {
            CREATEINVITEMS(HERO, 0x872b, NPC_HASITEMS(HERO, 0x94f0));
            NPC_REMOVEINVITEMS(HERO, 0x94f0, NPC_HASITEMS(HERO, 0x94f0));
        };
        if ((NPC_HASITEMS(HERO, 0x94f1)) >= (1)) {
            CREATEINVITEMS(HERO, 0x872c, NPC_HASITEMS(HERO, 0x94f1));
            NPC_REMOVEINVITEMS(HERO, 0x94f1, NPC_HASITEMS(HERO, 0x94f1));
        };
        if ((NPC_HASITEMS(HERO, 0x94f2)) >= (1)) {
            CREATEINVITEMS(HERO, 0x872d, NPC_HASITEMS(HERO, 0x94f2));
            NPC_REMOVEINVITEMS(HERO, 0x94f2, NPC_HASITEMS(HERO, 0x94f2));
        };
        if ((NPC_HASITEMS(HERO, 0x94f3)) >= (1)) {
            CREATEINVITEMS(HERO, 0x872e, NPC_HASITEMS(HERO, 0x94f3));
            NPC_REMOVEINVITEMS(HERO, 0x94f3, NPC_HASITEMS(HERO, 0x94f3));
        };
        if ((NPC_HASITEMS(HERO, 0x94f4)) >= (1)) {
            CREATEINVITEMS(HERO, 0x8732, NPC_HASITEMS(HERO, 0x94f4));
            NPC_REMOVEINVITEMS(HERO, 0x94f4, NPC_HASITEMS(HERO, 0x94f4));
        };
        if ((NPC_HASITEMS(HERO, 0x94f5)) >= (1)) {
            CREATEINVITEMS(HERO, 0x8733, NPC_HASITEMS(HERO, 0x94f5));
            NPC_REMOVEINVITEMS(HERO, 0x94f5, NPC_HASITEMS(HERO, 0x94f5));
        };
        if ((NPC_HASITEMS(HERO, 0x94f6)) >= (1)) {
            CREATEINVITEMS(HERO, 0x8734, NPC_HASITEMS(HERO, 0x94f6));
            NPC_REMOVEINVITEMS(HERO, 0x94f6, NPC_HASITEMS(HERO, 0x94f6));
        };
        if ((NPC_HASITEMS(HERO, 0x94f7)) >= (1)) {
            CREATEINVITEMS(HERO, 0x8735, NPC_HASITEMS(HERO, 0x94f7));
            NPC_REMOVEINVITEMS(HERO, 0x94f7, NPC_HASITEMS(HERO, 0x94f7));
        };
        if ((NPC_HASITEMS(HERO, 0x94f8)) >= (1)) {
            CREATEINVITEMS(HERO, 0x8738, NPC_HASITEMS(HERO, 0x94f8));
            NPC_REMOVEINVITEMS(HERO, 0x94f8, NPC_HASITEMS(HERO, 0x94f8));
        };
        if ((NPC_HASITEMS(HERO, 0x94f9)) >= (1)) {
            CREATEINVITEMS(HERO, 0x873a, NPC_HASITEMS(HERO, 0x94f9));
            NPC_REMOVEINVITEMS(HERO, 0x94f9, NPC_HASITEMS(HERO, 0x94f9));
        };
        if ((NPC_HASITEMS(HERO, 0x94fa)) >= (1)) {
            CREATEINVITEMS(HERO, 0x83a0, NPC_HASITEMS(HERO, 0x94fa));
            NPC_REMOVEINVITEMS(HERO, 0x94fa, NPC_HASITEMS(HERO, 0x94fa));
        };
        if ((NPC_HASITEMS(HERO, 0x94fb)) >= (1)) {
            CREATEINVITEMS(HERO, 0x83a1, NPC_HASITEMS(HERO, 0x94fb));
            NPC_REMOVEINVITEMS(HERO, 0x94fb, NPC_HASITEMS(HERO, 0x94fb));
        };
        if ((NPC_HASITEMS(HERO, 0x94fc)) >= (1)) {
            CREATEINVITEMS(HERO, 0x83a2, NPC_HASITEMS(HERO, 0x94fc));
            NPC_REMOVEINVITEMS(HERO, 0x94fc, NPC_HASITEMS(HERO, 0x94fc));
        };
        if ((NPC_HASITEMS(HERO, 0x94fd)) >= (1)) {
            CREATEINVITEMS(HERO, 0x83a3, NPC_HASITEMS(HERO, 0x94fd));
            NPC_REMOVEINVITEMS(HERO, 0x94fd, NPC_HASITEMS(HERO, 0x94fd));
        };
        if ((NPC_HASITEMS(HERO, 0x94fe)) >= (1)) {
            CREATEINVITEMS(HERO, 0x83a4, NPC_HASITEMS(HERO, 0x94fe));
            NPC_REMOVEINVITEMS(HERO, 0x94fe, NPC_HASITEMS(HERO, 0x94fe));
        };
        if ((NPC_HASITEMS(HERO, 0x94ff)) >= (1)) {
            CREATEINVITEMS(HERO, 0x94ac, NPC_HASITEMS(HERO, 0x94ff));
            NPC_REMOVEINVITEMS(HERO, 0x94ff, NPC_HASITEMS(HERO, 0x94ff));
        };
        if ((NPC_HASITEMS(HERO, 0x9500)) >= (1)) {
            CREATEINVITEMS(HERO, 0x94ae, NPC_HASITEMS(HERO, 0x9500));
            NPC_REMOVEINVITEMS(HERO, 0x9500, NPC_HASITEMS(HERO, 0x9500));
        };
        if ((NPC_HASITEMS(HERO, 0x9502)) >= (1)) {
            CREATEINVITEMS(HERO, 0x94b1, NPC_HASITEMS(HERO, 0x9502));
            NPC_REMOVEINVITEMS(HERO, 0x9502, NPC_HASITEMS(HERO, 0x9502));
        };
        if ((NPC_HASITEMS(HERO, 0x9503)) >= (1)) {
            CREATEINVITEMS(HERO, 0x94b2, NPC_HASITEMS(HERO, 0x9503));
            NPC_REMOVEINVITEMS(HERO, 0x9503, NPC_HASITEMS(HERO, 0x9503));
        };
        if ((NPC_HASITEMS(HERO, 0x9504)) >= (1)) {
            CREATEINVITEMS(HERO, 0x83a9, NPC_HASITEMS(HERO, 0x9504));
            NPC_REMOVEINVITEMS(HERO, 0x9504, NPC_HASITEMS(HERO, 0x9504));
        };
        if ((NPC_HASITEMS(HERO, 0x9501)) >= (1)) {
            CREATEINVITEMS(HERO, 0x94af, NPC_HASITEMS(HERO, 0x9501));
            NPC_REMOVEINVITEMS(HERO, 0x9501, NPC_HASITEMS(HERO, 0x9501));
        };
    };
}


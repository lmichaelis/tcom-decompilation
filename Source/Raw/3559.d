func void SQ506_PREPARENPC() {
    WLD_INSERTNPC(0xdd03, "PART8_SQ506_SEARCH_04");
    WLD_INSERTITEM(0x9260, "FP_PART8_SQ506_ARTHURSTUFF_01");
    WLD_INSERTITEM(0x9261, "FP_PART8_SQ506_ARTHURSTUFF_02");
    WLD_INSERTITEM(0x9262, "FP_PART8_SQ506_ARTHURSTUFF_03");
    B_STARTOTHERROUTINE(KDW_206_OTHEKAR, "SQ506_OBSERVE");
}

func void SQ506_GIVEALLSTUFF() {
    NPC_REMOVEINVITEM(SELF, 0x9262);
}


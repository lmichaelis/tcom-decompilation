func void SQ506_PREPARENPC() {
    WLD_INSERTNPC(56579, "PART8_SQ506_SEARCH_04");
    WLD_INSERTITEM(37472, "FP_PART8_SQ506_ARTHURSTUFF_01");
    WLD_INSERTITEM(37473, "FP_PART8_SQ506_ARTHURSTUFF_02");
    WLD_INSERTITEM(37474, "FP_PART8_SQ506_ARTHURSTUFF_03");
    B_STARTOTHERROUTINE(KDW_206_OTHEKAR, "SQ506_OBSERVE");
}

func void SQ506_GIVEALLSTUFF() {
    NPC_REMOVEINVITEM(SELF, 37474);
}

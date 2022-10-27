instance Q305_HERDISHELPMILLIE(CUTSCENE) {
    ONSTART = FUNCTION(0x16934);
}

func void Q305_HERDISHELPMILLIE_START() {
    WLD_SENDTRIGGER("KM_ISLANDFRIENDS_01");
    MDL_APPLYOVERLAYMDS(NONE_6334_HERDIS, HUMANSBABEMDS);
    NPC_CLEARAIQUEUE(NONE_6334_HERDIS);
    AI_SETWALKMODE(NONE_6334_HERDIS, NPC_RUN);
    AI_TURNTONPC(NONE_6334_HERDIS, NONE_6335_MILLIE);
    AI_GOTONPC(NONE_6334_HERDIS, NONE_6335_MILLIE);
    AI_PLAYANI(NONE_6334_HERDIS, T_PLUNDER);
    AI_WAITTILLEND(HERO, NONE_6334_HERDIS);
    AI_TURNTONPC(HERO, NONE_6334_HERDIS);
    AI_FUNCTION(NONE_6334_HERDIS, 0xee32);
}


instance BUFF_MULTIFALLDMGFIX(LCBUFF) {
    NAME = "no fall damage";
    BUFFTYPE = BUFF_GOOD;
    DURATIONMS = 100;
    BUFFTEX = "DEFAULT.TGA";
    SHOW = FALSE;
}

func void CREATEFALLDAMAGE_HOOK() {
    var C_NPC N;
    N = MEM_PTRTOINST(ECX);
    if (((!(BUFF_HAS(N, 21897))) && (!(BUFF_HAS(N, 32443)))) && ((BELT_PAWELJUMPER_02_READY) == (FALSE))) {
        PRINTSD("damage");
        N.PROTECTION[7] = 0;
    };
    PRINTSD("no damage");
    N.PROTECTION[7] = IMMUNE;
    BUFF_APPLYUNIQUE(N, 21897);
}


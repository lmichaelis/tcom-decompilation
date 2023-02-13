func void B_KILLNPC(var int NPCINSTANCE) {
    var C_NPC NPC;
    NPC = HLP_GETNPC(NPCINSTANCE);
    if ((HLP_ISVALIDNPC(NPC)) && (!(NPC_ISDEAD(NPC)))) {
        NPC.FLAGS = 0;
        if ((NPC.LEVEL) != (0)) {
            if ((NPC.GUILD) < (GIL_SEPERATOR_HUM)) {
                CREATEINVITEM(NPC, 34204);
            } else {
                CREATEINVITEM(NPC, 36986);
            };
        };
        NPC_CHANGEATTRIBUTE(NPC, ATR_HITPOINTS, -(NPC.ATTRIBUTE[1]));
    };
}


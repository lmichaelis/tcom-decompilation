func void B_KILLNPC(var int NPCINSTANCE) {
    NPC = HLP_GETNPC(NPCINSTANCE);
    if ((HLP_ISVALIDNPC(NPC)) && (!(NPC_ISDEAD(NPC)))) {
        NPC.FLAGS = 0;
        if ((NPC.LEVEL) != (0)) {
            if ((NPC.GUILD) < (GIL_SEPERATOR_HUM)) {
                CREATEINVITEM(NPC, 0x859c);
            } else {
                CREATEINVITEM(NPC, 0x907a);
            };
        };
        NPC_CHANGEATTRIBUTE(NPC, ATR_HITPOINTS, -(NPC.ATTRIBUTE[1]));
    };
}

instance B_KILLNPC.NPC(C_NPC)

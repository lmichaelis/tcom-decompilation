func int DIA_Q308_REFUGEE_GOAWAY_CONDITION() {
    if (NPC_ISINSTATE(SELF, 61599)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_Q308_REFUGEE_GOAWAY_INFO() {
    var int RND_Q308_REFUGEE;
    RND_Q308_REFUGEE = HLP_RANDOM(2);
    if ((RND_Q308_REFUGEE) == (0)) {
        DIA_IMBUSY_CALM();
    };
    if ((RND_Q308_REFUGEE) == (1)) {
        DIA_IMBUSY_ANGRY();
    };
}

func void B_ASSIGNAMBIENTINFOS_Q308_REFUGEE(var C_NPC SLF) {
    DIA_Q308_REFUGEE_GOAWAY.NPC = HLP_GETINSTANCEID(SLF);
}


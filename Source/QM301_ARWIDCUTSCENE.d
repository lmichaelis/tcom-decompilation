instance QM301_ARWIDCUTSCENE(CUTSCENE) {
    ONSTART = FUNCTION(92833);
}

func void QM301_ARWIDCUTSCENE_START() {
    QM301_CUTSCENE = 2;
    NPC_CLEARAIQUEUE(MIL_4017_ARWID);
    NPC_CLEARAIQUEUE(NONE_826_ELID);
    B_STARTOTHERROUTINE(NONE_826_ELID, "QM301_CUTSCENCE");
    WLD_INSERTNPC(52377, "PARTM2_QM301_THIEF");
    TELEPORTNPCTOWP(52384, "PARTM2_QM301_CUTSCENE_ARWID");
    TELEPORTNPCTOWP(1819, "PARTM2_QM301_CUTSCENE_HERO");
    TELEPORTNPCTOWP(53011, NONE_826_ELID.WP);
    TELEPORTNPCTOWP(52377, BDT_11096_THIEF.WP);
    DIACAM_DISABLE();
    WLD_SENDTRIGGER("QM301_01");
}


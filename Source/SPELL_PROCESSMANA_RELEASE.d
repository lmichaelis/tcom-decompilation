func int SPELL_PROCESSMANA_RELEASE(var int MANAINVESTED) {
    var int ACTIVESPELL;
    ACTIVESPELL = NPC_GETACTIVESPELL(SELF);
    if ((ACTIVESPELL) == (SPL_PYROKINESIS)) {
        return SPL_SENDCAST;
    };
    if ((ACTIVESPELL) == (SPL_CHARGEFIREBALL)) {
        return SPL_SENDCAST;
    };
    if ((ACTIVESPELL) == (SPL_CHARGEZAP)) {
        return SPL_SENDCAST;
    };
    if ((ACTIVESPELL) == (SPL_WINDFIST)) {
        return SPL_SENDCAST;
    };
    if ((ACTIVESPELL) == (SPL_TELEKINESIS)) {
        return SPL_SENDCAST;
    };
    if ((ACTIVESPELL) == (SPL_PICKLOCK)) {
        return SPL_SENDCAST;
    };
    return SPL_SENDSTOP;
}


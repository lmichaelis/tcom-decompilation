func void TELEMETRY_ONTRADERIGHTHOOK() {
    var OCNPC NPC;
    var OCITEM ITM;
    ITM = _^(EBX);
    NPC = _^(MEM_INFORMATIONMAN.NPC);
    TELEMETRY_PLAYERBUY(NPC.INSTANZ, ITM.INSTANZ, 1);
}

func void INIT_ITEMIMPORTANTFLAG() {
    HOOKENGINEF(OCVIEWDIALOGTRADE__ONTRANSFERLEFTX, 6, 21445);
    HOOKENGINEF(OCVIEWDIALOGTRADE__ONTRANSFERRIGHTX, 6, 21448);
    HOOKENGINEF(OCVIEWDIALOGTRADE__ONTRANSFERLEFT, 6, 21441);
}

func void PATCHAMBIENTVOBS() {
    MEMORYPROTECTIONOVERRIDE((5283911) + (2), 2);
    MEM_WRITEBYTE((5283911) + (2), 192);
}

func void AMBIENTVOBS_APPLYSOMESETTINGS() {
    var int AMBIENTVOBSENABLED;
    AMBIENTVOBSENABLED = STR_TOINT(MEM_GETGOTHOPT("ENGINE", "zAmbientVobsEnabled"));
    MEM_WRITEINT(9079488, AMBIENTVOBSENABLED);
}


func void APPLYSOMESETTINGSEND_HOOK() {
    SIGHTSCALING_APPLYSOMESETTINGS();
    LODSETTING_APPLYSOMESETTINGS();
    AMBIENTVOBS_APPLYSOMESETTINGS();
}

func void INIT_SIGHTSCALING() {
    HOOKENGINEF(CGAMEMANAGER__APPLYSOMESETTINGSEND, 7, 0x171f5);
    APPLYSOMESETTINGSEND_HOOK();
}


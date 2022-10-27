const int _QUESTSEVENTSMANAGER_LASTTIME = -1;
func void QUESTSEVENTSMANAGER_REGISTER(var string NAME, var func FUNCTION) {
    PC_SCOPE(SCOPE_START, NAME);
    MEM_CALL(0x171ca);
    PC_SCOPE(SCOPE_END, NAME);
}

func void _QUESTSEVENTSMANAGER() {
    PC_SCOPE(SCOPE_START, "QuestsEventsManager");
    QUESTSEVENTSMANAGER_REGISTER("Rings", 0x1703c);
    if ((CURRENTLEVEL) == (ARCHOLOS_ZEN)) {
        if ((HERO.GUILD) < (GIL_SEPERATOR_HUM)) {
            QUESTSEVENTSMANAGER_REGISTER("Q101", 0x16f51);
            QUESTSEVENTSMANAGER_REGISTER("Q106", 0x16f59);
            QUESTSEVENTSMANAGER_REGISTER("Q103", 0x16f56);
            QUESTSEVENTSMANAGER_REGISTER("Q105", 0x16f58);
            QUESTSEVENTSMANAGER_REGISTER("Q108", 0x16f5b);
            QUESTSEVENTSMANAGER_REGISTER("SQ107", 0x17040);
            QUESTSEVENTSMANAGER_REGISTER("SQ120", 0x17049);
            QUESTSEVENTSMANAGER_REGISTER("SQ121", 0x1704a);
            QUESTSEVENTSMANAGER_REGISTER("SQ122", 0x1704c);
            QUESTSEVENTSMANAGER_REGISTER("SQ123", 0x1704e);
            QUESTSEVENTSMANAGER_REGISTER("SQ124", 0x1704f);
            QUESTSEVENTSMANAGER_REGISTER("Q104", 0x16f57);
            QUESTSEVENTSMANAGER_REGISTER("GQ001", 0x16f26);
            QUESTSEVENTSMANAGER_REGISTER("FMQ003", 0x16f25);
            QUESTSEVENTSMANAGER_REGISTER("SQ109", 0x17041);
            QUESTSEVENTSMANAGER_REGISTER("SQ111", 0x17043);
            QUESTSEVENTSMANAGER_REGISTER("SQ113", 0x17044);
            QUESTSEVENTSMANAGER_REGISTER("SQ114", 0x17045);
            QUESTSEVENTSMANAGER_REGISTER("SQ116", 0x17046);
            QUESTSEVENTSMANAGER_REGISTER("SQ117", 0x17047);
            QUESTSEVENTSMANAGER_REGISTER("SQ118", 0x17048);
            QUESTSEVENTSMANAGER_REGISTER("Q102", 0x16f53);
            QUESTSEVENTSMANAGER_REGISTER("SQ102", 0x1703d);
            QUESTSEVENTSMANAGER_REGISTER("SQ206", 0x17058);
            QUESTSEVENTSMANAGER_REGISTER("SQ223", 0x17067);
            QUESTSEVENTSMANAGER_REGISTER("SQ103", 0x1703e);
            QUESTSEVENTSMANAGER_REGISTER("SQ104", 0x1703f);
            QUESTSEVENTSMANAGER_REGISTER("CQ006", 0x16f1d);
            QUESTSEVENTSMANAGER_REGISTER("CQ001", 0x16f14);
            QUESTSEVENTSMANAGER_REGISTER("CQ002", 0x16f15);
            QUESTSEVENTSMANAGER_REGISTER("Q201", 0x16f5d);
            QUESTSEVENTSMANAGER_REGISTER("Q202", 0x16f5f);
            QUESTSEVENTSMANAGER_REGISTER("PQ105", 0x16f45);
            QUESTSEVENTSMANAGER_REGISTER("PQ107", 0x16f47);
            QUESTSEVENTSMANAGER_REGISTER("PQ109", 0x16f49);
            QUESTSEVENTSMANAGER_REGISTER("PQ109", 0x16f4c);
            QUESTSEVENTSMANAGER_REGISTER("PQ110", 0x16f50);
            QUESTSEVENTSMANAGER_REGISTER("Q102_CaveDistanceLimit", 0x16f10);
            QUESTSEVENTSMANAGER_REGISTER("Q102_JornDistanceLimit", 0x16f13);
            QUESTSEVENTSMANAGER_REGISTER("FMQ001", 0x16f22);
            QUESTSEVENTSMANAGER_REGISTER("FMQ002", 0x16f24);
            QUESTSEVENTSMANAGER_REGISTER("CQ004", 0x16f19);
            QUESTSEVENTSMANAGER_REGISTER("CQ003", 0x16f18);
            QUESTSEVENTSMANAGER_REGISTER("FAQ003", 0x16f20);
            QUESTSEVENTSMANAGER_REGISTER("FAQ002", 0x16f1f);
            QUESTSEVENTSMANAGER_REGISTER("FAQ001", 0x16f1e);
            QUESTSEVENTSMANAGER_REGISTER("CQ005", 0x16f1c);
            QUESTSEVENTSMANAGER_REGISTER("FAQ004", 0x16f21);
            QUESTSEVENTSMANAGER_REGISTER("SQ126", 0x17050);
            QUESTSEVENTSMANAGER_REGISTER("SQ127", 0x17053);
            QUESTSEVENTSMANAGER_REGISTER("QM201", 0x1702d);
            QUESTSEVENTSMANAGER_REGISTER("QM202", 0x1702e);
            QUESTSEVENTSMANAGER_REGISTER("Q204", 0x16f61);
            QUESTSEVENTSMANAGER_REGISTER("Q205", 0x16f64);
            QUESTSEVENTSMANAGER_REGISTER("Q207", 0x16f68);
            QUESTSEVENTSMANAGER_REGISTER("Q208", 0x16f69);
            QUESTSEVENTSMANAGER_REGISTER("SQ210", 0x1705b);
            QUESTSEVENTSMANAGER_REGISTER("SQ218", 0x17060);
            QUESTSEVENTSMANAGER_REGISTER("SQ219", 0x17061);
            QUESTSEVENTSMANAGER_REGISTER("SQ220", 0x17065);
            QUESTSEVENTSMANAGER_REGISTER("SQ221", 0x17066);
            QUESTSEVENTSMANAGER_REGISTER("SQ224", 0x17068);
            QUESTSEVENTSMANAGER_REGISTER("SQ227", 0x1707a);
            QUESTSEVENTSMANAGER_REGISTER("SQ228", 0x1707b);
            QUESTSEVENTSMANAGER_REGISTER("SQ229", 0x1707c);
            QUESTSEVENTSMANAGER_REGISTER("SQ230", 0x1707d);
            QUESTSEVENTSMANAGER_REGISTER("KQ402", 0x16f29);
            QUESTSEVENTSMANAGER_REGISTER("KQ403", 0x16f31);
            QUESTSEVENTSMANAGER_REGISTER("KQ404", 0x16f32);
            QUESTSEVENTSMANAGER_REGISTER("KQ405", 0x16f33);
            QUESTSEVENTSMANAGER_REGISTER("KQ406", 0x16f35);
            QUESTSEVENTSMANAGER_REGISTER("KQ407", 0x16f38);
            QUESTSEVENTSMANAGER_REGISTER("Q206", 0x16f66);
            QUESTSEVENTSMANAGER_REGISTER("Q301", 0x16f6a);
            QUESTSEVENTSMANAGER_REGISTER("Q303", 0x16f6b);
            QUESTSEVENTSMANAGER_REGISTER("SQ304", 0x17086);
            QUESTSEVENTSMANAGER_REGISTER("SQ204", 0x17056);
            QUESTSEVENTSMANAGER_REGISTER("QA202", 0x1700b);
            QUESTSEVENTSMANAGER_REGISTER("QA203", 0x17015);
            QUESTSEVENTSMANAGER_REGISTER("QA301", 0x17017);
            QUESTSEVENTSMANAGER_REGISTER("QA302", 0x1701e);
            QUESTSEVENTSMANAGER_REGISTER("QA303", 0x1701f);
            QUESTSEVENTSMANAGER_REGISTER("QA304", 0x17024);
            QUESTSEVENTSMANAGER_REGISTER("QA306", 0x17025);
            QUESTSEVENTSMANAGER_REGISTER("QM301", 0x17030);
            QUESTSEVENTSMANAGER_REGISTER("QM302", 0x17031);
            QUESTSEVENTSMANAGER_REGISTER("QM303", 0x17033);
            QUESTSEVENTSMANAGER_REGISTER("QM304", 0x17036);
            QUESTSEVENTSMANAGER_REGISTER("SQ309", 0x1708f);
            QUESTSEVENTSMANAGER_REGISTER("SQ310", 0x17090);
            QUESTSEVENTSMANAGER_REGISTER("SQ311", 0x17091);
            QUESTSEVENTSMANAGER_REGISTER("SQ312", 0x17092);
            QUESTSEVENTSMANAGER_REGISTER("SQ313", 0x17094);
            QUESTSEVENTSMANAGER_REGISTER("SQ314", 0x17095);
            QUESTSEVENTSMANAGER_REGISTER("SQ213", 0x1705c);
            QUESTSEVENTSMANAGER_REGISTER("SQ201", 0x17054);
            QUESTSEVENTSMANAGER_REGISTER("SQ202", 0x17055);
            QUESTSEVENTSMANAGER_REGISTER("SQ207", 0x1705a);
            QUESTSEVENTSMANAGER_REGISTER("Q203", 0x16f60);
            QUESTSEVENTSMANAGER_REGISTER("Q305", 0x16f77);
            QUESTSEVENTSMANAGER_REGISTER("Q304", 0x16f6c);
            QUESTSEVENTSMANAGER_REGISTER("SQ301", 0x17085);
            QUESTSEVENTSMANAGER_REGISTER("Q306", 0x16f81);
            QUESTSEVENTSMANAGER_REGISTER("Q307", 0x16f82);
            QUESTSEVENTSMANAGER_REGISTER("Q308", 0x16f83);
            QUESTSEVENTSMANAGER_REGISTER("Q309", 0x16f85);
            QUESTSEVENTSMANAGER_REGISTER("Q311", 0x16f89);
            QUESTSEVENTSMANAGER_REGISTER("SQ305", 0x1708c);
            QUESTSEVENTSMANAGER_REGISTER("SQ316", 0x17096);
            QUESTSEVENTSMANAGER_REGISTER("SQ317", 0x17097);
            QUESTSEVENTSMANAGER_REGISTER("Q401", 0x16f8a);
            QUESTSEVENTSMANAGER_REGISTER("Q402", 0x16f8d);
            QUESTSEVENTSMANAGER_REGISTER("Q403", 0x16f8f);
            QUESTSEVENTSMANAGER_REGISTER("Q404", 0x16f90);
            QUESTSEVENTSMANAGER_REGISTER("Q405", 0x16f97);
            QUESTSEVENTSMANAGER_REGISTER("Q406", 0x16f9c);
            QUESTSEVENTSMANAGER_REGISTER("QM401", 0x17038);
            QUESTSEVENTSMANAGER_REGISTER("QM402", 0x1703a);
            QUESTSEVENTSMANAGER_REGISTER("SQ402", 0x17099);
            QUESTSEVENTSMANAGER_REGISTER("SQ404", 0x1709a);
            QUESTSEVENTSMANAGER_REGISTER("SQ406", 0x1709c);
            QUESTSEVENTSMANAGER_REGISTER("SQ408", 0x1709d);
            QUESTSEVENTSMANAGER_REGISTER("SQ410", 0x1709e);
            QUESTSEVENTSMANAGER_REGISTER("SQ411", 0x1709f);
            QUESTSEVENTSMANAGER_REGISTER("SQ413", 0x170a0);
            QUESTSEVENTSMANAGER_REGISTER("SQ414", 0x170a2);
            QUESTSEVENTSMANAGER_REGISTER("SQ415", 0x170a4);
            QUESTSEVENTSMANAGER_REGISTER("SQ416", 0x170a5);
            QUESTSEVENTSMANAGER_REGISTER("SQ419", 0x170ab);
            QUESTSEVENTSMANAGER_REGISTER("SQ417", 0x170a6);
            QUESTSEVENTSMANAGER_REGISTER("Q502", 0x16fc9);
            QUESTSEVENTSMANAGER_REGISTER("Q503", 0x16fca);
            QUESTSEVENTSMANAGER_REGISTER("Q504", 0x16fcd);
            QUESTSEVENTSMANAGER_REGISTER("Q504", 0x16fce);
            QUESTSEVENTSMANAGER_REGISTER("Q509", 0x16fd0);
            QUESTSEVENTSMANAGER_REGISTER("Q515", 0x16fdf);
            QUESTSEVENTSMANAGER_REGISTER("Q601", 0x16fe4);
            QUESTSEVENTSMANAGER_REGISTER("SQ503", 0x170ad);
            QUESTSEVENTSMANAGER_REGISTER("SQ504", 0x170b0);
            QUESTSEVENTSMANAGER_REGISTER("SQ505", 0x170b1);
            QUESTSEVENTSMANAGER_REGISTER("SQ506", 0x170b3);
            QUESTSEVENTSMANAGER_REGISTER("SQ508", 0x170b5);
            QUESTSEVENTSMANAGER_REGISTER("SQ509", 0x170b6);
            QUESTSEVENTSMANAGER_REGISTER("SQ510", 0x170bb);
            QUESTSEVENTSMANAGER_REGISTER("SQ507", 0x170b4);
            QUESTSEVENTSMANAGER_REGISTER("SQ231", 0x1707e);
            QUESTSEVENTSMANAGER_REGISTER("Others", 0x16f3e);
            QUESTSEVENTSMANAGER_REGISTER("InExtremo", 0x16f27);
            QUESTSEVENTSMANAGER_REGISTER("WantedPoster", 0x170c1);
        };
        if (((HERO.GUILD) < (GIL_SEPERATOR_HUM)) || ((HERO.GUILD) == (GIL_GIANT_BUG))) {
            QUESTSEVENTSMANAGER_REGISTER("SQ225", 0x17069);
            QUESTSEVENTSMANAGER_REGISTER("SQ225_Snopki", 0x1706f);
        };
        if (((HERO.GUILD) < (GIL_SEPERATOR_HUM)) || ((HERO.GUILD) == (GIL_MEATBUG))) {
            QUESTSEVENTSMANAGER_REGISTER("Q501", 0x16fbc);
            QUESTSEVENTSMANAGER_REGISTER("QA401", 0x17028);
        };
    };
    if ((CURRENTLEVEL) == (ARCHOLOS_SILVERMINE_ZEN)) {
        QUESTSEVENTSMANAGER_REGISTER("Q404", 0x16f92);
    };
    if ((CURRENTLEVEL) == (ARCHOLOS_VOLFZACKE_ZEN)) {
        QUESTSEVENTSMANAGER_REGISTER("Q514", 0x16fd3);
        QUESTSEVENTSMANAGER_REGISTER("Q514 Wojownicy", 0x16fde);
    };
    if ((CURRENTLEVEL) == (ARCHOLOS_ENDGAME_ZEN)) {
        QUESTSEVENTSMANAGER_REGISTER("Q602", 0x16fe7);
        QUESTSEVENTSMANAGER_REGISTER("Q602", 0x16ff7);
    };
    if ((CURRENTLEVEL) == (ARCHOLOS_SEWERS_ZEN)) {
        QUESTSEVENTSMANAGER_REGISTER("Others", 0x16f43);
        QUESTSEVENTSMANAGER_REGISTER("WantedPoster", 0x170c2);
        QUESTSEVENTSMANAGER_REGISTER("QM203", 0x1702f);
        QUESTSEVENTSMANAGER_REGISTER("KQ405", 0x16f34);
        QUESTSEVENTSMANAGER_REGISTER("QA401", 0x1702c);
        QUESTSEVENTSMANAGER_REGISTER("QA401", 0x17037);
    };
    PC_SCOPE(SCOPE_END, "QuestsEventsManager");
}

func void QUESTSEVENTSMANAGER() {
    if ((GAME_RUNTIMECONFIG) == (TARGET_SHIPPING)) {
        _QUESTSEVENTSMANAGER();
    };
    STARTTIME = MEM_GETSYSTEMTIME();
    _QUESTSEVENTSMANAGER();
    _QUESTSEVENTSMANAGER_LASTTIME = (MEM_GETSYSTEMTIME()) - (STARTTIME);
}

var int QUESTSEVENTSMANAGER.STARTTIME = 0;
func void INIT_QUESTSEVENTSMANAGER() {
    FF_APPLYONCEEXTGT(0x171cc, 1000, -(1));
}

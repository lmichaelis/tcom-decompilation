instance DIA_CRIMEHELPER_EXIT(C_INFO) {
    NPC = 0xc820;
    NR = 999;
    CONDITION = DIA_CRIMEHELPER_EXIT_CONDITION;
    INFORMATION = DIA_CRIMEHELPER_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_CRIMEHELPER_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_CRIMEHELPER_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

func void CRIMETEST() {
    if ((B_GETGREATESTPETZCRIME(SELF)) >= (CRIME_SHEEPKILLER)) {
        if ((B_GETGREATESTPETZCRIME(SELF)) == (CRIME_ATTACK)) {
            PRINTD("TIER 2 - Kogo� pobi�e�.");
        };
        if ((B_GETGREATESTPETZCRIME(SELF)) == (CRIME_MURDER)) {
            PRINTD("TIER 4 - Kogo� zabi�e�.");
        };
        if ((B_GETGREATESTPETZCRIME(SELF)) == (CRIME_THEFT)) {
            PRINTD("TIER 3 - Kogo� okrad�e�.");
        };
        if ((B_GETGREATESTPETZCRIME(SELF)) == (CRIME_SHEEPKILLER)) {
            PRINTD("TIER 1 - Zabi�e� owc�.");
        };
    };
    PRINTD("Hehe jeste� czysty.");
}

instance DIA_CRIMEHELPER_CRIMETEST(C_INFO) {
    NPC = 0xc820;
    NR = 1;
    CONDITION = DIA_CRIMEHELPER_CRIMETEST_CONDITION;
    INFORMATION = DIA_CRIMEHELPER_CRIMETEST_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "Jak tam moje zbrodnie?";
}

func int DIA_CRIMEHELPER_CRIMETEST_CONDITION() {
    return TRUE;
}

func void DIA_CRIMEHELPER_CRIMETEST_INFO() {
    INFO_CLEARCHOICES(0xc826);
    INFO_ADDCHOICE(0xc826, "Klasztor", 0xc82b);
    INFO_ADDCHOICE(0xc826, "Wilcze le�e", 0xc82c);
    INFO_ADDCHOICE(0xc826, "Miasto", 0xc82a);
    INFO_ADDCHOICE(0xc826, "Wioska i farmy", 0xc829);
}

func void DIA_CRIMEHELPER_CRIMETEST_FARMS() {
    SELF.GUILD = GIL_BAU;
    CRIMETEST();
    SELF.GUILD = GIL_NONE;
    INFO_CLEARCHOICES(0xc826);
}

func void DIA_CRIMEHELPER_CRIMETEST_CITY() {
    SELF.GUILD = GIL_VLK;
    CRIMETEST();
    SELF.GUILD = GIL_NONE;
    INFO_CLEARCHOICES(0xc826);
}

func void DIA_CRIMEHELPER_CRIMETEST_MONASTERY() {
    SELF.GUILD = GIL_VLK;
    CRIMETEST();
    SELF.GUILD = GIL_NONE;
    INFO_CLEARCHOICES(0xc826);
}

func void DIA_CRIMEHELPER_CRIMETEST_WOLFSLAIR() {
    SELF.GUILD = GIL_VLK;
    CRIMETEST();
    SELF.GUILD = GIL_NONE;
    SELF.NPCTYPE = NPCTYPE_MAIN;
    INFO_CLEARCHOICES(0xc826);
}

instance DIA_CRIMEHELPER_ADDCRIME(C_INFO) {
    NPC = 0xc820;
    NR = 2;
    CONDITION = DIA_CRIMEHELPER_ADDCRIME_CONDITION;
    INFORMATION = DIA_CRIMEHELPER_ADDCRIME_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "Dodaj zbrodni�";
}

func int DIA_CRIMEHELPER_ADDCRIME_CONDITION() {
    return TRUE;
}

func void DIA_CRIMEHELPER_ADDCRIME_INFO() {
    INFO_CLEARCHOICES(0xc82d);
    INFO_ADDCHOICE(0xc82d, "Klasztor", 0xc833);
    INFO_ADDCHOICE(0xc82d, "Wilcze le�e", 0xc834);
    INFO_ADDCHOICE(0xc82d, "Miasto", 0xc832);
    INFO_ADDCHOICE(0xc82d, "Wioska i farmy", 0xc831);
}

func void DIA_CRIMEHELPER_ADDCRIME_CHOOSETYPE() {
    INFO_CLEARCHOICES(0xc82d);
    INFO_ADDCHOICE(0xc82d, "Owca", 0xc835);
    INFO_ADDCHOICE(0xc82d, "Kradzie�", 0xc836);
    INFO_ADDCHOICE(0xc82d, "Pobicie", 0xc837);
    INFO_ADDCHOICE(0xc82d, "Morderstwo", 0xc838);
}

func void DIA_CRIMEHELPER_ADDCRIME_FARMS() {
    SELF.GUILD = GIL_BAU;
    DIA_CRIMEHELPER_ADDCRIME_CHOOSETYPE();
}

func void DIA_CRIMEHELPER_ADDCRIME_CITY() {
    SELF.GUILD = GIL_VLK;
    DIA_CRIMEHELPER_ADDCRIME_CHOOSETYPE();
}

func void DIA_CRIMEHELPER_ADDCRIME_MONASTERY() {
    SELF.GUILD = GIL_VLK;
    DIA_CRIMEHELPER_ADDCRIME_CHOOSETYPE();
}

func void DIA_CRIMEHELPER_ADDCRIME_WOLFSLAIR() {
    SELF.GUILD = GIL_VLK;
    DIA_CRIMEHELPER_ADDCRIME_CHOOSETYPE();
}

func void DIA_CRIMEHELPER_ADDCRIME_SHEEP() {
    B_ADDPETZCRIME(SELF, CRIME_SHEEPKILLER);
    SELF.GUILD = GIL_NONE;
    SELF.NPCTYPE = NPCTYPE_MAIN;
    INFO_CLEARCHOICES(0xc82d);
}

func void DIA_CRIMEHELPER_ADDCRIME_THEFT() {
    B_ADDPETZCRIME(SELF, CRIME_THEFT);
    SELF.GUILD = GIL_NONE;
    SELF.NPCTYPE = NPCTYPE_MAIN;
    INFO_CLEARCHOICES(0xc82d);
}

func void DIA_CRIMEHELPER_ADDCRIME_ATTACK() {
    B_ADDPETZCRIME(SELF, CRIME_ATTACK);
    SELF.GUILD = GIL_NONE;
    SELF.NPCTYPE = NPCTYPE_MAIN;
    INFO_CLEARCHOICES(0xc82d);
}

func void DIA_CRIMEHELPER_ADDCRIME_MURDER() {
    B_ADDPETZCRIME(SELF, CRIME_MURDER);
    SELF.GUILD = GIL_NONE;
    SELF.NPCTYPE = NPCTYPE_MAIN;
    INFO_CLEARCHOICES(0xc82d);
}

instance DIA_CRIMEHELPER_DELETECRIME(C_INFO) {
    NPC = 0xc820;
    NR = 3;
    CONDITION = DIA_CRIMEHELPER_DELETECRIME_CONDITION;
    INFORMATION = DIA_CRIMEHELPER_DELETECRIME_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "Usu� zbrodni�";
}

func int DIA_CRIMEHELPER_DELETECRIME_CONDITION() {
    return TRUE;
}

func void DIA_CRIMEHELPER_DELETECRIME_INFO() {
    INFO_CLEARCHOICES(0xc839);
    INFO_ADDCHOICE(0xc839, "Klasztor", 0xc842);
    INFO_ADDCHOICE(0xc839, "Wilcze le�e", 0xc843);
    INFO_ADDCHOICE(0xc839, "Miasto", 0xc841);
    INFO_ADDCHOICE(0xc839, "Wioska i farmy", 0xc840);
}

func void DIA_CRIMEHELPER_DELETECRIME_FARMS_CHOOSETYPE() {
    INFO_CLEARCHOICES(0xc839);
    INFO_ADDCHOICE(0xc839, "Owca", 0xc844);
    INFO_ADDCHOICE(0xc839, "Kradzie�", 0xc845);
    INFO_ADDCHOICE(0xc839, "Pobicie", 0xc846);
    INFO_ADDCHOICE(0xc839, "Morderstwo", 0xc847);
}

func void DIA_CRIMEHELPER_DELETECRIME_CITY_CHOOSETYPE() {
    INFO_CLEARCHOICES(0xc839);
    INFO_ADDCHOICE(0xc839, "Owca", 0xc848);
    INFO_ADDCHOICE(0xc839, "Kradzie�", 0xc849);
    INFO_ADDCHOICE(0xc839, "Pobicie", 0xc84a);
    INFO_ADDCHOICE(0xc839, "Morderstwo", 0xc84b);
}

func void DIA_CRIMEHELPER_DELETECRIME_MONASTERY_CHOOSETYPE() {
    INFO_CLEARCHOICES(0xc839);
    INFO_ADDCHOICE(0xc839, "Owca", 0xc84c);
    INFO_ADDCHOICE(0xc839, "Kradzie�", 0xc84d);
    INFO_ADDCHOICE(0xc839, "Pobicie", 0xc84e);
    INFO_ADDCHOICE(0xc839, "Morderstwo", 0xc84f);
}

func void DIA_CRIMEHELPER_DELETECRIME_WOLFSLAIR_CHOOSETYPE() {
    INFO_CLEARCHOICES(0xc839);
    INFO_ADDCHOICE(0xc839, "Owca", 0xc850);
    INFO_ADDCHOICE(0xc839, "Kradzie�", 0xc851);
    INFO_ADDCHOICE(0xc839, "Pobicie", 0xc852);
    INFO_ADDCHOICE(0xc839, "Morderstwo", 0xc853);
}

func void DIA_CRIMEHELPER_DELETECRIME_FARMS() {
    DIA_CRIMEHELPER_DELETECRIME_FARMS_CHOOSETYPE();
}

func void DIA_CRIMEHELPER_DELETECRIME_CITY() {
    DIA_CRIMEHELPER_DELETECRIME_CITY_CHOOSETYPE();
}

func void DIA_CRIMEHELPER_DELETECRIME_MONASTERY() {
    DIA_CRIMEHELPER_DELETECRIME_MONASTERY_CHOOSETYPE();
}

func void DIA_CRIMEHELPER_DELETECRIME_WOLFSLAIR() {
    DIA_CRIMEHELPER_DELETECRIME_WOLFSLAIR_CHOOSETYPE();
}

func void DIA_CRIMEHELPER_DELETECRIME_FARM_SHEEP() {
    PETZCOUNTER_FARMS_SHEEPKILLER = 0;
    INFO_CLEARCHOICES(0xc839);
}

func void DIA_CRIMEHELPER_DELETECRIME_FARM_THEFT() {
    PETZCOUNTER_FARMS_THEFT = 0;
    INFO_CLEARCHOICES(0xc839);
}

func void DIA_CRIMEHELPER_DELETECRIME_FARM_ATTACK() {
    PETZCOUNTER_FARMS_ATTACK = 0;
    INFO_CLEARCHOICES(0xc839);
}

func void DIA_CRIMEHELPER_DELETECRIME_FARM_MURDER() {
    PETZCOUNTER_FARMS_MURDER = 0;
    INFO_CLEARCHOICES(0xc839);
}

func void DIA_CRIMEHELPER_DELETECRIME_CITY_SHEEP() {
    PETZCOUNTER_CITY_SHEEPKILLER = 0;
    INFO_CLEARCHOICES(0xc839);
}

func void DIA_CRIMEHELPER_DELETECRIME_CITY_THEFT() {
    PETZCOUNTER_CITY_THEFT = 0;
    INFO_CLEARCHOICES(0xc839);
}

func void DIA_CRIMEHELPER_DELETECRIME_CITY_ATTACK() {
    PETZCOUNTER_CITY_ATTACK = 0;
    INFO_CLEARCHOICES(0xc839);
}

func void DIA_CRIMEHELPER_DELETECRIME_CITY_MURDER() {
    PETZCOUNTER_CITY_MURDER = 0;
    INFO_CLEARCHOICES(0xc839);
}

func void DIA_CRIMEHELPER_DELETECRIME_MONASTERY_SHEEP() {
    PETZCOUNTER_MONASTERY_SHEEPKILLER = 0;
    INFO_CLEARCHOICES(0xc839);
}

func void DIA_CRIMEHELPER_DELETECRIME_MONASTERY_THEFT() {
    PETZCOUNTER_MONASTERY_THEFT = 0;
    INFO_CLEARCHOICES(0xc839);
}

func void DIA_CRIMEHELPER_DELETECRIME_MONASTERY_ATTACK() {
    PETZCOUNTER_MONASTERY_ATTACK = 0;
    INFO_CLEARCHOICES(0xc839);
}

func void DIA_CRIMEHELPER_DELETECRIME_MONASTERY_MURDER() {
    PETZCOUNTER_MONASTERY_MURDER = 0;
    INFO_CLEARCHOICES(0xc839);
}

func void DIA_CRIMEHELPER_DELETECRIME_WOLFSLAIR_SHEEP() {
    PETZCOUNTER_WOLFSLAIR_SHEEPKILLER = 0;
    INFO_CLEARCHOICES(0xc839);
}

func void DIA_CRIMEHELPER_DELETECRIME_WOLFSLAIR_THEFT() {
    PETZCOUNTER_WOLFSLAIR_THEFT = 0;
    INFO_CLEARCHOICES(0xc839);
}

func void DIA_CRIMEHELPER_DELETECRIME_WOLFSLAIR_ATTACK() {
    PETZCOUNTER_WOLFSLAIR_ATTACK = 0;
    INFO_CLEARCHOICES(0xc839);
}

func void DIA_CRIMEHELPER_DELETECRIME_WOLFSLAIR_MURDER() {
    PETZCOUNTER_WOLFSLAIR_MURDER = 0;
    INFO_CLEARCHOICES(0xc839);
}

instance DIA_CRIMEHELPER_ABSOLUTION(C_INFO) {
    NPC = 0xc820;
    NR = 3;
    CONDITION = DIA_CRIMEHELPER_ABSOLUTION_CONDITION;
    INFORMATION = DIA_CRIMEHELPER_ABSOLUTION_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "Aezakmi (przebacz wszystkie zbrodnie)";
}

func int DIA_CRIMEHELPER_ABSOLUTION_CONDITION() {
    return TRUE;
}

func void DIA_CRIMEHELPER_ABSOLUTION_INFO() {
    INFO_CLEARCHOICES(0xc854);
    INFO_ADDCHOICE(0xc854, "Wsz�dzie", 0xc85b);
    INFO_ADDCHOICE(0xc854, "Klasztor", 0xc859);
    INFO_ADDCHOICE(0xc854, "Wilcze le�e", 0xc85a);
    INFO_ADDCHOICE(0xc854, "Miasto", 0xc858);
    INFO_ADDCHOICE(0xc854, "Wioska i farmy", 0xc857);
}

func void DIA_CRIMEHELPER_ABSOLUTION_FARMS() {
    B_GRANTABSOLUTION(LOC_FARMS);
    INFO_CLEARCHOICES(0xc854);
}

func void DIA_CRIMEHELPER_ABSOLUTION_CITY() {
    B_GRANTABSOLUTION(LOC_CITY);
    INFO_CLEARCHOICES(0xc854);
}

func void DIA_CRIMEHELPER_ABSOLUTION_MONASTERY() {
    B_GRANTABSOLUTION(LOC_MONASTERY);
    INFO_CLEARCHOICES(0xc854);
}

func void DIA_CRIMEHELPER_ABSOLUTION_WOLFSLAIR() {
    B_GRANTABSOLUTION(LOC_WOLFSLAIR);
    INFO_CLEARCHOICES(0xc854);
}

func void DIA_CRIMEHELPER_ABSOLUTION_ALL() {
    B_GRANTABSOLUTION(LOC_ALL);
    INFO_CLEARCHOICES(0xc854);
}

instance DIA_CRIMEHELPER_SLUMSPROTECTION(C_INFO) {
    NPC = 0xc820;
    NR = 4;
    CONDITION = DIA_CRIMEHELPER_SLUMSPROTECTION_CONDITION;
    INFORMATION = DIA_CRIMEHELPER_SLUMSPROTECTION_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "Status ochrony w slumsach";
}

func int DIA_CRIMEHELPER_SLUMSPROTECTION_CONDITION() {
    return TRUE;
}

func int DIA_CRIMEHELPER_SLUMSPROTECTION_INFO() {
    if ((SLUMSGUARDIAN_FIRSTTIME) == (FALSE)) {
        PRINTD("Opiekunowie slums�w nie wiedz� o Tobie.");
    };
    PRINTD("Opiekunowie slums�w z tob� gadali.");
    if ((SLUMSGUARDIAN_PROTECTIONPAID) == (TRUE)) {
        PRINTD("Zap�aci�e� opiekunom slums�w.");
    };
    PRINTD("nie zap�aci�e� opiekunom slums�w");
    if ((SLUMSGUARDIAN_NEWTRAPS) == (TRUE)) {
        PRINTD("Czekaj� na ciebie nowe pu�apki.");
    };
    PRINTD("Jeste� bezpieczny.");
    return 0 /* !broken stack! */;
}


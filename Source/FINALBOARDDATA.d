class FINALBOARDDATA {
	var string TEXTURE;
	var int FUNCID;
};
instance FINALBOARDDATA@(FINALBOARDDATA);
var int FINALBOARDSLIST;
func void ADDFINALBOARD(var string TEXTURE, var func FNC) {
    var FINALBOARDDATA DATA;
    var int PTR;
    PTR = CREATE(93871);
    DATA = _^(PTR);
    DATA.TEXTURE = TEXTURE;
    DATA.FUNCID = MEM_GETFUNCID(93875);
    LIST_ADD(FINALBOARDSLIST, PTR);
}

func void FINALBOARD_SECRETDIALOGUE_01() {
    B_SAY(HERO, HERO, "$MARVIN_AbsolutelyAmazingEvent01");
}

func void FINALBOARD_SECRETDIALOGUE_02() {
    B_SAY(HERO, HERO, "$MARVIN_AbsolutelyAmazingEvent02");
    B_SAY(HERO, HERO, "$MARVIN_AbsolutelyAmazingEvent03");
    B_SAY(HERO, HERO, "$MARVIN_AbsolutelyAmazingEvent04");
    B_SAY(HERO, HERO, "$MARVIN_AbsolutelyAmazingEvent05");
}

func void FINALBOARD_SECRETDIALOGUE_03() {
    B_SAY(HERO, HERO, "$MARVIN_AbsolutelyAmazingEvent06");
    B_SAY(HERO, HERO, "$MARVIN_AbsolutelyAmazingEvent07");
    B_SAY(HERO, HERO, "$MARVIN_AbsolutelyAmazingEvent08");
}

func void FINALBOARD_SECRETDIALOGUE_04() {
    B_SAY(HERO, HERO, "$MARVIN_AbsolutelyAmazingEvent09");
}

func void FINALBOARD_FIGHTCITY_01() {
    AI_OUTPUT(HERO, HERO, "DIA_MARVIN_ENDING_CITYFIGHT_15_01");
    AI_OUTPUT(HERO, HERO, "DIA_MARVIN_ENDING_CITYFIGHT_15_02");
    AI_OUTPUT(HERO, HERO, "DIA_MARVIN_ENDING_CITYFIGHT_15_03");
}

func void FINALBOARD_FIGHTCITY_02() {
    AI_OUTPUT(HERO, HERO, "DIA_MARVIN_ENDING_CITYFIGHT_15_04");
}

func void FINALBOARD_FLEEHAVEN() {
    AI_OUTPUT(HERO, HERO, "DIA_MARVIN_ENDING_FLEEHAVEN_15_01");
    AI_OUTPUT(HERO, HERO, "DIA_MARVIN_ENDING_FLEEHAVEN_15_02");
}

func void FINALBOARD_HIDE() {
    AI_OUTPUT(HERO, HERO, "DIA_MARVIN_ENDING_HIDE_15_01");
    AI_OUTPUT(HERO, HERO, "DIA_MARVIN_ENDING_HIDE_15_02");
    AI_OUTPUT(HERO, HERO, "DIA_MARVIN_ENDING_HIDE_15_03");
}

func void FINALBOARD_JORNDEAD() {
    AI_OUTPUT(HERO, HERO, "DIA_MARVIN_ENDING_JORNDEAD_15_01");
    AI_OUTPUT(HERO, HERO, "DIA_MARVIN_ENDING_JORNDEAD_15_02");
}

func void FINALBOARD_ULRYKPRISON() {
    AI_OUTPUT(HERO, HERO, "DIA_MARVIN_ENDING_ULRYK_15_01");
}

func void FINALBOARD_PEACEKEEPER() {
    AI_OUTPUT(HERO, HERO, "DIA_MARVIN_ENDING_PEACEKEEPER_15_01");
}

func void FINALBOARD_WOLFSDEN_01() {
    AI_OUTPUT(HERO, HERO, "DIA_MARVIN_ENDING_WolfsDen_15_01");
}

func void FINALBOARD_WOLFSDEN_02() {
    AI_OUTPUT(HERO, HERO, "DIA_MARVIN_ENDING_WolfsDen_15_02");
}

func void FINALBOARD_VOLKER_DEAD() {
    AI_OUTPUT(HERO, HERO, "DIA_MARVIN_ENDING_VolkerDead_15_01");
}

func void FINALBOARD_VOLKER_PRISON() {
    AI_OUTPUT(HERO, HERO, "DIA_MARVIN_ENDING_VolkerPrison_15_01");
}

func void FINALBOARD_VOLKER_FLEE() {
    AI_OUTPUT(HERO, HERO, "DIA_MARVIN_ENDING_VolkerFlee_15_01");
}

func void FINALBOARD_VOLKER_SWORD() {
    AI_OUTPUT(HERO, HERO, "DIA_MARVIN_ENDING_VolkerSword_15_01");
}

func void FINALBOARD_RODERICHPOWER() {
    AI_OUTPUT(HERO, HERO, "DIA_MARVIN_ENDING_RoderichPower_15_01");
}

func void FINALBOARD_LORENZO_DEAD() {
    AI_OUTPUT(HERO, HERO, "DIA_MARVIN_ENDING_LorenzoDead_15_01");
}

func void FINALBOARD_LORENZO_ALIVE() {
    AI_OUTPUT(HERO, HERO, "DIA_MARVIN_ENDING_LorenzoAlive_15_01");
}

func void FINALBOARD_ARWID_CITY() {
    AI_OUTPUT(HERO, HERO, "DIA_MARVIN_ENDING_Arwid_City_15_01");
}

func void FINALBOARD_ARWID_DEPPRESION() {
    AI_OUTPUT(HERO, HERO, "DIA_MARVIN_ENDING_Arwid_Silbach_15_01");
}

func void FINALBOARD_CARAMON_DEAD() {
    AI_OUTPUT(HERO, HERO, "DIA_MARVIN_ENDING_Caramon_Dead_15_01");
}

func void FINALBOARD_CARAMON_ALIVE() {
    AI_OUTPUT(HERO, HERO, "DIA_MARVIN_ENDING_Caramon_Alive_15_01");
}

func void FINALBOARD_RENEGADESALIVE() {
    AI_OUTPUT(HERO, HERO, "DIA_MARVIN_ENDING_RenegadesAlive_15_01");
}

func void FINALBOARD_SMUGGLERSALIVE() {
    AI_OUTPUT(HERO, HERO, "DIA_MARVIN_ENDING_SmugglersAlive_15_01");
}

func void FINALBOARD_RAMSEYALIVE() {
    AI_OUTPUT(HERO, HERO, "DIA_MARVIN_ENDING_RamseyAlive_15_01");
}

func void FINALBOARD_ALBYNLEADER() {
    AI_OUTPUT(HERO, HERO, "DIA_MARVIN_ENDING_AlbynLeader_15_01");
    AI_OUTPUT(HERO, HERO, "DIA_MARVIN_ENDING_AlbynLeader_15_02");
}

func void FINALBOARD_BEAST_ALIVE() {
    AI_OUTPUT(HERO, HERO, "DIA_MARVIN_ENDING_Beast_Alive_15_01");
}

func void FINALBOARD_BEAST_FAKEDEAD() {
    AI_OUTPUT(HERO, HERO, "DIA_MARVIN_ENDING_Beast_FakeDead_15_01");
}

func void FINALBOARD_BEAST_DEAD() {
    AI_OUTPUT(HERO, HERO, "DIA_MARVIN_ENDING_Beast_Dead_15_01");
}

func void FINALBOARD_VALERIO_GOOD() {
    AI_OUTPUT(HERO, HERO, "DIA_MARVIN_ENDING_Valerio_Good_15_01");
}

func void FINALBOARD_VALERIO_BAD() {
    AI_OUTPUT(HERO, HERO, "DIA_MARVIN_ENDING_Valerio_Bad_15_01");
}

func void FINALBOARD_HAVEN_GIVEUP() {
    AI_OUTPUT(HERO, HERO, "DIA_MARVIN_ENDING_Haven_GiveUp_15_01");
}

func void FINALBOARD_HAVEN_FIGHT() {
    AI_OUTPUT(HERO, HERO, "DIA_MARVIN_ENDING_Haven_Fight_15_01");
}

func void FINALBOARD_HAVEN_DEAD() {
    AI_OUTPUT(HERO, HERO, "DIA_MARVIN_ENDING_Haven_Dead_15_01");
}

func void FINALBOARD_MONASTERY_REGEN() {
    AI_OUTPUT(HERO, HERO, "DIA_MARVIN_ENDING_Monastery_Regen_15_01");
    AI_OUTPUT(HERO, HERO, "DIA_MARVIN_ENDING_Monastery_Regen_15_02");
}

func void FINALBOARD_MONASTERY_RIORDIAN() {
    AI_OUTPUT(HERO, HERO, "DIA_MARVIN_ENDING_Monastery_Riordian_15_01");
}

func void FINALBOARD_ORCS_WON() {
    AI_OUTPUT(HERO, HERO, "DIA_MARVIN_ENDING_Orcs_Won_15_01");
}

func void FINALBOARD_ORCS_LOST() {
    AI_OUTPUT(HERO, HERO, "DIA_MARVIN_ENDING_Orcs_Lost_15_01");
    AI_OUTPUT(HERO, HERO, "DIA_MARVIN_ENDING_Orcs_Lost_15_02");
}

func void FINALBOARD_REFUGEE_ANA() {
    AI_OUTPUT(HERO, HERO, "DIA_MARVIN_ENDING_Refugee_Ana_15_01");
}

func void FINALBOARD_REFUGEE_FABIO() {
    AI_OUTPUT(HERO, HERO, "DIA_MARVIN_ENDING_Refugee_Fabio_15_01");
}

func void FINALBOARD_REFUGEE_EZEKIEL() {
    AI_OUTPUT(HERO, HERO, "DIA_MARVIN_ENDING_Refugee_Ezekiel_15_01");
}

func void FINALBOARD_REFUGEE_KAZEEM() {
    AI_OUTPUT(HERO, HERO, "DIA_MARVIN_ENDING_Refugee_Kazeem_15_01");
}

func void FINALBOARD_REFUGEE_RUPERT() {
    AI_OUTPUT(HERO, HERO, "DIA_MARVIN_ENDING_Refugee_Rupert_15_01");
}

func void FINALBOARD_REFUGEE_TIMO() {
    AI_OUTPUT(HERO, HERO, "DIA_MARVIN_ENDING_Refugee_Timo_15_01");
}

func void FINALBOARD_REFUGEE_OTHERS() {
    AI_OUTPUT(HERO, HERO, "DIA_MARVIN_ENDING_Refugee_Others_15_01");
}

func void FINALBOARD_KURT_DEAD() {
    AI_OUTPUT(HERO, HERO, "DIA_MARVIN_ENDING_Kurt_Dead_15_01");
}

func void FINALBOARD_KURT_ALIVE() {
    AI_OUTPUT(HERO, HERO, "DIA_MARVIN_ENDING_Kurt_Alive_15_01");
}

func void FINALBOARD_IVY_HELP() {
    AI_OUTPUT(HERO, HERO, "DIA_MARVIN_ENDING_Ivy_Help_15_01");
    AI_OUTPUT(HERO, HERO, "DIA_MARVIN_ENDING_Ivy_Help_15_02");
}

func void FINALBOARD_IVY_HIDE() {
    AI_OUTPUT(HERO, HERO, "DIA_MARVIN_ENDING_Ivy_Hide_15_01");
}

func void FINALBOARD_IVY_DEAD() {
    AI_OUTPUT(HERO, HERO, "DIA_MARVIN_ENDING_Ivy_Dead_15_01");
}

func void FINALBOARD_BODOWIN_ALIVE() {
    AI_OUTPUT(HERO, HERO, "DIA_MARVIN_ENDING_Bodowin_Alive_15_01");
    AI_OUTPUT(HERO, HERO, "DIA_MARVIN_ENDING_Bodowin_Alive_15_02");
}

func void FINALBOARD_BODOWIN_DEAD() {
    AI_OUTPUT(HERO, HERO, "DIA_MARVIN_ENDING_Bodowin_Dead_15_01");
}

func void FINALBOARD_BODOWIN_FLEE() {
    AI_OUTPUT(HERO, HERO, "DIA_MARVIN_ENDING_Bodowin_Flee_15_01");
}

func void FINALBOARD_OURHOUSE() {
    AI_OUTPUT(HERO, HERO, "DIA_MARVIN_ENDING_OurHouse_15_01");
}

func void FINALBOARD_GOLD() {
    AI_OUTPUT(HERO, HERO, "DIA_MARVIN_ENDING_Gold_15_01");
}

func void FINALBOARD_DOG_ALIVE() {
    AI_OUTPUT(HERO, HERO, "DIA_MARVIN_ENDING_Dog_Alive_15_01");
}

func void FINALBOARD_DOG_DEAD() {
    AI_OUTPUT(HERO, HERO, "DIA_MARVIN_ENDING_Dog_Dead_15_01");
}

func void FINALBOARD_VOLFZACKE_PRISON() {
    AI_OUTPUT(HERO, HERO, "DIA_MARVIN_ENDING_Volfzacke_Prison_15_01");
    AI_OUTPUT(HERO, HERO, "DIA_MARVIN_ENDING_Volfzacke_Prison_15_02");
}

func void FINALBOARD_VOLFZACKE_NEWLIFE() {
    AI_OUTPUT(HERO, HERO, "DIA_MARVIN_ENDING_Volfzacke_NewLife_15_01");
    AI_OUTPUT(HERO, HERO, "DIA_MARVIN_ENDING_Volfzacke_NewLife_15_02");
}

func void FINALBOARD_VOLFZACKE_VICTIMS() {
    AI_OUTPUT(HERO, HERO, "DIA_MARVIN_ENDING_Volfzacke_Victims_15_01");
}

func void FINALBOARD_VOLFZACKE_GOLD() {
    AI_OUTPUT(HERO, HERO, "DIA_MARVIN_ENDING_Volfzacke_Gold_15_01");
}

func void FINALBOARD_VOLFZACKE_HAVARD() {
    AI_OUTPUT(HERO, HERO, "DIA_MARVIN_ENDING_Volfzacke_Havard_15_01");
}

func void FINALBOARD_VOLFZACKE_KESSEL() {
    AI_OUTPUT(HERO, HERO, "DIA_MARVIN_ENDING_Volfzacke_Kessel_15_01");
}

func void FINALBOARD_VOLFZACKE_WATERCIRCLE() {
    AI_OUTPUT(HERO, HERO, "DIA_MARVIN_ENDING_Volfzacke_WaterCircle_15_01");
}

func void FINALBOARD_GRAYSON_LEAVE() {
    AI_OUTPUT(HERO, HERO, "DIA_MARVIN_ENDING_Grayson_Leave_15_01");
    AI_OUTPUT(HERO, HERO, "DIA_MARVIN_ENDING_Grayson_Leave_15_02");
}

func void FINALBOARD_GRAYSON_SEARCH() {
    AI_OUTPUT(HERO, HERO, "DIA_MARVIN_ENDING_Grayson_Search_15_01");
}

func void FINALBOARD_FINALMOMENTS_01() {
    AI_OUTPUT(HERO, HERO, "DIA_MARVIN_ENDING_FinalMoments_15_01");
}

func void FINALBOARD_FINALMOMENTS_02() {
    AI_OUTPUT(HERO, HERO, "DIA_MARVIN_ENDING_FinalMoments_15_02");
}

func void FINALBOARD_FINALMOMENTS_03() {
    AI_OUTPUT(HERO, HERO, "DIA_MARVIN_ENDING_FinalMoments_15_03");
}

func void FINALBOARD_FINALMOMENTS_04() {
    AI_OUTPUT(HERO, HERO, "DIA_MARVIN_ENDING_FinalMoments_15_04");
    AI_OUTPUT(HERO, HERO, "DIA_MARVIN_ENDING_FinalMoments_15_05");
}

func void FINALBOARD_FINALMOMENTS_05() {
    AI_OUTPUT(HERO, HERO, "DIA_MARVIN_ENDING_FinalMoments_15_06");
}

func void FINALBOARD_FINALMOMENTS_06() {
    AI_OUTPUT(HERO, HERO, "DIA_MARVIN_ENDING_FinalMoments_15_07");
    AI_OUTPUT(HERO, HERO, "DIA_MARVIN_ENDING_FinalMoments_15_08");
    AI_OUTPUT(HERO, HERO, "DIA_MARVIN_ENDING_FinalMoments_15_09");
}

func void FINALBOARD_FINALMOMENTS_07() {
    AI_OUTPUT(HERO, HERO, "DIA_MARVIN_ENDING_FinalMoments_15_10");
}

func void FINALBOARD_FINALMOMENTS_08() {
    AI_OUTPUT(HERO, HERO, "DIA_MARVIN_ENDING_FinalMoments_15_11");
}

func void REGISTERFINALBOARDS() {
    if ((Q601_HIDEENDING) == (TRUE)) {
        ADDFINALBOARD("FinalBoard_Ending_Hide.tga", 93885);
    };
    if ((Q601_FLEEHAVENENDING) == (TRUE)) {
        ADDFINALBOARD("FinalBoard_Ending_Haven.tga", 93884);
    };
    if ((Q405_INTERESTINGEVENT) == (1)) {
        ADDFINALBOARD("FinalBoard_MarvinEnding_Black.tga", 93878);
        ADDFINALBOARD("FinalBoard_Ending_Jorn.tga", 93879);
        ADDFINALBOARD("FinalBoard_Kazeem_Leave.tga", 93880);
        ADDFINALBOARD("FinalBoard_MarvinEnding_Black.tga", 93881);
    };
    ADDFINALBOARD("FinalBoard_Ending_City01.tga", 93882);
    ADDFINALBOARD("FinalBoard_Ending_City02.tga", 93883);
    if ((Q405_INTERESTINGEVENT) != (1)) {
        ADDFINALBOARD("FinalBoard_Jorn_Grave.tga", 93886);
        ADDFINALBOARD("FinalBoard_Ulryk_Prison.tga", 93887);
        ADDFINALBOARD("FinalBoard_Peacekeeper_Monastery.tga", 93888);
        if ((FINALBOARDS_VOLKERSTATUS) >= (1)) {
            if ((FINALBOARDS_VOLKERSTATUS) == (1)) {
                ADDFINALBOARD("FinalBoard_Volker_Dead.tga", 93891);
            } else if ((FINALBOARDS_VOLKERSTATUS) == (2)) {
                ADDFINALBOARD("FinalBoard_Volker_Prison.tga", 93892);
            } else if ((FINALBOARDS_VOLKERSTATUS) == (3)) {
                ADDFINALBOARD("FinalBoard_Volker_Flee.tga", 93893);
            };
            ADDFINALBOARD("FinalBoard_Volker_Sword.tga", 93894);
        };
        ADDFINALBOARD("FinalBoard_Roderich_Power.tga", 93895);
        if ((Q602_LORENZOISDEAD) == (TRUE)) {
            ADDFINALBOARD("FinalBoard_Lorenzo_Gone.tga", 93896);
        } else {
            ADDFINALBOARD("FinalBoard_Lorenzo_Unite.tga", 93897);
        };
        if (((MARVIN_LOSTGUILDMILITA) == (TRUE)) || ((HERO.GUILD) == (GIL_MIL))) {
            if ((FINALBOARDS_ARWIDISDEAD) == (FALSE)) {
                if ((Q509_ARWIDVOLFZACKE) == (FALSE)) {
                    ADDFINALBOARD("FinalBoard_Arwid_Success.tga", 93898);
                } else {
                    ADDFINALBOARD("FinalBoard_Arwid_GiveUp.tga", 93899);
                };
                if ((LOG_GETSTATUS(MIS_QM401)) != (LOG_SUCCESS)) {
                    ADDFINALBOARD("FinalBoard_Arwid_RenegadesAlive.tga", 93902);
                };
            };
        } else if (((MARVIN_LOSTGUILDARAXOS) == (TRUE)) || ((HERO.GUILD) == (GIL_SLD))) {
            if ((FINALBOARDS_CARAMONISDEAD) == (TRUE)) {
                ADDFINALBOARD("FinalBoard_Caramon_Dead.tga", 93900);
            } else {
                ADDFINALBOARD("FinalBoard_Caramon_Leave.tga", 93901);
            };
            if ((LOG_GETSTATUS(MIS_QA401)) != (LOG_SUCCESS)) {
                ADDFINALBOARD("FinalBoard_Smugglers_Alive.tga", 93903);
            };
        };
        if ((FINALBOARDS_RAMSEYISDEAD) == (FALSE)) {
            ADDFINALBOARD("FinalBoard_Ramsey_Alive.tga", 93904);
        };
        ADDFINALBOARD("FinalBoard_Albyn_Power.tga", 93905);
        if ((FINALBOARDS_DETLOWISDEAD) == (TRUE)) {
            ADDFINALBOARD("FinalBoard_Beast_Dead.tga", 93908);
        } else if ((FINALBOARDS_RAZORISDEAD) == (FALSE)) {
            ADDFINALBOARD("FinalBoard_Beast_Alive.tga", 93906);
        } else if ((FINALBOARDS_RAZORISDEAD) == (TRUE)) {
            ADDFINALBOARD("FinalBoard_Beast_Alive.tga", 93907);
        };
        if ((SQ225_FINISHWAY) == (3)) {
            ADDFINALBOARD("FinalBoard_Valerio_Good.tga", 93909);
        } else {
            ADDFINALBOARD("FinalBoard_Valerio_Bad.tga", 93910);
        };
        if ((LOG_GETSTATUS(MIS_SQ503)) == (LOG_SUCCESS)) {
            if ((SQ503_HAVENDECISION) == (1)) {
                ADDFINALBOARD("FinalBoard_Haven_Colony.tga", 93911);
            } else if ((SQ503_HAVENDECISION) == (2)) {
                ADDFINALBOARD("FinalBoard_Haven_Forgotten.tga", 93912);
            };
        } else {
            ADDFINALBOARD("FinalBoard_Haven_Forgotten.tga", 93913);
        };
        ADDFINALBOARD("FinalBoard_Monastery_RegenDead.tga", 93914);
        ADDFINALBOARD("FinalBoard_Monastery_Riordian.tga", 93915);
        if ((LOG_GETSTATUS(MIS_KQ407)) == (LOG_SUCCESS)) {
            ADDFINALBOARD("FinalBoard_Orc_Won.tga", 93916);
        } else {
            ADDFINALBOARD("FinalBoard_Orc_Lost.tga", 93917);
        };
        ADDFINALBOARD("FinalBoard_Ana_Healer.tga", 93918);
        if ((FINALBOARDS_FABIOISDEAD) == (TRUE)) {
            if ((FINALBOARDS_FABIOISDEAD_HOW) == (1)) {
                ADDFINALBOARD("FinalBoard_Fabio_City.tga", 93919);
            } else if ((FINALBOARDS_FABIOISDEAD_HOW) == (2)) {
                ADDFINALBOARD("FinalBoard_Fabio_Wolfsden.tga", 93919);
            } else if ((FINALBOARDS_FABIOISDEAD_HOW) == (3)) {
                ADDFINALBOARD("FinalBoard_Fabio_Swamp.tga", 93919);
            };
        };
        if ((LOG_GETSTATUS(MIS_SQ227)) == (LOG_SUCCESS)) {
            ADDFINALBOARD("FinalBoard_Ezekiel_Trader.tga", 93920);
        };
        if ((SQ411_MARVINGOTKEYS) == (TRUE)) {
            ADDFINALBOARD("FinalBoard_Kazeem_Leave.tga", 93921);
        };
        if (NPC_KNOWSINFO(HERO, 91393)) {
            ADDFINALBOARD("FinalBoard_Rupert_City.tga", 93922);
        };
        if (NPC_KNOWSINFO(HERO, 91329)) {
            ADDFINALBOARD("FinalBoard_Timo_Thief.tga", 93923);
        };
        ADDFINALBOARD("FinalBoard_Refugee_Others.tga", 93924);
        if ((FINALBOARDS_KURTISDEAD) == (TRUE)) {
            ADDFINALBOARD("FinalBoard_Kurt_FoundDead.tga", 93925);
        } else {
            ADDFINALBOARD("FinalBoard_Kurt_NoFound.tga", 93926);
        };
        if ((FINALBOARDS_IVYSTATUS) == (1)) {
            ADDFINALBOARD("FinalBoard_Ivy_Help.tga", 93927);
        } else if ((FINALBOARDS_IVYSTATUS) == (2)) {
            ADDFINALBOARD("FinalBoard_Ivy_Hide.tga", 93928);
        } else if ((FINALBOARDS_IVYSTATUS) == (3)) {
            ADDFINALBOARD("FinalBoard_Ivy_Dead.tga", 93929);
        };
        if ((FINALBOARDS_BODOWINSTATUS) == (1)) {
            ADDFINALBOARD("FinalBoard_Bodowin.tga", 93930);
        } else if ((FINALBOARDS_BODOWINSTATUS) == (2)) {
            ADDFINALBOARD("FinalBoard_Bodowin.tga", 93931);
        } else if ((FINALBOARDS_BODOWINSTATUS) == (3)) {
            ADDFINALBOARD("FinalBoard_Bodowin.tga", 93932);
        };
        if ((SQ411_MARVINGOTKEYS) == (TRUE)) {
            ADDFINALBOARD("FinalBoard_HeroHouse_Repair.tga", 93933);
        };
        if ((NPC_HASITEMS(HERO, 34203)) >= (10000)) {
            ADDFINALBOARD("FinalBoard_Marvin_Fortune.tga", 93934);
        };
        if ((TAKEDOGGO) == (TRUE)) {
            if (NPC_KNOWSINFO(HERO, 68169)) {
                ADDFINALBOARD("FinalBoard_Dog_Alive.tga", 93935);
            } else {
                ADDFINALBOARD("FinalBoard_Dog_Dead.tga", 93936);
            };
        };
        ADDFINALBOARD("FinalBoard_Varhdal_Prisoner.tga", 93937);
        if (((FINALBOARDS_PALADINSTATUS) == (0)) || ((FINALBOARDS_PALADINSTATUS) == (1))) {
            ADDFINALBOARD("FinalBoard_WolfsDen_Paladin.tga", 93889);
        } else {
            ADDFINALBOARD("FinalBoard_WolfsDen_Refugee.tga", 93890);
        };
        ADDFINALBOARD("FinalBoard_Varhdal_Stone.tga", 93938);
        ADDFINALBOARD("FinalBoard_Varhdal_GraveForDead.tga", 93939);
        ADDFINALBOARD("FinalBoard_Varhdal_Gold.tga", 93940);
        if ((FINALBOARDS_HAVARDINSIDE) == (TRUE)) {
            ADDFINALBOARD("FinalBoard_Varhdal_Havard.tga", 93941);
        };
        ADDFINALBOARD("FinalBoard_Kessel_Lost.tga", 93942);
        if ((SQ504_JOINEDWATERCIRCLE) == (TRUE)) {
            ADDFINALBOARD("FinalBoard_WaterCircle_Gone.tga", 93943);
        };
        ADDFINALBOARD("FinalBoard_Grayson_Leave.tga", 93944);
        if ((LOG_GETSTATUS(MIS_KQ401)) == (LOG_SUCCESS)) {
            ADDFINALBOARD("FinalBoard_Grayson_Search.tga", 93945);
        };
        if (((Q601_HIDEENDING) == (TRUE)) || ((((Q601_HIDEENDING) == (FALSE)) && ((Q601_FLEEHAVENENDING) == (FALSE))) && ((Q405_INTERESTINGEVENT) == (0)))) {
            ADDFINALBOARD("FinalBoard_Marvin_Final01.tga", 93946);
            ADDFINALBOARD("FinalBoard_Marvin_Final02.tga", 93947);
            ADDFINALBOARD("FinalBoard_Marvin_Final03.tga", 93948);
            ADDFINALBOARD("FinalBoard_Marvin_Final04.tga", 93949);
            ADDFINALBOARD("FinalBoard_Marvin_Final05.tga", 93950);
            ADDFINALBOARD("FinalBoard_Marvin_Final06.tga", 93951);
            ADDFINALBOARD("FinalBoard_Marvin_Final07.tga", 93952);
        };
    };
}

func void FINALBOARDS() {
    PRINT_GETSCREENSIZE();
    FINALBOARDSLIST = LIST_CREATE(0);
    REGISTERFINALBOARDS();
    MUSIC_OVERRIDETRACK(21951);
    FADESCREENTOBLACKF(3, 93960, 2000);
}

var int CURRENTFINALBOARDINDEX;
const int FINALBOARDTEXTUREPTR = 0;
func void STARTFINALBOARDS() {
    var FINALBOARDDATA DATA;
    DATA = _^(LIST_GET(FINALBOARDSLIST, CURRENTFINALBOARDINDEX));
    if ((FINALBOARDTEXTUREPTR) == (0)) {
        FINALBOARDTEXTUREPTR = VIEW_CREATE(0, 0, 8192, 8192);
    };
    VIEW_SETTEXTURE(FINALBOARDTEXTUREPTR, DATA.TEXTURE);
    VIEW_TOP(FINALBOARDTEXTUREPTR);
    VIEW_OPEN(FINALBOARDTEXTUREPTR);
    MEM_CALLBYID(DATA.FUNCID);
    AI_FUNCTION(HERO, 93961);
}

func void BEGINFINALBOARDS() {
    CURRENTFINALBOARDINDEX = 0;
    ENABLESAVEGAME(FALSE);
    if ((CURRENTLEVEL) == (ARCHOLOS_ZEN)) {
        TELEPORTNPCTOWP(1819, TOT3);
    };
    TELEPORTNPCTOWP(1819, TOT2);
    ISINFINALBOARDS = TRUE;
    STARTFINALBOARDS();
}

func void STARTFINALBOARDS2() {
    if ((CURRENTFINALBOARDINDEX) < (LIST_LENGTH(FINALBOARDSLIST))) {
        CURRENTFINALBOARDINDEX = (CURRENTFINALBOARDINDEX) + (1);
        FF_APPLYONCEEXT(93958, 1500, 1);
    };
    FF_APPLYONCEEXT(93962, 1500, 1);
}

func void STARTFINALBOARDSCREDITS() {
    ISINFINALBOARDS = FALSE;
    if ((Q405_INTERESTINGEVENT) != (1)) {
        PLAYVIDEO("OutroKm.bik");
    };
    PLAYVIDEO("CreditsKm.bik");
    EXITSESSION();
}


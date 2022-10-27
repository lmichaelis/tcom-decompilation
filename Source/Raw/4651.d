class FINALBOARDDATA {
	var string TEXTURE;
	var int FUNCID;
};


instance FINALBOARDDATA@(FINALBOARDDATA)
var int FINALBOARDSLIST = 0;
func void ADDFINALBOARD(var string TEXTURE, var func FNC) {
    PTR = CREATE(0x16eaf);
    DATA = _^(PTR);
    DATA.TEXTURE = TEXTURE;
    DATA.FUNCID = MEM_GETFUNCID(0x16eb3);
    LIST_ADD(FINALBOARDSLIST, PTR);
}

var int ADDFINALBOARD.PTR = 0;
instance ADDFINALBOARD.DATA(FINALBOARDDATA)
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
        ADDFINALBOARD("FinalBoard_Ending_Hide.tga", 0x16ebd);
    };
    if ((Q601_FLEEHAVENENDING) == (TRUE)) {
        ADDFINALBOARD("FinalBoard_Ending_Haven.tga", 0x16ebc);
    };
    if ((Q405_INTERESTINGEVENT) == (1)) {
        ADDFINALBOARD("FinalBoard_MarvinEnding_Black.tga", 0x16eb6);
        ADDFINALBOARD("FinalBoard_Ending_Jorn.tga", 0x16eb7);
        ADDFINALBOARD("FinalBoard_Kazeem_Leave.tga", 0x16eb8);
        ADDFINALBOARD("FinalBoard_MarvinEnding_Black.tga", 0x16eb9);
    };
    ADDFINALBOARD("FinalBoard_Ending_City01.tga", 0x16eba);
    ADDFINALBOARD("FinalBoard_Ending_City02.tga", 0x16ebb);
    if ((Q405_INTERESTINGEVENT) != (1)) {
        ADDFINALBOARD("FinalBoard_Jorn_Grave.tga", 0x16ebe);
        ADDFINALBOARD("FinalBoard_Ulryk_Prison.tga", 0x16ebf);
        ADDFINALBOARD("FinalBoard_Peacekeeper_Monastery.tga", 0x16ec0);
        if ((FINALBOARDS_VOLKERSTATUS) >= (1)) {
            if ((FINALBOARDS_VOLKERSTATUS) == (1)) {
                ADDFINALBOARD("FinalBoard_Volker_Dead.tga", 0x16ec3);
            } else if ((FINALBOARDS_VOLKERSTATUS) == (2)) {
                ADDFINALBOARD("FinalBoard_Volker_Prison.tga", 0x16ec4);
            } else if ((FINALBOARDS_VOLKERSTATUS) == (3)) {
                ADDFINALBOARD("FinalBoard_Volker_Flee.tga", 0x16ec5);
            };
            ADDFINALBOARD("FinalBoard_Volker_Sword.tga", 0x16ec6);
        };
        ADDFINALBOARD("FinalBoard_Roderich_Power.tga", 0x16ec7);
        if ((Q602_LORENZOISDEAD) == (TRUE)) {
            ADDFINALBOARD("FinalBoard_Lorenzo_Gone.tga", 0x16ec8);
        } else {
            ADDFINALBOARD("FinalBoard_Lorenzo_Unite.tga", 0x16ec9);
        } else if (((MARVIN_LOSTGUILDMILITA) == (TRUE)) || ((HERO.GUILD) == (GIL_MIL))) {
            if ((FINALBOARDS_ARWIDISDEAD) == (FALSE)) {
                if ((Q509_ARWIDVOLFZACKE) == (FALSE)) {
                    ADDFINALBOARD("FinalBoard_Arwid_Success.tga", 0x16eca);
                } else {
                    ADDFINALBOARD("FinalBoard_Arwid_GiveUp.tga", 0x16ecb);
                } else if ((LOG_GETSTATUS(MIS_QM401)) != (LOG_SUCCESS)) {
                    ADDFINALBOARD("FinalBoard_Arwid_RenegadesAlive.tga", 0x16ece);
                };
            };
        } else if (((MARVIN_LOSTGUILDARAXOS) == (TRUE)) || ((HERO.GUILD) == (GIL_SLD))) {
            if ((FINALBOARDS_CARAMONISDEAD) == (TRUE)) {
                ADDFINALBOARD("FinalBoard_Caramon_Dead.tga", 0x16ecc);
            } else {
                ADDFINALBOARD("FinalBoard_Caramon_Leave.tga", 0x16ecd);
            } else if ((LOG_GETSTATUS(MIS_QA401)) != (LOG_SUCCESS)) {
                ADDFINALBOARD("FinalBoard_Smugglers_Alive.tga", 0x16ecf);
            };
        };
        if ((FINALBOARDS_RAMSEYISDEAD) == (FALSE)) {
            ADDFINALBOARD("FinalBoard_Ramsey_Alive.tga", 0x16ed0);
        };
        ADDFINALBOARD("FinalBoard_Albyn_Power.tga", 0x16ed1);
        if ((FINALBOARDS_DETLOWISDEAD) == (TRUE)) {
            ADDFINALBOARD("FinalBoard_Beast_Dead.tga", 0x16ed4);
        } else if ((FINALBOARDS_RAZORISDEAD) == (FALSE)) {
            ADDFINALBOARD("FinalBoard_Beast_Alive.tga", 0x16ed2);
        } else if ((FINALBOARDS_RAZORISDEAD) == (TRUE)) {
            ADDFINALBOARD("FinalBoard_Beast_Alive.tga", 0x16ed3);
        };
        if ((SQ225_FINISHWAY) == (3)) {
            ADDFINALBOARD("FinalBoard_Valerio_Good.tga", 0x16ed5);
        } else {
            ADDFINALBOARD("FinalBoard_Valerio_Bad.tga", 0x16ed6);
        } else if ((LOG_GETSTATUS(MIS_SQ503)) == (LOG_SUCCESS)) {
            if ((SQ503_HAVENDECISION) == (1)) {
                ADDFINALBOARD("FinalBoard_Haven_Colony.tga", 0x16ed7);
            } else if ((SQ503_HAVENDECISION) == (2)) {
                ADDFINALBOARD("FinalBoard_Haven_Forgotten.tga", 0x16ed8);
            };
        } else {
            ADDFINALBOARD("FinalBoard_Haven_Forgotten.tga", 0x16ed9);
        } else {
            ADDFINALBOARD("FinalBoard_Monastery_RegenDead.tga", 0x16eda);
        } else {
            ADDFINALBOARD("FinalBoard_Monastery_Riordian.tga", 0x16edb);
        } else if ((LOG_GETSTATUS(MIS_KQ407)) == (LOG_SUCCESS)) {
            ADDFINALBOARD("FinalBoard_Orc_Won.tga", 0x16edc);
        } else {
            ADDFINALBOARD("FinalBoard_Orc_Lost.tga", 0x16edd);
        } else {
            ADDFINALBOARD("FinalBoard_Ana_Healer.tga", 0x16ede);
        } else if ((FINALBOARDS_FABIOISDEAD) == (TRUE)) {
            if ((FINALBOARDS_FABIOISDEAD_HOW) == (1)) {
                ADDFINALBOARD("FinalBoard_Fabio_City.tga", 0x16edf);
            } else if ((FINALBOARDS_FABIOISDEAD_HOW) == (2)) {
                ADDFINALBOARD("FinalBoard_Fabio_Wolfsden.tga", 0x16edf);
            } else if ((FINALBOARDS_FABIOISDEAD_HOW) == (3)) {
                ADDFINALBOARD("FinalBoard_Fabio_Swamp.tga", 0x16edf);
            };
        };
        if ((LOG_GETSTATUS(MIS_SQ227)) == (LOG_SUCCESS)) {
            ADDFINALBOARD("FinalBoard_Ezekiel_Trader.tga", 0x16ee0);
        };
        if ((SQ411_MARVINGOTKEYS) == (TRUE)) {
            ADDFINALBOARD("FinalBoard_Kazeem_Leave.tga", 0x16ee1);
        };
        if (NPC_KNOWSINFO(HERO, 0x16501)) {
            ADDFINALBOARD("FinalBoard_Rupert_City.tga", 0x16ee2);
        };
        if (NPC_KNOWSINFO(HERO, 0x164c1)) {
            ADDFINALBOARD("FinalBoard_Timo_Thief.tga", 0x16ee3);
        };
        ADDFINALBOARD("FinalBoard_Refugee_Others.tga", 0x16ee4);
        if ((FINALBOARDS_KURTISDEAD) == (TRUE)) {
            ADDFINALBOARD("FinalBoard_Kurt_FoundDead.tga", 0x16ee5);
        } else {
            ADDFINALBOARD("FinalBoard_Kurt_NoFound.tga", 0x16ee6);
        } else if ((FINALBOARDS_IVYSTATUS) == (1)) {
            ADDFINALBOARD("FinalBoard_Ivy_Help.tga", 0x16ee7);
        } else if ((FINALBOARDS_IVYSTATUS) == (2)) {
            ADDFINALBOARD("FinalBoard_Ivy_Hide.tga", 0x16ee8);
        } else if ((FINALBOARDS_IVYSTATUS) == (3)) {
            ADDFINALBOARD("FinalBoard_Ivy_Dead.tga", 0x16ee9);
        };
        if ((FINALBOARDS_BODOWINSTATUS) == (1)) {
            ADDFINALBOARD("FinalBoard_Bodowin.tga", 0x16eea);
        } else if ((FINALBOARDS_BODOWINSTATUS) == (2)) {
            ADDFINALBOARD("FinalBoard_Bodowin.tga", 0x16eeb);
        } else if ((FINALBOARDS_BODOWINSTATUS) == (3)) {
            ADDFINALBOARD("FinalBoard_Bodowin.tga", 0x16eec);
        };
        if ((SQ411_MARVINGOTKEYS) == (TRUE)) {
            ADDFINALBOARD("FinalBoard_HeroHouse_Repair.tga", 0x16eed);
        };
        if ((NPC_HASITEMS(HERO, 0x859b)) >= (0x2710)) {
            ADDFINALBOARD("FinalBoard_Marvin_Fortune.tga", 0x16eee);
        };
        if ((TAKEDOGGO) == (TRUE)) {
            if (NPC_KNOWSINFO(HERO, 0x10a49)) {
                ADDFINALBOARD("FinalBoard_Dog_Alive.tga", 0x16eef);
            } else {
                ADDFINALBOARD("FinalBoard_Dog_Dead.tga", 0x16ef0);
            };
        };
        ADDFINALBOARD("FinalBoard_Varhdal_Prisoner.tga", 0x16ef1);
        if (((FINALBOARDS_PALADINSTATUS) == (0)) || ((FINALBOARDS_PALADINSTATUS) == (1))) {
            ADDFINALBOARD("FinalBoard_WolfsDen_Paladin.tga", 0x16ec1);
        } else {
            ADDFINALBOARD("FinalBoard_WolfsDen_Refugee.tga", 0x16ec2);
        } else {
            ADDFINALBOARD("FinalBoard_Varhdal_Stone.tga", 0x16ef2);
        } else {
            ADDFINALBOARD("FinalBoard_Varhdal_GraveForDead.tga", 0x16ef3);
        } else {
            ADDFINALBOARD("FinalBoard_Varhdal_Gold.tga", 0x16ef4);
        } else if ((FINALBOARDS_HAVARDINSIDE) == (TRUE)) {
            ADDFINALBOARD("FinalBoard_Varhdal_Havard.tga", 0x16ef5);
        };
        ADDFINALBOARD("FinalBoard_Kessel_Lost.tga", 0x16ef6);
        if ((SQ504_JOINEDWATERCIRCLE) == (TRUE)) {
            ADDFINALBOARD("FinalBoard_WaterCircle_Gone.tga", 0x16ef7);
        };
        ADDFINALBOARD("FinalBoard_Grayson_Leave.tga", 0x16ef8);
        if ((LOG_GETSTATUS(MIS_KQ401)) == (LOG_SUCCESS)) {
            ADDFINALBOARD("FinalBoard_Grayson_Search.tga", 0x16ef9);
        };
        if (((Q601_HIDEENDING) == (TRUE)) || ((((Q601_HIDEENDING) == (FALSE)) && ((Q601_FLEEHAVENENDING) == (FALSE))) && ((Q405_INTERESTINGEVENT) == (0)))) {
            ADDFINALBOARD("FinalBoard_Marvin_Final01.tga", 0x16efa);
            ADDFINALBOARD("FinalBoard_Marvin_Final02.tga", 0x16efb);
            ADDFINALBOARD("FinalBoard_Marvin_Final03.tga", 0x16efc);
            ADDFINALBOARD("FinalBoard_Marvin_Final04.tga", 0x16efd);
            ADDFINALBOARD("FinalBoard_Marvin_Final05.tga", 0x16efe);
            ADDFINALBOARD("FinalBoard_Marvin_Final06.tga", 0x16eff);
            ADDFINALBOARD("FinalBoard_Marvin_Final07.tga", 0x16f00);
        };
    };
}

func void FINALBOARDS() {
    PRINT_GETSCREENSIZE();
    FINALBOARDSLIST = LIST_CREATE(0);
    REGISTERFINALBOARDS();
    MUSIC_OVERRIDETRACK(0x55bf);
    FADESCREENTOBLACKF(3, 0x16f08, 0x7d0);
}

var int CURRENTFINALBOARDINDEX = 0;
const int FINALBOARDTEXTUREPTR = 0;
func void STARTFINALBOARDS() {
    DATA = _^(LIST_GET(FINALBOARDSLIST, CURRENTFINALBOARDINDEX));
    if ((FINALBOARDTEXTUREPTR) == (0)) {
        FINALBOARDTEXTUREPTR = VIEW_CREATE(0, 0, 0x2000, 0x2000);
    };
    VIEW_SETTEXTURE(FINALBOARDTEXTUREPTR, DATA.TEXTURE);
    VIEW_TOP(FINALBOARDTEXTUREPTR);
    VIEW_OPEN(FINALBOARDTEXTUREPTR);
    MEM_CALLBYID(DATA.FUNCID);
    AI_FUNCTION(HERO, 0x16f09);
}

instance STARTFINALBOARDS.DATA(FINALBOARDDATA)
func void BEGINFINALBOARDS() {
    CURRENTFINALBOARDINDEX = 0;
    ENABLESAVEGAME(FALSE);
    if ((CURRENTLEVEL) == (ARCHOLOS_ZEN)) {
        TELEPORTNPCTOWP(0x71b, TOT3);
    };
    TELEPORTNPCTOWP(0x71b, TOT2);
    ISINFINALBOARDS = TRUE;
    STARTFINALBOARDS();
}

func void STARTFINALBOARDS2() {
    if ((CURRENTFINALBOARDINDEX) < (LIST_LENGTH(FINALBOARDSLIST))) {
        CURRENTFINALBOARDINDEX = (CURRENTFINALBOARDINDEX) + (1);
        FF_APPLYONCEEXT(0x16f06, 0x5dc, 1);
    };
    FF_APPLYONCEEXT(0x16f0a, 0x5dc, 1);
}

func void STARTFINALBOARDSCREDITS() {
    ISINFINALBOARDS = FALSE;
    if ((Q405_INTERESTINGEVENT) != (1)) {
        PLAYVIDEO("OutroKm.bik");
    };
    PLAYVIDEO("CreditsKm.bik");
    EXITSESSION();
}


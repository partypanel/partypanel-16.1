data <- read.csv("survey_321858_R_data_file.csv", quote = "'\"", na.strings=c("", "\"\""), stringsAsFactors=FALSE)


# LimeSurvey Field type: F
data[, 1] <- as.numeric(data[, 1])
attributes(data)$variable.labels[1] <- "id"
names(data)[1] <- "id"
# LimeSurvey Field type: DATETIME23.2
data[, 2] <- as.character(data[, 2])
attributes(data)$variable.labels[2] <- "submitdate"
names(data)[2] <- "submitdate"
# LimeSurvey Field type: F
data[, 3] <- as.numeric(data[, 3])
attributes(data)$variable.labels[3] <- "lastpage"
names(data)[3] <- "lastpage"
# LimeSurvey Field type: A
data[, 4] <- as.character(data[, 4])
attributes(data)$variable.labels[4] <- "startlanguage"
names(data)[4] <- "startlanguage"
# LimeSurvey Field type: DATETIME23.2
data[, 5] <- as.character(data[, 5])
attributes(data)$variable.labels[5] <- "startdate"
names(data)[5] <- "startdate"
# LimeSurvey Field type: DATETIME23.2
data[, 6] <- as.character(data[, 6])
attributes(data)$variable.labels[6] <- "datestamp"
names(data)[6] <- "datestamp"
# LimeSurvey Field type: A
data[, 7] <- as.character(data[, 7])
attributes(data)$variable.labels[7] <- "refurl"
names(data)[7] <- "refurl"
# LimeSurvey Field type: F
data[, 8] <- as.numeric(data[, 8])
attributes(data)$variable.labels[8] <- "[Zet hier een vinkje als je meer informatie wilt lezen] 	Het doel van Party Panel is om samen met jou de voorlichting over gezond en leuk uitgaan te verbeteren. Deze tweede ronde gaat over de EHBO in het uitgaansleven. We zijn benieuwd wat jij daarvan denkt. Je hoeft niet zelf een keer bij de EHBO te zijn geweest om mee te doen.	De vragenlijst is acht pagina\'s. Je bent ongeveer 20 minuten bezig met invullen.	Laat na het invullen je emailadres achter als je na afloop de resultaten wilt ontvangen. Je emailadres wordt niet gekoppeld aan je antwoorden.	Wil je later verder gaan, klik dan op \'Later verdergaan\' (rechtsonder)."
data[, 8] <- factor(data[, 8], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[8] <- "moreInfo_1"
# LimeSurvey Field type: A
data[, 9] <- as.character(data[, 9])
attributes(data)$variable.labels[9] <- "Extra uitleg over de vragenlijstDeelname is vrijwillig. Je kunt op elk moment stoppen met invullen. Deze vragenlijst is volledig anoniem. Het is onmogelijk om je antwoorden aan jou te linken (klik hier voor meer informatie).	De vragenlijst start met algemene vragen over uitgaan. Dan volgen twee pagina\'s met vragen over de EHBO in het uitgaansleven bezoeken met een vriend(in), dan twee pagina\'s met vragen over zelf de EHBO bezoeken, en tot slot stellen we nog een aantal algemene vragen."
names(data)[9] <- "intro"
# LimeSurvey Field type: A
data[, 10] <- as.character(data[, 10])
attributes(data)$variable.labels[10] <- "Voordat je kunt starten willen we je vragen akkoord te gaan met de zogenaamde \'informed consent\'. Dit is nodig voor wetenschappelijk onderzoek. Het is namelijk belangrijk dat jij:			de gelegenheid hebt gehad om de achtergrond-informatie te lezen (die staat op http://partypanel.nl/?info);			de gelegenheid hebt gehad om vragen te stellen (dat kan via http://partypanel.nl/?contact);			de gelegenheid hebt gehad om over je deelname na te denken (neem de tijd);			en begrijpt dat je op elk moment met het onderzoek kunt stoppen.	Hieronder kun je dit bevestigen, en dan kun je starten met de vragenlijst.	Heel erg bedankt alvast voor het meedoen, en veel plezier met het invullen van de vragenlijst!"
data[, 10] <- factor(data[, 10], levels=c("yes","no"),labels=c("Ja, ik ga akkoord met deelname!", "Nee, ik wil toch niet meedoen."))
names(data)[10] <- "informedConsent"
# LimeSurvey Field type: A
data[, 11] <- as.character(data[, 11])
attributes(data)$variable.labels[11] <- "{rand(1,4)}"
names(data)[11] <- "randomNumber1"
# LimeSurvey Field type: A
data[, 12] <- as.character(data[, 12])
attributes(data)$variable.labels[12] <- "{rand(1,4)}"
names(data)[12] <- "randomNumber2"
# LimeSurvey Field type: A
data[, 13] <- as.character(data[, 13])
attributes(data)$variable.labels[13] <- "Does the participant use a mobile device?"
names(data)[13] <- "mobile"
# LimeSurvey Field type: A
data[, 14] <- as.character(data[, 14])
attributes(data)$variable.labels[14] <- "Which userAgent does the participant\'s client report?"
names(data)[14] <- "userAgent"
# LimeSurvey Field type: A
data[, 15] <- as.character(data[, 15])
attributes(data)$variable.labels[15] <- "Waarom doe je liever niet mee?"
names(data)[15] <- "noConsentReason"
# LimeSurvey Field type: A
data[, 16] <- as.character(data[, 16])
attributes(data)$variable.labels[16] <- "[Een feestje bij mensen thuis] [keer ...] 	Kun je aangeven hoe vaak je het afgelopen half jaar (de afgelopen 6 maanden) naar elk van deze gelegenheden bent geweest?"
names(data)[16] <- "goingOutFreqNr_houseparty_nr"
# LimeSurvey Field type: A
data[, 17] <- as.character(data[, 17])
attributes(data)$variable.labels[17] <- "[Een café, kroeg, of bar] [keer ...] 	Kun je aangeven hoe vaak je het afgelopen half jaar (de afgelopen 6 maanden) naar elk van deze gelegenheden bent geweest?"
names(data)[17] <- "goingOutFreqNr_cafe_nr"
# LimeSurvey Field type: A
data[, 18] <- as.character(data[, 18])
attributes(data)$variable.labels[18] <- "[Een discotheek of club] [keer ...] 	Kun je aangeven hoe vaak je het afgelopen half jaar (de afgelopen 6 maanden) naar elk van deze gelegenheden bent geweest?"
names(data)[18] <- "goingOutFreqNr_disco_nr"
# LimeSurvey Field type: A
data[, 19] <- as.character(data[, 19])
attributes(data)$variable.labels[19] <- "[Een optreden van een band] [keer ...] 	Kun je aangeven hoe vaak je het afgelopen half jaar (de afgelopen 6 maanden) naar elk van deze gelegenheden bent geweest?"
names(data)[19] <- "goingOutFreqNr_band_nr"
# LimeSurvey Field type: A
data[, 20] <- as.character(data[, 20])
attributes(data)$variable.labels[20] <- "[Een kleinschalig binnenfeest of -festival(minder dan 5000 bezoekers)] [keer ...] 	Kun je aangeven hoe vaak je het afgelopen half jaar (de afgelopen 6 maanden) naar elk van deze gelegenheden bent geweest?"
names(data)[20] <- "goingOutFreqNr_smallPartyInside_nr"
# LimeSurvey Field type: A
data[, 21] <- as.character(data[, 21])
attributes(data)$variable.labels[21] <- "[Een groot binnenfeest of -festival(meer dan 5000 bezoekers)] [keer ...] 	Kun je aangeven hoe vaak je het afgelopen half jaar (de afgelopen 6 maanden) naar elk van deze gelegenheden bent geweest?"
names(data)[21] <- "goingOutFreqNr_bigPartyInside_nr"
# LimeSurvey Field type: A
data[, 22] <- as.character(data[, 22])
attributes(data)$variable.labels[22] <- "[Een kleinschalig buitenfeest of -festival(minder dan 5000 bezoekers)] [keer ...] 	Kun je aangeven hoe vaak je het afgelopen half jaar (de afgelopen 6 maanden) naar elk van deze gelegenheden bent geweest?"
names(data)[22] <- "goingOutFreqNr_smallPartyOutside_nr"
# LimeSurvey Field type: A
data[, 23] <- as.character(data[, 23])
attributes(data)$variable.labels[23] <- "[Een groot buitenfeest of -festival(meer dan 5000 bezoekers)] [keer ...] 	Kun je aangeven hoe vaak je het afgelopen half jaar (de afgelopen 6 maanden) naar elk van deze gelegenheden bent geweest?"
names(data)[23] <- "goingOutFreqNr_bigPartyOutside_nr"
# LimeSurvey Field type: F
data[, 24] <- as.numeric(data[, 24])
attributes(data)$variable.labels[24] <- "[Een feestje bij mensen thuis]"
data[, 24] <- factor(data[, 24], levels=c(26,6,1),labels=c("... per week", "... per maand", "... in totaal (per 6 maanden)"))
names(data)[24] <- "goingOutFreqPeriod_houseparty"
# LimeSurvey Field type: F
data[, 25] <- as.numeric(data[, 25])
attributes(data)$variable.labels[25] <- "[Een café, kroeg, of bar]"
data[, 25] <- factor(data[, 25], levels=c(26,6,1),labels=c("... per week", "... per maand", "... in totaal (per 6 maanden)"))
names(data)[25] <- "goingOutFreqPeriod_cafe"
# LimeSurvey Field type: F
data[, 26] <- as.numeric(data[, 26])
attributes(data)$variable.labels[26] <- "[Een discotheek of club]"
data[, 26] <- factor(data[, 26], levels=c(26,6,1),labels=c("... per week", "... per maand", "... in totaal (per 6 maanden)"))
names(data)[26] <- "goingOutFreqPeriod_disco"
# LimeSurvey Field type: F
data[, 27] <- as.numeric(data[, 27])
attributes(data)$variable.labels[27] <- "[Een optreden van een band]"
data[, 27] <- factor(data[, 27], levels=c(26,6,1),labels=c("... per week", "... per maand", "... in totaal (per 6 maanden)"))
names(data)[27] <- "goingOutFreqPeriod_band"
# LimeSurvey Field type: F
data[, 28] <- as.numeric(data[, 28])
attributes(data)$variable.labels[28] <- "[Een kleinschalig binnenfeest of -festival(minder dan 5000 bezoekers)]"
data[, 28] <- factor(data[, 28], levels=c(26,6,1),labels=c("... per week", "... per maand", "... in totaal (per 6 maanden)"))
names(data)[28] <- "goingOutFreqPeriod_smallPartyInside"
# LimeSurvey Field type: F
data[, 29] <- as.numeric(data[, 29])
attributes(data)$variable.labels[29] <- "[Een groot binnenfeest of -festival(meer dan 5000 bezoekers)]"
data[, 29] <- factor(data[, 29], levels=c(26,6,1),labels=c("... per week", "... per maand", "... in totaal (per 6 maanden)"))
names(data)[29] <- "goingOutFreqPeriod_bigPartyInside"
# LimeSurvey Field type: F
data[, 30] <- as.numeric(data[, 30])
attributes(data)$variable.labels[30] <- "[Een kleinschalig buitenfeest of -festival(minder dan 5000 bezoekers)]"
data[, 30] <- factor(data[, 30], levels=c(26,6,1),labels=c("... per week", "... per maand", "... in totaal (per 6 maanden)"))
names(data)[30] <- "goingOutFreqPeriod_smallPartyOutside"
# LimeSurvey Field type: F
data[, 31] <- as.numeric(data[, 31])
attributes(data)$variable.labels[31] <- "[Een groot buitenfeest of -festival(meer dan 5000 bezoekers)]"
data[, 31] <- factor(data[, 31], levels=c(26,6,1),labels=c("... per week", "... per maand", "... in totaal (per 6 maanden)"))
names(data)[31] <- "goingOutFreqPeriod_bigPartyOutside"
# LimeSurvey Field type: A
data[, 32] <- as.character(data[, 32])
attributes(data)$variable.labels[32] <- "[Alcohol] [keer ...] Heb je het afgelopen jaar iets uit dit rijtje gebruikt, en zoja, wat en hoe vaak?"
names(data)[32] <- "substUseFreqNr_alc_nr"
# LimeSurvey Field type: A
data[, 33] <- as.character(data[, 33])
attributes(data)$variable.labels[33] <- "[Tabak (sigaretten, sigaren)] [keer ...] Heb je het afgelopen jaar iets uit dit rijtje gebruikt, en zoja, wat en hoe vaak?"
names(data)[33] <- "substUseFreqNr_tbc_nr"
# LimeSurvey Field type: A
data[, 34] <- as.character(data[, 34])
attributes(data)$variable.labels[34] <- "[Cannabis (wiet, hasj)] [keer ...] Heb je het afgelopen jaar iets uit dit rijtje gebruikt, en zoja, wat en hoe vaak?"
names(data)[34] <- "substUseFreqNr_cnb_nr"
# LimeSurvey Field type: A
data[, 35] <- as.character(data[, 35])
attributes(data)$variable.labels[35] <- "[XTC pillen] [keer ...] Heb je het afgelopen jaar iets uit dit rijtje gebruikt, en zoja, wat en hoe vaak?"
names(data)[35] <- "substUseFreqNr_xtc_nr"
# LimeSurvey Field type: A
data[, 36] <- as.character(data[, 36])
attributes(data)$variable.labels[36] <- "[MDMA poeder] [keer ...] Heb je het afgelopen jaar iets uit dit rijtje gebruikt, en zoja, wat en hoe vaak?"
names(data)[36] <- "substUseFreqNr_mdma_nr"
# LimeSurvey Field type: A
data[, 37] <- as.character(data[, 37])
attributes(data)$variable.labels[37] <- "[4-FA (4FMP)] [keer ...] Heb je het afgelopen jaar iets uit dit rijtje gebruikt, en zoja, wat en hoe vaak?"
names(data)[37] <- "substUseFreqNr_fourfa_nr"
# LimeSurvey Field type: A
data[, 38] <- as.character(data[, 38])
attributes(data)$variable.labels[38] <- "[Cocaine] [keer ...] Heb je het afgelopen jaar iets uit dit rijtje gebruikt, en zoja, wat en hoe vaak?"
names(data)[38] <- "substUseFreqNr_coke_nr"
# LimeSurvey Field type: A
data[, 39] <- as.character(data[, 39])
attributes(data)$variable.labels[39] <- "[Speed] [keer ...] Heb je het afgelopen jaar iets uit dit rijtje gebruikt, en zoja, wat en hoe vaak?"
names(data)[39] <- "substUseFreqNr_spd_nr"
# LimeSurvey Field type: A
data[, 40] <- as.character(data[, 40])
attributes(data)$variable.labels[40] <- "[Lachgas] [keer ...] Heb je het afgelopen jaar iets uit dit rijtje gebruikt, en zoja, wat en hoe vaak?"
names(data)[40] <- "substUseFreqNr_gas_nr"
# LimeSurvey Field type: A
data[, 41] <- as.character(data[, 41])
attributes(data)$variable.labels[41] <- "[GHB] [keer ...] Heb je het afgelopen jaar iets uit dit rijtje gebruikt, en zoja, wat en hoe vaak?"
names(data)[41] <- "substUseFreqNr_ghb_nr"
# LimeSurvey Field type: A
data[, 42] <- as.character(data[, 42])
attributes(data)$variable.labels[42] <- "[2CB] [keer ...] Heb je het afgelopen jaar iets uit dit rijtje gebruikt, en zoja, wat en hoe vaak?"
names(data)[42] <- "substUseFreqNr_2cb_nr"
# LimeSurvey Field type: A
data[, 43] <- as.character(data[, 43])
attributes(data)$variable.labels[43] <- "[Ketamine] [keer ...] Heb je het afgelopen jaar iets uit dit rijtje gebruikt, en zoja, wat en hoe vaak?"
names(data)[43] <- "substUseFreqNr_ket_nr"
# LimeSurvey Field type: F
data[, 44] <- as.numeric(data[, 44])
attributes(data)$variable.labels[44] <- "[Alcohol]"
data[, 44] <- factor(data[, 44], levels=c(26,6,1),labels=c("... per week", "... per maand", "... in totaal (per 6 maanden)"))
names(data)[44] <- "substUseFreqPeriod_alc"
# LimeSurvey Field type: F
data[, 45] <- as.numeric(data[, 45])
attributes(data)$variable.labels[45] <- "[Tabak (sigaretten, sigaren)]"
data[, 45] <- factor(data[, 45], levels=c(26,6,1),labels=c("... per week", "... per maand", "... in totaal (per 6 maanden)"))
names(data)[45] <- "substUseFreqPeriod_tbc"
# LimeSurvey Field type: F
data[, 46] <- as.numeric(data[, 46])
attributes(data)$variable.labels[46] <- "[Cannabis (wiet, hasj)]"
data[, 46] <- factor(data[, 46], levels=c(26,6,1),labels=c("... per week", "... per maand", "... in totaal (per 6 maanden)"))
names(data)[46] <- "substUseFreqPeriod_cnb"
# LimeSurvey Field type: F
data[, 47] <- as.numeric(data[, 47])
attributes(data)$variable.labels[47] <- "[XTC pillen]"
data[, 47] <- factor(data[, 47], levels=c(26,6,1),labels=c("... per week", "... per maand", "... in totaal (per 6 maanden)"))
names(data)[47] <- "substUseFreqPeriod_xtc"
# LimeSurvey Field type: F
data[, 48] <- as.numeric(data[, 48])
attributes(data)$variable.labels[48] <- "[MDMA poeder]"
data[, 48] <- factor(data[, 48], levels=c(26,6,1),labels=c("... per week", "... per maand", "... in totaal (per 6 maanden)"))
names(data)[48] <- "substUseFreqPeriod_mdma"
# LimeSurvey Field type: F
data[, 49] <- as.numeric(data[, 49])
attributes(data)$variable.labels[49] <- "[4-FA (4FMP)]"
data[, 49] <- factor(data[, 49], levels=c(26,6,1),labels=c("... per week", "... per maand", "... in totaal (per 6 maanden)"))
names(data)[49] <- "substUseFreqPeriod_fourf"
# LimeSurvey Field type: F
data[, 50] <- as.numeric(data[, 50])
attributes(data)$variable.labels[50] <- "[Cocaine]"
data[, 50] <- factor(data[, 50], levels=c(26,6,1),labels=c("... per week", "... per maand", "... in totaal (per 6 maanden)"))
names(data)[50] <- "substUseFreqPeriod_coke"
# LimeSurvey Field type: F
data[, 51] <- as.numeric(data[, 51])
attributes(data)$variable.labels[51] <- "[Speed]"
data[, 51] <- factor(data[, 51], levels=c(26,6,1),labels=c("... per week", "... per maand", "... in totaal (per 6 maanden)"))
names(data)[51] <- "substUseFreqPeriod_spd"
# LimeSurvey Field type: F
data[, 52] <- as.numeric(data[, 52])
attributes(data)$variable.labels[52] <- "[Lachgas]"
data[, 52] <- factor(data[, 52], levels=c(26,6,1),labels=c("... per week", "... per maand", "... in totaal (per 6 maanden)"))
names(data)[52] <- "substUseFreqPeriod_gas"
# LimeSurvey Field type: F
data[, 53] <- as.numeric(data[, 53])
attributes(data)$variable.labels[53] <- "[GHB]"
data[, 53] <- factor(data[, 53], levels=c(26,6,1),labels=c("... per week", "... per maand", "... in totaal (per 6 maanden)"))
names(data)[53] <- "substUseFreqPeriod_ghb"
# LimeSurvey Field type: F
data[, 54] <- as.numeric(data[, 54])
attributes(data)$variable.labels[54] <- "[2CB]"
data[, 54] <- factor(data[, 54], levels=c(26,6,1),labels=c("... per week", "... per maand", "... in totaal (per 6 maanden)"))
names(data)[54] <- "substUseFreqPeriod_2cb"
# LimeSurvey Field type: F
data[, 55] <- as.numeric(data[, 55])
attributes(data)$variable.labels[55] <- "[Ketamine]"
data[, 55] <- factor(data[, 55], levels=c(26,6,1),labels=c("... per week", "... per maand", "... in totaal (per 6 maanden)"))
names(data)[55] <- "substUseFreqPeriod_ket"
# LimeSurvey Field type: A
data[, 56] <- as.character(data[, 56])
attributes(data)$variable.labels[56] <- "[Eerste andere middel] Heb je nog iets anders gebruikt dat niet in dit lijstje stond? Dan kun je dat hier aangeven. Anders kun je dit gewoon leeg laten."
names(data)[56] <- "otherSubstances_otherSubstance1"
# LimeSurvey Field type: A
data[, 57] <- as.character(data[, 57])
attributes(data)$variable.labels[57] <- "[Tweede andere middel] Heb je nog iets anders gebruikt dat niet in dit lijstje stond? Dan kun je dat hier aangeven. Anders kun je dit gewoon leeg laten."
names(data)[57] <- "otherSubstances_otherSubstance2"
# LimeSurvey Field type: A
data[, 58] <- as.character(data[, 58])
attributes(data)$variable.labels[58] <- "[Derde andere middel] Heb je nog iets anders gebruikt dat niet in dit lijstje stond? Dan kun je dat hier aangeven. Anders kun je dit gewoon leeg laten."
names(data)[58] <- "otherSubstances_otherSubstance3"
# LimeSurvey Field type: A
data[, 59] <- as.character(data[, 59])
attributes(data)$variable.labels[59] <- "[Vierde andere middel] Heb je nog iets anders gebruikt dat niet in dit lijstje stond? Dan kun je dat hier aangeven. Anders kun je dit gewoon leeg laten."
names(data)[59] <- "otherSubstances_otherSubstance4"
# LimeSurvey Field type: F
data[, 60] <- as.numeric(data[, 60])
attributes(data)$variable.labels[60] <- "[Vijfde andere middel] Heb je nog iets anders gebruikt dat niet in dit lijstje stond? Dan kun je dat hier aangeven. Anders kun je dit gewoon leeg laten."
names(data)[60] <- "otherSubstances_otherSubstance5"
# LimeSurvey Field type: A
data[, 61] <- as.character(data[, 61])
attributes(data)$variable.labels[61] <- "[{otherSubstances_otherSubstance1.NAOK}] [keer ...] Kun je ook aangeven hoe vaak?"
names(data)[61] <- "otherSubstFreqNr_otherSubstance1_nr"
# LimeSurvey Field type: A
data[, 62] <- as.character(data[, 62])
attributes(data)$variable.labels[62] <- "[{otherSubstances_otherSubstance2.NAOK}] [keer ...] Kun je ook aangeven hoe vaak?"
names(data)[62] <- "otherSubstFreqNr_otherSubstance2_nr"
# LimeSurvey Field type: A
data[, 63] <- as.character(data[, 63])
attributes(data)$variable.labels[63] <- "[{otherSubstances_otherSubstance3.NAOK}] [keer ...] Kun je ook aangeven hoe vaak?"
names(data)[63] <- "otherSubstFreqNr_otherSubstance3_nr"
# LimeSurvey Field type: A
data[, 64] <- as.character(data[, 64])
attributes(data)$variable.labels[64] <- "[{otherSubstances_otherSubstance4.NAOK}] [keer ...] Kun je ook aangeven hoe vaak?"
names(data)[64] <- "otherSubstFreqNr_otherSubstance4_nr"
# LimeSurvey Field type: A
data[, 65] <- as.character(data[, 65])
attributes(data)$variable.labels[65] <- "[{otherSubstances_otherSubstance5.NAOK}] [keer ...] Kun je ook aangeven hoe vaak?"
names(data)[65] <- "otherSubstFreqNr_otherSubstance5_nr"
# LimeSurvey Field type: F
data[, 66] <- as.numeric(data[, 66])
attributes(data)$variable.labels[66] <- "[{otherSubstances_otherSubstance1.NAOK}]"
data[, 66] <- factor(data[, 66], levels=c(26,6,1),labels=c("... per week", "... per maand", "... in totaal (per 6 maanden)"))
names(data)[66] <- "otherSubstFreqPeriod_otherSubstance1"
# LimeSurvey Field type: F
data[, 67] <- as.numeric(data[, 67])
attributes(data)$variable.labels[67] <- "[{otherSubstances_otherSubstance2.NAOK}]"
data[, 67] <- factor(data[, 67], levels=c(26,6,1),labels=c("... per week", "... per maand", "... in totaal (per 6 maanden)"))
names(data)[67] <- "otherSubstFreqPeriod_otherSubstance2"
# LimeSurvey Field type: F
data[, 68] <- as.numeric(data[, 68])
attributes(data)$variable.labels[68] <- "[{otherSubstances_otherSubstance3.NAOK}]"
data[, 68] <- factor(data[, 68], levels=c(26,6,1),labels=c("... per week", "... per maand", "... in totaal (per 6 maanden)"))
names(data)[68] <- "otherSubstFreqPeriod_otherSubstance3"
# LimeSurvey Field type: F
data[, 69] <- as.numeric(data[, 69])
attributes(data)$variable.labels[69] <- "[{otherSubstances_otherSubstance4.NAOK}]"
data[, 69] <- factor(data[, 69], levels=c(26,6,1),labels=c("... per week", "... per maand", "... in totaal (per 6 maanden)"))
names(data)[69] <- "otherSubstFreqPeriod_otherSubstance4"
# LimeSurvey Field type: F
data[, 70] <- as.numeric(data[, 70])
attributes(data)$variable.labels[70] <- "[{otherSubstances_otherSubstance5.NAOK}]"
data[, 70] <- factor(data[, 70], levels=c(26,6,1),labels=c("... per week", "... per maand", "... in totaal (per 6 maanden)"))
names(data)[70] <- "otherSubstFreqPeriod_otherSubstance5"
# LimeSurvey Field type: F
data[, 71] <- as.numeric(data[, 71])
attributes(data)$variable.labels[71] <- "[AlcoholZeker niet|Zeker wel] Ben je van plan om het komende halfjaar een (of meer) van deze middelen te gebruiken?"
data[, 71] <- factor(data[, 71], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[71] <- "substUseIntention_alc"
# LimeSurvey Field type: F
data[, 72] <- as.numeric(data[, 72])
attributes(data)$variable.labels[72] <- "[Tabak (sigaretten, sigaren)Zeker niet|Zeker wel] Ben je van plan om het komende halfjaar een (of meer) van deze middelen te gebruiken?"
data[, 72] <- factor(data[, 72], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[72] <- "substUseIntention_tbc"
# LimeSurvey Field type: F
data[, 73] <- as.numeric(data[, 73])
attributes(data)$variable.labels[73] <- "[Cannabis (wiet, hasj)Zeker niet|Zeker wel] Ben je van plan om het komende halfjaar een (of meer) van deze middelen te gebruiken?"
data[, 73] <- factor(data[, 73], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[73] <- "substUseIntention_cnb"
# LimeSurvey Field type: F
data[, 74] <- as.numeric(data[, 74])
attributes(data)$variable.labels[74] <- "[XTC pillenZeker niet|Zeker wel] Ben je van plan om het komende halfjaar een (of meer) van deze middelen te gebruiken?"
data[, 74] <- factor(data[, 74], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[74] <- "substUseIntention_xtc"
# LimeSurvey Field type: F
data[, 75] <- as.numeric(data[, 75])
attributes(data)$variable.labels[75] <- "[MDMA poederZeker niet|Zeker wel] Ben je van plan om het komende halfjaar een (of meer) van deze middelen te gebruiken?"
data[, 75] <- factor(data[, 75], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[75] <- "substUseIntention_mdma"
# LimeSurvey Field type: F
data[, 76] <- as.numeric(data[, 76])
attributes(data)$variable.labels[76] <- "[4-FA (4FMP)Zeker niet|Zeker wel] Ben je van plan om het komende halfjaar een (of meer) van deze middelen te gebruiken?"
data[, 76] <- factor(data[, 76], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[76] <- "substUseIntention_fourf"
# LimeSurvey Field type: F
data[, 77] <- as.numeric(data[, 77])
attributes(data)$variable.labels[77] <- "[CocaineZeker niet|Zeker wel] Ben je van plan om het komende halfjaar een (of meer) van deze middelen te gebruiken?"
data[, 77] <- factor(data[, 77], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[77] <- "substUseIntention_coke"
# LimeSurvey Field type: F
data[, 78] <- as.numeric(data[, 78])
attributes(data)$variable.labels[78] <- "[SpeedZeker niet|Zeker wel] Ben je van plan om het komende halfjaar een (of meer) van deze middelen te gebruiken?"
data[, 78] <- factor(data[, 78], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[78] <- "substUseIntention_spd"
# LimeSurvey Field type: F
data[, 79] <- as.numeric(data[, 79])
attributes(data)$variable.labels[79] <- "[LachgasZeker niet|Zeker wel] Ben je van plan om het komende halfjaar een (of meer) van deze middelen te gebruiken?"
data[, 79] <- factor(data[, 79], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[79] <- "substUseIntention_gas"
# LimeSurvey Field type: F
data[, 80] <- as.numeric(data[, 80])
attributes(data)$variable.labels[80] <- "[GHBZeker niet|Zeker wel] Ben je van plan om het komende halfjaar een (of meer) van deze middelen te gebruiken?"
data[, 80] <- factor(data[, 80], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[80] <- "substUseIntention_ghb"
# LimeSurvey Field type: F
data[, 81] <- as.numeric(data[, 81])
attributes(data)$variable.labels[81] <- "[2CBZeker niet|Zeker wel] Ben je van plan om het komende halfjaar een (of meer) van deze middelen te gebruiken?"
data[, 81] <- factor(data[, 81], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[81] <- "substUseIntention_2cb"
# LimeSurvey Field type: F
data[, 82] <- as.numeric(data[, 82])
attributes(data)$variable.labels[82] <- "[KetamineZeker niet|Zeker wel] Ben je van plan om het komende halfjaar een (of meer) van deze middelen te gebruiken?"
data[, 82] <- factor(data[, 82], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[82] <- "substUseIntention_ket"
# LimeSurvey Field type: A
data[, 83] <- as.character(data[, 83])
attributes(data)$variable.labels[83] <- "[Eerste andere middel:] Ben je van plan om nog iets anders te gaan gebruiken dat niet in dit lijstje stond? Dan kun je dat hier aangeven. Anders kun je dit gewoon leeg laten."
names(data)[83] <- "substUseIntOther_1"
# LimeSurvey Field type: A
data[, 84] <- as.character(data[, 84])
attributes(data)$variable.labels[84] <- "[Tweede andere middel:] Ben je van plan om nog iets anders te gaan gebruiken dat niet in dit lijstje stond? Dan kun je dat hier aangeven. Anders kun je dit gewoon leeg laten."
names(data)[84] <- "substUseIntOther_2"
# LimeSurvey Field type: A
data[, 85] <- as.character(data[, 85])
attributes(data)$variable.labels[85] <- "[Derde andere middel:] Ben je van plan om nog iets anders te gaan gebruiken dat niet in dit lijstje stond? Dan kun je dat hier aangeven. Anders kun je dit gewoon leeg laten."
names(data)[85] <- "substUseIntOther_3"
# LimeSurvey Field type: A
data[, 86] <- as.character(data[, 86])
attributes(data)$variable.labels[86] <- "[Vierde andere middel:] Ben je van plan om nog iets anders te gaan gebruiken dat niet in dit lijstje stond? Dan kun je dat hier aangeven. Anders kun je dit gewoon leeg laten."
names(data)[86] <- "substUseIntOther_4"
# LimeSurvey Field type: A
data[, 87] <- as.character(data[, 87])
attributes(data)$variable.labels[87] <- "[Vijfde andere middel:] Ben je van plan om nog iets anders te gaan gebruiken dat niet in dit lijstje stond? Dan kun je dat hier aangeven. Anders kun je dit gewoon leeg laten."
names(data)[87] <- "substUseIntOther_5"
# LimeSurvey Field type: A
data[, 88] <- as.character(data[, 88])
attributes(data)$variable.labels[88] <- "[(vul 0 in als je je XTC niet hebt laten testen)] [keer ...] 	Heb je je XTC pillen laten testen, en zoja, hoe vaak?"
names(data)[88] <- "testingBehFreqNr_freq_nr"
# LimeSurvey Field type: F
data[, 89] <- as.numeric(data[, 89])
attributes(data)$variable.labels[89] <- "[(vul 0 in als je je XTC niet hebt laten testen)]"
data[, 89] <- factor(data[, 89], levels=c(26,6,1),labels=c("... per week", "... per maand", "... in totaal (per 6 maanden)"))
names(data)[89] <- "testingBehFreqPeriod_freq"
# LimeSurvey Field type: F
data[, 90] <- as.numeric(data[, 90])
attributes(data)$variable.labels[90] <- "Hoe sterk zijn de XTC pillen die jij het afgelopen half jaar gebruikte ongeveer?"
names(data)[90] <- "myPillDose"
# LimeSurvey Field type: F
data[, 91] <- as.numeric(data[, 91])
attributes(data)$variable.labels[91] <- "En hoeveel milligram MDMA schat je dat je het afgelopen halfjaar per keer gebruikte?"
names(data)[91] <- "xtcUsedDose"
# LimeSurvey Field type: A
data[, 92] <- as.character(data[, 92])
attributes(data)$variable.labels[92] <- "Stel, je gaat binnenkort naar een feest waar je echt naar uitgekeken hebt. Het is zo\'n nacht waarvan je weet dat je zin hebt om drugs te gebruiken. Je kunt één drug kiezen om zelf te gebruiken uit dit lijstje. Geen van de drugs is vervuild. Welke neem je het liefste mee, en hoeveel (het is alleen voor jezelf)?"
data[, 92] <- factor(data[, 92], levels=c("x75","x100","x150","x200","fa75","fa100","fa150","fa200","md75","md100","md150","md200","none"),labels=c("Één XTC pil met 75 mg MDMA", "Één XTC pil met 100 mg MDMA", "Één XTC pil met 150 mg MDMA", "Één XTC pil met 200 mg MDMA", "Één 4-FA (4-FMP) pil van 75 mg", "Één 4-FA (4-FMP) pil van 100 mg", "Één 4-FA (4-FMP) pil van 150 mg", "Één 4-FA (4-FMP) pil van 200 mg", "75 mg MDMA poeder", "100 mg MDMA poeder", "150 mg MDMA poeder", "200 mg MDMA poeder", "Dan neem ik liever geen drugs"))
names(data)[92] <- "entactogenPreference"
# LimeSurvey Field type: A
data[, 93] <- as.character(data[, 93])
attributes(data)$variable.labels[93] <- "We zijn benieuwd naar waarom je dat (\"{entactogenPreference.shown}\") kiest. Als je wil mag je dat hier aangeven."
names(data)[93] <- "entactoGenPrefWhy"
# LimeSurvey Field type: A
data[, 94] <- as.character(data[, 94])
attributes(data)$variable.labels[94] <- "{if((substUseIntention_cnb.NAOK > 1) || (substUseIntention_xtc.NAOK > 1) || (substUseIntention_mdma.NAOK > 1) || (substUseIntention_fourf.NAOK > 1) || (substUseIntention_coke.NAOK > 1) || (substUseIntention_spd.NAOK > 1) || (substUseIntention_gas.NAOK > 1) || (substUseIntention_ghb.NAOK > 1) || (substUseIntention_2cb.NAOK > 1) || (substUseIntention_ket.NAOK > 1) || (!is_empty(substUseIntOther_1)) || (!is_empty(substUseIntOther_2)) || (!is_empty(substUseIntOther_3)) || (!is_empty(substUseIntOther_4)) || (!is_empty(substUseIntOther_5)), 1, 0)}"
names(data)[94] <- "intentionToUseSubst"
# LimeSurvey Field type: A
data[, 95] <- as.character(data[, 95])
attributes(data)$variable.labels[95] <- "{if((substUseFreqNr_cnb_nr.NAOK > 0) || (substUseFreqNr_xtc_nr.NAOK > 0) || (substUseFreqNr_mdma_nr.NAOK > 0) || (substUseFreqNr_fourfa_nr.NAOK > 0) || (substUseFreqNr_coke_nr.NAOK > 0) || (substUseFreqNr_spd_nr.NAOK > 0) || (substUseFreqNr_gas_nr.NAOK > 0) || (substUseFreqNr_ghb_nr.NAOK > 0) || (substUseFreqNr_2cb_nr.NAOK > 0) || (substUseFreqNr_ket_nr.NAOK > 0) || ( ! is_empty(otherSubstances_otherSubstance1.NAOK)) || ( ! is_empty(otherSubstances_otherSubstance2.NAOK)) || ( ! is_empty(otherSubstances_otherSubstance3.NAOK)) || ( ! is_empty(otherSubstances_otherSubstance4.NAOK)) || ( ! is_empty(otherSubstances_otherSubstance5.NAOK)), 1, 0)}"
names(data)[95] <- "usedSubst"
# LimeSurvey Field type: A
data[, 96] <- as.character(data[, 96])
attributes(data)$variable.labels[96] <- "{if((intentionToUseSubst || usedSubst), 1, 0)}"
names(data)[96] <- "otherSubstUser"
# LimeSurvey Field type: A
data[, 97] <- as.character(data[, 97])
attributes(data)$variable.labels[97] <- "{if((substUseFreqNr_alc_nr.NAOK > 0) || (substUseIntention_alc.NAOK > 0), 1, 0)}"
names(data)[97] <- "alcoholUser"
# LimeSurvey Field type: A
data[, 98] <- as.character(data[, 98])
attributes(data)$variable.labels[98] <- "{if(alcoholUser || otherSubstUser, 0, 1)}"
names(data)[98] <- "nothingUser"
# LimeSurvey Field type: A
data[, 99] <- as.character(data[, 99])
attributes(data)$variable.labels[99] <- "{if(otherSubstUser && alcoholUser, 1, 0)}"
names(data)[99] <- "bothUser"
# LimeSurvey Field type: A
data[, 100] <- as.character(data[, 100])
attributes(data)$variable.labels[100] <- "{if(alcoholUser && (! otherSubstUser), 1, 0)}"
names(data)[100] <- "onlyAlcoholUser"
# LimeSurvey Field type: A
data[, 101] <- as.character(data[, 101])
attributes(data)$variable.labels[101] <- "{if(otherSubstUser && (! alcoholUser), 1, 0)}"
names(data)[101] <- "onlyOtherSubstUser"
# LimeSurvey Field type: A
data[, 102] <- as.character(data[, 102])
attributes(data)$variable.labels[102] <- "{if(nothingUser, if(randomNumber2 < 3, \'noUseMention\', \'otherUsed\'), if(otherSubstUser, if(randomNumber2 == 1, \'noUseMention\', if(randomNumber2 < 3, \'otherUsed\', \'usedSelf\')), if(randomNumber2 < 3, \'noUseMention\', \'otherUsed\')))}"
names(data)[102] <- "faFriendRandomSelect"
# LimeSurvey Field type: A
data[, 103] <- as.character(data[, 103])
attributes(data)$variable.labels[103] <- "{if(nothingUser, \'lightComplaints\', if(bothUser, if(randomNumber1 == 1, \'lightComplaints\', if(randomNumber1 < 3, \'alcoholComplaints\', \'substanceComplaints\')), if(onlyAlcoholUser, if(randomNumber1 < 2, \'lightComplaints\', \'alcoholComplaints\'), if(onlyOtherSubstUser, if(randomNumber1 < 2, \'lightComplaints\', \'substanceComplaints\'), \"lightComplaints\"))))}"
names(data)[103] <- "faSelfRandomSelect"
# LimeSurvey Field type: F
data[, 104] <- as.numeric(data[, 104])
attributes(data)$variable.labels[104] <- "[Een partner (vriend of vriendin)] 	We gaan je verderop vragen stellen over de mensen in je omgeving, zoals je vrienden, ouders, en broers en zussen.	Zou je hier de mensen die er niet zijn kunnen uitvinken?"
data[, 104] <- factor(data[, 104], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[104] <- "socialReferents_partner"
# LimeSurvey Field type: F
data[, 105] <- as.numeric(data[, 105])
attributes(data)$variable.labels[105] <- "[Beste vrienden/vriendinnen] 	We gaan je verderop vragen stellen over de mensen in je omgeving, zoals je vrienden, ouders, en broers en zussen.	Zou je hier de mensen die er niet zijn kunnen uitvinken?"
data[, 105] <- factor(data[, 105], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[105] <- "socialReferents_bestFriends"
# LimeSurvey Field type: F
data[, 106] <- as.numeric(data[, 106])
attributes(data)$variable.labels[106] <- "[Andere vrienden] 	We gaan je verderop vragen stellen over de mensen in je omgeving, zoals je vrienden, ouders, en broers en zussen.	Zou je hier de mensen die er niet zijn kunnen uitvinken?"
data[, 106] <- factor(data[, 106], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[106] <- "socialReferents_otherFriends"
# LimeSurvey Field type: F
data[, 107] <- as.numeric(data[, 107])
attributes(data)$variable.labels[107] <- "[1 of meer ouders en/of verzorgers] 	We gaan je verderop vragen stellen over de mensen in je omgeving, zoals je vrienden, ouders, en broers en zussen.	Zou je hier de mensen die er niet zijn kunnen uitvinken?"
data[, 107] <- factor(data[, 107], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[107] <- "socialReferents_parents"
# LimeSurvey Field type: F
data[, 108] <- as.numeric(data[, 108])
attributes(data)$variable.labels[108] <- "[1 of meer broers en/of zussen] 	We gaan je verderop vragen stellen over de mensen in je omgeving, zoals je vrienden, ouders, en broers en zussen.	Zou je hier de mensen die er niet zijn kunnen uitvinken?"
data[, 108] <- factor(data[, 108], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[108] <- "socialReferents_siblings"
# LimeSurvey Field type: F
data[, 109] <- as.numeric(data[, 109])
attributes(data)$variable.labels[109] <- "Ben je zelf al eens naar de EHBO geweest in het uitgaansleven?"
data[, 109] <- factor(data[, 109], levels=c(0,1),labels=c("Nee", "Ja"))
names(data)[109] <- "visitedFirstAid"
# LimeSurvey Field type: F
data[, 110] <- as.numeric(data[, 110])
attributes(data)$variable.labels[110] <- "[Een café, kroeg, of bar, namelijk] Waar ben je bij de EHBO geweest, en hoe vaak?"
data[, 110] <- factor(data[, 110], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[110] <- "visitedFirstAidFreq_cafe"
# LimeSurvey Field type: F
data[, 111] <- as.numeric(data[, 111])
attributes(data)$variable.labels[111] <- "[Opmerking] Waar ben je bij de EHBO geweest, en hoe vaak?"
names(data)[111] <- "visitedFirstAidFreq_cafecomment"
# LimeSurvey Field type: F
data[, 112] <- as.numeric(data[, 112])
attributes(data)$variable.labels[112] <- "[Een discotheek of club, namelijk] Waar ben je bij de EHBO geweest, en hoe vaak?"
data[, 112] <- factor(data[, 112], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[112] <- "visitedFirstAidFreq_disco"
# LimeSurvey Field type: F
data[, 113] <- as.numeric(data[, 113])
attributes(data)$variable.labels[113] <- "[Opmerking] Waar ben je bij de EHBO geweest, en hoe vaak?"
names(data)[113] <- "visitedFirstAidFreq_discocomment"
# LimeSurvey Field type: F
data[, 114] <- as.numeric(data[, 114])
attributes(data)$variable.labels[114] <- "[Een optreden van een band, namelijk] Waar ben je bij de EHBO geweest, en hoe vaak?"
data[, 114] <- factor(data[, 114], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[114] <- "visitedFirstAidFreq_band"
# LimeSurvey Field type: F
data[, 115] <- as.numeric(data[, 115])
attributes(data)$variable.labels[115] <- "[Opmerking] Waar ben je bij de EHBO geweest, en hoe vaak?"
names(data)[115] <- "visitedFirstAidFreq_bandcomment"
# LimeSurvey Field type: F
data[, 116] <- as.numeric(data[, 116])
attributes(data)$variable.labels[116] <- "[Een kleinschalig binnenfeest of -festival, namelijk] Waar ben je bij de EHBO geweest, en hoe vaak?"
data[, 116] <- factor(data[, 116], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[116] <- "visitedFirstAidFreq_smallPartyInside"
# LimeSurvey Field type: A
data[, 117] <- as.character(data[, 117])
attributes(data)$variable.labels[117] <- "[Opmerking] Waar ben je bij de EHBO geweest, en hoe vaak?"
names(data)[117] <- "visitedFirstAidFreq_smallPartyInsidecomment"
# LimeSurvey Field type: F
data[, 118] <- as.numeric(data[, 118])
attributes(data)$variable.labels[118] <- "[Een groot binnenfeest of -festival, namelijk] Waar ben je bij de EHBO geweest, en hoe vaak?"
data[, 118] <- factor(data[, 118], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[118] <- "visitedFirstAidFreq_bigPartyInside"
# LimeSurvey Field type: A
data[, 119] <- as.character(data[, 119])
attributes(data)$variable.labels[119] <- "[Opmerking] Waar ben je bij de EHBO geweest, en hoe vaak?"
names(data)[119] <- "visitedFirstAidFreq_bigPartyInsidecomment"
# LimeSurvey Field type: F
data[, 120] <- as.numeric(data[, 120])
attributes(data)$variable.labels[120] <- "[Een kleinschalig buitenfeest of -festival, namelijk] Waar ben je bij de EHBO geweest, en hoe vaak?"
data[, 120] <- factor(data[, 120], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[120] <- "visitedFirstAidFreq_smallPartyOutside"
# LimeSurvey Field type: A
data[, 121] <- as.character(data[, 121])
attributes(data)$variable.labels[121] <- "[Opmerking] Waar ben je bij de EHBO geweest, en hoe vaak?"
names(data)[121] <- "visitedFirstAidFreq_smallPartyOutsidecomment"
# LimeSurvey Field type: F
data[, 122] <- as.numeric(data[, 122])
attributes(data)$variable.labels[122] <- "[Een groot buitenfeest of -festival, namelijk] Waar ben je bij de EHBO geweest, en hoe vaak?"
data[, 122] <- factor(data[, 122], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[122] <- "visitedFirstAidFreq_bigPartyOutside"
# LimeSurvey Field type: A
data[, 123] <- as.character(data[, 123])
attributes(data)$variable.labels[123] <- "[Opmerking] Waar ben je bij de EHBO geweest, en hoe vaak?"
names(data)[123] <- "visitedFirstAidFreq_bigPartyOutsidecomment"
# LimeSurvey Field type: F
data[, 124] <- as.numeric(data[, 124])
attributes(data)$variable.labels[124] <- "[Ik had een wondje] Om welke reden(en) heb je de EHBO in het uitgaansleven bezocht?"
data[, 124] <- factor(data[, 124], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[124] <- "firstAidReasons_wound"
# LimeSurvey Field type: F
data[, 125] <- as.numeric(data[, 125])
attributes(data)$variable.labels[125] <- "[Ik had een verstuikte enkel] Om welke reden(en) heb je de EHBO in het uitgaansleven bezocht?"
data[, 125] <- factor(data[, 125], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[125] <- "firstAidReasons_ankel"
# LimeSurvey Field type: F
data[, 126] <- as.numeric(data[, 126])
attributes(data)$variable.labels[126] <- "[Ik ben met een vriend(in) naar de EHBO geweest] Om welke reden(en) heb je de EHBO in het uitgaansleven bezocht?"
data[, 126] <- factor(data[, 126], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[126] <- "firstAidReasons_frnd"
# LimeSurvey Field type: F
data[, 127] <- as.numeric(data[, 127])
attributes(data)$variable.labels[127] <- "[Ik had drugs-gerelateerde klachten] Om welke reden(en) heb je de EHBO in het uitgaansleven bezocht?"
data[, 127] <- factor(data[, 127], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[127] <- "firstAidReasons_drugs"
# LimeSurvey Field type: F
data[, 128] <- as.numeric(data[, 128])
attributes(data)$variable.labels[128] <- "[Ik had alcohol-gerelateerde klachten] Om welke reden(en) heb je de EHBO in het uitgaansleven bezocht?"
data[, 128] <- factor(data[, 128], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[128] <- "firstAidReasons_alc"
# LimeSurvey Field type: F
data[, 129] <- as.numeric(data[, 129])
attributes(data)$variable.labels[129] <- "[Ik had hoofdpijn of was misselijk (maar niet door drugs of alcohol)] Om welke reden(en) heb je de EHBO in het uitgaansleven bezocht?"
data[, 129] <- factor(data[, 129], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[129] <- "firstAidReasons_head"
# LimeSurvey Field type: F
data[, 130] <- as.numeric(data[, 130])
attributes(data)$variable.labels[130] <- "[Ik had het te warm of te koud (maar niet door drugs of alcohol) ] Om welke reden(en) heb je de EHBO in het uitgaansleven bezocht?"
data[, 130] <- factor(data[, 130], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[130] <- "firstAidReasons_temp"
# LimeSurvey Field type: A
data[, 131] <- as.character(data[, 131])
attributes(data)$variable.labels[131] <- "[Andere] Om welke reden(en) heb je de EHBO in het uitgaansleven bezocht?"
names(data)[131] <- "firstAidReasons_other"
# LimeSurvey Field type: F
data[, 132] <- as.numeric(data[, 132])
attributes(data)$variable.labels[132] <- "[Mijn ervaring met de EHBO in een café, kroeg, of bar was...Heel slecht | Heel goed] Hoe was jouw ervaring toen?"
data[, 132] <- factor(data[, 132], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[132] <- "faExperiences_cafe"
# LimeSurvey Field type: F
data[, 133] <- as.numeric(data[, 133])
attributes(data)$variable.labels[133] <- "[Mijn ervaring met de EHBO in een discotheek of club was...Heel slecht | Heel goed] Hoe was jouw ervaring toen?"
data[, 133] <- factor(data[, 133], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[133] <- "faExperiences_disco"
# LimeSurvey Field type: F
data[, 134] <- as.numeric(data[, 134])
attributes(data)$variable.labels[134] <- "[Mijn ervaring met de EHBO bij het optreden van een band was...Heel slecht | Heel goed] Hoe was jouw ervaring toen?"
data[, 134] <- factor(data[, 134], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[134] <- "faExperiences_band"
# LimeSurvey Field type: F
data[, 135] <- as.numeric(data[, 135])
attributes(data)$variable.labels[135] <- "[Mijn ervaring met de EHBO bij een kleinschalig binnenfeest of -festival was...Heel slecht | Heel goed] Hoe was jouw ervaring toen?"
data[, 135] <- factor(data[, 135], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[135] <- "faExperiences_smallPartyInside"
# LimeSurvey Field type: F
data[, 136] <- as.numeric(data[, 136])
attributes(data)$variable.labels[136] <- "[Mijn ervaring met de EHBO bij een groot binnenfeest of -festival was...Heel slecht | Heel goed] Hoe was jouw ervaring toen?"
data[, 136] <- factor(data[, 136], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[136] <- "faExperiences_bigPartyInside"
# LimeSurvey Field type: F
data[, 137] <- as.numeric(data[, 137])
attributes(data)$variable.labels[137] <- "[Mijn ervaring met de EHBO bij een kleinschalig buitenfeest of -festival was...Heel slecht | Heel goed] Hoe was jouw ervaring toen?"
data[, 137] <- factor(data[, 137], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[137] <- "faExperiences_smallPartyOutside"
# LimeSurvey Field type: F
data[, 138] <- as.numeric(data[, 138])
attributes(data)$variable.labels[138] <- "[Mijn ervaring met de EHBO bij een groot buitenfeest of -festival was...Heel slecht | Heel goed] Hoe was jouw ervaring toen?"
data[, 138] <- factor(data[, 138], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[138] <- "faExperiences_bigPartyOutside"
# LimeSurvey Field type: A
data[, 139] <- as.character(data[, 139])
attributes(data)$variable.labels[139] <- "Wil je verder nog iets kwijt over je ervaringen met de EHBO in het uitgaansleven? Zoja, dit is de plek!"
names(data)[139] <- "faExperiencesOpen"
# LimeSurvey Field type: A
data[, 140] <- as.character(data[, 140])
attributes(data)$variable.labels[140] <- "De vragen hieronder gaan over de EHBO bij feesten, clubs, poppodia, en andere uitgaansgelegenheden.	Stel, je bent ergens in het komende halfjaar aan het uitgaan, en er is een EHBO op die locatie.	{if(faFriendRandomSelect==\'usedSelf\', \"Je hebt drugs gebruikt (bijvoorbeeld XTC, speed, cannabis, lachgas of cocaine). Opeens voelt een vriend(in) zich niet goed. Neem je hem/haar dan mee naar die EHBO?\", if(faFriendRandomSelect==\'otherUsed\', \"Opeens voelt een vriend(in), die drugs heeft gebruikt (bijvoorbeeld XTC, speed, cannabis, lachgas of cocaine), zich niet goed. Neem je hem/haar dan mee naar die EHBO?\", \"Opeens voelt een vriend(in) zich niet goed. Neem je hem/haar dan mee naar die EHBO?\"))}	Daar gaan deze vragen over."
names(data)[140] <- "faFriendIntro"
# LimeSurvey Field type: F
data[, 141] <- as.numeric(data[, 141])
attributes(data)$variable.labels[141] <- "[Ik ben van plan om hem/haar dan mee te nemen naar de EHBO.Absoluut niet | Absoluut wel] Neem je je vriend(in) in die situatie{if(faFriendRandomSelect == \'usedSelf\', \" (dus als je drugs hebt gebruikt)\", if(faFriendRandomSelect == \'otherUsed\', \" (dus als hij/zij drugs heeft gebruikt)\", \"\"))} mee naar de EHBO op het feest of festival waar je bent?"
data[, 141] <- factor(data[, 141], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[141] <- "faFriendIntentionRAA_planning"
# LimeSurvey Field type: F
data[, 142] <- as.numeric(data[, 142])
attributes(data)$variable.labels[142] <- "[Ik neem hem/haar dan mee naar de EHBO.Absoluut niet | Absoluut wel] Neem je je vriend(in) in die situatie{if(faFriendRandomSelect == \'usedSelf\', \" (dus als je drugs hebt gebruikt)\", if(faFriendRandomSelect == \'otherUsed\', \" (dus als hij/zij drugs heeft gebruikt)\", \"\"))} mee naar de EHBO op het feest of festival waar je bent?"
data[, 142] <- factor(data[, 142], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[142] <- "faFriendIntentionRAA_willGo"
# LimeSurvey Field type: F
data[, 143] <- as.numeric(data[, 143])
attributes(data)$variable.labels[143] <- "[Ik wil hem/haar dan meenemen naar de EHBO.Absoluut niet | Absoluut wel] Neem je je vriend(in) in die situatie{if(faFriendRandomSelect == \'usedSelf\', \" (dus als je drugs hebt gebruikt)\", if(faFriendRandomSelect == \'otherUsed\', \" (dus als hij/zij drugs heeft gebruikt)\", \"\"))} mee naar de EHBO op het feest of festival waar je bent?"
data[, 143] <- factor(data[, 143], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[143] <- "faFriendIntentionRAA_want"
# LimeSurvey Field type: F
data[, 144] <- as.numeric(data[, 144])
attributes(data)$variable.labels[144] <- "[Slecht|Goed] Als een vriend of vriendin zich niet goed voelt,{if(faFriendRandomSelect==\'usedSelf\', \" en ik heb drugs gebruikt,\", if(faFriendRandomSelect==\'otherUsed\', \" en hij/zij heeft drugs gebruikt,\", \"\"))} is het samen naar de EHBO gaan ..."
data[, 144] <- factor(data[, 144], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[144] <- "faFriendAttExpect_good"
# LimeSurvey Field type: F
data[, 145] <- as.numeric(data[, 145])
attributes(data)$variable.labels[145] <- "[Onprettig|Prettig] Als een vriend of vriendin zich niet goed voelt,{if(faFriendRandomSelect==\'usedSelf\', \" en ik heb drugs gebruikt,\", if(faFriendRandomSelect==\'otherUsed\', \" en hij/zij heeft drugs gebruikt,\", \"\"))} is het samen naar de EHBO gaan ..."
data[, 145] <- factor(data[, 145], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[145] <- "faFriendAttExpect_pleas"
# LimeSurvey Field type: F
data[, 146] <- as.numeric(data[, 146])
attributes(data)$variable.labels[146] <- "[Dom|Slim] Als een vriend of vriendin zich niet goed voelt,{if(faFriendRandomSelect==\'usedSelf\', \" en ik heb drugs gebruikt,\", if(faFriendRandomSelect==\'otherUsed\', \" en hij/zij heeft drugs gebruikt,\", \"\"))} is het samen naar de EHBO gaan ..."
data[, 146] <- factor(data[, 146], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[146] <- "faFriendAttExpect_smart"
# LimeSurvey Field type: F
data[, 147] <- as.numeric(data[, 147])
attributes(data)$variable.labels[147] <- "[Ongezond|Gezond] Als een vriend of vriendin zich niet goed voelt,{if(faFriendRandomSelect==\'usedSelf\', \" en ik heb drugs gebruikt,\", if(faFriendRandomSelect==\'otherUsed\', \" en hij/zij heeft drugs gebruikt,\", \"\"))} is het samen naar de EHBO gaan ..."
data[, 147] <- factor(data[, 147], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[147] <- "faFriendAttExpect_healt"
# LimeSurvey Field type: F
data[, 148] <- as.numeric(data[, 148])
attributes(data)$variable.labels[148] <- "[Saai|Spannend] Als een vriend of vriendin zich niet goed voelt,{if(faFriendRandomSelect==\'usedSelf\', \" en ik heb drugs gebruikt,\", if(faFriendRandomSelect==\'otherUsed\', \" en hij/zij heeft drugs gebruikt,\", \"\"))} is het samen naar de EHBO gaan ..."
data[, 148] <- factor(data[, 148], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[148] <- "faFriendAttExpect_excit"
# LimeSurvey Field type: F
data[, 149] <- as.numeric(data[, 149])
attributes(data)$variable.labels[149] <- "[De meeste mensen die belangrijk voor mij zijn vinden dat ik die vriend(in) dan mee moet nemen naar de EHBO.Niet waar|Wel waar] 	Wat denk je dat mensen die belangrijk voor je zijn vinden dat je moet doen als een vriend of vriendin zich niet goed voelt{if(faFriendRandomSelect == \'usedSelf\', \", en je hebt drugs gebruikt\", if(faFriendRandomSelect == \'otherUsed\', \", en hij/zij heeft drugs gebruikt\", \"\"))}?"
data[, 149] <- factor(data[, 149], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[149] <- "faFriendNormGeneral_in1"
# LimeSurvey Field type: F
data[, 150] <- as.numeric(data[, 150])
attributes(data)$variable.labels[150] <- "[De mensen van wie ik belangrijk vind wat ze denken, zouden het goed vinden als ik die vriend(in) dan meeneem naar de EHBO.Niet waar|Wel waar] 	Wat denk je dat mensen die belangrijk voor je zijn vinden dat je moet doen als een vriend of vriendin zich niet goed voelt{if(faFriendRandomSelect == \'usedSelf\', \", en je hebt drugs gebruikt\", if(faFriendRandomSelect == \'otherUsed\', \", en hij/zij heeft drugs gebruikt\", \"\"))}?"
data[, 150] <- factor(data[, 150], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[150] <- "faFriendNormGeneral_in2"
# LimeSurvey Field type: F
data[, 151] <- as.numeric(data[, 151])
attributes(data)$variable.labels[151] <- "[De mensen die ik respecteer en bewonder zouden zelf hun vriend/vriendin meenemen naar de EHBO.Zeker niet|Zeker wel] 	Wat denk je dat mensen die belangrijk voor je zijn vinden dat je moet doen als een vriend of vriendin zich niet goed voelt{if(faFriendRandomSelect == \'usedSelf\', \", en je hebt drugs gebruikt\", if(faFriendRandomSelect == \'otherUsed\', \", en hij/zij heeft drugs gebruikt\", \"\"))}?"
data[, 151] <- factor(data[, 151], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[151] <- "faFriendNormGeneral_dn1"
# LimeSurvey Field type: F
data[, 152] <- as.numeric(data[, 152])
attributes(data)$variable.labels[152] <- "[De meeste mensen zoals ik nemen in die situatie hun vriend/vriendin mee naar de EHBO.Zeker niet|Zeker wel] 	Wat denk je dat mensen die belangrijk voor je zijn vinden dat je moet doen als een vriend of vriendin zich niet goed voelt{if(faFriendRandomSelect == \'usedSelf\', \", en je hebt drugs gebruikt\", if(faFriendRandomSelect == \'otherUsed\', \", en hij/zij heeft drugs gebruikt\", \"\"))}?"
data[, 152] <- factor(data[, 152], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[152] <- "faFriendNormGeneral_dn2"
# LimeSurvey Field type: F
data[, 153] <- as.numeric(data[, 153])
attributes(data)$variable.labels[153] <- "[Als ik die vriend(in) dan mee wil nemen naar de EHBO, dan zou mij dat . . .Zeker niet lukken|Zeker lukken]"
data[, 153] <- factor(data[, 153], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[153] <- "faFriendPBCgeneral_ifwanted"
# LimeSurvey Field type: F
data[, 154] <- as.numeric(data[, 154])
attributes(data)$variable.labels[154] <- "[In die situatie met een vriend(in) naar de EHBO gaan is voor mij . . .Heel moeilijk|Heel makkelijk]"
data[, 154] <- factor(data[, 154], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[154] <- "faFriendPBCgeneral_easy"
# LimeSurvey Field type: F
data[, 155] <- as.numeric(data[, 155])
attributes(data)$variable.labels[155] <- "[Ik heb . . . controle over of ik dan met een vriend(in) naar de EHBO ga.Helemaal geen|Volledige]"
data[, 155] <- factor(data[, 155], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[155] <- "faFriendPBCgeneral_control"
# LimeSurvey Field type: F
data[, 156] <- as.numeric(data[, 156])
attributes(data)$variable.labels[156] <- "[Er zijn . . . factoren buiten mijzelf om die mede bepalen of ik die vriend(in) dan meeneem naar de EHBO.Helemaal geen|Heel veel]"
data[, 156] <- factor(data[, 156], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[156] <- "faFriendPBCgeneral_externalFactors"
# LimeSurvey Field type: F
data[, 157] <- as.numeric(data[, 157])
attributes(data)$variable.labels[157] <- "[Of ik in die situatie die vriend(in) meeneem naar de EHBO ligt . . .Alleen aan andere mensen|Alleen aan mij]"
data[, 157] <- factor(data[, 157], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[157] <- "faFriendPBCgeneral_notOnlyMe"
# LimeSurvey Field type: A
data[, 158] <- as.character(data[, 158])
attributes(data)$variable.labels[158] <- "Bedankt voor die antwoorden. Op de volgende pagina gaan we hier wat dieper op in.	Maar eerst zijn we benieuwd hoe jij tegenover het samen bezoeken van de EHBO staat, als een vriend of vriendin zich tijdens het uitgaan zorgen maakt over zijn/haar gezondheid. Als jij naar jezelf en naar andere mensen kijkt, wat zijn dan volgens jou de belangrijkste redenen waarom mensen elkaar niet meenemen naar de EHBO gaan als hun vriend of vriendin zich zorgen maakt over hun gezondheid?"
names(data)[158] <- "faFriendOpenWhyNot"
# LimeSurvey Field type: A
data[, 159] <- as.character(data[, 159])
attributes(data)$variable.labels[159] <- "En omgedraaid? Waarom zouden sommige mensen hun vrienden wel mee naar de EHBO nemen, terwijl anderen dat niet zouden doen?"
names(data)[159] <- "faFriendOpenWhy"
# LimeSurvey Field type: F
data[, 160] <- as.numeric(data[, 160])
attributes(data)$variable.labels[160] <- "[... blijf ik anoniem.Zeker niet|Zeker wel] Als ik met een vriend(in) naar de EHBO ga{if(faFriendRandomSelect == \'usedSelf\', \" (dus als ik drugs heb gebruikt)\", if(faFriendRandomSelect == \'otherUsed\', \" (dus als hij/zij drugs heeft gebruikt)\", \"\"))}, ..."
data[, 160] <- factor(data[, 160], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[160] <- "faFrndAttExpect1_anonimity"
# LimeSurvey Field type: F
data[, 161] <- as.numeric(data[, 161])
attributes(data)$variable.labels[161] <- "[... worden mijn ouders gewaarschuwd.Zeker niet | Zeker wel] Als ik met een vriend(in) naar de EHBO ga{if(faFriendRandomSelect == \'usedSelf\', \" (dus als ik drugs heb gebruikt)\", if(faFriendRandomSelect == \'otherUsed\', \" (dus als hij/zij drugs heeft gebruikt)\", \"\"))}, ..."
data[, 161] <- factor(data[, 161], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[161] <- "faFrndAttExpect1_parents"
# LimeSurvey Field type: F
data[, 162] <- as.numeric(data[, 162])
attributes(data)$variable.labels[162] <- "[... gooit de security me eruit.Zeker niet | Zeker wel] Als ik met een vriend(in) naar de EHBO ga{if(faFriendRandomSelect == \'usedSelf\', \" (dus als ik drugs heb gebruikt)\", if(faFriendRandomSelect == \'otherUsed\', \" (dus als hij/zij drugs heeft gebruikt)\", \"\"))}, ..."
data[, 162] <- factor(data[, 162], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[162] <- "faFrndAttExpect1_security"
# LimeSurvey Field type: F
data[, 163] <- as.numeric(data[, 163])
attributes(data)$variable.labels[163] <- "[... wordt de politie gebeld.Zeker niet | Zeker wel] Als ik met een vriend(in) naar de EHBO ga{if(faFriendRandomSelect == \'usedSelf\', \" (dus als ik drugs heb gebruikt)\", if(faFriendRandomSelect == \'otherUsed\', \" (dus als hij/zij drugs heeft gebruikt)\", \"\"))}, ..."
data[, 163] <- factor(data[, 163], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[163] <- "faFrndAttExpect1_police"
# LimeSurvey Field type: F
data[, 164] <- as.numeric(data[, 164])
attributes(data)$variable.labels[164] <- "[... is de avond/dag verpest.Absoluut niet | Absoluut wel] Als ik met een vriend(in) naar de EHBO ga{if(faFriendRandomSelect == \'usedSelf\', \" (dus als ik drugs heb gebruikt)\", if(faFriendRandomSelect == \'otherUsed\', \" (dus als hij/zij drugs heeft gebruikt)\", \"\"))}, ..."
data[, 164] <- factor(data[, 164], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[164] <- "faFrndAttExpect1_ruinsEvening"
# LimeSurvey Field type: F
data[, 165] <- as.numeric(data[, 165])
attributes(data)$variable.labels[165] <- "[Als ik met een vriend of vriendin bij de EHBO ben geweest, mag ik daarna weer terug naar het feest.Zeker niet | Zeker wel]"
data[, 165] <- factor(data[, 165], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[165] <- "faFrndAttExpect2_accessToParty"
# LimeSurvey Field type: F
data[, 166] <- as.numeric(data[, 166])
attributes(data)$variable.labels[166] <- "[Als iemand zich zorgen maakt over zijn/haar gezondheid, dan kan ik op de beveiliging afstappen.Absoluut niet | Absoluut wel]"
data[, 166] <- factor(data[, 166], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[166] <- "faFrndAttExpect2_approachSecurity"
# LimeSurvey Field type: F
data[, 167] <- as.numeric(data[, 167])
attributes(data)$variable.labels[167] <- "[Als iemand zich niet zo goed voelt, gaat dat vanzelf over.Nooit | Altijd]"
data[, 167] <- factor(data[, 167], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[167] <- "faFrndAttExpect2_solvesItself"
# LimeSurvey Field type: F
data[, 168] <- as.numeric(data[, 168])
attributes(data)$variable.labels[168] <- "[Mijn partner (vriendin of vriendin)Heel afkeurend|Heel goedkeurend] Wat denk je dat deze mensen er over denken als jij in die situatie naar de EHBO gaat met een vriend(in)?"
data[, 168] <- factor(data[, 168], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[168] <- "faFrndNormInjunct_partner"
# LimeSurvey Field type: F
data[, 169] <- as.numeric(data[, 169])
attributes(data)$variable.labels[169] <- "[Mijn beste vrienden/vriendinnenHeel afkeurend|Heel goedkeurend] Wat denk je dat deze mensen er over denken als jij in die situatie naar de EHBO gaat met een vriend(in)?"
data[, 169] <- factor(data[, 169], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[169] <- "faFrndNormInjunct_bestFriends"
# LimeSurvey Field type: F
data[, 170] <- as.numeric(data[, 170])
attributes(data)$variable.labels[170] <- "[Mijn andere vriendenHeel afkeurend|Heel goedkeurend] Wat denk je dat deze mensen er over denken als jij in die situatie naar de EHBO gaat met een vriend(in)?"
data[, 170] <- factor(data[, 170], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[170] <- "faFrndNormInjunct_otherFriends"
# LimeSurvey Field type: F
data[, 171] <- as.numeric(data[, 171])
attributes(data)$variable.labels[171] <- "[De meeste mensen op een feestHeel afkeurend|Heel goedkeurend] Wat denk je dat deze mensen er over denken als jij in die situatie naar de EHBO gaat met een vriend(in)?"
data[, 171] <- factor(data[, 171], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[171] <- "faFrndNormInjunct_partyPeople"
# LimeSurvey Field type: F
data[, 172] <- as.numeric(data[, 172])
attributes(data)$variable.labels[172] <- "[Mijn ouders/verzorgersHeel afkeurend|Heel goedkeurend] Wat denk je dat deze mensen er over denken als jij in die situatie naar de EHBO gaat met een vriend(in)?"
data[, 172] <- factor(data[, 172], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[172] <- "faFrndNormInjunct_parents"
# LimeSurvey Field type: F
data[, 173] <- as.numeric(data[, 173])
attributes(data)$variable.labels[173] <- "[Mijn broers/zussenHeel afkeurend|Heel goedkeurend] Wat denk je dat deze mensen er over denken als jij in die situatie naar de EHBO gaat met een vriend(in)?"
data[, 173] <- factor(data[, 173], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[173] <- "faFrndNormInjunct_siblings"
# LimeSurvey Field type: F
data[, 174] <- as.numeric(data[, 174])
attributes(data)$variable.labels[174] <- "[Mijn partner (vriendin of vriendin)Heel onbelangrijk|Heel belangrijk] Hoe belangrijk is hun mening voor jou met betrekking of je een vriend(in) meeneemt naar de EHBO?"
data[, 174] <- factor(data[, 174], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[174] <- "faFrndNormMTC_partner"
# LimeSurvey Field type: F
data[, 175] <- as.numeric(data[, 175])
attributes(data)$variable.labels[175] <- "[Mijn beste vrienden/vriendinnenHeel onbelangrijk|Heel belangrijk] Hoe belangrijk is hun mening voor jou met betrekking of je een vriend(in) meeneemt naar de EHBO?"
data[, 175] <- factor(data[, 175], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[175] <- "faFrndNormMTC_bestFriends"
# LimeSurvey Field type: F
data[, 176] <- as.numeric(data[, 176])
attributes(data)$variable.labels[176] <- "[Mijn andere vriendenHeel onbelangrijk|Heel belangrijk] Hoe belangrijk is hun mening voor jou met betrekking of je een vriend(in) meeneemt naar de EHBO?"
data[, 176] <- factor(data[, 176], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[176] <- "faFrndNormMTC_otherFriends"
# LimeSurvey Field type: F
data[, 177] <- as.numeric(data[, 177])
attributes(data)$variable.labels[177] <- "[De meeste mensen op een feestHeel onbelangrijk|Heel belangrijk] Hoe belangrijk is hun mening voor jou met betrekking of je een vriend(in) meeneemt naar de EHBO?"
data[, 177] <- factor(data[, 177], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[177] <- "faFrndNormMTC_partyPeople"
# LimeSurvey Field type: F
data[, 178] <- as.numeric(data[, 178])
attributes(data)$variable.labels[178] <- "[Mijn ouders/verzorgersHeel onbelangrijk|Heel belangrijk] Hoe belangrijk is hun mening voor jou met betrekking of je een vriend(in) meeneemt naar de EHBO?"
data[, 178] <- factor(data[, 178], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[178] <- "faFrndNormMTC_parents"
# LimeSurvey Field type: F
data[, 179] <- as.numeric(data[, 179])
attributes(data)$variable.labels[179] <- "[Mijn broertjes/zusjesHeel onbelangrijk|Heel belangrijk] Hoe belangrijk is hun mening voor jou met betrekking of je een vriend(in) meeneemt naar de EHBO?"
data[, 179] <- factor(data[, 179], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[179] <- "faFrndNormMTC_siblings"
# LimeSurvey Field type: F
data[, 180] <- as.numeric(data[, 180])
attributes(data)$variable.labels[180] <- "[Mijn partner (vriendin of vriendin) zou ...Nooit naar de EHBO gaan|Zeker naar de EHBO gaan] 	Wat doen deze mensen zelf als ze uit gaan{if(faFriendRandomSelect==\'usedSelf\', \" en drugs hebben gebruikt\", \"\")}, en één van hun vrienden of vriendinnen {if(faFriendRandomSelect==\'otherUsed\', \" die drugs heeft gebruikt\", \"\")} voelt zich niet goed,	denk je?"
data[, 180] <- factor(data[, 180], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[180] <- "faFrndNormDescr_partner"
# LimeSurvey Field type: F
data[, 181] <- as.numeric(data[, 181])
attributes(data)$variable.labels[181] <- "[Mijn beste vrienden/vriendinnen zouden ...Nooit naar de EHBO gaan|Zeker naar de EHBO gaan] 	Wat doen deze mensen zelf als ze uit gaan{if(faFriendRandomSelect==\'usedSelf\', \" en drugs hebben gebruikt\", \"\")}, en één van hun vrienden of vriendinnen {if(faFriendRandomSelect==\'otherUsed\', \" die drugs heeft gebruikt\", \"\")} voelt zich niet goed,	denk je?"
data[, 181] <- factor(data[, 181], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[181] <- "faFrndNormDescr_bestFriends"
# LimeSurvey Field type: F
data[, 182] <- as.numeric(data[, 182])
attributes(data)$variable.labels[182] <- "[Mijn andere vrienden/vriendinnen zouden ...Nooit naar de EHBO gaan|Zeker naar de EHBO gaan] 	Wat doen deze mensen zelf als ze uit gaan{if(faFriendRandomSelect==\'usedSelf\', \" en drugs hebben gebruikt\", \"\")}, en één van hun vrienden of vriendinnen {if(faFriendRandomSelect==\'otherUsed\', \" die drugs heeft gebruikt\", \"\")} voelt zich niet goed,	denk je?"
data[, 182] <- factor(data[, 182], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[182] <- "faFrndNormDescr_otherFriends"
# LimeSurvey Field type: F
data[, 183] <- as.numeric(data[, 183])
attributes(data)$variable.labels[183] <- "[De meeste mensen op een feest zouden ...Nooit naar de EHBO gaan|Zeker naar de EHBO gaan] 	Wat doen deze mensen zelf als ze uit gaan{if(faFriendRandomSelect==\'usedSelf\', \" en drugs hebben gebruikt\", \"\")}, en één van hun vrienden of vriendinnen {if(faFriendRandomSelect==\'otherUsed\', \" die drugs heeft gebruikt\", \"\")} voelt zich niet goed,	denk je?"
data[, 183] <- factor(data[, 183], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[183] <- "faFrndNormDescr_partyPeople"
# LimeSurvey Field type: F
data[, 184] <- as.numeric(data[, 184])
attributes(data)$variable.labels[184] <- "[Mijn ouders/verzorgers zouden ...Nooit naar de EHBO gaan|Zeker naar de EHBO gaan] 	Wat doen deze mensen zelf als ze uit gaan{if(faFriendRandomSelect==\'usedSelf\', \" en drugs hebben gebruikt\", \"\")}, en één van hun vrienden of vriendinnen {if(faFriendRandomSelect==\'otherUsed\', \" die drugs heeft gebruikt\", \"\")} voelt zich niet goed,	denk je?"
data[, 184] <- factor(data[, 184], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[184] <- "faFrndNormDescr_parents"
# LimeSurvey Field type: F
data[, 185] <- as.numeric(data[, 185])
attributes(data)$variable.labels[185] <- "[Mijn broers/zussen zouden ...Nooit naar de EHBO gaan|Zeker naar de EHBO gaan] 	Wat doen deze mensen zelf als ze uit gaan{if(faFriendRandomSelect==\'usedSelf\', \" en drugs hebben gebruikt\", \"\")}, en één van hun vrienden of vriendinnen {if(faFriendRandomSelect==\'otherUsed\', \" die drugs heeft gebruikt\", \"\")} voelt zich niet goed,	denk je?"
data[, 185] <- factor(data[, 185], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[185] <- "faFrndNormDescr_siblings"
# LimeSurvey Field type: F
data[, 186] <- as.numeric(data[, 186])
attributes(data)$variable.labels[186] <- "[Als een vriend(in) zich niet goed voelt, weet ik hoe ik die mee krijg naar de EHBO.Nooit | Altijd] Hieronder staan een aantal stellingen over de EHBO. Kun je aangeven wat je hiervan denkt?"
data[, 186] <- factor(data[, 186], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[186] <- "faFrndContrBeliefs_persuadeFriend"
# LimeSurvey Field type: F
data[, 187] <- as.numeric(data[, 187])
attributes(data)$variable.labels[187] <- "[Als een vriend(in) zich zorgen maakt over zijn/haar gezondheid dan kan de EHBO helpen.Absoluut niet | Absoluut wel] Hieronder staan een aantal stellingen over de EHBO. Kun je aangeven wat je hiervan denkt?"
data[, 187] <- factor(data[, 187], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[187] <- "faFrndContrBeliefs_faCanHelp"
# LimeSurvey Field type: F
data[, 188] <- as.numeric(data[, 188])
attributes(data)$variable.labels[188] <- "[Ik vind het beantwoorden van één deel wel genoeg.] 	Bedankt voor het beantwoorden van die vragen! Je bent nu halverwege.	Het volgende deel gaat over zelf naar de EHBO gaan. Er zijn 3 versies, waarvan jij er willekeurig eentje toegewezen hebt gekregen:			{if(faSelfRandomSelect==\'lightComplaints\', \"\", \"\")} Tijdens het uitgaan naar de EHBO gaan omdat je een lichte klacht hebt (bijvoorbeeld een wondje, een gekneusde enkel, of je niet lekker voelen){if(faSelfRandomSelect==\'lightComplaints\', \" (deze heb jij toegewezen gekregen)\", \"\")};			{if(faSelfRandomSelect==\'alcoholComplaints\', \"\", \"\")} Tijdens het uitgaan naar de EHBO gaan omdat je alcohol-gerelateerde klachten hebt (bijvoorbeeld duizeligheid, out gaan, misselijkheid, of onderkoeling){if(faSelfRandomSelect==\'alcoholComplaints\', \" (deze heb jij toegewezen gekregen)\", \"\")};			{if(faSelfRandomSelect==\'substanceComplaints\', \"\", \"\")} Tijdens het uitgaan naar de EHBO gaan omdat je drugs-gerelateerde klachten hebt (bijvoorbeeld angst, verwardheid, hoge hartslag, out gaan, of oververhitting){if(faSelfRandomSelect==\'substanceComplaints\', \" (deze heb jij toegewezen gekregen)\", \"\")};	Wil je meer invullen? Dan kun je dat hieronder aangeven."
data[, 188] <- factor(data[, 188], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[188] <- "subSurveysSubstUsers_none"
# LimeSurvey Field type: F
data[, 189] <- as.numeric(data[, 189])
attributes(data)$variable.labels[189] <- "[Ik wil ook graag de vragen over de EHBO bezoeken met een lichte klacht beantwoorden.] 	Bedankt voor het beantwoorden van die vragen! Je bent nu halverwege.	Het volgende deel gaat over zelf naar de EHBO gaan. Er zijn 3 versies, waarvan jij er willekeurig eentje toegewezen hebt gekregen:			{if(faSelfRandomSelect==\'lightComplaints\', \"\", \"\")} Tijdens het uitgaan naar de EHBO gaan omdat je een lichte klacht hebt (bijvoorbeeld een wondje, een gekneusde enkel, of je niet lekker voelen){if(faSelfRandomSelect==\'lightComplaints\', \" (deze heb jij toegewezen gekregen)\", \"\")};			{if(faSelfRandomSelect==\'alcoholComplaints\', \"\", \"\")} Tijdens het uitgaan naar de EHBO gaan omdat je alcohol-gerelateerde klachten hebt (bijvoorbeeld duizeligheid, out gaan, misselijkheid, of onderkoeling){if(faSelfRandomSelect==\'alcoholComplaints\', \" (deze heb jij toegewezen gekregen)\", \"\")};			{if(faSelfRandomSelect==\'substanceComplaints\', \"\", \"\")} Tijdens het uitgaan naar de EHBO gaan omdat je drugs-gerelateerde klachten hebt (bijvoorbeeld angst, verwardheid, hoge hartslag, out gaan, of oververhitting){if(faSelfRandomSelect==\'substanceComplaints\', \" (deze heb jij toegewezen gekregen)\", \"\")};	Wil je meer invullen? Dan kun je dat hieronder aangeven."
data[, 189] <- factor(data[, 189], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[189] <- "subSurveysSubstUsers_lightComplaints"
# LimeSurvey Field type: F
data[, 190] <- as.numeric(data[, 190])
attributes(data)$variable.labels[190] <- "[Ik wil ook graag de vragen over de EHBO bezoeken met een alcohol-gerelateerde klacht beantwoorden.] 	Bedankt voor het beantwoorden van die vragen! Je bent nu halverwege.	Het volgende deel gaat over zelf naar de EHBO gaan. Er zijn 3 versies, waarvan jij er willekeurig eentje toegewezen hebt gekregen:			{if(faSelfRandomSelect==\'lightComplaints\', \"\", \"\")} Tijdens het uitgaan naar de EHBO gaan omdat je een lichte klacht hebt (bijvoorbeeld een wondje, een gekneusde enkel, of je niet lekker voelen){if(faSelfRandomSelect==\'lightComplaints\', \" (deze heb jij toegewezen gekregen)\", \"\")};			{if(faSelfRandomSelect==\'alcoholComplaints\', \"\", \"\")} Tijdens het uitgaan naar de EHBO gaan omdat je alcohol-gerelateerde klachten hebt (bijvoorbeeld duizeligheid, out gaan, misselijkheid, of onderkoeling){if(faSelfRandomSelect==\'alcoholComplaints\', \" (deze heb jij toegewezen gekregen)\", \"\")};			{if(faSelfRandomSelect==\'substanceComplaints\', \"\", \"\")} Tijdens het uitgaan naar de EHBO gaan omdat je drugs-gerelateerde klachten hebt (bijvoorbeeld angst, verwardheid, hoge hartslag, out gaan, of oververhitting){if(faSelfRandomSelect==\'substanceComplaints\', \" (deze heb jij toegewezen gekregen)\", \"\")};	Wil je meer invullen? Dan kun je dat hieronder aangeven."
data[, 190] <- factor(data[, 190], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[190] <- "subSurveysSubstUsers_alcoholComplaints"
# LimeSurvey Field type: F
data[, 191] <- as.numeric(data[, 191])
attributes(data)$variable.labels[191] <- "[Ik wil ook graag de vragen over de EHBO bezoeken met een drugs-gerelateerde klacht beantwoorden.] 	Bedankt voor het beantwoorden van die vragen! Je bent nu halverwege.	Het volgende deel gaat over zelf naar de EHBO gaan. Er zijn 3 versies, waarvan jij er willekeurig eentje toegewezen hebt gekregen:			{if(faSelfRandomSelect==\'lightComplaints\', \"\", \"\")} Tijdens het uitgaan naar de EHBO gaan omdat je een lichte klacht hebt (bijvoorbeeld een wondje, een gekneusde enkel, of je niet lekker voelen){if(faSelfRandomSelect==\'lightComplaints\', \" (deze heb jij toegewezen gekregen)\", \"\")};			{if(faSelfRandomSelect==\'alcoholComplaints\', \"\", \"\")} Tijdens het uitgaan naar de EHBO gaan omdat je alcohol-gerelateerde klachten hebt (bijvoorbeeld duizeligheid, out gaan, misselijkheid, of onderkoeling){if(faSelfRandomSelect==\'alcoholComplaints\', \" (deze heb jij toegewezen gekregen)\", \"\")};			{if(faSelfRandomSelect==\'substanceComplaints\', \"\", \"\")} Tijdens het uitgaan naar de EHBO gaan omdat je drugs-gerelateerde klachten hebt (bijvoorbeeld angst, verwardheid, hoge hartslag, out gaan, of oververhitting){if(faSelfRandomSelect==\'substanceComplaints\', \" (deze heb jij toegewezen gekregen)\", \"\")};	Wil je meer invullen? Dan kun je dat hieronder aangeven."
data[, 191] <- factor(data[, 191], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[191] <- "subSurveysSubstUsers_substanceComplaints"
# LimeSurvey Field type: F
data[, 192] <- as.numeric(data[, 192])
attributes(data)$variable.labels[192] <- "[Ik vind het beantwoorden van één deel wel genoeg.] 	Bedankt voor het beantwoorden van die vragen! Je bent nu halverwege.	Het volgende deel gaat over zelf naar de EHBO gaan. Er zijn 2 versies, waarvan jij er willekeurig eentje toegewezen hebt gekregen:			{if(faSelfRandomSelect==\'lightComplaints\', \"\", \"\")} Tijdens het uitgaan naar de EHBO gaan omdat je een lichte klacht hebt (bijvoorbeeld een wondje, een gekneusde enkel, of je niet lekker voelen){if(faSelfRandomSelect==\'lightComplaints\', \" (deze heb jij toegewezen gekregen)\", \"\")};			{if(faSelfRandomSelect==\'alcoholComplaints\', \"\", \"\")} Tijdens het uitgaan naar de EHBO gaan omdat je alcohol-gerelateerde klachten hebt (bijvoorbeeld duizeligheid, out gaan, misselijkheid, of onderkoeling){if(faSelfRandomSelect==\'alcoholComplaints\', \" (deze heb jij toegewezen gekregen)\", \"\")};	Wil je meer invullen? Dan kun je dat hieronder aangeven."
data[, 192] <- factor(data[, 192], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[192] <- "subSurveysAlcUsers_none"
# LimeSurvey Field type: F
data[, 193] <- as.numeric(data[, 193])
attributes(data)$variable.labels[193] <- "[Ik wil ook graag de vragen over de EHBO bezoeken met een lichte klacht beantwoorden.] 	Bedankt voor het beantwoorden van die vragen! Je bent nu halverwege.	Het volgende deel gaat over zelf naar de EHBO gaan. Er zijn 2 versies, waarvan jij er willekeurig eentje toegewezen hebt gekregen:			{if(faSelfRandomSelect==\'lightComplaints\', \"\", \"\")} Tijdens het uitgaan naar de EHBO gaan omdat je een lichte klacht hebt (bijvoorbeeld een wondje, een gekneusde enkel, of je niet lekker voelen){if(faSelfRandomSelect==\'lightComplaints\', \" (deze heb jij toegewezen gekregen)\", \"\")};			{if(faSelfRandomSelect==\'alcoholComplaints\', \"\", \"\")} Tijdens het uitgaan naar de EHBO gaan omdat je alcohol-gerelateerde klachten hebt (bijvoorbeeld duizeligheid, out gaan, misselijkheid, of onderkoeling){if(faSelfRandomSelect==\'alcoholComplaints\', \" (deze heb jij toegewezen gekregen)\", \"\")};	Wil je meer invullen? Dan kun je dat hieronder aangeven."
data[, 193] <- factor(data[, 193], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[193] <- "subSurveysAlcUsers_lightComplaints"
# LimeSurvey Field type: F
data[, 194] <- as.numeric(data[, 194])
attributes(data)$variable.labels[194] <- "[Ik wil ook graag de vragen over de EHBO bezoeken met een alcohol-gerelateerde klacht beantwoorden.] 	Bedankt voor het beantwoorden van die vragen! Je bent nu halverwege.	Het volgende deel gaat over zelf naar de EHBO gaan. Er zijn 2 versies, waarvan jij er willekeurig eentje toegewezen hebt gekregen:			{if(faSelfRandomSelect==\'lightComplaints\', \"\", \"\")} Tijdens het uitgaan naar de EHBO gaan omdat je een lichte klacht hebt (bijvoorbeeld een wondje, een gekneusde enkel, of je niet lekker voelen){if(faSelfRandomSelect==\'lightComplaints\', \" (deze heb jij toegewezen gekregen)\", \"\")};			{if(faSelfRandomSelect==\'alcoholComplaints\', \"\", \"\")} Tijdens het uitgaan naar de EHBO gaan omdat je alcohol-gerelateerde klachten hebt (bijvoorbeeld duizeligheid, out gaan, misselijkheid, of onderkoeling){if(faSelfRandomSelect==\'alcoholComplaints\', \" (deze heb jij toegewezen gekregen)\", \"\")};	Wil je meer invullen? Dan kun je dat hieronder aangeven."
data[, 194] <- factor(data[, 194], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[194] <- "subSurveysAlcUsers_alcoholComplaints"
# LimeSurvey Field type: A
data[, 195] <- as.character(data[, 195])
attributes(data)$variable.labels[195] <- "De vragen hieronder gaan over de EHBO bij feesten, clubs, poppodia, en andere uitgaansgelegenheden.	Stel, je bent ergens in het komende halfjaar aan het uitgaan, en er is een EHBO op die locatie.	Zou je dan naar de EHBO gaan als je een lichte klacht hebt (bijvoorbeeld een wondje, gekneusde enkel, hoofdpijn, of als je je niet lekker voelt)?"
names(data)[195] <- "faSelfLintro"
# LimeSurvey Field type: F
data[, 196] <- as.numeric(data[, 196])
attributes(data)$variable.labels[196] <- "[... ben ik van plan om naar de EHBO te gaan.Absoluut niet | Absoluut wel] Als ik in het komende halfjaar op een festival of feest een lichte klacht heb ..."
data[, 196] <- factor(data[, 196], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[196] <- "faSelfLIntentionRAA_planning"
# LimeSurvey Field type: F
data[, 197] <- as.numeric(data[, 197])
attributes(data)$variable.labels[197] <- "[... ga ik naar de EHBO.Absoluut niet | Absoluut wel] Als ik in het komende halfjaar op een festival of feest een lichte klacht heb ..."
data[, 197] <- factor(data[, 197], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[197] <- "faSelfLIntentionRAA_willGo"
# LimeSurvey Field type: F
data[, 198] <- as.numeric(data[, 198])
attributes(data)$variable.labels[198] <- "[... wil ik naar de EHBO gaan.Absoluut niet | Absoluut wel] Als ik in het komende halfjaar op een festival of feest een lichte klacht heb ..."
data[, 198] <- factor(data[, 198], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[198] <- "faSelfLIntentionRAA_want"
# LimeSurvey Field type: F
data[, 199] <- as.numeric(data[, 199])
attributes(data)$variable.labels[199] <- "[Slecht|Goed] Als ik het komende halfjaar tijdens het uitgaan een lichte klacht heb, is het bezoeken van de EHBO ..."
data[, 199] <- factor(data[, 199], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[199] <- "faSelfLAttGeneral_good"
# LimeSurvey Field type: F
data[, 200] <- as.numeric(data[, 200])
attributes(data)$variable.labels[200] <- "[Onprettig|Prettig] Als ik het komende halfjaar tijdens het uitgaan een lichte klacht heb, is het bezoeken van de EHBO ..."
data[, 200] <- factor(data[, 200], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[200] <- "faSelfLAttGeneral_pleasant"
# LimeSurvey Field type: F
data[, 201] <- as.numeric(data[, 201])
attributes(data)$variable.labels[201] <- "[Dom|Slim] Als ik het komende halfjaar tijdens het uitgaan een lichte klacht heb, is het bezoeken van de EHBO ..."
data[, 201] <- factor(data[, 201], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[201] <- "faSelfLAttGeneral_smart"
# LimeSurvey Field type: F
data[, 202] <- as.numeric(data[, 202])
attributes(data)$variable.labels[202] <- "[Ongezond|Gezond] Als ik het komende halfjaar tijdens het uitgaan een lichte klacht heb, is het bezoeken van de EHBO ..."
data[, 202] <- factor(data[, 202], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[202] <- "faSelfLAttGeneral_healthy"
# LimeSurvey Field type: F
data[, 203] <- as.numeric(data[, 203])
attributes(data)$variable.labels[203] <- "[Saai|Spannend] Als ik het komende halfjaar tijdens het uitgaan een lichte klacht heb, is het bezoeken van de EHBO ..."
data[, 203] <- factor(data[, 203], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[203] <- "faSelfLAttGeneral_exciting"
# LimeSurvey Field type: F
data[, 204] <- as.numeric(data[, 204])
attributes(data)$variable.labels[204] <- "[De meeste mensen die belangrijk voor mij zijn vinden dat ik dan naar de EHBO moet gaan.Niet waar|Wel waar] Wat denk je dat mensen die belangrijk voor je zijn vinden dat je moet doen als je tijdens het uitgaan een lichte klacht hebt?"
data[, 204] <- factor(data[, 204], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[204] <- "faSelfLNormGeneral_in1"
# LimeSurvey Field type: F
data[, 205] <- as.numeric(data[, 205])
attributes(data)$variable.labels[205] <- "[De mensen van wie ik belangrijk vind wat ze denken, zouden het goed vinden als ik dan naar de EHBO zou gaan.Niet waar|Wel waar] Wat denk je dat mensen die belangrijk voor je zijn vinden dat je moet doen als je tijdens het uitgaan een lichte klacht hebt?"
data[, 205] <- factor(data[, 205], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[205] <- "faSelfLNormGeneral_in2"
# LimeSurvey Field type: F
data[, 206] <- as.numeric(data[, 206])
attributes(data)$variable.labels[206] <- "[De mensen die ik respecteer en bewonder zouden dan zelf naar de EHBO gaan.Zeker niet|Zeker wel] Wat denk je dat mensen die belangrijk voor je zijn vinden dat je moet doen als je tijdens het uitgaan een lichte klacht hebt?"
data[, 206] <- factor(data[, 206], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[206] <- "faSelfLNormGeneral_dn1"
# LimeSurvey Field type: F
data[, 207] <- as.numeric(data[, 207])
attributes(data)$variable.labels[207] <- "[De meeste mensen zoals ik gaan in die situatie naar de EHBO.Zeker niet|Zeker wel] Wat denk je dat mensen die belangrijk voor je zijn vinden dat je moet doen als je tijdens het uitgaan een lichte klacht hebt?"
data[, 207] <- factor(data[, 207], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[207] <- "faSelfLNormGeneral_dn2"
# LimeSurvey Field type: F
data[, 208] <- as.numeric(data[, 208])
attributes(data)$variable.labels[208] <- "[Als ik dan naar de EHBO zou willen gaan, dan zou mij dat . . .Zeker niet lukken|Zeker lukken]"
data[, 208] <- factor(data[, 208], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[208] <- "faSelfLPBCgeneral_ifwanted"
# LimeSurvey Field type: F
data[, 209] <- as.numeric(data[, 209])
attributes(data)$variable.labels[209] <- "[In die situatie naar de EHBO gaan is voor mij . . .Heel moeilijk|Heel makkelijk]"
data[, 209] <- factor(data[, 209], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[209] <- "faSelfLPBCgeneral_easy"
# LimeSurvey Field type: F
data[, 210] <- as.numeric(data[, 210])
attributes(data)$variable.labels[210] <- "[Ik heb . . . controle over of ik naar de EHBO ga als ik een lichte klacht heb.Helemaal geen|Volledige]"
data[, 210] <- factor(data[, 210], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[210] <- "faSelfLPBCgeneral_control"
# LimeSurvey Field type: F
data[, 211] <- as.numeric(data[, 211])
attributes(data)$variable.labels[211] <- "[Er zijn . . . factoren buiten mijzelf om die mede bepalen of ik dan naar de EHBO ga.Helemaal geen|Heel veel]"
data[, 211] <- factor(data[, 211], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[211] <- "faSelfLPBCgeneral_externalFactors"
# LimeSurvey Field type: F
data[, 212] <- as.numeric(data[, 212])
attributes(data)$variable.labels[212] <- "[Of ik dan naar de EHBO ga ligt . . .Alleen aan andere mensen|Alleen aan mij]"
data[, 212] <- factor(data[, 212], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[212] <- "faSelfLPBCgeneral_notOnlyMe"
# LimeSurvey Field type: A
data[, 213] <- as.character(data[, 213])
attributes(data)$variable.labels[213] <- "Bedankt voor die antwoorden. Op de volgende pagina gaan we hier wat dieper op in.	Maar eerst zijn we benieuwd hoe jij tegenover het bezoeken van de EHBO staat, als je een lichte klacht hebt. Als jij naar jezelf en naar andere mensen kijkt, wat zijn dan volgens jou de belangrijkste redenen waarom mensen niet naar de EHBO gaan als ze een lichte klacht hebben?"
names(data)[213] <- "faSelfLOpenWhyNot"
# LimeSurvey Field type: A
data[, 214] <- as.character(data[, 214])
attributes(data)$variable.labels[214] <- "En omgedraaid? Waarom zouden sommige mensen gaan terwijl anderen niet zouden gaan?"
names(data)[214] <- "faSelfLOpenWhy"
# LimeSurvey Field type: F
data[, 215] <- as.numeric(data[, 215])
attributes(data)$variable.labels[215] <- "[... blijf ik anoniem.Zeker niet | Zeker wel] 	Als ik het komende halfjaar met een lichte klacht naar de EHBO ga ..."
data[, 215] <- factor(data[, 215], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[215] <- "faSelfLAttExpect1_anonimity"
# LimeSurvey Field type: F
data[, 216] <- as.numeric(data[, 216])
attributes(data)$variable.labels[216] <- "[... worden mijn ouders gewaarschuwd.Zeker niet | Zeker wel] 	Als ik het komende halfjaar met een lichte klacht naar de EHBO ga ..."
data[, 216] <- factor(data[, 216], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[216] <- "faSelfLAttExpect1_parents"
# LimeSurvey Field type: F
data[, 217] <- as.numeric(data[, 217])
attributes(data)$variable.labels[217] <- "[... verpest dat de avond/dag.Absoluut niet | Absoluut wel] 	Als ik het komende halfjaar met een lichte klacht naar de EHBO ga ..."
data[, 217] <- factor(data[, 217], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[217] <- "faSelfLAttExpect1_ruinsEvening"
# LimeSurvey Field type: F
data[, 218] <- as.numeric(data[, 218])
attributes(data)$variable.labels[218] <- "[Als ik onder invloed bent en naar de EHBO ga, gooit de security me eruit.Zeker niet | Zeker wel]"
data[, 218] <- factor(data[, 218], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[218] <- "faSelfLAttExpect2_security"
# LimeSurvey Field type: F
data[, 219] <- as.numeric(data[, 219])
attributes(data)$variable.labels[219] <- "[Als ik onder invloed bent en naar de EHBO ga, wordt de politie gebeld.Zeker niet | Zeker wel]"
data[, 219] <- factor(data[, 219], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[219] <- "faSelfLAttExpect2_police"
# LimeSurvey Field type: F
data[, 220] <- as.numeric(data[, 220])
attributes(data)$variable.labels[220] <- "[Als ik een lichte klacht heb, gaat dat vanzelf over.Nooit | Altijd]"
data[, 220] <- factor(data[, 220], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[220] <- "faSelfLAttExpect2_solvesItself"
# LimeSurvey Field type: F
data[, 221] <- as.numeric(data[, 221])
attributes(data)$variable.labels[221] <- "[Als ik met een lichte klacht bij de EHBO bent geweest, mag ik daarna weer terug naar het feest.Zeker niet | Zeker wel]"
data[, 221] <- factor(data[, 221], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[221] <- "faSelfLAttExpect2_accessToParty"
# LimeSurvey Field type: F
data[, 222] <- as.numeric(data[, 222])
attributes(data)$variable.labels[222] <- "[Met een lichte klacht kan ik op de beveiliging afstappen.Absoluut niet | Absoluut wel]"
data[, 222] <- factor(data[, 222], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[222] <- "faSelfLAttExpect2_approachSecurity"
# LimeSurvey Field type: F
data[, 223] <- as.numeric(data[, 223])
attributes(data)$variable.labels[223] <- "[Mijn partner (vriendin of vriendin)Heel afkeurend|Heel goedkeurend] 	Wat denk je dat deze mensen er over denken als jij het komende halfjaar, als je tijdens het uitgaan een lichte klacht hebt, naar de EHBO gaat?"
data[, 223] <- factor(data[, 223], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[223] <- "faSelfLNormInjunct_partner"
# LimeSurvey Field type: F
data[, 224] <- as.numeric(data[, 224])
attributes(data)$variable.labels[224] <- "[Mijn beste vrienden/vriendinnenHeel afkeurend|Heel goedkeurend] 	Wat denk je dat deze mensen er over denken als jij het komende halfjaar, als je tijdens het uitgaan een lichte klacht hebt, naar de EHBO gaat?"
data[, 224] <- factor(data[, 224], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[224] <- "faSelfLNormInjunct_bestFriends"
# LimeSurvey Field type: F
data[, 225] <- as.numeric(data[, 225])
attributes(data)$variable.labels[225] <- "[Mijn andere vriendenHeel afkeurend|Heel goedkeurend] 	Wat denk je dat deze mensen er over denken als jij het komende halfjaar, als je tijdens het uitgaan een lichte klacht hebt, naar de EHBO gaat?"
data[, 225] <- factor(data[, 225], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[225] <- "faSelfLNormInjunct_otherFriends"
# LimeSurvey Field type: F
data[, 226] <- as.numeric(data[, 226])
attributes(data)$variable.labels[226] <- "[De meeste mensen op een feestHeel afkeurend|Heel goedkeurend] 	Wat denk je dat deze mensen er over denken als jij het komende halfjaar, als je tijdens het uitgaan een lichte klacht hebt, naar de EHBO gaat?"
data[, 226] <- factor(data[, 226], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[226] <- "faSelfLNormInjunct_partyPeople"
# LimeSurvey Field type: F
data[, 227] <- as.numeric(data[, 227])
attributes(data)$variable.labels[227] <- "[Mijn ouders/verzorgersHeel afkeurend|Heel goedkeurend] 	Wat denk je dat deze mensen er over denken als jij het komende halfjaar, als je tijdens het uitgaan een lichte klacht hebt, naar de EHBO gaat?"
data[, 227] <- factor(data[, 227], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[227] <- "faSelfLNormInjunct_parents"
# LimeSurvey Field type: F
data[, 228] <- as.numeric(data[, 228])
attributes(data)$variable.labels[228] <- "[Mijn broers/zussenHeel afkeurend|Heel goedkeurend] 	Wat denk je dat deze mensen er over denken als jij het komende halfjaar, als je tijdens het uitgaan een lichte klacht hebt, naar de EHBO gaat?"
data[, 228] <- factor(data[, 228], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[228] <- "faSelfLNormInjunct_siblings"
# LimeSurvey Field type: F
data[, 229] <- as.numeric(data[, 229])
attributes(data)$variable.labels[229] <- "[Mijn partner (vriendin of vriendin)Heel onbelangrijk|Heel belangrijk] Hoe belangrijk is hun mening voor jou met betrekking tot of jij naar de EHBO gaat?"
data[, 229] <- factor(data[, 229], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[229] <- "faSelfLNormMTC_partner"
# LimeSurvey Field type: F
data[, 230] <- as.numeric(data[, 230])
attributes(data)$variable.labels[230] <- "[Mijn beste vrienden/vriendinnenHeel onbelangrijk|Heel belangrijk] Hoe belangrijk is hun mening voor jou met betrekking tot of jij naar de EHBO gaat?"
data[, 230] <- factor(data[, 230], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[230] <- "faSelfLNormMTC_bestFriends"
# LimeSurvey Field type: F
data[, 231] <- as.numeric(data[, 231])
attributes(data)$variable.labels[231] <- "[Mijn andere vriendenHeel onbelangrijk|Heel belangrijk] Hoe belangrijk is hun mening voor jou met betrekking tot of jij naar de EHBO gaat?"
data[, 231] <- factor(data[, 231], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[231] <- "faSelfLNormMTC_otherFriends"
# LimeSurvey Field type: F
data[, 232] <- as.numeric(data[, 232])
attributes(data)$variable.labels[232] <- "[De meeste mensen op een feestHeel onbelangrijk|Heel belangrijk] Hoe belangrijk is hun mening voor jou met betrekking tot of jij naar de EHBO gaat?"
data[, 232] <- factor(data[, 232], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[232] <- "faSelfLNormMTC_partyPeople"
# LimeSurvey Field type: F
data[, 233] <- as.numeric(data[, 233])
attributes(data)$variable.labels[233] <- "[Mijn ouders/verzorgersHeel onbelangrijk|Heel belangrijk] Hoe belangrijk is hun mening voor jou met betrekking tot of jij naar de EHBO gaat?"
data[, 233] <- factor(data[, 233], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[233] <- "faSelfLNormMTC_parents"
# LimeSurvey Field type: F
data[, 234] <- as.numeric(data[, 234])
attributes(data)$variable.labels[234] <- "[Mijn broers/zussenHeel onbelangrijk|Heel belangrijk] Hoe belangrijk is hun mening voor jou met betrekking tot of jij naar de EHBO gaat?"
data[, 234] <- factor(data[, 234], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[234] <- "faSelfLNormMTC_siblings"
# LimeSurvey Field type: F
data[, 235] <- as.numeric(data[, 235])
attributes(data)$variable.labels[235] <- "[Mijn partner (vriendin of vriendin) zou ...Nooit naar de EHBO gaan|Altijd naar de EHBO gaan] Wat doen deze mensen zelf als ze tijdens het uitgaan een lichte klacht hebben, denk je?"
data[, 235] <- factor(data[, 235], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[235] <- "faSelfLNormDescr_partner"
# LimeSurvey Field type: F
data[, 236] <- as.numeric(data[, 236])
attributes(data)$variable.labels[236] <- "[Mijn beste vrienden/vriendinnen zouden ...Nooit naar de EHBO gaan|Altijd naar de EHBO gaan] Wat doen deze mensen zelf als ze tijdens het uitgaan een lichte klacht hebben, denk je?"
data[, 236] <- factor(data[, 236], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[236] <- "faSelfLNormDescr_bestFriends"
# LimeSurvey Field type: F
data[, 237] <- as.numeric(data[, 237])
attributes(data)$variable.labels[237] <- "[Mijn andere vrienden/vriendinnen zouden ...Nooit naar de EHBO gaan|Altijd naar de EHBO gaan] Wat doen deze mensen zelf als ze tijdens het uitgaan een lichte klacht hebben, denk je?"
data[, 237] <- factor(data[, 237], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[237] <- "faSelfLNormDescr_otherFriends"
# LimeSurvey Field type: F
data[, 238] <- as.numeric(data[, 238])
attributes(data)$variable.labels[238] <- "[De meeste mensen op een feest zouden ...Nooit naar de EHBO gaan|Altijd naar de EHBO gaan] Wat doen deze mensen zelf als ze tijdens het uitgaan een lichte klacht hebben, denk je?"
data[, 238] <- factor(data[, 238], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[238] <- "faSelfLNormDescr_partyPeople"
# LimeSurvey Field type: F
data[, 239] <- as.numeric(data[, 239])
attributes(data)$variable.labels[239] <- "[Mijn ouders/verzorgers zouden ...Nooit naar de EHBO gaan|Altijd naar de EHBO gaan] Wat doen deze mensen zelf als ze tijdens het uitgaan een lichte klacht hebben, denk je?"
data[, 239] <- factor(data[, 239], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[239] <- "faSelfLNormDescr_parents"
# LimeSurvey Field type: F
data[, 240] <- as.numeric(data[, 240])
attributes(data)$variable.labels[240] <- "[Mijn broers/zussen zouden ...Nooit naar de EHBO gaan|Altijd naar de EHBO gaan] Wat doen deze mensen zelf als ze tijdens het uitgaan een lichte klacht hebben, denk je?"
data[, 240] <- factor(data[, 240], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[240] <- "faSelfLNormDescr_siblings"
# LimeSurvey Field type: F
data[, 241] <- as.numeric(data[, 241])
attributes(data)$variable.labels[241] <- "[Als ik tijdens het uitgaan een lichte klacht heb, weet ik waar ik de EHBO kan vinden.Nooit | Altijd] Hieronder staan een aantal stellingen over de EHBO. Kun je aangeven wat je hiervan denkt?"
data[, 241] <- factor(data[, 241], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[241] <- "faSelfLContrBeliefs_knowsLocation"
# LimeSurvey Field type: F
data[, 242] <- as.numeric(data[, 242])
attributes(data)$variable.labels[242] <- "[Als ik tijdens het uitgaan een lichte klacht heb, dan kan de EHBO helpen.Absoluut niet | Absoluut wel] Hieronder staan een aantal stellingen over de EHBO. Kun je aangeven wat je hiervan denkt?"
data[, 242] <- factor(data[, 242], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[242] <- "faSelfLContrBeliefs_faCanHelp"
# LimeSurvey Field type: A
data[, 243] <- as.character(data[, 243])
attributes(data)$variable.labels[243] <- "De vragen hieronder gaan over de EHBO bij feesten, clubs, poppodia, en andere uitgaansgelegenheden.	Stel, je bent ergens in het komende halfjaar aan het uitgaan, je drinkt alcohol, en er is een EHBO op die locatie.	Zou je dan naar de EHBO gaan als je een alcohol-gerelateerde klacht hebt (bijvoorbeeld extreem duizelig of misselijk, (bijna) outgaan of onderkoeld raken)?"
names(data)[243] <- "faSelfAintro"
# LimeSurvey Field type: F
data[, 244] <- as.numeric(data[, 244])
attributes(data)$variable.labels[244] <- "[... ben ik van plan om naar de EHBO te gaan.Absoluut niet | Absoluut wel] Als ik in het komende halfjaar op een festival of feest een alcohol-gerelateerde klacht heb ..."
data[, 244] <- factor(data[, 244], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[244] <- "faSelfAIntentionRAA_planning"
# LimeSurvey Field type: F
data[, 245] <- as.numeric(data[, 245])
attributes(data)$variable.labels[245] <- "[... ga ik naar de EHBO.Absoluut niet | Absoluut wel] Als ik in het komende halfjaar op een festival of feest een alcohol-gerelateerde klacht heb ..."
data[, 245] <- factor(data[, 245], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[245] <- "faSelfAIntentionRAA_willGo"
# LimeSurvey Field type: F
data[, 246] <- as.numeric(data[, 246])
attributes(data)$variable.labels[246] <- "[... wil ik naar de EHBO gaan.Absoluut niet | Absoluut wel] Als ik in het komende halfjaar op een festival of feest een alcohol-gerelateerde klacht heb ..."
data[, 246] <- factor(data[, 246], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[246] <- "faSelfAIntentionRAA_want"
# LimeSurvey Field type: F
data[, 247] <- as.numeric(data[, 247])
attributes(data)$variable.labels[247] <- "[Slecht|Goed] Als ik het komende halfjaar tijdens het uitgaan een alcohol-gerelateerde klacht heb, is het bezoeken van de EHBO ..."
data[, 247] <- factor(data[, 247], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[247] <- "faSelfAAttGeneral_good"
# LimeSurvey Field type: F
data[, 248] <- as.numeric(data[, 248])
attributes(data)$variable.labels[248] <- "[Onprettig|Prettig] Als ik het komende halfjaar tijdens het uitgaan een alcohol-gerelateerde klacht heb, is het bezoeken van de EHBO ..."
data[, 248] <- factor(data[, 248], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[248] <- "faSelfAAttGeneral_pleasant"
# LimeSurvey Field type: F
data[, 249] <- as.numeric(data[, 249])
attributes(data)$variable.labels[249] <- "[Dom|Slim] Als ik het komende halfjaar tijdens het uitgaan een alcohol-gerelateerde klacht heb, is het bezoeken van de EHBO ..."
data[, 249] <- factor(data[, 249], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[249] <- "faSelfAAttGeneral_smart"
# LimeSurvey Field type: F
data[, 250] <- as.numeric(data[, 250])
attributes(data)$variable.labels[250] <- "[Ongezond|Gezond] Als ik het komende halfjaar tijdens het uitgaan een alcohol-gerelateerde klacht heb, is het bezoeken van de EHBO ..."
data[, 250] <- factor(data[, 250], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[250] <- "faSelfAAttGeneral_healthy"
# LimeSurvey Field type: F
data[, 251] <- as.numeric(data[, 251])
attributes(data)$variable.labels[251] <- "[Saai|Spannend] Als ik het komende halfjaar tijdens het uitgaan een alcohol-gerelateerde klacht heb, is het bezoeken van de EHBO ..."
data[, 251] <- factor(data[, 251], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[251] <- "faSelfAAttGeneral_exciting"
# LimeSurvey Field type: F
data[, 252] <- as.numeric(data[, 252])
attributes(data)$variable.labels[252] <- "[De meeste mensen die belangrijk voor mij zijn vinden dat ik dan naar de EHBO moet gaan.Niet waar|Wel waar] Wat denk je dat mensen die belangrijk voor je zijn vinden dat je moet doen als je tijdens het uitgaan een alcohol-gerelateerde klacht hebt?"
data[, 252] <- factor(data[, 252], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[252] <- "faSelfANormGeneral_in1"
# LimeSurvey Field type: F
data[, 253] <- as.numeric(data[, 253])
attributes(data)$variable.labels[253] <- "[De mensen van wie ik belangrijk vind wat ze denken, zouden het goed vinden als ik dan naar de EHBO zou gaan.Niet waar|Wel waar] Wat denk je dat mensen die belangrijk voor je zijn vinden dat je moet doen als je tijdens het uitgaan een alcohol-gerelateerde klacht hebt?"
data[, 253] <- factor(data[, 253], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[253] <- "faSelfANormGeneral_in2"
# LimeSurvey Field type: F
data[, 254] <- as.numeric(data[, 254])
attributes(data)$variable.labels[254] <- "[De mensen die ik respecteer en bewonder zouden dan zelf naar de EHBO gaan.Zeker niet|Zeker wel] Wat denk je dat mensen die belangrijk voor je zijn vinden dat je moet doen als je tijdens het uitgaan een alcohol-gerelateerde klacht hebt?"
data[, 254] <- factor(data[, 254], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[254] <- "faSelfANormGeneral_dn1"
# LimeSurvey Field type: F
data[, 255] <- as.numeric(data[, 255])
attributes(data)$variable.labels[255] <- "[De meeste mensen zoals ik gaan in die situatie naar de EHBO.Zeker niet|Zeker wel] Wat denk je dat mensen die belangrijk voor je zijn vinden dat je moet doen als je tijdens het uitgaan een alcohol-gerelateerde klacht hebt?"
data[, 255] <- factor(data[, 255], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[255] <- "faSelfANormGeneral_dn2"
# LimeSurvey Field type: F
data[, 256] <- as.numeric(data[, 256])
attributes(data)$variable.labels[256] <- "[Als ik dan naar de EHBO zou willen gaan, dan zou mij dat . . .Zeker niet lukken|Zeker lukken]"
data[, 256] <- factor(data[, 256], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[256] <- "faSelfAPBCgeneral_ifwanted"
# LimeSurvey Field type: F
data[, 257] <- as.numeric(data[, 257])
attributes(data)$variable.labels[257] <- "[In die situatie naar de EHBO gaan is voor mij . . .Heel moeilijk|Heel makkelijk]"
data[, 257] <- factor(data[, 257], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[257] <- "faSelfAPBCgeneral_easy"
# LimeSurvey Field type: F
data[, 258] <- as.numeric(data[, 258])
attributes(data)$variable.labels[258] <- "[Ik heb . . . controle over of ik naar de EHBO ga als ik een alcohol-gerelateerde klacht heb.Helemaal geen|Volledige]"
data[, 258] <- factor(data[, 258], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[258] <- "faSelfAPBCgeneral_control"
# LimeSurvey Field type: F
data[, 259] <- as.numeric(data[, 259])
attributes(data)$variable.labels[259] <- "[Er zijn . . . factoren buiten mijzelf om die mede bepalen of ik dan naar de EHBO ga.Helemaal geen|Heel veel]"
data[, 259] <- factor(data[, 259], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[259] <- "faSelfAPBCgeneral_externalFactors"
# LimeSurvey Field type: F
data[, 260] <- as.numeric(data[, 260])
attributes(data)$variable.labels[260] <- "[Of ik dan naar de EHBO ga ligt . . .Alleen aan andere mensen|Alleen aan mij]"
data[, 260] <- factor(data[, 260], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[260] <- "faSelfAPBCgeneral_notOnlyMe"
# LimeSurvey Field type: A
data[, 261] <- as.character(data[, 261])
attributes(data)$variable.labels[261] <- "Bedankt voor die antwoorden. Op de volgende pagina gaan we hier wat dieper op in.	Maar eerst zijn we benieuwd hoe jij tegenover het bezoeken van de EHBO staat, als je een alcohol-gerelateerde klacht hebt. Als jij naar jezelf en naar andere mensen kijkt, wat zijn dan volgens jou de belangrijkste redenen waarom mensen niet naar de EHBO gaan als ze een alcohol-gerelateerde klacht hebben?"
names(data)[261] <- "faSelfAOpenWhyNot"
# LimeSurvey Field type: A
data[, 262] <- as.character(data[, 262])
attributes(data)$variable.labels[262] <- "En omgedraaid? Waarom zouden sommige mensen gaan terwijl anderen niet zouden gaan?"
names(data)[262] <- "faSelfAOpenWhy"
# LimeSurvey Field type: F
data[, 263] <- as.numeric(data[, 263])
attributes(data)$variable.labels[263] <- "[... blijf ik anoniem.Zeker niet | Zeker wel] Als ik het komende halfjaar met een alcohol-gerelateerde klacht naar de EHBO ga ..."
data[, 263] <- factor(data[, 263], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[263] <- "faSelfAAttExpect1_anonimity"
# LimeSurvey Field type: F
data[, 264] <- as.numeric(data[, 264])
attributes(data)$variable.labels[264] <- "[... worden mijn ouders gewaarschuwd.Zeker niet | Zeker wel] Als ik het komende halfjaar met een alcohol-gerelateerde klacht naar de EHBO ga ..."
data[, 264] <- factor(data[, 264], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[264] <- "faSelfAAttExpect1_parents"
# LimeSurvey Field type: F
data[, 265] <- as.numeric(data[, 265])
attributes(data)$variable.labels[265] <- "[... verpest dat de avond/dag.Absoluut niet | Absoluut wel] Als ik het komende halfjaar met een alcohol-gerelateerde klacht naar de EHBO ga ..."
data[, 265] <- factor(data[, 265], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[265] <- "faSelfAAttExpect1_ruinsEvening"
# LimeSurvey Field type: F
data[, 266] <- as.numeric(data[, 266])
attributes(data)$variable.labels[266] <- "[Als ik alcohol heb gebruikt en naar de EHBO ga, gooit de security me eruit.Zeker niet | Zeker wel]"
data[, 266] <- factor(data[, 266], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[266] <- "faSelfAAttExpect2_security"
# LimeSurvey Field type: F
data[, 267] <- as.numeric(data[, 267])
attributes(data)$variable.labels[267] <- "[Als ik alcohol heb gebruikt en naar de EHBO ga, wordt de politie gebeld.Zeker niet | Zeker wel]"
data[, 267] <- factor(data[, 267], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[267] <- "faSelfAAttExpect2_police"
# LimeSurvey Field type: F
data[, 268] <- as.numeric(data[, 268])
attributes(data)$variable.labels[268] <- "[Als ik een alcohol-gerelateerde klacht heb, gaat dat vanzelf over.Nooit | Altijd]"
data[, 268] <- factor(data[, 268], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[268] <- "faSelfAAttExpect2_solvesItself"
# LimeSurvey Field type: F
data[, 269] <- as.numeric(data[, 269])
attributes(data)$variable.labels[269] <- "[Als ik met een alcohol-gerelateerde klacht bij de EHBO ben geweest, mag ik daarna weer terug naar het feest.Zeker niet | Zeker wel]"
data[, 269] <- factor(data[, 269], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[269] <- "faSelfAAttExpect2_accessToParty"
# LimeSurvey Field type: F
data[, 270] <- as.numeric(data[, 270])
attributes(data)$variable.labels[270] <- "[Met een alcohol-gerelateerde klacht kan ik op de beveiliging afstappen.Absoluut niet | Absoluut wel]"
data[, 270] <- factor(data[, 270], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[270] <- "faSelfAAttExpect2_approachSecurity"
# LimeSurvey Field type: F
data[, 271] <- as.numeric(data[, 271])
attributes(data)$variable.labels[271] <- "[Mijn partner (vriendin of vriendin)Heel afkeurend|Heel goedkeurend] 	Wat denk je dat deze mensen er over denken als jij het komende halfjaar, als je tijdens het uitgaan een alcohol-gerelateerde klacht hebt, naar de EHBO gaat?"
data[, 271] <- factor(data[, 271], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[271] <- "faSelfANormInjunct_partner"
# LimeSurvey Field type: F
data[, 272] <- as.numeric(data[, 272])
attributes(data)$variable.labels[272] <- "[Mijn beste vrienden/vriendinnenHeel afkeurend|Heel goedkeurend] 	Wat denk je dat deze mensen er over denken als jij het komende halfjaar, als je tijdens het uitgaan een alcohol-gerelateerde klacht hebt, naar de EHBO gaat?"
data[, 272] <- factor(data[, 272], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[272] <- "faSelfANormInjunct_bestFriends"
# LimeSurvey Field type: F
data[, 273] <- as.numeric(data[, 273])
attributes(data)$variable.labels[273] <- "[Mijn andere vriendenHeel afkeurend|Heel goedkeurend] 	Wat denk je dat deze mensen er over denken als jij het komende halfjaar, als je tijdens het uitgaan een alcohol-gerelateerde klacht hebt, naar de EHBO gaat?"
data[, 273] <- factor(data[, 273], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[273] <- "faSelfANormInjunct_otherFriends"
# LimeSurvey Field type: F
data[, 274] <- as.numeric(data[, 274])
attributes(data)$variable.labels[274] <- "[De meeste mensen op een feestHeel afkeurend|Heel goedkeurend] 	Wat denk je dat deze mensen er over denken als jij het komende halfjaar, als je tijdens het uitgaan een alcohol-gerelateerde klacht hebt, naar de EHBO gaat?"
data[, 274] <- factor(data[, 274], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[274] <- "faSelfANormInjunct_partyPeople"
# LimeSurvey Field type: F
data[, 275] <- as.numeric(data[, 275])
attributes(data)$variable.labels[275] <- "[Mijn ouders/verzorgersHeel afkeurend|Heel goedkeurend] 	Wat denk je dat deze mensen er over denken als jij het komende halfjaar, als je tijdens het uitgaan een alcohol-gerelateerde klacht hebt, naar de EHBO gaat?"
data[, 275] <- factor(data[, 275], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[275] <- "faSelfANormInjunct_parents"
# LimeSurvey Field type: F
data[, 276] <- as.numeric(data[, 276])
attributes(data)$variable.labels[276] <- "[Mijn broers/zussenHeel afkeurend|Heel goedkeurend] 	Wat denk je dat deze mensen er over denken als jij het komende halfjaar, als je tijdens het uitgaan een alcohol-gerelateerde klacht hebt, naar de EHBO gaat?"
data[, 276] <- factor(data[, 276], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[276] <- "faSelfANormInjunct_siblings"
# LimeSurvey Field type: F
data[, 277] <- as.numeric(data[, 277])
attributes(data)$variable.labels[277] <- "[Mijn partner (vriendin of vriendin)Heel onbelangrijk|Heel belangrijk] Hoe belangrijk is hun mening voor jou met betrekking tot of jij naar de EHBO gaat?"
data[, 277] <- factor(data[, 277], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[277] <- "faSelfANormMTC_partner"
# LimeSurvey Field type: F
data[, 278] <- as.numeric(data[, 278])
attributes(data)$variable.labels[278] <- "[Mijn beste vrienden/vriendinnenHeel onbelangrijk|Heel belangrijk] Hoe belangrijk is hun mening voor jou met betrekking tot of jij naar de EHBO gaat?"
data[, 278] <- factor(data[, 278], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[278] <- "faSelfANormMTC_bestFriends"
# LimeSurvey Field type: F
data[, 279] <- as.numeric(data[, 279])
attributes(data)$variable.labels[279] <- "[Mijn andere vriendenHeel onbelangrijk|Heel belangrijk] Hoe belangrijk is hun mening voor jou met betrekking tot of jij naar de EHBO gaat?"
data[, 279] <- factor(data[, 279], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[279] <- "faSelfANormMTC_otherFriends"
# LimeSurvey Field type: F
data[, 280] <- as.numeric(data[, 280])
attributes(data)$variable.labels[280] <- "[De meeste mensen op een feestHeel onbelangrijk|Heel belangrijk] Hoe belangrijk is hun mening voor jou met betrekking tot of jij naar de EHBO gaat?"
data[, 280] <- factor(data[, 280], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[280] <- "faSelfANormMTC_partyPeople"
# LimeSurvey Field type: F
data[, 281] <- as.numeric(data[, 281])
attributes(data)$variable.labels[281] <- "[Mijn ouders/verzorgersHeel onbelangrijk|Heel belangrijk] Hoe belangrijk is hun mening voor jou met betrekking tot of jij naar de EHBO gaat?"
data[, 281] <- factor(data[, 281], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[281] <- "faSelfANormMTC_parents"
# LimeSurvey Field type: F
data[, 282] <- as.numeric(data[, 282])
attributes(data)$variable.labels[282] <- "[Mijn broers/zussenHeel onbelangrijk|Heel belangrijk] Hoe belangrijk is hun mening voor jou met betrekking tot of jij naar de EHBO gaat?"
data[, 282] <- factor(data[, 282], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[282] <- "faSelfANormMTC_siblings"
# LimeSurvey Field type: F
data[, 283] <- as.numeric(data[, 283])
attributes(data)$variable.labels[283] <- "[Mijn partner (vriendin of vriendin) zou ...Nooit naar de EHBO gaan|Altijd naar de EHBO gaan] Wat doen deze mensen zelf als ze tijdens het uitgaan een alcohol-gerelateerde klacht hebben, denk je?"
data[, 283] <- factor(data[, 283], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[283] <- "faSelfANormDescr_partner"
# LimeSurvey Field type: F
data[, 284] <- as.numeric(data[, 284])
attributes(data)$variable.labels[284] <- "[Mijn beste vrienden/vriendinnen zouden ...Nooit naar de EHBO gaan|Altijd naar de EHBO gaan] Wat doen deze mensen zelf als ze tijdens het uitgaan een alcohol-gerelateerde klacht hebben, denk je?"
data[, 284] <- factor(data[, 284], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[284] <- "faSelfANormDescr_bestFriends"
# LimeSurvey Field type: F
data[, 285] <- as.numeric(data[, 285])
attributes(data)$variable.labels[285] <- "[Mijn andere vrienden/vriendinnen zouden ...Nooit naar de EHBO gaan|Altijd naar de EHBO gaan] Wat doen deze mensen zelf als ze tijdens het uitgaan een alcohol-gerelateerde klacht hebben, denk je?"
data[, 285] <- factor(data[, 285], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[285] <- "faSelfANormDescr_otherFriends"
# LimeSurvey Field type: F
data[, 286] <- as.numeric(data[, 286])
attributes(data)$variable.labels[286] <- "[De meeste mensen op een feest zouden ...Nooit naar de EHBO gaan|Altijd naar de EHBO gaan] Wat doen deze mensen zelf als ze tijdens het uitgaan een alcohol-gerelateerde klacht hebben, denk je?"
data[, 286] <- factor(data[, 286], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[286] <- "faSelfANormDescr_partyPeople"
# LimeSurvey Field type: F
data[, 287] <- as.numeric(data[, 287])
attributes(data)$variable.labels[287] <- "[Mijn ouders/verzorgers zouden ...Nooit naar de EHBO gaan|Altijd naar de EHBO gaan] Wat doen deze mensen zelf als ze tijdens het uitgaan een alcohol-gerelateerde klacht hebben, denk je?"
data[, 287] <- factor(data[, 287], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[287] <- "faSelfANormDescr_parents"
# LimeSurvey Field type: F
data[, 288] <- as.numeric(data[, 288])
attributes(data)$variable.labels[288] <- "[Mijn broers/zussen zouden ...Nooit naar de EHBO gaan|Altijd naar de EHBO gaan] Wat doen deze mensen zelf als ze tijdens het uitgaan een alcohol-gerelateerde klacht hebben, denk je?"
data[, 288] <- factor(data[, 288], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[288] <- "faSelfANormDescr_siblings"
# LimeSurvey Field type: F
data[, 289] <- as.numeric(data[, 289])
attributes(data)$variable.labels[289] <- "[Als ik tijdens het uitgaan een alcohol-gerelateerde klacht heb, weet ik waar ik de EHBO kan vinden.Nooit | Altijd] Hieronder staan een aantal stellingen over de EHBO. Kun je aangeven wat je hiervan denkt?"
data[, 289] <- factor(data[, 289], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[289] <- "faSelfAContrBeliefs_knowsLocation"
# LimeSurvey Field type: F
data[, 290] <- as.numeric(data[, 290])
attributes(data)$variable.labels[290] <- "[Als ik tijdens het uitgaan een alcohol-gerelateerde klacht heb, dan kan de EHBO helpen.Absoluut niet | Absoluut wel] Hieronder staan een aantal stellingen over de EHBO. Kun je aangeven wat je hiervan denkt?"
data[, 290] <- factor(data[, 290], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[290] <- "faSelfAContrBeliefs_faCanHelp"
# LimeSurvey Field type: A
data[, 291] <- as.character(data[, 291])
attributes(data)$variable.labels[291] <- "De vragen hieronder gaan over de EHBO bij feesten, clubs, poppodia, en andere uitgaansgelegenheden.	Stel, je bent ergens in het komende halfjaar aan het uitgaan, je gebruikt drugs, en er is een EHBO op die locatie.	Zou je dan naar de EHBO gaan als je een drugs-gerelateerde klacht hebt (bijvoorbeeld angst, verwardheid, hoge hartslag, out gaan, of oververhitting)?"
names(data)[291] <- "faSelfSintro"
# LimeSurvey Field type: F
data[, 292] <- as.numeric(data[, 292])
attributes(data)$variable.labels[292] <- "[... ben ik van plan om naar de EHBO te gaan.Absoluut niet | Absoluut wel] Als ik in het komende halfjaar op een festival of feest een drugs-gerelateerde klacht heb ..."
data[, 292] <- factor(data[, 292], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[292] <- "faSelfSIntentionRAA_planning"
# LimeSurvey Field type: F
data[, 293] <- as.numeric(data[, 293])
attributes(data)$variable.labels[293] <- "[... ga ik naar de EHBO.Absoluut niet | Absoluut wel] Als ik in het komende halfjaar op een festival of feest een drugs-gerelateerde klacht heb ..."
data[, 293] <- factor(data[, 293], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[293] <- "faSelfSIntentionRAA_willGo"
# LimeSurvey Field type: F
data[, 294] <- as.numeric(data[, 294])
attributes(data)$variable.labels[294] <- "[... wil ik naar de EHBO gaan.Absoluut niet | Absoluut wel] Als ik in het komende halfjaar op een festival of feest een drugs-gerelateerde klacht heb ..."
data[, 294] <- factor(data[, 294], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[294] <- "faSelfSIntentionRAA_want"
# LimeSurvey Field type: F
data[, 295] <- as.numeric(data[, 295])
attributes(data)$variable.labels[295] <- "[Slecht|Goed] Als ik het komende halfjaar tijdens het uitgaan een drugs-gerelateerde klacht heb, is het bezoeken van de EHBO ..."
data[, 295] <- factor(data[, 295], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[295] <- "faSelfSAttGeneral_good"
# LimeSurvey Field type: F
data[, 296] <- as.numeric(data[, 296])
attributes(data)$variable.labels[296] <- "[Onprettig|Prettig] Als ik het komende halfjaar tijdens het uitgaan een drugs-gerelateerde klacht heb, is het bezoeken van de EHBO ..."
data[, 296] <- factor(data[, 296], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[296] <- "faSelfSAttGeneral_pleasant"
# LimeSurvey Field type: F
data[, 297] <- as.numeric(data[, 297])
attributes(data)$variable.labels[297] <- "[Dom|Slim] Als ik het komende halfjaar tijdens het uitgaan een drugs-gerelateerde klacht heb, is het bezoeken van de EHBO ..."
data[, 297] <- factor(data[, 297], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[297] <- "faSelfSAttGeneral_smart"
# LimeSurvey Field type: F
data[, 298] <- as.numeric(data[, 298])
attributes(data)$variable.labels[298] <- "[Ongezond|Gezond] Als ik het komende halfjaar tijdens het uitgaan een drugs-gerelateerde klacht heb, is het bezoeken van de EHBO ..."
data[, 298] <- factor(data[, 298], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[298] <- "faSelfSAttGeneral_healthy"
# LimeSurvey Field type: F
data[, 299] <- as.numeric(data[, 299])
attributes(data)$variable.labels[299] <- "[Saai|Spannend] Als ik het komende halfjaar tijdens het uitgaan een drugs-gerelateerde klacht heb, is het bezoeken van de EHBO ..."
data[, 299] <- factor(data[, 299], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[299] <- "faSelfSAttGeneral_exciting"
# LimeSurvey Field type: F
data[, 300] <- as.numeric(data[, 300])
attributes(data)$variable.labels[300] <- "[De meeste mensen die belangrijk voor mij zijn vinden dat ik dan naar de EHBO moet gaan.Niet waar|Wel waar] Wat denk je dat mensen die belangrijk voor je zijn vinden dat je moet doen als je tijdens het uitgaan een drugs-gerelateerde klacht hebt?"
data[, 300] <- factor(data[, 300], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[300] <- "faSelfSNormGeneral_in1"
# LimeSurvey Field type: F
data[, 301] <- as.numeric(data[, 301])
attributes(data)$variable.labels[301] <- "[De mensen van wie ik belangrijk vind wat ze denken, zouden het goed vinden als ik dan naar de EHBO zou gaan.Niet waar|Wel waar] Wat denk je dat mensen die belangrijk voor je zijn vinden dat je moet doen als je tijdens het uitgaan een drugs-gerelateerde klacht hebt?"
data[, 301] <- factor(data[, 301], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[301] <- "faSelfSNormGeneral_in2"
# LimeSurvey Field type: F
data[, 302] <- as.numeric(data[, 302])
attributes(data)$variable.labels[302] <- "[De mensen die ik respecteer en bewonder zouden dan zelf naar de EHBO gaan.Zeker niet|Zeker wel] Wat denk je dat mensen die belangrijk voor je zijn vinden dat je moet doen als je tijdens het uitgaan een drugs-gerelateerde klacht hebt?"
data[, 302] <- factor(data[, 302], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[302] <- "faSelfSNormGeneral_dn1"
# LimeSurvey Field type: F
data[, 303] <- as.numeric(data[, 303])
attributes(data)$variable.labels[303] <- "[De meeste mensen zoals ik gaan in die situatie naar de EHBO.Zeker niet|Zeker wel] Wat denk je dat mensen die belangrijk voor je zijn vinden dat je moet doen als je tijdens het uitgaan een drugs-gerelateerde klacht hebt?"
data[, 303] <- factor(data[, 303], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[303] <- "faSelfSNormGeneral_dn2"
# LimeSurvey Field type: F
data[, 304] <- as.numeric(data[, 304])
attributes(data)$variable.labels[304] <- "[Als ik dan naar de EHBO zou willen gaan, dan zou mij dat . . .Zeker niet lukken|Zeker lukken]"
data[, 304] <- factor(data[, 304], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[304] <- "faSelfSPBCgeneral_ifwanted"
# LimeSurvey Field type: F
data[, 305] <- as.numeric(data[, 305])
attributes(data)$variable.labels[305] <- "[In die situatie naar de EHBO gaan is voor mij . . .Heel moeilijk|Heel makkelijk]"
data[, 305] <- factor(data[, 305], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[305] <- "faSelfSPBCgeneral_easy"
# LimeSurvey Field type: F
data[, 306] <- as.numeric(data[, 306])
attributes(data)$variable.labels[306] <- "[Ik heb . . . controle over of ik naar de EHBO ga als ik een drugs-gerelateerde klacht heb.Helemaal geen|Volledige]"
data[, 306] <- factor(data[, 306], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[306] <- "faSelfSPBCgeneral_control"
# LimeSurvey Field type: F
data[, 307] <- as.numeric(data[, 307])
attributes(data)$variable.labels[307] <- "[Er zijn . . . factoren buiten mijzelf om die mede bepalen of ik dan naar de EHBO ga.Helemaal geen|Heel veel]"
data[, 307] <- factor(data[, 307], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[307] <- "faSelfSPBCgeneral_externalFactors"
# LimeSurvey Field type: F
data[, 308] <- as.numeric(data[, 308])
attributes(data)$variable.labels[308] <- "[Of ik dan naar de EHBO ga ligt . . .Alleen aan andere mensen|Alleen aan mij]"
data[, 308] <- factor(data[, 308], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[308] <- "faSelfSPBCgeneral_notOnlyMe"
# LimeSurvey Field type: A
data[, 309] <- as.character(data[, 309])
attributes(data)$variable.labels[309] <- "Bedankt voor die antwoorden. Op de volgende pagina gaan we hier wat dieper op in.	Maar eerst zijn we benieuwd hoe jij tegenover het bezoeken van de EHBO staat, als je een drugs-gerelateerde klacht hebt. Als jij naar jezelf en naar andere mensen kijkt, wat zijn dan volgens jou de belangrijkste redenen waarom mensen niet naar de EHBO gaan als ze een drugs-gerelateerde klacht hebben?"
names(data)[309] <- "faSelfSOpenWhyNot"
# LimeSurvey Field type: A
data[, 310] <- as.character(data[, 310])
attributes(data)$variable.labels[310] <- "En omgedraaid? Waarom zouden sommige mensen gaan terwijl anderen niet zouden gaan?"
names(data)[310] <- "faSelfSOpenWhy"
# LimeSurvey Field type: F
data[, 311] <- as.numeric(data[, 311])
attributes(data)$variable.labels[311] <- "[... blijf ik anoniem.Zeker niet | Zeker wel] Als ik het komende halfjaar met een drugs-gerelateerde klacht naar de EHBO ga ..."
data[, 311] <- factor(data[, 311], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[311] <- "faSelfSAttExpect1_anonimity"
# LimeSurvey Field type: F
data[, 312] <- as.numeric(data[, 312])
attributes(data)$variable.labels[312] <- "[... worden mijn ouders gewaarschuwd.Zeker niet | Zeker wel] Als ik het komende halfjaar met een drugs-gerelateerde klacht naar de EHBO ga ..."
data[, 312] <- factor(data[, 312], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[312] <- "faSelfSAttExpect1_parents"
# LimeSurvey Field type: F
data[, 313] <- as.numeric(data[, 313])
attributes(data)$variable.labels[313] <- "[... verpest dat de avond/dag.Absoluut niet | Absoluut wel] Als ik het komende halfjaar met een drugs-gerelateerde klacht naar de EHBO ga ..."
data[, 313] <- factor(data[, 313], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[313] <- "faSelfSAttExpect1_ruinsEvening"
# LimeSurvey Field type: F
data[, 314] <- as.numeric(data[, 314])
attributes(data)$variable.labels[314] <- "[Als ik drugs heb gebruikt en naar de EHBO ga, gooit de security mij eruit.Zeker niet | Zeker wel]"
data[, 314] <- factor(data[, 314], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[314] <- "faSelfSAttExpect2_security"
# LimeSurvey Field type: F
data[, 315] <- as.numeric(data[, 315])
attributes(data)$variable.labels[315] <- "[Als ik drugs heb gebruikt en naar de EHBO ga, wordt de politie gebeld.Zeker niet | Zeker wel]"
data[, 315] <- factor(data[, 315], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[315] <- "faSelfSAttExpect2_police"
# LimeSurvey Field type: F
data[, 316] <- as.numeric(data[, 316])
attributes(data)$variable.labels[316] <- "[Als ik een drugs-gerelateerde klacht heb, gaat dat vanzelf over.Nooit | Altijd]"
data[, 316] <- factor(data[, 316], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[316] <- "faSelfSAttExpect2_solvesItself"
# LimeSurvey Field type: F
data[, 317] <- as.numeric(data[, 317])
attributes(data)$variable.labels[317] <- "[Als ik met een drugs-gerelateerde klacht bij de EHBO ben geweest, mag ik daarna weer terug naar het feest.Zeker niet | Zeker wel]"
data[, 317] <- factor(data[, 317], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[317] <- "faSelfSAttExpect2_accessToParty"
# LimeSurvey Field type: F
data[, 318] <- as.numeric(data[, 318])
attributes(data)$variable.labels[318] <- "[Met een drugs-gerelateerde klacht kan ik op de beveiliging afstappen.Absoluut niet | Absoluut wel]"
data[, 318] <- factor(data[, 318], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[318] <- "faSelfSAttExpect2_approachSecurity"
# LimeSurvey Field type: F
data[, 319] <- as.numeric(data[, 319])
attributes(data)$variable.labels[319] <- "[Mijn partner (vriendin of vriendin)Heel afkeurend|Heel goedkeurend] 	Wat denk je dat deze mensen er over denken als jij het komende halfjaar, als je tijdens het uitgaan een drugs-gerelateerde klacht hebt, naar de EHBO gaat?"
data[, 319] <- factor(data[, 319], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[319] <- "faSelfSNormInjunct_partner"
# LimeSurvey Field type: F
data[, 320] <- as.numeric(data[, 320])
attributes(data)$variable.labels[320] <- "[Mijn beste vrienden/vriendinnenHeel afkeurend|Heel goedkeurend] 	Wat denk je dat deze mensen er over denken als jij het komende halfjaar, als je tijdens het uitgaan een drugs-gerelateerde klacht hebt, naar de EHBO gaat?"
data[, 320] <- factor(data[, 320], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[320] <- "faSelfSNormInjunct_bestFriends"
# LimeSurvey Field type: F
data[, 321] <- as.numeric(data[, 321])
attributes(data)$variable.labels[321] <- "[Mijn andere vriendenHeel afkeurend|Heel goedkeurend] 	Wat denk je dat deze mensen er over denken als jij het komende halfjaar, als je tijdens het uitgaan een drugs-gerelateerde klacht hebt, naar de EHBO gaat?"
data[, 321] <- factor(data[, 321], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[321] <- "faSelfSNormInjunct_otherFriends"
# LimeSurvey Field type: F
data[, 322] <- as.numeric(data[, 322])
attributes(data)$variable.labels[322] <- "[De meeste mensen op een feestHeel afkeurend|Heel goedkeurend] 	Wat denk je dat deze mensen er over denken als jij het komende halfjaar, als je tijdens het uitgaan een drugs-gerelateerde klacht hebt, naar de EHBO gaat?"
data[, 322] <- factor(data[, 322], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[322] <- "faSelfSNormInjunct_partyPeople"
# LimeSurvey Field type: F
data[, 323] <- as.numeric(data[, 323])
attributes(data)$variable.labels[323] <- "[Mijn ouders/verzorgersHeel afkeurend|Heel goedkeurend] 	Wat denk je dat deze mensen er over denken als jij het komende halfjaar, als je tijdens het uitgaan een drugs-gerelateerde klacht hebt, naar de EHBO gaat?"
data[, 323] <- factor(data[, 323], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[323] <- "faSelfSNormInjunct_parents"
# LimeSurvey Field type: F
data[, 324] <- as.numeric(data[, 324])
attributes(data)$variable.labels[324] <- "[Mijn broers/zussenHeel afkeurend|Heel goedkeurend] 	Wat denk je dat deze mensen er over denken als jij het komende halfjaar, als je tijdens het uitgaan een drugs-gerelateerde klacht hebt, naar de EHBO gaat?"
data[, 324] <- factor(data[, 324], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[324] <- "faSelfSNormInjunct_siblings"
# LimeSurvey Field type: F
data[, 325] <- as.numeric(data[, 325])
attributes(data)$variable.labels[325] <- "[Mijn partner (vriendin of vriendin)Heel onbelangrijk|Heel belangrijk] Hoe belangrijk is hun mening voor jou met betrekking tot of jij naar de EHBO gaat?"
data[, 325] <- factor(data[, 325], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[325] <- "faSelfSNormMTC_partner"
# LimeSurvey Field type: F
data[, 326] <- as.numeric(data[, 326])
attributes(data)$variable.labels[326] <- "[Mijn beste vrienden/vriendinnenHeel onbelangrijk|Heel belangrijk] Hoe belangrijk is hun mening voor jou met betrekking tot of jij naar de EHBO gaat?"
data[, 326] <- factor(data[, 326], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[326] <- "faSelfSNormMTC_bestFriends"
# LimeSurvey Field type: F
data[, 327] <- as.numeric(data[, 327])
attributes(data)$variable.labels[327] <- "[Mijn andere vriendenHeel onbelangrijk|Heel belangrijk] Hoe belangrijk is hun mening voor jou met betrekking tot of jij naar de EHBO gaat?"
data[, 327] <- factor(data[, 327], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[327] <- "faSelfSNormMTC_otherFriends"
# LimeSurvey Field type: F
data[, 328] <- as.numeric(data[, 328])
attributes(data)$variable.labels[328] <- "[De meeste mensen op een feestHeel onbelangrijk|Heel belangrijk] Hoe belangrijk is hun mening voor jou met betrekking tot of jij naar de EHBO gaat?"
data[, 328] <- factor(data[, 328], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[328] <- "faSelfSNormMTC_partyPeople"
# LimeSurvey Field type: F
data[, 329] <- as.numeric(data[, 329])
attributes(data)$variable.labels[329] <- "[Mijn ouders/verzorgersHeel onbelangrijk|Heel belangrijk] Hoe belangrijk is hun mening voor jou met betrekking tot of jij naar de EHBO gaat?"
data[, 329] <- factor(data[, 329], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[329] <- "faSelfSNormMTC_parents"
# LimeSurvey Field type: F
data[, 330] <- as.numeric(data[, 330])
attributes(data)$variable.labels[330] <- "[Mijn broers/zussenHeel onbelangrijk|Heel belangrijk] Hoe belangrijk is hun mening voor jou met betrekking tot of jij naar de EHBO gaat?"
data[, 330] <- factor(data[, 330], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[330] <- "faSelfSNormMTC_siblings"
# LimeSurvey Field type: F
data[, 331] <- as.numeric(data[, 331])
attributes(data)$variable.labels[331] <- "[Mijn partner (vriendin of vriendin) zou ...Nooit naar de EHBO gaan|Altijd naar de EHBO gaan] Wat doen deze mensen zelf als ze tijdens het uitgaan een drugs-gerelateerde klacht hebben, denk je?"
data[, 331] <- factor(data[, 331], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[331] <- "faSelfSNormDescr_partner"
# LimeSurvey Field type: F
data[, 332] <- as.numeric(data[, 332])
attributes(data)$variable.labels[332] <- "[Mijn beste vrienden/vriendinnen zouden ...Nooit naar de EHBO gaan|Altijd naar de EHBO gaan] Wat doen deze mensen zelf als ze tijdens het uitgaan een drugs-gerelateerde klacht hebben, denk je?"
data[, 332] <- factor(data[, 332], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[332] <- "faSelfSNormDescr_bestFriends"
# LimeSurvey Field type: F
data[, 333] <- as.numeric(data[, 333])
attributes(data)$variable.labels[333] <- "[Mijn andere vrienden/vriendinnen zouden ...Nooit naar de EHBO gaan|Altijd naar de EHBO gaan] Wat doen deze mensen zelf als ze tijdens het uitgaan een drugs-gerelateerde klacht hebben, denk je?"
data[, 333] <- factor(data[, 333], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[333] <- "faSelfSNormDescr_otherFriends"
# LimeSurvey Field type: F
data[, 334] <- as.numeric(data[, 334])
attributes(data)$variable.labels[334] <- "[De meeste mensen op een feest zouden ...Nooit naar de EHBO gaan|Altijd naar de EHBO gaan] Wat doen deze mensen zelf als ze tijdens het uitgaan een drugs-gerelateerde klacht hebben, denk je?"
data[, 334] <- factor(data[, 334], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[334] <- "faSelfSNormDescr_partyPeople"
# LimeSurvey Field type: F
data[, 335] <- as.numeric(data[, 335])
attributes(data)$variable.labels[335] <- "[Mijn ouders/verzorgers zouden ...Nooit naar de EHBO gaan|Altijd naar de EHBO gaan] Wat doen deze mensen zelf als ze tijdens het uitgaan een drugs-gerelateerde klacht hebben, denk je?"
data[, 335] <- factor(data[, 335], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[335] <- "faSelfSNormDescr_parents"
# LimeSurvey Field type: F
data[, 336] <- as.numeric(data[, 336])
attributes(data)$variable.labels[336] <- "[Mijn broers/zussen zouden ...Nooit naar de EHBO gaan|Altijd naar de EHBO gaan] Wat doen deze mensen zelf als ze tijdens het uitgaan een drugs-gerelateerde klacht hebben, denk je?"
data[, 336] <- factor(data[, 336], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[336] <- "faSelfSNormDescr_siblings"
# LimeSurvey Field type: F
data[, 337] <- as.numeric(data[, 337])
attributes(data)$variable.labels[337] <- "[Als ik tijdens het uitgaan een drugs-gerelateerde klacht heb, weet ik waar ik de EHBO kan vinden.Nooit | Altijd] Hieronder staan een aantal stellingen over de EHBO. Kun je aangeven wat je hiervan denkt?"
data[, 337] <- factor(data[, 337], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[337] <- "faSelfSContrBeliefs_knowsLocation"
# LimeSurvey Field type: F
data[, 338] <- as.numeric(data[, 338])
attributes(data)$variable.labels[338] <- "[Als ik tijdens het uitgaan een drugs-gerelateerde klacht heb, dan kan de EHBO helpen.Absoluut niet | Absoluut wel] Hieronder staan een aantal stellingen over de EHBO. Kun je aangeven wat je hiervan denkt?"
data[, 338] <- factor(data[, 338], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[338] <- "faSelfSContrBeliefs_faCanHelp"
# LimeSurvey Field type: F
data[, 339] <- as.numeric(data[, 339])
attributes(data)$variable.labels[339] <- "[De mensen van de EHBO staan heel afkeurend|heel goedkeurend tegenover drugs.] Hoe staan de volgende mensen over het algemeen tegenover het gebruik van harddrugs (XTC, speed, coke, etc) door bezoekers?"
data[, 339] <- factor(data[, 339], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "&pm;", ">", ">>", ">>>"))
names(data)[339] <- "faPerceivedStigma_firstAid"
# LimeSurvey Field type: F
data[, 340] <- as.numeric(data[, 340])
attributes(data)$variable.labels[340] <- "[De security staat heel afkeurend|heel goedkeurend tegenover drugs.] Hoe staan de volgende mensen over het algemeen tegenover het gebruik van harddrugs (XTC, speed, coke, etc) door bezoekers?"
data[, 340] <- factor(data[, 340], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "&pm;", ">", ">>", ">>>"))
names(data)[340] <- "faPerceivedStigma_security"
# LimeSurvey Field type: F
data[, 341] <- as.numeric(data[, 341])
attributes(data)$variable.labels[341] <- "[Het barpersoneel staat heel afkeurend|heel goedkeurend tegenover drugs.] Hoe staan de volgende mensen over het algemeen tegenover het gebruik van harddrugs (XTC, speed, coke, etc) door bezoekers?"
data[, 341] <- factor(data[, 341], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "&pm;", ">", ">>", ">>>"))
names(data)[341] <- "faPerceivedStigma_servingStaff"
# LimeSurvey Field type: F
data[, 342] <- as.numeric(data[, 342])
attributes(data)$variable.labels[342] <- "[De EHBO waar je tijdens het uitgaan en op festivals naartoe kunt, is ...Niet voor medische klachten | Voor alle medische klachten]"
data[, 342] <- factor(data[, 342], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[342] <- "faGeneralBeliefs_complaintsMedical"
# LimeSurvey Field type: F
data[, 343] <- as.numeric(data[, 343])
attributes(data)$variable.labels[343] <- "[De EHBO waar je tijdens het uitgaan en op festivals naartoe kunt, is ...Niet voor lichamelijke klachten | Voor alle lichamelijke klachten]"
data[, 343] <- factor(data[, 343], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[343] <- "faGeneralBeliefs_complaintsPhysical"
# LimeSurvey Field type: F
data[, 344] <- as.numeric(data[, 344])
attributes(data)$variable.labels[344] <- "[De EHBO waar je tijdens het uitgaan en op festivals naartoe kunt, is ...Niet voor ernstige klachten | Voor alle ernstige klachten]"
data[, 344] <- factor(data[, 344], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[344] <- "faGeneralBeliefs_complaintsSerious"
# LimeSurvey Field type: F
data[, 345] <- as.numeric(data[, 345])
attributes(data)$variable.labels[345] <- "[De EHBO waar je tijdens het uitgaan en op festivals naartoe kunt, is ...Niet voor alcohol-gerelateerde klachten | Voor alle alcohol-gerelateerde klachten]"
data[, 345] <- factor(data[, 345], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[345] <- "faGeneralBeliefs_complaintsAlcohol"
# LimeSurvey Field type: F
data[, 346] <- as.numeric(data[, 346])
attributes(data)$variable.labels[346] <- "[De EHBO waar je tijdens het uitgaan en op festivals naartoe kunt, is ...Niet voor drugs-gerelateerde klachten | Voor alle drugs-gerelateerde klachten]"
data[, 346] <- factor(data[, 346], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[346] <- "faGeneralBeliefs_complaintsSubstance"
# LimeSurvey Field type: F
data[, 347] <- as.numeric(data[, 347])
attributes(data)$variable.labels[347] <- "[Als je tijdens het uitgaan naar de EHBO gaat, moet je dat zelf betalen.Zeker niet | Zeker wel]"
data[, 347] <- factor(data[, 347], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[347] <- "faGeneralBeliefs_payFirstAid"
# LimeSurvey Field type: F
data[, 348] <- as.numeric(data[, 348])
attributes(data)$variable.labels[348] <- "[Als je op een feest of in een club overgeeft, word je er uit gezet.Absoluut niet waar | Absoluut waar]"
data[, 348] <- factor(data[, 348], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[348] <- "faGeneralBeliefs_throwUpRemoved"
# LimeSurvey Field type: F
data[, 349] <- as.numeric(data[, 349])
attributes(data)$variable.labels[349] <- "[Als iemand alleen XTC heeft gebruikt, kan diegene ...Niet ernstig ziek worden | Heel ernstig ziek worden]"
data[, 349] <- factor(data[, 349], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[349] <- "faGeneralBeliefs_xtcRisk"
# LimeSurvey Field type: F
data[, 350] <- as.numeric(data[, 350])
attributes(data)$variable.labels[350] <- "[In een café, kroeg, of bar...... is absoluut geen EHBO|... is absoluut een EHBO] Waar verwacht je dat er een EHBO is?"
data[, 350] <- factor(data[, 350], levels=c(0,1,2,3,4,5,6),labels=c("", "", "", "", "", "", ""))
names(data)[350] <- "firstAidExpectations_cafe"
# LimeSurvey Field type: F
data[, 351] <- as.numeric(data[, 351])
attributes(data)$variable.labels[351] <- "[In een discotheek of club...... is absoluut geen EHBO|... is absoluut een EHBO] Waar verwacht je dat er een EHBO is?"
data[, 351] <- factor(data[, 351], levels=c(0,1,2,3,4,5,6),labels=c("", "", "", "", "", "", ""))
names(data)[351] <- "firstAidExpectations_disco"
# LimeSurvey Field type: F
data[, 352] <- as.numeric(data[, 352])
attributes(data)$variable.labels[352] <- "[Bij het optreden van een band...... is absoluut geen EHBO|... is absoluut een EHBO] Waar verwacht je dat er een EHBO is?"
data[, 352] <- factor(data[, 352], levels=c(0,1,2,3,4,5,6),labels=c("", "", "", "", "", "", ""))
names(data)[352] <- "firstAidExpectations_band"
# LimeSurvey Field type: F
data[, 353] <- as.numeric(data[, 353])
attributes(data)$variable.labels[353] <- "[Bij een kleinschalig binnenfeest of -festival...(minder dan 5000 bezoekers)... is absoluut geen EHBO|... is absoluut een EHBO] Waar verwacht je dat er een EHBO is?"
data[, 353] <- factor(data[, 353], levels=c(0,1,2,3,4,5,6),labels=c("", "", "", "", "", "", ""))
names(data)[353] <- "firstAidExpectations_smallPartyInside"
# LimeSurvey Field type: F
data[, 354] <- as.numeric(data[, 354])
attributes(data)$variable.labels[354] <- "[Bij een groot binnenfeest of -festival...(meer dan 5000 bezoekers)... is absoluut geen EHBO|... is absoluut een EHBO] Waar verwacht je dat er een EHBO is?"
data[, 354] <- factor(data[, 354], levels=c(0,1,2,3,4,5,6),labels=c("", "", "", "", "", "", ""))
names(data)[354] <- "firstAidExpectations_bigPartyInside"
# LimeSurvey Field type: F
data[, 355] <- as.numeric(data[, 355])
attributes(data)$variable.labels[355] <- "[Bij een kleinschalig buitenfeest of -festival...(minder dan 5000 bezoekers)... is absoluut geen EHBO|... is absoluut een EHBO] Waar verwacht je dat er een EHBO is?"
data[, 355] <- factor(data[, 355], levels=c(0,1,2,3,4,5,6),labels=c("", "", "", "", "", "", ""))
names(data)[355] <- "firstAidExpectations_smallPartyOutside"
# LimeSurvey Field type: F
data[, 356] <- as.numeric(data[, 356])
attributes(data)$variable.labels[356] <- "[Bij een groot buitenfeest of -festival...(meer dan 5000 bezoekers)... is absoluut geen EHBO|... is absoluut een EHBO] Waar verwacht je dat er een EHBO is?"
data[, 356] <- factor(data[, 356], levels=c(0,1,2,3,4,5,6),labels=c("", "", "", "", "", "", ""))
names(data)[356] <- "firstAidExpectations_bigPartyOutside"
# LimeSurvey Field type: F
data[, 357] <- as.numeric(data[, 357])
attributes(data)$variable.labels[357] <- "[In een café, kroeg, of bar...... zou ik het niet weten|... zou ik het wel weten] 	Denk terug aan de laatste keer dat je op onderstaande locaties was. Stel je voor dat jijzelf of een vriend(in) toen klachten had gehad waarvoor je naar de EHBO zou kunnen gaan.	Zou je dan geweten hebben waar je de EHBO kon vinden in die locatie?"
data[, 357] <- factor(data[, 357], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[357] <- "knowsFAlocations_cafe"
# LimeSurvey Field type: F
data[, 358] <- as.numeric(data[, 358])
attributes(data)$variable.labels[358] <- "[In een discotheek of club...... zou ik het niet weten|... zou ik het wel weten] 	Denk terug aan de laatste keer dat je op onderstaande locaties was. Stel je voor dat jijzelf of een vriend(in) toen klachten had gehad waarvoor je naar de EHBO zou kunnen gaan.	Zou je dan geweten hebben waar je de EHBO kon vinden in die locatie?"
data[, 358] <- factor(data[, 358], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[358] <- "knowsFAlocations_disco"
# LimeSurvey Field type: F
data[, 359] <- as.numeric(data[, 359])
attributes(data)$variable.labels[359] <- "[Bij een optreden van een band...... zou ik het niet weten|... zou ik het wel weten] 	Denk terug aan de laatste keer dat je op onderstaande locaties was. Stel je voor dat jijzelf of een vriend(in) toen klachten had gehad waarvoor je naar de EHBO zou kunnen gaan.	Zou je dan geweten hebben waar je de EHBO kon vinden in die locatie?"
data[, 359] <- factor(data[, 359], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[359] <- "knowsFAlocations_band"
# LimeSurvey Field type: F
data[, 360] <- as.numeric(data[, 360])
attributes(data)$variable.labels[360] <- "[Bij een kleinschalig binnenfeest of -festival...(minder dan 5000 bezoekers)... zou ik het niet weten|... zou ik het wel weten] 	Denk terug aan de laatste keer dat je op onderstaande locaties was. Stel je voor dat jijzelf of een vriend(in) toen klachten had gehad waarvoor je naar de EHBO zou kunnen gaan.	Zou je dan geweten hebben waar je de EHBO kon vinden in die locatie?"
data[, 360] <- factor(data[, 360], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[360] <- "knowsFAlocations_smallPartyInside"
# LimeSurvey Field type: F
data[, 361] <- as.numeric(data[, 361])
attributes(data)$variable.labels[361] <- "[Bij een groot binnenfeest of -festival...(meer dan 5000 bezoekers)... zou ik het niet weten|... zou ik het wel weten] 	Denk terug aan de laatste keer dat je op onderstaande locaties was. Stel je voor dat jijzelf of een vriend(in) toen klachten had gehad waarvoor je naar de EHBO zou kunnen gaan.	Zou je dan geweten hebben waar je de EHBO kon vinden in die locatie?"
data[, 361] <- factor(data[, 361], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[361] <- "knowsFAlocations_bigPartyInside"
# LimeSurvey Field type: F
data[, 362] <- as.numeric(data[, 362])
attributes(data)$variable.labels[362] <- "[Bij een kleinschalig buitenfeest of -festival...(minder dan 5000 bezoekers)... zou ik het niet weten|... zou ik het wel weten] 	Denk terug aan de laatste keer dat je op onderstaande locaties was. Stel je voor dat jijzelf of een vriend(in) toen klachten had gehad waarvoor je naar de EHBO zou kunnen gaan.	Zou je dan geweten hebben waar je de EHBO kon vinden in die locatie?"
data[, 362] <- factor(data[, 362], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[362] <- "knowsFAlocations_smallPartyOutside"
# LimeSurvey Field type: F
data[, 363] <- as.numeric(data[, 363])
attributes(data)$variable.labels[363] <- "[Bij een groot buitenfeest of -festival...(meer dan 5000 bezoekers)... zou ik het niet weten|... zou ik het wel weten] 	Denk terug aan de laatste keer dat je op onderstaande locaties was. Stel je voor dat jijzelf of een vriend(in) toen klachten had gehad waarvoor je naar de EHBO zou kunnen gaan.	Zou je dan geweten hebben waar je de EHBO kon vinden in die locatie?"
data[, 363] <- factor(data[, 363], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[363] <- "knowsFAlocations_bigPartyOutside"
# LimeSurvey Field type: F
data[, 364] <- as.numeric(data[, 364])
attributes(data)$variable.labels[364] <- "[De eerste hulp in een cafe, club of klein feestHeel erg slecht | Heel erg goed] Hoe goed kunnen elk van deze groepen helpen bij klachten die niet door drugs komen?"
data[, 364] <- factor(data[, 364], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[364] <- "estimatedCompetenceL_faSmall"
# LimeSurvey Field type: F
data[, 365] <- as.numeric(data[, 365])
attributes(data)$variable.labels[365] <- "[De eerste hulp bij een groot binnenfeestHeel erg slecht | Heel erg goed] Hoe goed kunnen elk van deze groepen helpen bij klachten die niet door drugs komen?"
data[, 365] <- factor(data[, 365], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[365] <- "estimatedCompetenceL_faBigInside"
# LimeSurvey Field type: F
data[, 366] <- as.numeric(data[, 366])
attributes(data)$variable.labels[366] <- "[De eerste hulp bij een groot buitenfeestHeel erg slecht | Heel erg goed] Hoe goed kunnen elk van deze groepen helpen bij klachten die niet door drugs komen?"
data[, 366] <- factor(data[, 366], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[366] <- "estimatedCompetenceL_faBigOutside"
# LimeSurvey Field type: F
data[, 367] <- as.numeric(data[, 367])
attributes(data)$variable.labels[367] <- "[De beveiliging in een cafe, club of klein feestHeel erg slecht | Heel erg goed] Hoe goed kunnen elk van deze groepen helpen bij klachten die niet door drugs komen?"
data[, 367] <- factor(data[, 367], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[367] <- "estimatedCompetenceL_securSmall"
# LimeSurvey Field type: F
data[, 368] <- as.numeric(data[, 368])
attributes(data)$variable.labels[368] <- "[De beveiliging bij een groot binnenfeestHeel erg slecht | Heel erg goed] Hoe goed kunnen elk van deze groepen helpen bij klachten die niet door drugs komen?"
data[, 368] <- factor(data[, 368], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[368] <- "estimatedCompetenceL_securBigInside"
# LimeSurvey Field type: F
data[, 369] <- as.numeric(data[, 369])
attributes(data)$variable.labels[369] <- "[De beveiliging bij een groot buitenfeestHeel erg slecht | Heel erg goed] Hoe goed kunnen elk van deze groepen helpen bij klachten die niet door drugs komen?"
data[, 369] <- factor(data[, 369], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[369] <- "estimatedCompetenceL_securBigOutside"
# LimeSurvey Field type: F
data[, 370] <- as.numeric(data[, 370])
attributes(data)$variable.labels[370] <- "[Mijn vrienden/vriendinnenHeel erg slecht | Heel erg goed] Hoe goed kunnen elk van deze groepen helpen bij klachten die niet door drugs komen?"
data[, 370] <- factor(data[, 370], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[370] <- "estimatedCompetenceL_friends"
# LimeSurvey Field type: F
data[, 371] <- as.numeric(data[, 371])
attributes(data)$variable.labels[371] <- "[Het barpersoneelHeel erg slecht | Heel erg goed] Hoe goed kunnen elk van deze groepen helpen bij klachten die niet door drugs komen?"
data[, 371] <- factor(data[, 371], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[371] <- "estimatedCompetenceL_barStaff"
# LimeSurvey Field type: F
data[, 372] <- as.numeric(data[, 372])
attributes(data)$variable.labels[372] <- "[De eerste hulp in het ziekenhuisHeel erg slecht | Heel erg goed] Hoe goed kunnen elk van deze groepen helpen bij klachten die niet door drugs komen?"
data[, 372] <- factor(data[, 372], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[372] <- "estimatedCompetenceL_externalFirstAid"
# LimeSurvey Field type: F
data[, 373] <- as.numeric(data[, 373])
attributes(data)$variable.labels[373] <- "[De eerste hulp in een cafe, club of klein feestHeel erg slecht | Heel erg goed] En hoe goed kunnen ze helpen bij klachten die juist wel door drugs komen?"
data[, 373] <- factor(data[, 373], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[373] <- "estimatedCompetenceS_faSmall"
# LimeSurvey Field type: F
data[, 374] <- as.numeric(data[, 374])
attributes(data)$variable.labels[374] <- "[De eerste hulp bij een groot binnenfeestHeel erg slecht | Heel erg goed] En hoe goed kunnen ze helpen bij klachten die juist wel door drugs komen?"
data[, 374] <- factor(data[, 374], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[374] <- "estimatedCompetenceS_faBigInside"
# LimeSurvey Field type: F
data[, 375] <- as.numeric(data[, 375])
attributes(data)$variable.labels[375] <- "[De eerste hulp bij een groot buitenfeestHeel erg slecht | Heel erg goed] En hoe goed kunnen ze helpen bij klachten die juist wel door drugs komen?"
data[, 375] <- factor(data[, 375], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[375] <- "estimatedCompetenceS_faBigOutside"
# LimeSurvey Field type: F
data[, 376] <- as.numeric(data[, 376])
attributes(data)$variable.labels[376] <- "[De beveiliging in een cafe, club of klein feestHeel erg slecht | Heel erg goed] En hoe goed kunnen ze helpen bij klachten die juist wel door drugs komen?"
data[, 376] <- factor(data[, 376], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[376] <- "estimatedCompetenceS_securSmall"
# LimeSurvey Field type: F
data[, 377] <- as.numeric(data[, 377])
attributes(data)$variable.labels[377] <- "[De beveiliging bij een groot binnenfeestHeel erg slecht | Heel erg goed] En hoe goed kunnen ze helpen bij klachten die juist wel door drugs komen?"
data[, 377] <- factor(data[, 377], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[377] <- "estimatedCompetenceS_securBigInside"
# LimeSurvey Field type: F
data[, 378] <- as.numeric(data[, 378])
attributes(data)$variable.labels[378] <- "[De beveiliging bij een groot buitenfeestHeel erg slecht | Heel erg goed] En hoe goed kunnen ze helpen bij klachten die juist wel door drugs komen?"
data[, 378] <- factor(data[, 378], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[378] <- "estimatedCompetenceS_securBigOutside"
# LimeSurvey Field type: F
data[, 379] <- as.numeric(data[, 379])
attributes(data)$variable.labels[379] <- "[Mijn vrienden/vriendinnenHeel erg slecht | Heel erg goed] En hoe goed kunnen ze helpen bij klachten die juist wel door drugs komen?"
data[, 379] <- factor(data[, 379], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[379] <- "estimatedCompetenceS_friends"
# LimeSurvey Field type: F
data[, 380] <- as.numeric(data[, 380])
attributes(data)$variable.labels[380] <- "[Het barpersoneelHeel erg slecht | Heel erg goed] En hoe goed kunnen ze helpen bij klachten die juist wel door drugs komen?"
data[, 380] <- factor(data[, 380], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[380] <- "estimatedCompetenceS_barStaff"
# LimeSurvey Field type: F
data[, 381] <- as.numeric(data[, 381])
attributes(data)$variable.labels[381] <- "[De eerste hulp in het ziekenhuisHeel erg slecht | Heel erg goed] En hoe goed kunnen ze helpen bij klachten die juist wel door drugs komen?"
data[, 381] <- factor(data[, 381], levels=c(1,2,3,4,5,6,7),labels=c("", "", "", "", "", "", ""))
names(data)[381] <- "estimatedCompetenceS_externalFirstAid"
# LimeSurvey Field type: A
data[, 382] <- as.character(data[, 382])
attributes(data)$variable.labels[382] <- "Heb je nog tips voor de EHBO in het uitgaansleven? Bijvoorbeeld:			Wat vind jij de beste plek voor de EHBO?			Hoe kan duidelijk worden aangegeven waar de EHBO is?			Wat kan de EHBO doen om te zorgen dat mensen haar bezoeken als dat nodig is?"
names(data)[382] <- "faSuggestions"
# LimeSurvey Field type: F
data[, 383] <- as.numeric(data[, 383])
attributes(data)$variable.labels[383] <- "Als laatste willen we je graag vragen om wat meer informatie over jezelf te geven. Je kunt een of meerdere van deze vragen ook overslaan als je je bijvoorbeeld zorgen maakt over je privacy. We zouden het natuurlijk erg waarderen als je wel alle vragen beantwoordt: deze informatie is voor ons heel bruikbaar om een indruk te krijgen van wie je bent. Bovendien hebben we niet voor niets gezorgd dat deze vragenlijst volledig anoniem is 	Als je geen van deze vragen in wilt vullen, of als je ze vorige keer hebt ingevuld en een Party Panel Code hebt ingevoerd, dan kun je dat hier aangeven, en dan sla je al deze vragen over."
data[, 383] <- factor(data[, 383], levels=c(0,1,2),labels=c("Ik wil wel één of meer vragen beantwoorden", "Ik wil geen enkele vraag beantwoorden", "Ik heb een Party Panel Code van een vorige Party Panel"))
names(data)[383] <- "noDemographics"
# LimeSurvey Field type: A
data[, 384] <- as.character(data[, 384])
attributes(data)$variable.labels[384] <- "Wat is je geslacht (gender)?"
data[, 384] <- factor(data[, 384], levels=c("NA","male","femal","other"),labels=c("Ik wil deze vraag niet beantwoorden", "Man", "Vrouw", "Anders (bijvoorbeeld genderqueer)"))
names(data)[384] <- "gender"
# LimeSurvey Field type: F
data[, 385] <- as.numeric(data[, 385])
attributes(data)$variable.labels[385] <- "Hoe oud ben je?"
names(data)[385] <- "age"
# LimeSurvey Field type: F
data[, 386] <- as.numeric(data[, 386])
attributes(data)$variable.labels[386] <- "Heb je een baan?"
data[, 386] <- factor(data[, 386], levels=c(1,2,3),labels=c("Ik wil deze vraag niet beantwoorden", "Ja, ik heb een baan, bijbaan, of eigen bedrijf", "Nee, ik heb geen baan, bijbaan, of eigen bedrijf"))
names(data)[386] <- "hasJob"
# LimeSurvey Field type: F
data[, 387] <- as.numeric(data[, 387])
attributes(data)$variable.labels[387] <- "Hoeveel uur per week besteed je aan je baan, bijbaan, of eigen bedrijf?"
names(data)[387] <- "jobHours"
# LimeSurvey Field type: F
data[, 388] <- as.numeric(data[, 388])
attributes(data)$variable.labels[388] <- "Volg je op dit moment een studie, en zoja, waar?"
data[, 388] <- factor(data[, 388], levels=c(1,2,3,4,5,6,7,8),labels=c("Ik wil deze vraag niet beantwoorden", "Nee, ik volg op dit moment geen studie", "Ja, ik doe VMBO (vroeger MAVO)", "Ja, ik doe HAVO", "Ja, ik doe VWO", "Ja, ik doe MBO (ROC)", "Ja, ik doe HBO (hogeschool)", "Ja, ik doe WO (universiteit)"))
names(data)[388] <- "currentEducation"
# LimeSurvey Field type: F
data[, 389] <- as.numeric(data[, 389])
attributes(data)$variable.labels[389] <- "Wat is de hoogste opleiding die je hebt voltooid?"
data[, 389] <- factor(data[, 389], levels=c(1,2,3,4,5,6,7,8),labels=c("Ik wil deze vraag niet beantwoorden", "Basisschool", "VMBO (vroeger MAVO)", "HAVO", "VWO", "MBO (ROC)", "HBO (hogeschool)", "WO (universiteit)"))
names(data)[389] <- "prevEducation"
# LimeSurvey Field type: A
data[, 390] <- as.character(data[, 390])
attributes(data)$variable.labels[390] <- "In welk land woon je?"
data[, 390] <- factor(data[, 390], levels=c("NONE","NL","BE"),labels=c("Wil ik niet zeggen", "Nederland", "Belgie"))
names(data)[390] <- "country"
# LimeSurvey Field type: F
data[, 391] <- as.numeric(data[, 391])
attributes(data)$variable.labels[391] <- "[Andere] In welk land woon je?"
names(data)[391] <- "country_other"
# LimeSurvey Field type: F
data[, 392] <- as.numeric(data[, 392])
attributes(data)$variable.labels[392] <- "Om een grove indruk te krijgen van waar de Party Panel deelnemers wonen, is het handig als we de eerste twee codes van je postcode hebben. Wat zijn de eerste twee cijfers van jouw postcode?"
names(data)[392] <- "postcode"
# LimeSurvey Field type: A
data[, 393] <- as.character(data[, 393])
attributes(data)$variable.labels[393] <- "Je Party Panel Code	Party Panel is een panelstudie: dat betekent dat we periodiek een nieuwe vragenlijst online plaatsen (zie http://partypanel.nl?info voor meer informatie). We proberen dan informatie van dezelfde mensen aan elkaar te koppelen. De enige manier waarop dat kan en we tegelijkertijd absoluut zeker weten dat je anoniem blijft, is met een persoonlijke code.	Je kunt je persoonlijke code (opnieuw) genereren op http://partypanel.nl?code, en die dan hier invullen.	Met deze code van 6 tekens (2 letters, 2 cijfers, 2 letters) blijf je anoniem, zonder dat je zelf iets hoeft te onthouden."
names(data)[393] <- "partyPanelCode"
# LimeSurvey Field type: A
data[, 394] <- as.character(data[, 394])
attributes(data)$variable.labels[394] <- "Heb je nog ideeen voor de volgende Party Panel? Of heb je nog andere tips of ideeen die je ons wil meegeven?	Die kun je hieronder opgeven. Deze worden bij je data opgeslagen, en dus anoniem - we kunnen geen contact met je opnemen. Als je een suggestie hebt en graag een reactie wil of als je een vraag hebt kun je het formulier gebruiken op http://partypanel.nl/?contact."
names(data)[394] <- "suggestions"
# LimeSurvey Field type: F
data[, 395] <- as.numeric(data[, 395])
attributes(data)$variable.labels[395] <- "[Ik heb de vragenlijst ingevuld om hem te testen, of gewoon om eens te kijken naar het soort vragen, en mijn antwoorden zijn dus niet serieus.] Heb je deze vragenlijst niet serieus ingevuld, bijvoorbeeld als test of gewoon om eens te kijken wat voor vragen werden gesteld? Dan kun je dat hier aangeven. Je data worden dan niet gebruikt in de analyses."
data[, 395] <- factor(data[, 395], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[395] <- "testEntry_test"
# LimeSurvey Field type: A
data[, 396] <- as.character(data[, 396])
attributes(data)$variable.labels[396] <- "Als je op \'Insturen\' klikt, wordt je doorgestuurd naar http://partypanel.nl/?reg waar je je email adres kunt achterlaten.	We mailen je dan als de resultaten binnen zijn en vertellen we je wat we er mee gaan doen. Bovendien mailen we je als de volgende Party Panel ronde klaar staat.	Heb je vrienden die ook uitgaan? Deel Party Panel op Facebook!	Ook als je je niet in wil schrijven voor Party Panel zijn we je heel erg dankbaar! Door deze vragenlijst in te vullen heb je nu al geholpen het Nederlandse uitgaansleven te verbeteren!"
names(data)[396] <- "endingFinal"
# LimeSurvey Field type: 
data[, 397] <- as.character(data[, 397])
attributes(data)$variable.labels[397] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 398] <- as.character(data[, 398])
attributes(data)$variable.labels[398] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 399] <- as.character(data[, 399])
attributes(data)$variable.labels[399] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 400] <- as.character(data[, 400])
attributes(data)$variable.labels[400] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 401] <- as.character(data[, 401])
attributes(data)$variable.labels[401] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 402] <- as.character(data[, 402])
attributes(data)$variable.labels[402] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 403] <- as.character(data[, 403])
attributes(data)$variable.labels[403] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 404] <- as.character(data[, 404])
attributes(data)$variable.labels[404] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 405] <- as.character(data[, 405])
attributes(data)$variable.labels[405] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 406] <- as.character(data[, 406])
attributes(data)$variable.labels[406] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 407] <- as.character(data[, 407])
attributes(data)$variable.labels[407] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 408] <- as.character(data[, 408])
attributes(data)$variable.labels[408] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 409] <- as.character(data[, 409])
attributes(data)$variable.labels[409] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 410] <- as.character(data[, 410])
attributes(data)$variable.labels[410] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 411] <- as.character(data[, 411])
attributes(data)$variable.labels[411] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 412] <- as.character(data[, 412])
attributes(data)$variable.labels[412] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 413] <- as.character(data[, 413])
attributes(data)$variable.labels[413] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 414] <- as.character(data[, 414])
attributes(data)$variable.labels[414] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 415] <- as.character(data[, 415])
attributes(data)$variable.labels[415] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 416] <- as.character(data[, 416])
attributes(data)$variable.labels[416] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 417] <- as.character(data[, 417])
attributes(data)$variable.labels[417] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 418] <- as.character(data[, 418])
attributes(data)$variable.labels[418] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 419] <- as.character(data[, 419])
attributes(data)$variable.labels[419] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 420] <- as.character(data[, 420])
attributes(data)$variable.labels[420] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 421] <- as.character(data[, 421])
attributes(data)$variable.labels[421] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 422] <- as.character(data[, 422])
attributes(data)$variable.labels[422] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 423] <- as.character(data[, 423])
attributes(data)$variable.labels[423] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 424] <- as.character(data[, 424])
attributes(data)$variable.labels[424] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 425] <- as.character(data[, 425])
attributes(data)$variable.labels[425] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 426] <- as.character(data[, 426])
attributes(data)$variable.labels[426] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 427] <- as.character(data[, 427])
attributes(data)$variable.labels[427] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 428] <- as.character(data[, 428])
attributes(data)$variable.labels[428] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 429] <- as.character(data[, 429])
attributes(data)$variable.labels[429] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 430] <- as.character(data[, 430])
attributes(data)$variable.labels[430] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 431] <- as.character(data[, 431])
attributes(data)$variable.labels[431] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 432] <- as.character(data[, 432])
attributes(data)$variable.labels[432] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 433] <- as.character(data[, 433])
attributes(data)$variable.labels[433] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 434] <- as.character(data[, 434])
attributes(data)$variable.labels[434] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 435] <- as.character(data[, 435])
attributes(data)$variable.labels[435] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 436] <- as.character(data[, 436])
attributes(data)$variable.labels[436] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 437] <- as.character(data[, 437])
attributes(data)$variable.labels[437] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 438] <- as.character(data[, 438])
attributes(data)$variable.labels[438] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 439] <- as.character(data[, 439])
attributes(data)$variable.labels[439] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 440] <- as.character(data[, 440])
attributes(data)$variable.labels[440] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 441] <- as.character(data[, 441])
attributes(data)$variable.labels[441] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 442] <- as.character(data[, 442])
attributes(data)$variable.labels[442] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 443] <- as.character(data[, 443])
attributes(data)$variable.labels[443] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 444] <- as.character(data[, 444])
attributes(data)$variable.labels[444] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 445] <- as.character(data[, 445])
attributes(data)$variable.labels[445] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 446] <- as.character(data[, 446])
attributes(data)$variable.labels[446] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 447] <- as.character(data[, 447])
attributes(data)$variable.labels[447] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 448] <- as.character(data[, 448])
attributes(data)$variable.labels[448] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 449] <- as.character(data[, 449])
attributes(data)$variable.labels[449] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 450] <- as.character(data[, 450])
attributes(data)$variable.labels[450] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 451] <- as.character(data[, 451])
attributes(data)$variable.labels[451] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 452] <- as.character(data[, 452])
attributes(data)$variable.labels[452] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 453] <- as.character(data[, 453])
attributes(data)$variable.labels[453] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 454] <- as.character(data[, 454])
attributes(data)$variable.labels[454] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 455] <- as.character(data[, 455])
attributes(data)$variable.labels[455] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 456] <- as.character(data[, 456])
attributes(data)$variable.labels[456] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 457] <- as.character(data[, 457])
attributes(data)$variable.labels[457] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 458] <- as.character(data[, 458])
attributes(data)$variable.labels[458] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 459] <- as.character(data[, 459])
attributes(data)$variable.labels[459] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 460] <- as.character(data[, 460])
attributes(data)$variable.labels[460] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 461] <- as.character(data[, 461])
attributes(data)$variable.labels[461] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 462] <- as.character(data[, 462])
attributes(data)$variable.labels[462] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 463] <- as.character(data[, 463])
attributes(data)$variable.labels[463] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 464] <- as.character(data[, 464])
attributes(data)$variable.labels[464] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 465] <- as.character(data[, 465])
attributes(data)$variable.labels[465] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 466] <- as.character(data[, 466])
attributes(data)$variable.labels[466] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 467] <- as.character(data[, 467])
attributes(data)$variable.labels[467] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 468] <- as.character(data[, 468])
attributes(data)$variable.labels[468] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 469] <- as.character(data[, 469])
attributes(data)$variable.labels[469] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 470] <- as.character(data[, 470])
attributes(data)$variable.labels[470] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 471] <- as.character(data[, 471])
attributes(data)$variable.labels[471] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 472] <- as.character(data[, 472])
attributes(data)$variable.labels[472] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 473] <- as.character(data[, 473])
attributes(data)$variable.labels[473] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 474] <- as.character(data[, 474])
attributes(data)$variable.labels[474] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 475] <- as.character(data[, 475])
attributes(data)$variable.labels[475] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 476] <- as.character(data[, 476])
attributes(data)$variable.labels[476] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 477] <- as.character(data[, 477])
attributes(data)$variable.labels[477] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 478] <- as.character(data[, 478])
attributes(data)$variable.labels[478] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 479] <- as.character(data[, 479])
attributes(data)$variable.labels[479] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 480] <- as.character(data[, 480])
attributes(data)$variable.labels[480] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 481] <- as.character(data[, 481])
attributes(data)$variable.labels[481] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 482] <- as.character(data[, 482])
attributes(data)$variable.labels[482] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 483] <- as.character(data[, 483])
attributes(data)$variable.labels[483] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 484] <- as.character(data[, 484])
attributes(data)$variable.labels[484] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 485] <- as.character(data[, 485])
attributes(data)$variable.labels[485] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 486] <- as.character(data[, 486])
attributes(data)$variable.labels[486] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 487] <- as.character(data[, 487])
attributes(data)$variable.labels[487] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 488] <- as.character(data[, 488])
attributes(data)$variable.labels[488] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 489] <- as.character(data[, 489])
attributes(data)$variable.labels[489] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 490] <- as.character(data[, 490])
attributes(data)$variable.labels[490] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 491] <- as.character(data[, 491])
attributes(data)$variable.labels[491] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 492] <- as.character(data[, 492])
attributes(data)$variable.labels[492] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 493] <- as.character(data[, 493])
attributes(data)$variable.labels[493] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 494] <- as.character(data[, 494])
attributes(data)$variable.labels[494] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 495] <- as.character(data[, 495])
attributes(data)$variable.labels[495] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 496] <- as.character(data[, 496])
attributes(data)$variable.labels[496] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 497] <- as.character(data[, 497])
attributes(data)$variable.labels[497] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 498] <- as.character(data[, 498])
attributes(data)$variable.labels[498] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 499] <- as.character(data[, 499])
attributes(data)$variable.labels[499] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 500] <- as.character(data[, 500])
attributes(data)$variable.labels[500] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 501] <- as.character(data[, 501])
attributes(data)$variable.labels[501] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 502] <- as.character(data[, 502])
attributes(data)$variable.labels[502] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 503] <- as.character(data[, 503])
attributes(data)$variable.labels[503] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 504] <- as.character(data[, 504])
attributes(data)$variable.labels[504] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 505] <- as.character(data[, 505])
attributes(data)$variable.labels[505] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 506] <- as.character(data[, 506])
attributes(data)$variable.labels[506] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 507] <- as.character(data[, 507])
attributes(data)$variable.labels[507] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 508] <- as.character(data[, 508])
attributes(data)$variable.labels[508] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 509] <- as.character(data[, 509])
attributes(data)$variable.labels[509] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 510] <- as.character(data[, 510])
attributes(data)$variable.labels[510] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 511] <- as.character(data[, 511])
attributes(data)$variable.labels[511] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 512] <- as.character(data[, 512])
attributes(data)$variable.labels[512] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 513] <- as.character(data[, 513])
attributes(data)$variable.labels[513] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 514] <- as.character(data[, 514])
attributes(data)$variable.labels[514] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 515] <- as.character(data[, 515])
attributes(data)$variable.labels[515] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 516] <- as.character(data[, 516])
attributes(data)$variable.labels[516] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 517] <- as.character(data[, 517])
attributes(data)$variable.labels[517] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 518] <- as.character(data[, 518])
attributes(data)$variable.labels[518] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 519] <- as.character(data[, 519])
attributes(data)$variable.labels[519] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 520] <- as.character(data[, 520])
attributes(data)$variable.labels[520] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 521] <- as.character(data[, 521])
attributes(data)$variable.labels[521] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 522] <- as.character(data[, 522])
attributes(data)$variable.labels[522] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 523] <- as.character(data[, 523])
attributes(data)$variable.labels[523] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 524] <- as.character(data[, 524])
attributes(data)$variable.labels[524] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 525] <- as.character(data[, 525])
attributes(data)$variable.labels[525] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 526] <- as.character(data[, 526])
attributes(data)$variable.labels[526] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 527] <- as.character(data[, 527])
attributes(data)$variable.labels[527] <- ""
#sql_name not set

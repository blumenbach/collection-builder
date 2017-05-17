#!/usr/bin/env bash
if (( $# < 2 )); then
    file=$1
fi
sed -e "s|Bajocium (167.7 - 171.6)|Bajocium#168.3#170.3#Stufe#http://www.wikidata.org/entity/Q375180|" -i $file
sed -e "s|Bartonium (37.2 - 40.4)|Bartonium#37.8#41.2#Stufe#http://www.wikidata.org/entity/Q508675|" -i $file
sed -e "s|Berriasium (140.2 - 145.5)|Berriasium#139.8#145#Stufe#http://www.wikidata.org/entity/Q663355|" -i $file
sed -e "s|Buntsandstein (Untertrias) (245.9 - 251.0)|Buntsandstein (Untertrias)#245.9#251.9#Serie#http://www.wikidata.org/entity/Q4875445|" -i $file
sed -e "s|Callovium (161.2 - 164.7)|Callovium#163.5#166.1#Stufe#http://www.wikidata.org/entity/Q764255|" -i $file
sed -e "s|Chattium (23.03 - 28.4)|Chattium#23.03#28.1#Stufe#http://www.wikidata.org/entity/Q502171|" -i $file
sed -e "s|Ediacarium (542.0 - 635)|Ediacarium#541#635#System#http://www.wikidata.org/entity/Q188654|" -i $file
sed -e "s|Emsium (397.5 - 407.0)|Emsium#393.3#407.6#Stufe#http://www.wikidata.org/entity/Q576789|" -i $file
sed -e "s|Frasnium (374.5 - 385.3)|Frasnium#372.2#382.7#Stufe#http://www.wikidata.org/entity/Q264200|" -i $file
sed -e "s|Givetium (385.3 - 391.8)|Givetium#382.7#387.7#Stufe#http://www.wikidata.org/entity/Q650845|" -i $file
sed -e "s|Hadaikum (4000 - 4600)|Hadaikum#4000#4600#Äonothem#http://www.wikidata.org/entity/Q104460|" -i $file
sed -e "s|Hettangium (196.5 - 199.6)|Hettangium#199.3#201.3#Stufe#http://www.wikidata.org/entity/Q633834|" -i $file
sed -e "s|Jungpleistozän (Tarantium) (0.0117 - 0.126)|Tarantium [Oberes Pleistozän, Jungpleistozän]#0.0117#0.126#Stufe#http://www.wikidata.org/entity/Q498831|" -i $file
sed -e "s|Jura (145.5 - 199.6)|Jura#145#201.3#System#http://www.wikidata.org/entity/Q45805|" -i $file
sed -e "s|Kambrium (488.3 - 542.0)|Kambrium#485.4#541#System#http://www.wikidata.org/entity/Q79064|" -i $file
sed -e "s|Känozoikum (0 -  65.5)|Känozoikum#0#66#Ärathem#http://www.wikidata.org/entity/Q102416|" -i $file
sed -e "s|Karbon (299.0 - 359.2)|Karbon#298.9#358.9#System#http://www.wikidata.org/entity/Q133738|" -i $file
sed -e "s|Kreide (65.5 - 145.5)|Kreide#66#145#System#http://www.wikidata.org/entity/Q44626|" -i $file
sed -e "s|Langhium (13.82 - 15.97)|Langhium#13.82#15.97#Stufe#http://www.wikidata.org/entity/Q167254|" -i $file
sed -e "s|Lias (Unterjura) (175.6 - 199.6)|Unterjura [Lias, Schwarzer Jura]#174.1#201.3#Serie#http://www.wikidata.org/entity/Q284787|" -i $file
sed -e "s|Llandovery (428.2 - 443.7)  |Llandovery#433.4#443.8#Serie#http://www.wikidata.org/entity/Q1187992|" -i $file
sed -e "s|Lutetium (40.4 - 48.6)|Lutetium#41.2#47.8#Stufe#http://www.wikidata.org/entity/Q514893|" -i $file
sed -e "s|Maastrichtium (65.5 - 70.6)|Maastrichtium#66#72.1#Stufe#http://www.wikidata.org/entity/Q278141|" -i $file
sed -e "s|Malm (Oberjura) (145.5 - 161.2)|Oberjura [Malm, Weißer Jura]#145#163.5#Serie#http://www.wikidata.org/entity/Q499312|" -i $file
sed -e "s|Miozän (5.332 - 23.03)|Miozän#5.33#23.03#Serie#http://www.wikidata.org/entity/Q76267|" -i $file
sed -e "s|Mississippium (318.1 - 359.2)|Mississippium#323.2#358.9#Serie#http://www.wikidata.org/entity/Q744718|" -i $file
sed -e "s|Mitteldevon (385.3 - 397.5)|Mitteldevon#382.7#393.3#Serie#http://www.wikidata.org/entity/Q731313|" -i $file
sed -e "s|Mitteljura (161.2 - 175.6)|Mitteljura [Dogger, Brauner Jura]#163.5#174.1#Serie#http://www.wikidata.org/entity/Q500054|" -i $file
sed -e "s|Mittelpleistozän (Ionium) (0.126 - 0.781)|Ionium [Mittelpleistozän]#0.126#0.781#Stufe#http://www.wikidata.org/entity/Q492596|" -i $file
sed -e "s|Muschelkalk (Mitteltrias) (228.7 - 245.9)|Muschelkalk (Mitteltrias)#240#245.9#Serie#http://www.wikidata.org/entity/Q1543962|" -i $file
sed -e "s|Neogen (2.588 - 23.03)|Neogen#2.58#23.03#System#http://www.wikidata.org/entity/Q103924|" -i $file
sed -e "s|Oberkreide (65.5 - 99.6)|Oberkreide#66#100.5#Serie#http://www.wikidata.org/entity/Q338199|" -i $file
sed -e "s|Oligozän (23.03 - 33.9)|Oligozän#23.03#33.9#Serie#http://www.wikidata.org/entity/Q101873|" -i $file
sed -e "s|Ordovizium (443.7 - 488.3)|Ordovizium#443.8#485.4#System#http://www.wikidata.org/entity/Q10739169|" -i $file
sed -e "s|Oxfordium (155.6 - 161.2)|Oxfordium#157.3#163.5#Stufe#http://www.wikidata.org/entity/Q375784|" -i $file
sed -e "s|Paläogen (23.03 - 65.5)|Paläogen#23.03#66#System#http://www.wikidata.org/entity/Q55810|" -i $file
sed -e "s|Paläozän (55.8 - 65.5)|Paläozän#56#66#Serie#http://www.wikidata.org/entity/Q76252|" -i $file
sed -e "s|Paläozoikum (251.0 - 542.0)|Paläozoikum#251.9#541#Ärathem#http://www.wikidata.org/entity/Q75507|" -i $file
sed -e "s|Pleistozän (0.0117 - 2.588)|Pleistozän#0.0117#2.58#Serie#http://www.wikidata.org/entity/Q25546|" -i $file
sed -e "s|Pliensbachium (183.0 - 189.6)|Pliensbachium#182.7#190.8#Stufe#http://www.wikidata.org/entity/Q540479|" -i $file
sed -e "s|Pliozän (2.588 - 5.332)|Pliozän#2.58#5.33#Serie#http://www.wikidata.org/entity/Q76259|" -i $file
sed -e "s|Pragium (407.0 - 411.2)|Pragium#407.6#410.8#Stufe#http://www.wikidata.org/entity/Q1089625|" -i $file
sed -e "s|Präkambrium|Präkambrium#541#4600#Informalle#http://www.wikidata.org/entity/Q103910|" -i $file
sed -e "s|Priabonium (33.9 - 37.2)|Priabonium#33.9#37.8#Stufe#http://www.wikidata.org/entity/Q508438|" -i $file
sed -e "s|Quartär (0 - 2.588)|Quartär#0#2.58#System#http://www.wikidata.org/entity/Q26185|" -i $file
sed -e "s|rezent|rezent###Informalle#|" -i $file
sed -e "s|Rotliegendes (~257 - ~302)|Rotliegend#257.3#302#Serie#http://www.wikidata.org/entity/Q338593|" -i $file
sed -e "s|Rupelium (28.4 - 33.9)|Rupelium#28.1#33.9#Stufe#http://www.wikidata.org/entity/Q508633|" -i $file
sed -e "s|Sakmarium (284.4 - 294.6)|Sakmarium#290.1#295#Stufe#http://www.wikidata.org/entity/Q912962|" -i $file
sed -e "s|Santonium (83.5 - 85.8)|Santonium#83.6#86.3#Stufe#http://www.wikidata.org/entity/Q257290|" -i $file
sed -e "s|Serravallium (11.608 - 13.82)|Serravallium#11.63#13.82#Stufe#http://www.wikidata.org/entity/Q499307|" -i $file
sed -e "s|Silur (416.0 - 443.7)|Silur#419.2#443.8#System#http://www.wikidata.org/entity/Q62412|" -i $file
sed -e "s|Tarantium (0.0117 - 0.126)|Tarantium [Oberes Pleistozän, Jungpleistozän]#0.0117#0.126#Stufe#http://www.wikidata.org/entity/Q498831|" -i $file
sed -e "s|Tertiär|Tertiär#2.58#66#System#http://www.wikidata.org/entity/Q188645|" -i $file
sed -e "s|Tithonium (145.5 - 150.8)|Tithonium#145#152.1#Stufe#http://www.wikidata.org/entity/Q855125|" -i $file
sed -e "s|Toarcium (175.6 - 183.0)|Toarcium#174.1#182.7#Stufe#http://www.wikidata.org/entity/Q914363|" -i $file
sed -e "s|Unterjura (175.6 - 199.6)|Unterjura [Lias, Schwarzer Jura]#174.1#201.3#Serie#http://www.wikidata.org/entity/Q284787|" -i $file
sed -e "s|Viséum (328.3 - 345.3)|Viséum#330.9#346.7#Stufe#http://www.wikidata.org/entity/Q647290|" -i $file
sed -e "s|Zancleum (3.600 - 5.332) |Zancleum#3.6#5.33#Stufe#http://www.wikidata.org/entity/Q146094|" -i $file

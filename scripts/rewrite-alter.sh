#!/usr/bin/env bash
if (( $# < 2 )); then
    file=$1
fi
sed -e "s||10.Stufe#-485.4#-489.5#Stufe|" -i $file
sed -e "s||2.Serie#-509#-521#Serie|" -i $file
sed -e "s||2.Stufe#-521#-529#Stufe|" -i $file
sed -e "s||3.Serie#-497#-509#Serie|" -i $file
sed -e "s||3.Stufe#-514#-521#Stufe|" -i $file
sed -e "s||4.Stufe#-509#-514#Stufe|" -i $file
sed -e "s||5.Stufe#-504.5#-509#Stufe|" -i $file
sed -e "s||Aalenium#-170.3#-174.1#Stufe|" -i $file
sed -e "s||Aeronium#-438.5#-440.8#Stufe|" -i $file
sed -e "s||Albium#-100.5#-113#Stufe|" -i $file
sed -e "s||Anisium#-242#-247.2#Stufe|" -i $file
sed -e "s||Aptium#-113#-125#Stufe|" -i $file
sed -e "s||Aquitanium#-20.44#-23.03#Stufe|" -i $file
sed -e "s||Archaikum#-2500#-4000#Äonothem|" -i $file
sed -e "s||Artinskium#-283.5#-290.1#Stufe|" -i $file
sed -e "s||Asselium#-295#-298.9#Stufe|" -i $file
sed -e "s|Bajocium (167.7 - 171.6)|Bajocium#-168.3#-170.3#Stufe|" -i $file
sed -e "s||Barrêmium#-125#-129.4#Stufe|" -i $file
sed -e "s|Bartonium (37.2 - 40.4)|Bartonium#-37.8#-41.2#Stufe|" -i $file
sed -e "s||Bashkirium#-315.2#-323.2#Stufe|" -i $file
sed -e "s||Bathonium#-166.1#-168.3#Stufe|" -i $file
sed -e "s|Berriasium (140.2 - 145.5)|Berriasium#-139.8#-145#Stufe|" -i $file
sed -e "s|Buntsandstein (Untertrias) (245.9 - 251.0)|Buntsandstein(Untertrias)#-245.9#-251.9#Serie|" -i $file
sed -e "s||Burdigalium#-15.97#-20.44#Stufe|" -i $file
sed -e "s||Calabrium[Altpleistozän]#-0.781#-1.8#Stufe|" -i $file
sed -e "s|Callovium (161.2 - 164.7)|Callovium#-163.5#-166.1#Stufe|" -i $file
sed -e "s||Calymmium#-1400#-1600#System|" -i $file
sed -e "s||Campanium#-72.1#-83.6#Stufe|" -i $file
sed -e "s||Capitanium#-259.1#-265.1#Stufe|" -i $file
sed -e "s||Cenomanium#-93.9#-100.5#Stufe|" -i $file
sed -e "s||Changhsingium#-251.9#-254.1#Stufe|" -i $file
sed -e "s|Chattium (23.03 - 28.4)|Chattium#-23.03#-28.1#Stufe|" -i $file
sed -e "s||Cisuralium#-272.9#-298.9#Serie|" -i $file
sed -e "s||Coniacium#-86.3#-89.8#Stufe|" -i $file
sed -e "s||Cryogenium#-635#-720#System|" -i $file
sed -e "s||Danium#-61.6#-66#Stufe|" -i $file
sed -e "s||Dapingium#-467.3#-470#Stufe|" -i $file
sed -e "s||Darriwilium#-458.4#-467.3#Stufe|" -i $file
sed -e "s||Devon#-358.9#-419.2#System|" -i $file
sed -e "s||Drumium#-500.5#-504.5#Stufe|" -i $file
sed -e "s||Ectasium#-1200#-1400#System|" -i $file
sed -e "s|Ediacarium (542.0 - 635)|Ediacarium#-541#-635#System|" -i $file
sed -e "s||Eifelium#-387.7#-393.3#Stufe|" -i $file
sed -e "s||Emsium#-393.3#-407.6#Stufe|" -i $file
sed -e "s||Eoarchaikum#-3600#-4000#Ärathem|" -i $file
sed -e "s||Eozän#-33.9#-56#Serie|" -i $file
sed -e "s||Famennium#-358.9#-372.2#Stufe|" -i $file
sed -e "s||Floium#-470#-477.7#Stufe|" -i $file
sed -e "s||Fortunium#-529#-541#Stufe|" -i $file
sed -e "s|Frasnium (374.5 - 385.3)|Frasnium#-372.2#-382.7#Stufe|" -i $file
sed -e "s||Furongium#-485.4#-497#Serie|" -i $file
sed -e "s||Gelasium#-1.8#-2.58#Stufe|" -i $file
sed -e "s|Givetium (385.3 - 391.8)|Givetium#-382.7#-387.7#Stufe|" -i $file
sed -e "s||Gorstium#-425.6#-427.4#Stufe|" -i $file
sed -e "s||Guadalupium#-259.1#-272.9#Serie|" -i $file
sed -e "s||Guzhangium#-497#-500.5#Stufe|" -i $file
sed -e "s||Gzhelium#-298.9#-303.7#Stufe|" -i $file
sed -e "s|Hadaikum (4000 - 4600)|Hadaikum#-4000#-4600#Äonothem|" -i $file
sed -e "s||Hauterivium#-129.4#-132.9#Stufe|" -i $file
sed -e "s|Hettangium (196.5 - 199.6)|Hettangium#-199.3#-201.3#Stufe|" -i $file
sed -e "s||Hirnantium#-443.8#-445.2#Stufe|" -i $file
sed -e "s||Holozän#0#-0.0117#Serie|" -i $file
sed -e "s||Homerium#-427.4#-430.5#Stufe|" -i $file
sed -e "s||Indusium#-251.2#-251.9#Stufe|" -i $file
sed -e "s|Mittelpleistozän (Ionium) (0.126 - 0.781)|Ionium[Mittelpleistozän]#-0.126#-0.781#Stufe|" -i $file
sed -e "s|Jungpleistozän (Tarantium) (0.0117 - 0.126)|Jiangshanium#-489.5#-494#Stufe|" -i $file
sed -e "s|Jura (145.5 - 199.6)|Jura#-145#-201.3#System|" -i $file
sed -e "s|Kambrium (488.3 - 542.0)|Kambrium#-485.4#-541#System|" -i $file
sed -e "s|Känozoikum (0 -  65.5)|Känozoikum#0#-66#Ärathem|" -i $file
sed -e "s|Karbon (299.0 - 359.2)|Karbon#-298.9#-358.9#System|" -i $file
sed -e "s||Karnium#-227#-237#Stufe|" -i $file
sed -e "s||Kasimovium#-303.7#-307#Stufe|" -i $file
sed -e "s||Katium#-445.2#-453#Stufe|" -i $file
sed -e "s||Keuper(Obertrias)#-201.3#-240#Serie|" -i $file
sed -e "s||Kimmeridgium#-152.1#-157.3#Stufe|" -i $file
sed -e "s|Kreide (65.5 - 145.5)|Kreide#-66#-145#System|" -i $file
sed -e "s||Kungurium#-272.9#-283.5#Stufe|" -i $file
sed -e "s||Ladinium#-237#-242#Stufe|" -i $file
sed -e "s|Langhium (13.82 - 15.97)|Langhium#-13.82#-15.97#Stufe|" -i $file
sed -e "s|Llandovery (428.2 - 443.7)  |Llandovery#-433.4#-443.8#Serie|" -i $file
sed -e "s||Lochkovium#-410.8#-419.2#Stufe|" -i $file
sed -e "s||Lopingium#-251.9#-259.1#Serie|" -i $file
sed -e "s||Ludfordium#-423#-425.6#Stufe|" -i $file
sed -e "s||Ludlow#-423#-427.4#Serie|" -i $file
sed -e "s|Lutetium (40.4 - 48.6)|Lutetium#-41.2#-47.8#Stufe|" -i $file
sed -e "s||Maastrichtium#-66#-72.1#Stufe|" -i $file
sed -e "s||Mesoarchaikum#-2800#-3200#Ärathem|" -i $file
sed -e "s||Mesoproterozoikum#-1000#-1600#Ärathem|" -i $file
sed -e "s||Mesozoikum#-66#-251.9#Ärathem|" -i $file
sed -e "s||Messinium#-5.33#-7.25#Stufe|" -i $file
sed -e "s|Miozän (5.332 - 23.03)|Miozän#-5.33#-23.03#Serie|" -i $file
sed -e "s|Mississippium (318.1 - 359.2)|Mississippium#-323.2#-358.9#Serie|" -i $file
sed -e "s|Mitteldevon (385.3 - 397.5)|Mitteldevon#-382.7#-393.3#Serie|" -i $file
sed -e "s||Mitteljura[Dogger,BraunerJura]#-163.5#-174.1#Serie|" -i $file
sed -e "s||Mittelordovizium#-458.4#-470#Serie|" -i $file
sed -e "s||Mitteltrias#-237#-247.2#Serie|" -i $file
sed -e "s||Moskovium#-307#-315.2#Stufe|" -i $file
sed -e "s|Muschelkalk (Mitteltrias) (228.7 - 245.9)|Muschelkalk(Mitteltrias)#-240#-245.9#Serie|" -i $file
sed -e "s||Neoarchaikum#-2500#-2800#Ärathem|" -i $file
sed -e "s|Neogen (2.588 - 23.03)|Neogen#-2.58#-23.03#System|" -i $file
sed -e "s||Neoproterozoikum#-541#-1000#Ärathem|" -i $file
sed -e "s||Norium#-208.5#-227#Stufe|" -i $file
sed -e "s||Oberdevon#-358.9#-382.7#Serie|" -i $file
sed -e "s|Malm (Oberjura) (145.5 - 161.2)|Oberjura[Malm,WeißerJura]#-145#-163.5#Serie|" -i $file
sed -e "s|Oberkreide (65.5 - 99.6)|Oberkreide#-66#-100.5#Serie|" -i $file
sed -e "s||Oberordovizium#-443.8#-458.4#Serie|" -i $file
sed -e "s||Obertrias#-201.3#-237#Serie|" -i $file
sed -e "s||Olenekium#-247.2#-251.2#Stufe|" -i $file
sed -e "s|Oligozän (23.03 - 33.9)|Oligozän#-23.03#-33.9#Serie|" -i $file
sed -e "s|Ordovizium (443.7 - 488.3)|Ordovizium#-443.8#-485.4#System|" -i $file
sed -e "s||Orosirium#-1800#-2050#System|" -i $file
sed -e "s|Oxfordium (155.6 - 161.2)|Oxfordium#-157.3#-163.5#Stufe|" -i $file
sed -e "s||Paibium#-494#-497#Stufe|" -i $file
sed -e "s||Paläoarchaikum#-3200#-3600#Ärathem|" -i $file
sed -e "s|Paläogen (23.03 - 65.5) [?]|Paläogen#-23.03#-66#System|" -i $file
sed -e "s||Paläoproterozoikum#-1600#-2500#Ärathem|" -i $file
sed -e "s|Paläozän (55.8 - 65.5)|Paläozän#-56#-66#Serie|" -i $file
sed -e "s|Paläozoikum (251.0 - 542.0)|Paläozoikum#-251.9#-541#Ärathem|" -i $file
sed -e "s||Pennsylvanium#-298.9#-323.2#Serie|" -i $file
sed -e "s|Perm (251.0 - 299.0) ?|Perm#-251.9#-298.9#System|" -i $file
sed -e "s||Phanerozoikum#0#-541#Äonothem|" -i $file
sed -e "s||Piacenzium#-2.58#-3.6#Stufe|" -i $file
sed -e "s|Pleistozän (0.0117 - 2.588)|Pleistozän#-0.0117#-2.58#Serie|" -i $file
sed -e "s|Pliensbachium (183.0 - 189.6)|Pliensbachium#-182.7#-190.8#Stufe|" -i $file
sed -e "s|Pliozän (2.588 - 5.332)|Pliozän#-2.58#-5.33#Serie|" -i $file
sed -e "s|Pragium (407.0 - 411.2)|Pragium#-407.6#-410.8#Stufe|" -i $file
sed -e "s|Präkambrium|Präkambrium#-541#-4600#Informalle|" -i $file
sed -e "s||Priabonium#-33.9#-37.8#Stufe|" -i $file
sed -e "s||Pridolium#-419.2#-423#Serie|" -i $file
sed -e "s||Proterozoikum#-541#-2500#Äonothem|" -i $file
sed -e "s|Quartär (0 - 2.588)|Quartär#0#-2.58#System|" -i $file
sed -e "s|rezent|rezent###Informalle|" -i $file
sed -e "s||Rhaetium#-201.3#-208.5#Stufe|" -i $file
sed -e "s||Rhuddanium#-440.8#-443.8#Stufe|" -i $file
sed -e "s||Rhyacium#-2050#-2300#System|" -i $file
sed -e "s||Roadium#-268.8#-272.9#Stufe|" -i $file
sed -e "s|Rotliegendes (~257 - ~302)|Rotliegend#-257.3#-302#Serie|" -i $file
sed -e "s|Rupelium (28.4 - 33.9)|Rupelium#-28.1#-33.9#Stufe|" -i $file
sed -e "s|Sakmarium (284.4 - 294.6)|Sakmarium#-290.1#-295#Stufe|" -i $file
sed -e "s||Sandbium#-453#-458.4#Stufe|" -i $file
sed -e "s|Santonium (83.5 - 85.8)|Santonium#-83.6#-86.3#Stufe|" -i $file
sed -e "s||Satherium#-1600#-1800#System|" -i $file
sed -e "s||Seelandium#-59.2#-61.6#Stufe|" -i $file
sed -e "s||Serpukhovium#-323.2#-330.9#Stufe|" -i $file
sed -e "s|Serravallium (11.608 - 13.82)|Serravallium#-11.63#-13.82#Stufe|" -i $file
sed -e "s||Sheinwoodium#-430.5#-433.4#Stufe|" -i $file
sed -e "s||Siderium#-2300#-2500#System|" -i $file
sed -e "s|Silur (416.0 - 443.7)|Silur#-419.2#-443.8#System|" -i $file
sed -e "s||Sinemurium#-190.8#-199.3#Stufe|" -i $file
sed -e "s||Stenium#-1000#-1200#System|" -i $file
sed -e "s|Tarantium (0.0117 - 0.126)|Tarantium[OberesPleistozän,Jungpleistozän]#-0.0117#-0.126#Stufe|" -i $file
sed -e "s||Telychium#-433.4#-438.5#Stufe|" -i $file
sed -e "s||Terreneuvium#-521#-541#Serie|" -i $file
sed -e "s|Tertiär|Tertiär#-2.58#-66#System|" -i $file
sed -e "s||Thanetium#-56#-59.2#Stufe|" -i $file
sed -e "s|Tithonium (145.5 - 150.8)|Tithonium#-145#-152.1#Stufe|" -i $file
sed -e "s|Toarcium (175.6 - 183.0)|Toarcium#-174.1#-182.7#Stufe|" -i $file
sed -e "s||Tonium#-720#-1000#System|" -i $file
sed -e "s||Tortonium#-7.25#-11.63#Stufe|" -i $file
sed -e "s||Tournaisium#-346.7#-358.9#Stufe|" -i $file
sed -e "s||Tremadocium#-477.7#-485.4#Stufe|" -i $file
sed -e "s||Trias#-201.3#-251.9#System|" -i $file
sed -e "s||Turonium#-89.8#-93.9#Stufe|" -i $file
sed -e "s||unbekannt###Informalle|" -i $file
sed -e "s||Unterdevon#-393.3#-419.2#Serie|" -i $file
sed -e "s|Lias (Unterjura) (175.6 - 199.6)|Unterjura[Lias,SchwarzerJura]#-174.1#-201.3#Serie|" -i $file
sed -e "s|Unterjura (175.6 - 199.6)|Unterjura[Lias,SchwarzerJura]#-174.1#-201.3#Serie|" -i $file
sed -e "s||Unterkreide#-100.5#-145#Serie|" -i $file
sed -e "s||Unterordovizium#-470#-485.4#Serie|" -i $file
sed -e "s||Unterpleistozän[FrühesPleistozän]#-0.781#-2.58#Stufe|" -i $file
sed -e "s||Untertrias#-247.2#-251.902#Serie|" -i $file
sed -e "s||Valanginium#-132.9#-139.8#Stufe|" -i $file
sed -e "s|Viséum (328.3 - 345.3)|Viséum#-330.9#-346.7#Stufe|" -i $file
sed -e "s||Wenlock#-427.4#-433.4#Serie|" -i $file
sed -e "s||Wordium#-265.1#-268.8#Stufe|" -i $file
sed -e "s||Wuchiapingium#-254.1#-259.1#Stufe|" -i $file
sed -e "s||Ypresium#-47.8#-56#Stufe|" -i $file
sed -e "s|Zancleum (3.600 - 5.332) |Zancleum#-3.6#-5.33#Stufe|" -i $file
sed -e "s||Zechstein#-251#-257.3#Serie|" -i $file

#!/usr/bin/env bash
if (( $# < 2 )); then
    file=$1
fi
sed -e "s|<kategorie_id>1</kategorie_id>|<class>http://purl.org/vocab/blumenbach#Anatomie und Anthropologie</class>|" -i $file
sed -e "s|<kategorie_id>3</kategorie_id>|<class>http://purl.org/vocab/blumenbach#Archaeologie und Ur- und Fruehgeschichte</class>|" -i $file
sed -e "s|<kategorie_id>4</kategorie_id>|<class>http://purl.org/vocab/blumenbach#Archivwesen</class>|" -i $file
sed -e "s|<kategorie_id>5</kategorie_id>|<class>http://purl.org/vocab/blumenbach#Botanik</class>|" -i $file
sed -e "s|<kategorie_id>6</kategorie_id>|<class>http://purl.org/vocab/blumenbach#Ethnologie</class>|" -i $file
sed -e "s|<kategorie_id>7</kategorie_id>|<class>http://purl.org/vocab/blumenbach#Gemmologie</class>|" -i $file
sed -e "s|<kategorie_id>8</kategorie_id>|<class>http://purl.org/vocab/blumenbach#Geologie</class>|" -i $file
sed -e "s|<kategorie_id>9</kategorie_id>|<class>http://purl.org/vocab/blumenbach#Medizin</class>|" -i $file
sed -e "s|<kategorie_id>10</kategorie_id>|<class>http://purl.org/vocab/blumenbach#Meteoritenkunde</class>|" -i $file
sed -e "s|<kategorie_id>11</kategorie_id>|<class>http://purl.org/vocab/blumenbach#Mineralogie</class>|" -i $file
sed -e "s|<kategorie_id>12</kategorie_id>|<class>http://purl.org/vocab/blumenbach#Palaeobotanik</class>|" -i $file
sed -e "s|<kategorie_id>13</kategorie_id>|<class>http://purl.org/vocab/blumenbach#Palaeozoologie</class>|" -i $file
sed -e "s|<kategorie_id>14</kategorie_id>|<class>http://purl.org/vocab/blumenbach#Pharmakognosie</class>|" -i $file
sed -e "s|<kategorie_id>15</kategorie_id>|<class>http://purl.org/vocab/blumenbach#Zoologie</class>|" -i $file
sed -e "s|<kategorie_id>16</kategorie_id>|<class>http://purl.org/vocab/blumenbach#Sonstiges</class>|" -i $file
sed -e "s#<kerndaten_id>#<kdtaxon_id>#" -i $file
sed -e "s#</kerndaten_id>#</kdtaxon_id>#" -i $file

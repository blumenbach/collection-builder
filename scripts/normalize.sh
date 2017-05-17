#!/usr/bin/env bash
if (( $# < 2 )); then
    file=$1
fi
sed -e "s#Georg-August-Universität Göttingen, Medizinische Fakultät, Zentrum Anatomie (Blumenbachsche Schädelsammlung)#Georg-August-Universität Göttingen, Universitätsmedizin, Zentrum Anatomie, Blumenbach-Sammlung#" -i $file
sed -e "s#Georg-August-Universität Göttingen, Institut für Ethnologie#Georg-August-Universität Göttingen, Sozialwissenschaftliche Fakultät, Institut für Ethnologie, Ethnologische Sammlung#" -i $file
sed -e "s#Georg-August-Universität Göttingen, Geowissenschaftliches Zentrum, Museum, Sammlungen &amp; Geopark#Georg-August-Universität Göttingen, Fakultät für Geowissenschaften und Geographie, Geowissenschaftliches Zentrum, Geowissenschaftliches Museum#" -i $file
sed -e "s#Georg-August-Universität Göttingen, Johann-Friedrich-Blumenbach Institut für Zoologie und Anthropologie, Zoologisches Museum#Georg-August-Universität Göttingen, Fakultät für Biologie und Psychologie, Johann-Friedrich-Blumenbach Institut für Zoologie und Anthropologie, Zoologisches Museum#" -i $file
sed -e "s#tgn:#http://vocab.getty.edu/tgn/#" -i $file
sed -e "s#cnp#http://thesaurus.cerl.org/record/cnp#" -i $file
sed -e "s#Museum Göttinger Chemie#Georg-August-Universität Göttingen, Fakultät für Chemie, Museum der Göttinger Chemie#" -i $file
sed -e "s#Niedersächsiches Landesmuseum Hannover#Niedersächsisches Landesmuseum Hannover, Abteilung Naturkunde#" -i $file
sed -e "s#Georg-August-Universität Göttingen, Johann-Friedrich-Blumenbach Institut für Zoologie und Anthropologie, Historische Anthropologie#Georg-August-Universität Göttingen, Fakultät für Biologie und Psychologie, Johann-Friedrich-Blumenbach-Institut für Zoologie und Anthropologie, Historische Anthropologie und Humanökologie#" -i $file


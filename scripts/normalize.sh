#!/usr/bin/env bash
if (( $# < 2 )); then
    file=$1
fi
sed -e "s#Georg-August-Universität Göttingen, Geowissenschaftliches Zentrum, Museum, Sammlungen &amp; Geopark#Georg-August-Universität Göttingen, Geowissenschaftliches Zentrum, Museum, Sammlungen Geopark#" -i $file
sed -e "s#tgn:#http://vocab.getty.edu/tgn/#" -i $file
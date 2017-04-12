<?php
if (file_exists('tgn.xml')) {
    $contents = simplexml_load_file('tgn.xml');
} else {
    exit('Failed to open tgn.xml.');
}

foreach ($contents->xpath('//value') as $value) {
    $entity = $value->xpath('preceding-sibling::entity')[0];
    $curl = curl_init();
    $fp = fopen("/tmp/results.xml", "a");
    $req = $value;
    curl_setopt($curl, CURLOPT_URL, $req);
    curl_setopt($curl, CURLOPT_FILE, $fp);
    curl_setopt($curl, CURLOPT_SSL_ENABLE_ALPN, FALSE);
    curl_setopt($curl, CURLOPT_FOLLOWLOCATION, true);
    curl_setopt($curl, CURLOPT_RETURNTRANSFER, TRUE);
    curl_setopt($curl, CURLOPT_HTTPHEADER, array('Accept: application/rdf+xml'));
    $contents = curl_exec($curl);
    try {
        $oXML = new SimpleXMLElement($contents);
        foreach ($oXML->getDocNamespaces() as $strPrefix => $strNamespace) {
            if (strlen($strPrefix) == 0) {
                $strPrefix = "a";
            }
            $oXML->registerXPathNamespace($strPrefix, $strNamespace);
        }
        $lang = null;
        if (isset($oXML->xpath('//skos:prefLabel[@xml:lang="de"]')[0])) {
            $label = $oXML->xpath('//skos:prefLabel[@xml:lang="de"]')[0];
            $lang= "de";
        } elseif (isset($oXML->xpath('//gvp:term[@xml:lang="de"]')[0])) {
            $label = $oXML->xpath('//gvp:term[@xml:lang="de"]')[0];
            $lang= "de";
        } elseif (isset($oXML->xpath('//rdfs:label[@xml:lang="de"]')[0])) {
            $label = $oXML->xpath('//rdfs:label[@xml:lang="de"]')[0];
            $lang= "de";
        } elseif (isset($oXML->xpath('//skos:prefLabel[@xml:lang="en"]')[0])) {
            $label = $oXML->xpath('//skos:prefLabel[@xml:lang="en"]')[0];
            $lang= "en";
        } elseif (isset($oXML->xpath('//gvp:term[@xml:lang="en"]')[0])) {
            $label = $oXML->xpath('//gvp:term[@xml:lang="en"]')[0];
            $lang= "en";
        } elseif (isset($oXML->xpath('//rdfs:label[@xml:lang="en"]')[0])) {
            $label = $oXML->xpath('//rdfs:label[@xml:lang="en"]')[0];
            $lang= "en";
        } elseif  (isset($oXML->xpath('//skos:prefLabel')[0])){
            $label = $oXML->xpath('//skos:prefLabel')[0];
            $lang ="und";
        } elseif (isset($oXML->xpath('//gvp:term')[0])) {
            $label = $oXML->xpath('//gvp:term')[0];
            $lang= "und";
        } else {
            $label = $oXML->xpath('//rdfs:label')[0];
            $lang= "und";
        }
        $parentstring = $oXML->xpath('//gvp:parentString')[0];
        $declat = null;
        $declong = null;
        if (isset($oXML->xpath('//wgs:lat')[0])) {
            $declat = $oXML->xpath('//wgs:lat')[0];
        }
        if (isset($oXML->xpath('//wgs:long')[0])) {
            $declong = $oXML->xpath('//wgs:long')[0];
        }
        $out = '<place tgn="' . $value . '" entity="' . $entity . '">
        <label xml:lang="' .$lang. '">' . $label .'</label>
        <parentString>' . $parentstring .'</parentString>
        <lat>' . $declat . '</lat>
        <long>' . $declong . "</long>
        </place>\n";
        fwrite($fp, $out);
        curl_close($curl);
        fclose($fp);
        print $entity . "\n";
    } catch (Exception $ex) {

    }
}


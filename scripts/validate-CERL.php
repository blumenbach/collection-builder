<?php
$cnp = $argv[1];
$uri = 'https://thesaurus.cerl.org/record/'. $cnp;
$curl = curl_init();
$fp = fopen("/tmp/results.xml", "a");
$req= $uri;
curl_setopt ($curl, CURLOPT_URL, $req);
curl_setopt($curl, CURLOPT_FILE, $fp);
curl_setopt($curl,  CURLOPT_SSL_ENABLE_ALPN, FALSE);
curl_setopt($curl, CURLOPT_FOLLOWLOCATION, true);
curl_setopt($curl,  CURLOPT_RETURNTRANSFER, TRUE);
curl_setopt($curl,  CURLOPT_HTTPHEADER, array('Accept: application/rdf+xml'));
$contents = curl_exec($curl);
$oXML = new SimpleXMLElement($contents);
foreach($oXML->getDocNamespaces() as $strPrefix => $strNamespace) {
    if(strlen($strPrefix)==0) {
        $strPrefix="a";
    }
    $oXML->registerXPathNamespace($strPrefix,$strNamespace);
}
$personname = $oXML->xpath('//rdaGr2:nameOfThePerson')[0];
$json = json_encode($personname);
$out = '<person cnp="' . $cnp . '">'. "\n" . $personname[0] . "</person>";
fwrite($fp, $out);
curl_close($curl);
fclose($fp);
print $json;
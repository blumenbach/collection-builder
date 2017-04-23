import module namespace fr="http://www.cems.uwe.ac.uk/wiki/fr" at  "rdf.xqm";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
declare namespace rdfs = "http://www.w3.org/2000/01/rdf-schema#";
declare variable $config :=  doc("/db/orbeon/fr/blumenbach-sammlung/main/modules/rdf-map.xml");
declare variable $x := fr:declare-namespaces($config);
<rdf:RDF>
{
  for $map in $config//map
  let $objects := collection("/db/orbeon/fr/blumenbach-sammlung/main/data")
  let $source := $objects//form
  return 
        (for $row in $source return fr:row-to-rdf($row,$map)
        )
}
</rdf:RDF>
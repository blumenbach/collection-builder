module namespace  fr= "http://www.cems.uwe.ac.uk/wiki/fr";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
declare namespace rdfs = "http://www.w3.org/2000/01/rdf-schema#";
import module namespace util = "http://exist-db.org/xquery/util";

declare function fr:declare-namespaces($config) { 
  for $ns in $config//namespace[@declare="yes"]
  return util:declare-namespace($ns/@prefix,xs:anyURI($ns/@uri))
};

declare function fr:expand($qname as xs:string?, $map ) as xs:string ?{
   let $namespace := $map/..//namespace
   return
   if ($qname)
   then  if (contains($qname,":"))
             then  let $qs := tokenize($qname,":")
                       let $prefix := $qs[1]
                       let $name := $qs[2]
                       let $uri := $namespace[@prefix=$prefix]/@uri
                       return concat($uri,$name)
              else if ($namespace[@prefix = $qname])
                       then 
                         $namespace[@prefix = $qname]/@uri
              else 
                   $qname
    else ()
};


declare function fr:row-to-rdf($row as element() , $map as element() ) as element(rdf:Description) * {
       let $pk := $map/col[@pk="true"]
       let $idpath := substring-after(base-uri($row), "/orbeon/fr/blumenbach-sammlung/main/data/" )
       let $id := substring-before($idpath, "/data.xml")
       let $pkuri := fr:expand($pk/@uribase, $map)
       return
         <rdf:Description>
            {attribute rdf:about {concat($pkuri,"/",$id)}}    
            { if ($map/@type)
              then 
                       let $typeuri := fr:expand(concat($map/@prefix,":",$map/@type),$map)
                       return <rdf:type rdf:resource="{$typeuri}"/>
              else ()
            }
            {for $col  in $map/col
             let $name := $col/@name
             let $data := string($row//*[name(.)=$name])  
              return 
              if ($data !="")
              then 
                   element { concat(($col/@prefix,$map/@prefix)[1], ":", ($col/@tag,$name)[1])}
                   {    
                           if ($col/@type)
                           then (attribute rdf:datatype
                                   {  fr:expand($col/@type,$map)} ,
                                   $data)
                            else if ( $col/@uribase )
                            then  attribute rdf:resource
                                  {$data}
                            else  $data
                    }
              else ()           
            } 
         </rdf:Description>
 };
 
 declare function fr:map-to-schema ($map as element()) as element(rdf:Description) * {
     let $typeuri := fr:expand(concat($map/@prefix,":",$map/@type),$map)
     for $col in $map/col[@type]
     let $prop := concat( fr:expand(($col/@prefix,$map/@prefix)[1],$map ), ($col/@tag,$col/@name)[1])
     let $rangeuri := ( fr:expand($col/@type,$map), fr:expand($col/@uribase,$map),"http://www.w3.org/2000/01/rdf-schema#literal")[1]
     return
       <rdf:Description rdf:about="{$prop}">
           <rdf:type  rdf:resource="http://www.w3.org/1999/02/22-rdf-syntax-ns#Property"/>
           <rdfs:domain rdf:resource="{$typeuri}"/>
           <rdfs:range rdf:resource="{$rangeuri}"/>
           <rdf:label>{string($col/@name)}</rdf:label>
       </rdf:Description>
 };
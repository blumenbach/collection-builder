xquery version "3.0";

declare namespace uuid="java:java.util.UUID";

let $object := doc("forms.xml")//form
for $id in $object//a3
order by $id
return 
<id>{distinct-values($id)}</id>
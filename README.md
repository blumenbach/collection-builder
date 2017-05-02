# collection-builder

## HOW TO 
* create new empty schema in local mysql instance
* import dump file from backup directory on nfs (`www.blumenbach-online.de-neu/sqldump`)
* export tables as xml into new directory in xml-from-sql
* rename primary keys in each join table from `<kerndaten_id>` to `<kd$part_id>`
* run scripts/rewrite-kategorie.sh on hauptzuordnung.xml
* modify styles/config.xml to match the export files of the tables
* execute XSLT on "part2.xml" using "step-1.xsl"
* save output file in xml-from-sql/$date_dir/merge directory
* repeat with XSLT "step-2.xsl" through "step-6.xsl", iterating on output.
* run "toform.xsl" on output from step-6
* run scripts/normalize.sh on forms.xml
* run "todirectories.xsl" on forms.xml
* output will be in merge/forms directory.  Save into eXistdb collection.

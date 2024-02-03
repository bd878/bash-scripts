BEGIN { FS=":"; print "===" }
{ print "dn:\tuid=" $1 ",ds=example, dc=com" }
{ print "cn:\t" $2,$3 }
{ print "sn:\t" $3 }
{ print "telephoneNumber:\t" $4 }
{ print "===" }

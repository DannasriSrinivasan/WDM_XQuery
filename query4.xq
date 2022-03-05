distinct-values(for $x in doc("auction.xml")//person/profile/interest
return ($x/@category, $x/../../name))

for $a in doc("auction.xml")//regions//item
order by $a/name 
return (
	<li>{$a/name,$a/location} </li>, '&#xa;')
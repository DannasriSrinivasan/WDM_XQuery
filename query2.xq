for $a in doc("auction.xml")//regions/europe/item 
return 
(<li>
	{$a/name, $a/description}
</li>, '&#xa;')

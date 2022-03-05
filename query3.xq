for $a in doc("auction.xml")//closed_auction
let $name:= $a/buyer/@person
return 
(<li>
	{doc("auction.xml")//person[@id =$name]/name, $a/quantity}
</li>, '&#xa;')

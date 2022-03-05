for $a in doc("auction.xml")//regions/* 
return 
(<li>
    {count($a/item)}
</li>, '&#xa;')
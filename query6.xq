for $x in doc("auction.xml")//closed_auction
let $name:= $x/buyer/@person
let $itemname:= $x/itemref/@item
return (
  if(data(doc("auction.xml")//regions/europe/item[@id=$itemname]/@id)= data($itemname))then
  (<Person>{doc("auction.xml")//person[@id =$name]/name }</Person>, <ItemName>{doc("auction.xml")//regions/europe/item[@id=$itemname]/name}</ItemName>, '&#xa;')
  else
  ())
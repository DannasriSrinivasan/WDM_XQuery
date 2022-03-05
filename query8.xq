distinct-values(for $x in doc("auction.xml")//open_auction
  for $y in $x/bidder   
      return if($y/personref/@person = "person3") then
        for $z in $y/following-sibling::*
          return if($z/personref/@person = "person6")then 
            $z/../reserve 
          else ()
        else())      
           

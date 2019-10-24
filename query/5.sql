select member_of_parliament.partyname ,member_of_parliament.elecno , member_of_parliament.mpno , A.subdisname  
from member_of_parliament , 
    (select subdistrict.subdisname , subdistrict.elecno
     from subdistrict
     where subdistrict.elecno in 
        (
            select member_of_parliament.elecno
            from member_of_parliament
            where member_of_parliament.partystatus = 'ถูกศาลรัฐธรรมนูญสั่งยุบพรรค'
        )
    ) as A
where member_of_parliament.partystatus = 'ถูกศาลรัฐธรรมนูญสั่งยุบพรรค' 
limit 100;


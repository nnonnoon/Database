select  subdistrict.ElecNo , subdistrict.DistrictName , A.PartyName , A.count_of_elecno
from subdistrict , 
    (
        select eleczone.partyname , count(eleczone.elecno)  as count_of_elecno
        from eleczone 
        group by eleczone.partyname
    ) as A
where subdistrict.elecno in
    (
        select eleczone.elecno
        from eleczone
        where eleczone.partyname in 
            (
                select eleczone.partyname 
                from eleczone
                group by eleczone.partyname  
            )
    );
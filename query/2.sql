select member_of_parliament.mpno,member_of_parliament.Nametitle , member_of_parliament.mpfirstname, member_of_parliament.mplastname , member_of_parliament.partyname 
, A.elecplacename
, B.zipcode
from member_of_parliament , 
    (select elecplacename
     from elecplace 
     where  exists
        (   select subdisname 
            from subdistrict 
            where elecplace.subdisname = 'หนองบอน'
        ))as A ,

    (select district.zipcode 
     from district 
        where district.districtname in   
        (
            select districtname
            from subdistrict
            where subdistrict.subdisname = 'หนองบอน'
        ))as B

where member_of_parliament.elecno in 
(
    select elecno
    from subdistrict
    where subdistrict.subdisname = 'หนองบอน'
);



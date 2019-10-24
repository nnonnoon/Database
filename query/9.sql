select party.partyname , A.elecno , party.PartyPolicy

from party , 
    (
        select member_of_parliament.elecno  
        from member_of_parliament 
        where mpfirstname = 'ชัญญา' and mplastname = 'บุญเกิด' 
    )as A

where  party.partyname in  
    (
        select member_of_parliament.partyname
        from member_of_parliament
        where mpfirstname = 'ชัญญา' and mplastname = 'บุญเกิด' 
    );
select member_of_parliament.MPno , member_of_parliament.Nametitle , member_of_parliament.mpfirstName , member_of_parliament.mplastName
from member_of_parliament 
where  member_of_parliament.elecno in 
    (select elecno from subdistrict where subdistrict.subdisname = 'บางโคล่')
    and member_of_parliament.partyname = 'อนาคตใหม่';

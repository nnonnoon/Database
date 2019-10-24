select  member_of_parliament.partyname ,member_of_parliament.MPFirstName , member_of_parliament.MPLastName , eleczone.score 
from member_of_parliament , eleczone
where member_of_parliament.elecno in 
		(select ElecNo from subdistrict where subdistrict.subdisname in ('พระบรมมหาราชวัง')) 
	and member_of_parliament.PartyName  in 
		(select  PartyName from eleczone  where   eleczone.ElecNo in 
			(select ElecNo from subdistrict where subdistrict.subdisname in ('พระบรมมหาราชวัง')))
    and eleczone.elecno in  
        (select ElecNo from subdistrict where subdistrict.subdisname in ('พระบรมมหาราชวัง')); 
select candidate.NameTitle , candidate.CDfirstname , candidate.CDlastname ,candidate.EduBackGround , candidate.Career , candidate.PartyName
from candidate 
where exists
    (
        select pmfirstname 
        from list_of_prime_minister
        where candidate.cdfirstname = list_of_prime_minister.pmfirstname
    ) 
    and exists
    (
        select pmlastname
        from list_of_prime_minister
        where candidate.cdlastname = list_of_prime_minister.pmlastname
    );
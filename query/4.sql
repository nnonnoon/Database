select A.PLFirstName , A.PLLastName , candidate.NameTitle , candidate.CDFirstName , candidate.CDLastname
from candidate , 
    (
        select *
        from party 
        where party.partyname = 'เพื่อไทย'
    ) as A
where exists 
    (
        select party.partyname
        from party
        where candidate.partyname = 'เพื่อไทย';
    );
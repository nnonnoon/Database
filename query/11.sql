select party.partyname
from party
where not exists 
    (
        select partyname
        from member_of_parliament
        where party.partyname = 'ถูกศาลรัฐธรรมนูญสั่งยุบพรรค'
    )
group by party.partyname;
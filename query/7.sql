SELECT  candidate.nametitle ,candidate.cdfirstname , candidate.cdlastname ,candidate.Partyname , B.score
FROM candidate , (SELECT A.Partyname ,A.score
    FROM(
        SELECT eleczone.Partyname,sum(eleczone.score) as score
        FROM eleczone 
        group by eleczone.Partyname 
        )as A 
    Group by A.Partyname 
    ORDER BY score DESC LIMIT 1)as B
where candidate.Partyname = B.Partyname;

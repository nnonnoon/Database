select district.districtname , district.districtofficename , district.districtofficeadd , A.districtofficetl
from district , 
    (
        select *
        from districtofficetelephonenumber 
        where districtofficetelephonenumber.districtname in 
        (
            select districtname
            from subdistrict
            where subdistrict.subdisname = 'คลองเตย'
        )
    )as A

where district.districtname in 
(
    select districtname
    from subdistrict
    where subdistrict.subdisname = 'คลองเตย'
);
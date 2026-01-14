create table "건축물대장" (
	"관리_건축물대장_PK" varchar(30),
	"대지_면적" numeric,
	"연면적" numeric,
	"주_용도_코드_명" varchar(100),
	"기타_용도" varchar(100),
	"대지_위치" varchar(300),
	"도로명_대지_위치" varchar(300),
	"시군구명" varchar(300),
	"번지" varchar(30)
);

-- 상업업무용 
create table "실거래_상업업무용_분당구"
(
	"계약년월" varchar(6), 
	"번호" int, 
	"계약일" varchar(2), 
	"시군구일련번호" varchar(10), 
	"지번" varchar(10), 
	"유형" varchar(10), 
	"도로명" varchar(100), 
	"용도지역" varchar(30), 
	"건축물주용도" varchar(30),
    "도로조건" varchar(30), 
    "전용면적" numeric, 
    "대지면적" numeric, 
    "거래금액" numeric, 
    "층" varchar(30), 
    "지분구분" varchar(30), 
    "건축년도" varchar(4), 
    "해제사유발생일" varchar(10), 
    "거래유형" varchar(10),
    "시군구명" varchar(100),
    "법정동코드" varchar(10)
);

-- "경기도 성남시분당구 판교동" -> "경기도 성남시 분당구 판교동"
update "실거래_상업업무용_분당구"
set    "시군구명" = replace()
;


select * from "건축물대장";

select * 
from "실거래_상업업무용_분당구" 
where "계약년월" = '202202' 
and "번호" = 5533; 

select t.*, b.*
from   "실거래_상업업무용_분당구" t 
       left outer join  "건축물대장" b
on    (t."시군구명" = b."시군구명" and t."지번" = b."번지")
where  t."계약년월" = '202202'
and    t."번호" = 5533
;


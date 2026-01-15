create table "건축물대장_기본개요" (
	"관리_건축물대장_PK" 		varchar(30),
	"관리_상위_건축물대장_PK" 	varchar(30),
	"PNUCODE"				varchar(30),
	"대장_구분_코드"          	varchar(10),
	"대장_종류_코드"           	varchar(10),
	"대지_위치"              	varchar(300),
	"도로명_대지_위치"          varchar(300),
	"건물_명"               	varchar(100),
	"특수지_명"              	varchar(100),
	"블록"                 	varchar(100),
	"로트"                 	varchar(100),
	"외필지_수"               	numeric,
	"새주소_도로_코드"         	varchar(100),
	"새주소_법정동_코드"        	varchar(100),
	"새주소_지상지하_코드"       varchar(10),
	"새주소_본_번"           	numeric,
	"새주소_부_번"           	numeric,
	"지역_코드"              	varchar(100),
	"지구_코드"              	varchar(100),
	"구역_코드"              	varchar(100),
	"지역_코드_명"            	varchar(300),
	"지구_코드_명"            	varchar(300),
	"구역_코드_명"            	varchar(300),
	"생성_일자"               varchar(8)
);

create table "건축물대장_전유공유면적" (
	"일련번호"					numeric,
	"관리_건축물대장_PK"    	varchar(30),
	"전유_공용_구분_코드"      	varchar(10),
	"주_부속_구분_코드"        	varchar(10),
	"층_번호_명"             	varchar(10),
	"구조_코드"              	varchar(10),
	"기타_구조"              	varchar(100),
	"주_용도_코드"            	varchar(10),
	"기타_용도"               	varchar(100),
	"면적"                  	numeric
);

drop table "건축물대장_층별개요";
create table "건축물대장_층별개요" (
	"일련번호"                	numeric,
	"관리_건축물대장_PK"     	varchar(30),
	"층_구분_코드"             varchar(10),
	"층_구분_코드_명"         	varchar(100),
	"층_번호"                	varchar(10),
	"층_번호_명"             	varchar(100),
	"구조_코드"              	varchar(10),
	"구조_코드_명"           	varchar(100),
	"기타_구조"               	varchar(100),
	"주_용도_코드"            	varchar(10),
	"주_용도_코드_명"         	varchar(100),
	"기타_용도"              	varchar(100),
	"면적"                  	numeric,
	"주_부속_구분_코드"         varchar(10),
	"주_부속_구분_코드_명"     	varchar(100),
	"면적_제외_여부"          	varchar(10),
	"생성_일자"              	varchar(8)
);



create table "건축물대장_표제부" (
	"관리_건축물대장_PK"		varchar(30), 
	"대장_구분_코드"			varchar(30), 
	"대장_종류_코드"			varchar(30), 
	"건물_명"					varchar(100), 
	"동_명"					varchar(30), 
	"주_부속_구분_코드"			varchar(10),
    "대지_면적"				numeric, 
    "건축_면적"				numeric, 
    "건폐_율"					numeric, 
    "연면적"					numeric, 
    "용적_률_산정_연면적"		numeric, 
    "용적_률"					numeric, 
    "구조_코드"				varchar(10),
    "구조_코드_명"				varchar(100), 
    "기타_구조"				varchar(100), 
    "주_용도_코드"				varchar(10), 
    "주_용도_코드_명"			varchar(100), 
    "기타_용도"				varchar(100), 
    "지붕_코드"				varchar(10), 
    "지붕_코드_명"				varchar(100),
    "기타_지붕"				varchar(100), 
    "세대_수"					numeric, 
    "가구_수"					numeric, 
    "높이"					numeric, 
    "지상_층_수"				numeric, 
    "지하_층_수"				numeric, 
    "승용_승강기_수"			numeric,
    "비상용_승강기_수"			numeric, 
    "부속_건축물_수"			numeric, 
    "부속_건축물_면적"			numeric, 
    "총_동_연면적"				numeric, 
    "옥내_기계식_대수"			numeric,
    "옥내_기계식_면적"			numeric, 
    "옥외_기계식_대수"			numeric, 
    "옥외_기계식_면적"			numeric, 
    "옥내_자주식_대수"			numeric, 
    "옥내_자주식_면적"			numeric,
    "옥외_자주식_대수"			numeric, 
    "옥외_자주식_면적"			numeric, 
    "허가_일"					varchar(8), 
    "착공_일"					varchar(8), 
    "사용승인_일"				varchar(8), 
    "호_수"					varchar(30), 	
    "생성_일자"				varchar(8)
);

-- 건축물대장 통합마스터
create table "건축물대장" (
	"관리_건축물대장_PK" 		varchar(30),
	"대지_면적" 				numeric,
	"연면적" 					numeric,
	"주_용도_코드_명" 			varchar(100),
	"기타_용도" 				varchar(100),
	"대지_위치" 				varchar(300),
	"도로명_대지_위치" 			varchar(300),
	"시군구명" 				varchar(300),
	"번지" 					varchar(30)
);


-- 실거래_단독다가구_분당구
create table "실거래_단독다가구_분당구" (
	"계약년월" 				varchar(6), 
	"거래구분"					varchar(10),
	"번호" 					numeric, 
	"계약일" 					varchar(2), 
	"시군구일련번호" 			varchar(10), 
	"번지"          			varchar(10),
	"주택유형"        			varchar(30),
	"도로조건"        			varchar(30),
	"연면적"        			numeric,
	"대지면적"       			numeric,
	"거래금액"       			numeric,
	"월세"         			numeric,
    "건축년도" 				varchar(4), 
	"도로명" 					varchar(100), 
    "해제사유발생일" 			varchar(10), 
    "거래유형" 				varchar(10),
    "시군구명" 				varchar(100),
    "법정동코드" 				varchar(10)
);



-- 실거래_상업업무용_분당구
create table "실거래_상업업무용_분당구"
(
	"계약년월" 				varchar(6), 
	"번호" 					int, 
	"계약일" 					varchar(2), 
	"시군구일련번호" 			varchar(10), 
	"지번" 					varchar(10), 
	"유형" 					varchar(10), 
	"도로명" 					varchar(100), 
	"용도지역" 				varchar(30), 
	"건축물주용도" 				varchar(30),
    "도로조건" 				varchar(30), 
    "전용면적" 				numeric, 
    "대지면적" 				numeric, 
    "거래금액" 				numeric, 
    "층" 					varchar(30), 
    "지분구분" 				varchar(30), 
    "건축년도" 				varchar(4), 
    "해제사유발생일" 			varchar(10), 
    "거래유형" 				varchar(10),
    "시군구명" 				varchar(100),
    "법정동코드" 				varchar(10)
);


-- 실거래_공장창고_분당구
create table "실거래_공장창고_분당구"
(
	"계약년월"         		varchar(6), 
	"번호"           			numeric,
	"계약일"          		varchar(2), 
	"시군구일련번호"      		varchar(10), 
	"지번"           			varchar(10), 
	"유형"          			varchar(10), 
	"도로명"         			varchar(100), 
	"용도지역"        			varchar(30), 
	"건축물주용도"      		varchar(30),
	"도로조건"        			varchar(30), 
	"전용면적"       			numeric, 
	"대지면적"       			numeric, 
	"거래금액"       			numeric, 
	"층"           			varchar(30),
	"지분구분"        			varchar(30), 
	"건축년도"       			varchar(4), 
	"해제사유발생일"     		varchar(10), 
	"거래유형"        			varchar(10),
	"시군구명"        			varchar(100),
	"법정동코드"        		varchar(10)
);

-- 실거래_토지_분당구
create table "실거래_토지_분당구"
(
	"계약년월"         		varchar(6), 
	"번호"           			numeric,
	"계약일"          		varchar(2), 
	"시군구일련번호"      		varchar(10), 
	"번지"          			varchar(10), 
	"지목"          			varchar(30), 
	"용도지역"        			varchar(100), 
	"도로조건"        			varchar(30), 
	"계약면적"       			numeric,
	"거래금액"       			numeric,
	"지분구분"        			varchar(30), 
	"해제사유발생일"     		varchar(8),
	"거래구분"        			varchar(10),
	"거래유형"        			varchar(10),
	"시군구명"        			varchar(100),
	"법정동코드"        		varchar(10)
);

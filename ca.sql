redhat 7.4 Maipo
suckmydick
Row movement is mainly applied to partition tables. It allows rows to be moved across partitions. With row movement disabled, which is the default, you cant move a row with an update:

You can place the public key on any server, and then connect to the server using an SSH client that has access to the private key.

curl checkip.amazonaws.com
sed 's/Traded/\U&/g; s/Settled/\U&/g' Positions_20210629061112.csv


 <camel:route id="bloombergStrip10sand300s">
          <camel:from uri="direct:bloombergStrip10sand300s"/>
          <camel:to uri="exec:tr?args=-d \r"/>
          <camel:to uri="exec:sed?args=-E /^([^|]*[|]){3}10[|]$/d"/>
          <camel:to uri="exec:sed?args=-E /^([^|]*[|]){3}300[|]$/d"/>
        </camel:route>

curl http://checkip.amazonaws.com

Select 'http://192.168.201.149:7001/tlm-services/idp/change-password-page?username='||user_id||'&'||'resetToken='||token from password_reset_token
where user_id = 'SUPPORT';

find . -not -path "/.*" 
spring struts gwt

personal health dashboard

The JVM argument -Dserver.error.whitelabel.enabled=false should be added,

vertical scaling
    is upgrading the class or type of an instance. 
horizontal scaling 
    Autoscaling in general is horizontal - adding more instances. 


nc -v -n 8.8.8.8 1-1000



RDS scaling :
    supports neither horizontal nor vertical autoscaling, but it does support manual horizontal scaling (by adding read replicas) and manual vertical scaling (by upgrading/downgrading an existing instance ).


SHOW ALL statement  in sql developer

exec rdsadmin.rdsadmin_util.flush_shared_pool;

exec rdsadmin.rdsadmin_util.flush_buffer_cache;

select * from v$sgastat;
select * from v$pgastat;

smartstreamtech
internal server error
Sending request to TLM Control

muster changes every month 13th to 19th 
https://confluence.smartstream-stp.com/display/GDS/AWS+Quoniam

cd /STL/tlmsys/Import_Export ; find . -iname "*camellock*"

thread dump
	jstack -F 563 /tmp/test.txt
	-verbose:gc -Xloggc:gc.log -XX:+PrintGCDetails -XX:+PrintGCDateStamps -XX:+UseGCLogFileRotation -XX:NumberOfGCLogFiles=5 -XX:GCLogFileSize=3M

heap dump
	heap out of memory error
	-XX:-HeapDumpOnOutOfMemoryError   -- creates dump on default path
	-XX:HeapDumpPath                  -- creates in defined path
	-XX:+HeapDumpOnOutOfMemoryError -XX:HeapDumpPath=/opt/tmp/heapdump.bin

jmap -dump:format=b,file=/tmp/text.heap 563

Failed to execute process
/var/log/messages  ftp log
	
GUNA / SmartStream10!!

--------------------- convert xml from unix to good format -----------------------

cat Asset_Register_20210504060119.xml |  xmllint --format - > Asset_Register_20210504060119F.xml


DBA_tables;
DBA_objects:
DBA_sources;
DBA_data_Files;
v%log
v%bind_Capture
v%bind_sql_capture
all_users
DBA_Free_spaces
all_views 
all_indexes
all_ind_Columns
all_tab_columns 
all_col_comments 
all_constraints
all_cons_columns
all_lobs
all_sequence
all_snapshots
all_triggers 
ALL_TAB_PRIVS
dba_users
dictionary
dba_segments
dba_extents
tab
dba_ts_quotas
session_privs;
show user;
dba_roles   -- group of access 
dba_profiles
_TAB_PRIVS
_ROLE_PRIVS
_SYS_PRIVS

V$session
v$instance
v$database
v$parameter
v$lock
v%transaction
v$log
v%logfile
v%archivelog
v$controlfile

as long as data is available in the sharedpool , you can find the sqls in v$sql

---------------------------------------find foreign keys---------------------------------------

select foreign_table.owner as table_schema_name,
       foreign_table.table_name, 
       foreign_table.column_name,
       constr.constraint_name,
       primary_table.owner as primary_table_schema_name,
       primary_table.table_name as primary_table_name,  
       primary_table.column_name  as primary_table_column,
       foreign_table.table_name || '.' || 
         foreign_table.column_name || ' = ' || 
         primary_table.table_name  || '.' || 
         primary_table.column_name as join_condition
  from all_constraints constr 
       inner join all_cons_columns foreign_table
           on foreign_table.owner = constr.owner
          and foreign_table.constraint_name = constr.constraint_name
       inner join all_cons_columns primary_table 
           on primary_table.constraint_name = constr.r_constraint_name
          and primary_table.owner = constr.r_owner
          and primary_table.position = foreign_table.position
 where  constr.r_owner = 'TLM_DBO'
   and upper(foreign_table.table_name) like 'MMI_MESSAGE'   
 order by foreign_table.table_name,
       foreign_table.column_name;

--------------------------------------------

CREATE PROCEDURE grant_select(
    username VARCHAR2, 
    grantee VARCHAR2)
AS   
BEGIN
    FOR r IN (
        SELECT owner, table_name 
        FROM all_tables 
        WHERE owner = username
    )
    LOOP
        EXECUTE IMMEDIATE 
            'GRANT SELECT ON '||r.owner||'.'||r.table_name||' to ' || grantee;
    END LOOP;
END; 



SELECT     * FROM     pos_staging WHERE         security_id = '3158712'       AND upper(balance_type) = 'SETTLED'
      AND   entity_name = 'AIA-IM'       AND position_date = '22-JUN-2021 00:00:00'    ;
     
    select max(position_date) from POS_STAGING ;
    
    

STREAM closed : check Routing
https://www.dinopass.com/
CAS-QA@smartstream-stp.com

JAVA_HOME=/STL/Java/jdk8u192-b12

https://confluence.smartstream-stp.com/display/CAS/Loading+and+Handling+Bloomberg+Messages

JIRA 

TLM CA   - CAS operational UI
TLM View - Reporting UI , Portal	 

The keyword OUTER is marked as optional

quoniam uat debug

build tag
Started CasApplication

	CANO – Corporate Action Notification
	CACN – Corporate Actions Cancellation 

SP_STL_USER_MAN    - does deletion of users
 Sql = BEGIN stl_user.sp_stl_user_man(:1 , :2 , :3 , :4 , :5 , :6 , :7 , :8 ); END;, OriginalSql
 = {call stl_user.sp_stl_user_man(?, ?, ?, ?, ?, ?, ?, ?)}, Error Msg = ORA-20014: E_GD_20014 Error deleting usrr record for DANREST


08:04:05,105 [jms/CASBOs11-0 - activehread] [28860421][407940][170486][] INFO ….. Pass1Strategy MT_564: stacking summary event number 170486 to master id 47466

                                            [recordid][importid][eventnum][masterid]

Client position         - highlighted in blue color
Custody position        - highlighted in brown color
Service line            - highlighted in Black color - May@4862

is_swift_load 
2-client
3-custodian

CA_ACCOUNT_REFERENCE - CORP 
CA_SENDER_REFERENCE  - SEME

ca_event_link
ca_event_message_detail
CA_EVENT_ATTRIBUTE_ID

ca_temp_comm;
tlm_ref_role - position owner , desk 
-------------------  user unlock ------------------- 
select user_id,email_id,sign_on_Status_wc,failed_Attempts,user_Status,EXPIRY_DT from usrr   where user_id in ('');

update usrr set sign_on_Status_wc=2,failed_Attempts=0,user_Status=1 where user_id in ('');

Select 'http://192.168.201.149:7001/tlm-services/idp/change-password-page?username='||user_id||'&'||'resetToken='||token from password_reset_token
where user_id = 'SUPPORT';

-------------------  Role of a user ------------------- 

select * from role_user ru,role_header rh where ru.role_id=rh.id and user_id in ('&USER_ID') order by 4	;

------------- Comparing 2 user roles and listing it --------------------

	with userss as 
	(select user_id from role_user where user_id in ('HEATHER','DANNY')
	)
	 select ru.user_id,rh.role_name,rh.role_Description,rh.id from role_user ru,role_header rh where ru.role_id=rh.id 
	 and user_id in  (select user_id from userss ) 
	 and role_id in (select role_id from role_user where user_id in (select user_id from userss )
	 group by role_id having count(role_id)<>2) order by 4 ;
	 
------------- Add role of other users ------------------------

select * from role_user where USER_ID='HUNGMAYL';

insert into role_user (role_id,USER_ID) select role_id,'HUNGMAYL' from role_user where user_id ='CHANDAPH';
	 
---------------- Latest login of user ------------

select a.* from ( select max(dateTime) as Lastdatetime,user_id from ulog where function_code=1 group by user_id) a ,ulog os where a.user_id=os.user_id
and a.Lastdatetime=os.datetime
;



WITH userinfo 
AS
(
select user_id,Creation_dt,email_id,decode(user_Status,1,'Active',2,'In-Active') User_Status from usrr
),
roleinfo as 
(
select User_id,Role_name,Role_description from role_header rh ,role_user ru where rh.id=ru.role_id
),
lastlogin as 
(
select a.* from ( select max(dateTime) as Lastdatetime,user_id from sm_ulog  where  function_code='SUCCESSFUL_LOGIN' group by user_id) a ,sm_ulog os where a.user_id=os.user_id
and a.Lastdatetime=os.datetime and os. function_code='SUCCESSFUL_LOGIN'
)
SELECT u.user_id,u.creation_dt,u.email_id,u.user_status,r.role_name,r.role_description,l.lastdatetime LastLogin 
FROM userinfo u left join roleinfo r on  u.user_id=r.user_id 
left join lastlogin l 
on u.user_id=l.user_id and r.user_id=l.user_id;

----notification date with ca_Event ---------

select cemd.notification_date,cae.* from ca_Event cae ,ca_Event_message_detail cemd where 
cemd.event_num=cae.event_num and 
cae.master_id in (select master_id from ca_event where event_num=905197);

-------------- one 564 message for each accounts ----------------


with 
custom_event as
(
select account,max(event_num) as event_num from v_Ca_Raw_messages where  master_event_num=2108872 
and message_Type=1 group by account )
select * from v_Ca_raw_messages where event_num in (select event_num from custom_event)
;
 
 ------------------------------ Processing responsiblity ----------------


SELECT
    list.user_group_id,list.USER_ID,usr.USER_GROUP_NAME,usr.USER_GROUP_DESC
FROM
    ca_cfg_user_group_list  list,
    ca_cfg_user_group       usr
WHERE
        list.user_group_id = usr.user_group_id
		and list.USER_ID<>usr.USER_GROUP_NAME
   AND list.user_id IN (
      'ARAYAMIS'
   )
    ;
conversion -opensshkey

[1:19 PM] Sreedhar Narra
    select to_char( creation_ts, 'MON-YY' ) Month, sum(records) , sum(records_ok), sum(records_nok)from TLM_MB_messages
group by to_char( creation_ts, 'MON-YY' )
order by 1;
 


CA_CFG_ELECTION_SI;

--------TCOE page --------------------

select * from SCHEDULE_DEFINITION;

---------------------------MB dashboard-------------

select * from TLM_MB_FEEDS feed , TLM_MB_MESSAGES message ,  TLM_MB_RECORDS record
where feed.feed_id=message.feed_id and message.message_id=record.message_id
and feed.feed_id=140759
order by feed.feed_id desc ;
------------------------------------ Actual dashboard --------------------------

SELECT MBITEMS.FEED_SOURCE,MBIMPORT.RECORDS,MBIMPORT.RECORDS_ok,MBIMPORT.RECORDS_NOK,MBIMPORT.IMPORT_START_TS,MBIMPORT.IMPORT_END_TS,
e1.CUSTOM FeedName,  e2.CUSTOM FeedStatus
FROM TLM_MB_FEEDS MBITEMS 
LEFT OUTER JOIN TLM_MB_messages MBIMPORT  ON  ( MBITEMS.FEED_ID = MBIMPORT.FEED_ID )
INNER JOIN ZS_DECODE z1 ON ( MBITEMS.FEED_TYPE = z1.VALUE AND z1.ATTRIBUTE_ID = 81409758 )
INNER JOIN emsg e1 ON ( z1.EMSG_ID = e1.ID AND z1.ATTRIBUTE_ID = 81409758 )
INNER JOIN ZS_DECODE z2 ON ( mbimport.STATUS = z2.VALUE AND z2.ATTRIBUTE_ID = 81409760 )
INNER JOIN EMSG e2 ON ( z2.ATTRIBUTE_ID = 81409760 AND z2.EMSG_ID = e2.ID )
WHERE MBITEMS.RECEIVE_TS> sysdate-2/24
ORDER BY  MBITEMS.RECEIVE_TS desc;

------------------------------- count of file type each day--------------------------------

SELECT TRUNC( MBITEMS.RECEIVE_TS) , e1.CUSTOM FeedName,  e2.CUSTOM FeedStatus, count(1)
FROM TLM_MB_FEEDS MBITEMS 
LEFT OUTER JOIN TLM_MB_messages MBIMPORT  ON  ( MBITEMS.FEED_ID = MBIMPORT.FEED_ID )
INNER JOIN ZS_DECODE z1 ON ( MBITEMS.FEED_TYPE = z1.VALUE AND z1.ATTRIBUTE_ID = 81409758 )
INNER JOIN emsg e1 ON ( z1.EMSG_ID = e1.ID AND z1.ATTRIBUTE_ID = 81409758 )
INNER JOIN ZS_DECODE z2 ON ( mbimport.STATUS = z2.VALUE AND z2.ATTRIBUTE_ID = 81409760 )
INNER JOIN EMSG e2 ON ( z2.ATTRIBUTE_ID = 81409760 AND z2.EMSG_ID = e2.ID )
WHERE TRUNC(MBITEMS.RECEIVE_TS) BETWEEN '16-FEB-2021' AND '17-FEB-2021'
GROUP BY TRUNC( MBITEMS.RECEIVE_TS), e1.CUSTOM , e2.CUSTOM
ORDER BY TRUNC( MBITEMS.RECEIVE_TS), e1.CUSTOM



------------------------------ Security of interest ------------------------


SELECT
as_lis.UNIQUE_LISTING_ID AS Unique_listing_ID,
ref_lnk.ASSET_EXT_ID AS asset_id,
as_lis.SECURITY_OF_INTEREST AS SOI,
as_lis.LISTING_ID,
as_lis.ASSET_ID,
as_lis.ACTIVE_FLAG
FROM TPM_REF_ASSET_LISTING as_lis
LEFT JOIN TLM_REF_ASSET_LST_EXT_TYPE_LNK ref_lnk ON as_lis.LISTING_ID=ref_lnk.LISTING_ID
LEFT JOIN TPM_REF_ASSET_EXT_ID_TYPE as_type ON ref_lnk.ASSET_EXT_ID_TYPE=as_type.ASSET_EXT_ID_TYPE
WHERE as_lis.ASSET_ID IN (SELECT ASSET_ID FROM TPM_REF_ASSET_LISTING GROUP BY ASSET_ID HAVING COUNT(*) > 0)
AND ref_lnk.ASSET_EXT_ID='EQ0119743700001000';

-------------------------Contact info and account info ---------------

select * from tlm_Account acc ,tlm_contact contactinfo ,TLM_CFG_ACCOUNT_CONTACT configcon 
where configcon.ACCOUNT_CONTACT_ID=contactinfo.contact_id and 
acc.account_id=configcon.account_id and
acc.account_no='1974100000';

--------------567 stacking issue -------------------------

select c.account_id,c.SAFE97_ACCOUNT,acc.account_id,c.* from ca_567_main c ,tlm_Account acc where 
c.safe97_Account=acc.account_no and 
c.master_event_num=270788;

------------------- Linking issue ----------------------------------

SELECT
    CAL.LINK_NUM,
    CAL.LINK_TYPE,
    CAL.LINK_MESSAGE_REF,
    CAEV.CA_ACCOUNT_REFERENCE,
    ASLISTING.NAME ASSET_LISTING_NAME,
    ASLISTING.ASSET_ID,
    CAL.LINK_MESSAGE_NUMBER,
    CAL.EVENT_NUM EVENT_NUM_568 ,
    CAEV.EVENT_NUM EVENT_NUM_564,
    CAEV.RECORD_TYPE,
    LISTING.UNIQUE_LISTING_ID
FROM
    CA_EVENT_MESSAGE_DETAIL CAEMD
    JOIN CA_EVENT_LINK          CAL ON ( CAL.EVENT_NUM = CAEMD.EVENT_NUM )
    JOIN CA_EVENT               CAEV ON ( CAL.LINK_MESSAGE_REF = CAEV.CA_ACCOUNT_REFERENCE AND CAL.EVENT_NUM = CAEV.EVENT_NUM )
    LEFT OUTER JOIN TPM_REF_ASSET_LISTING  LISTING ON ( CAEV.LISTING_ID = LISTING.LISTING_ID )
    LEFT OUTER JOIN TPM_REF_ASSET          ASLISTING ON ( LISTING.ASSET_ID = ASLISTING.ASSET_ID )
WHERE
    CAEMD.MESSAGE_TYPE = 2
    AND CAL.EVENT_NUM = <INSERT_EVENT_NUM_OF_PROBLEMATIC_568>;
------------------------------ Contact update ----------------------------

SELECT
    user_id Desk ID,cfgcon.contact_id,
    email,
    cc_email
FROM
    tlm_cfg_user_contact  cfgcon,
    tlm_contact           contact
WHERE
        contact.contact_id = cfgcon.contact_id
    AND user_id IN (
        'IMGCEQ');
		

UPDATE tlm_contact
SET
    cc_email = 'AIASG.INVOPS@aia.com'
WHERE
    contact_id IN (
        SELECT
            contact_id
        FROM
            tlm_cfg_user_contact
        WHERE
            user_id IN (
                'IMGCEQ')

---------- common error --------------

SeLeCt MBERROR.ERROR_ID AS MBERROR#ERROR_ID,
MBERROR.ERROR_DETAILS AS MBERROR#ERROR_DETAILS FROM TLM_COMMON_ERROR MBERROR 
LEFT OUTER JOIN TLM_COMMON_ERROR_KEYS MBERRKEY  ON  ( MBERROR.ERROR_ID = MBERRKEY.ERROR_ID )  
WHERE (MBERRKEY.ERROR_POSITION_VALUE = 517332  --- position value is mb dashboard feed id
--AND MBERRKEY.ERROR_POSITION_TYPE = 81600061
)


---------- Message Data  --------------
SELECT MBERROR.SOURCE_MESSAGE AS MBERROR#SOURCE_MESSAGE
    , MBERROR.ERROR_CODE AS MBERROR#ERROR_CODE
    , MBERROR.ERROR_ID AS MBERROR#ERROR_ID, e.CUSTOM
FROM TLM_COMMON_ERROR MBERROR
    LEFT OUTER JOIN TLM_COMMON_ERROR_KEYS MBERRKEY ON (MBERROR.ERROR_ID = MBERRKEY.ERROR_ID)
INNER JOIN ZS_DECODE z ON z.ATTRIBUTE_ID = 81409781 
INNER join  emsg e ON z.EMSG_ID = e.id AND ATTRIBUTE_ID = 81409781    
WHERE ( MBERROR.ERROR_ID IN (    
							  SELECT MBERROR.ERROR_ID
								FROM TLM_COMMON_ERROR MBERROR
							    LEFT OUTER JOIN TLM_COMMON_ERROR_KEYS MBERRKEY ON (MBERROR.ERROR_ID = MBERRKEY.ERROR_ID)
								WHERE (MBERRKEY.ERROR_POSITION_VALUE = 12501  --- ID from MB Feeds dashboard <<<<***** INPUT ***** >>
								AND MBERRKEY.ERROR_POSITION_TYPE = 81600061)
)
AND MBERRKEY.ERROR_POSITION_TYPE = 81600061)
AND MBERROR.ERROR_CODE = z.VALUE
-------------------------Diary missing mandatory option - to check which mandatory data is missing-----------------------------------------

SELECT CG.CODE_GROUP_ID, CG.ATTRIBUTE_CODE_ID, E.english, EA.SHORT_NAME
FROM CA_ATTRIBUTE_CODE_GROUP CG
INNER JOIN CA_REF_EMSG E ON E.id = CG.EMSG_ID
INNER JOIN CA_EVENT_ATTRIBUTE_ID EA ON EA.ID = CG.ATTRIBUTE_CODE_ID
WHERE CG.CODE_GROUP_ID =52;


-------------------------view 565 in tables ------------------------

SELECT cbc.*
FROM CA_SW_OUTMESSAGE  cso, CA_BDR_COMMUNICATION_PARAMETER cbc
WHERE cso.COMMUNICATION_CORRELATION_ID = cbc.COMMUNICATION_CORRELATION_ID
AND cso.MASTER_EVENT_NUM = 617186 
and PARAM_TYPE_ID=9
;


-------------------  MMI Error ------------------- 

select Feed_id,MMIERROR.id,MMIERROR.message_id,MMIERROR.update_Time,MMIERROR.error_details,resource_uri,error_properties
from mmi_error MMIERROR, mmi_Feed MMIFEED
where
MMIERROR.feed_id=MMIFEED.id 
and MMIERROR.error_Details not like '%Unexpected response id%' order by MMIERROR.update_time desc;

select MMIERROR.id,MMIFEED.CREATION_TIME,MMIERROR.error_details,resource_uri,error_properties
from  mmi_Feed MMIFEED left join mmi_error MMIERROR
on
MMIERROR.feed_id=MMIFEED.id 
--where MMIERROR.error_Details not like '%Unexpected response id%' 
order by MMIFEED.id desc;

-------------------  File load information  ---------------------

select mbf.Feed_source,mm.import_start_Ts,mm.import_end_Ts,mm.message_id
,decode(mm.status,20,'SUCCESS',30,'SUCCESS WITH WARNING',99,'FAILED',10,'IN-PROGRESS',5,'IN-PROGRESS CREATING RECORDS',40,'SUCCESS WTIH ERROR',mm.status) LOAD STATUS
,mm.records,mm.records_ok,mm.records_nok,mbf.feed_id,module_id,feed_type
,mbf.creation_TS,mbf.receive_TS
from tlm_mb_feeds mbf left join  tlm_mb_messages mm
on mbf.feed_id=mm.feed_id
--where
--trunc(mm.import_start_Ts) = '23-APR-2020' 
--  feed_source like '%Position_Response_20200423161836.xml%' 
--  mm.feed_id=14019464 and
-- mm.status not in (30,99,20)
order by mbf.receive_TS desc;

-----------

select * from CA_QUEUE_MI_TO_CAS;
select * from CA_QUEUE_CAS_TO_MI;
select * from solution_properies;
select * from CA_EVENT_EXTRA_FIELDS where event_num=298687;
select * from CA_EVENT_ELIGIBLE_POS_REQUEST;
select * from CA_SW_OUTMESSAGE;
select * from ca_Event;
select * from ca_Event_Type;
select * from tlm_ref_state;
select * from ca_bdr_Communication;

select * from tlm_ref_delivery_type;
select * from ca_cfg_communication;

select * from tpm_ref_asset_type;
select * from CA_EVENT_RESOLUTION;
select * from CA_EVENT_POSITION;
select * from TLM_CONTACT;
select * from process;
select * from CA_ELIG_POS_RSP;



-------------- MB Feeds Error information -------------

select * from tlm_common_Error where error_id=185083 ;



-------------- running sql ---------------

select * from v$session sessions ,v$sql sqls where sqls.sql_id=sessions.sql_id;


------------------------ Communication -------------------

SELECT cbc.*
FROM CA_SW_OUTMESSAGE  cso right join CA_BDR_COMMUNICATION_PARAMETER cbc
WHERE cso.COMMUNICATION_CORRELATION_ID = cbc.COMMUNICATION_CORRELATION_ID
AND cbc.MASTER_EVENT_NUM = 174951;

--- communication event with status --------

select EVENT_NUM,ccc.NAME
--,cbc.COMMUNICATION_CORRELATION_ID
,CREATED_DT,SENT_DT,UPDATED_DT,SENT_BY,trs.name Status
from ca_bdr_Communication  cbc , CA_cfg_communication ccc , tlm_Ref_State trs 
where
ccc.communication_id=cbc.communication_id and 
trs.state_id=cbc.STATE and
cbc.EVENT_NUM = 401126 order by cbc.created_dt desc;


---------------------------Security details ---------------------------

SELECT ta.ASSET_ID,ta.UNIQUE_ASSET_ID,ta.NAME,ta.DESCRIPTION,ta.ACTIVE_STATUS,ta.UPDATED_BY,ta.UPDATED_TIMESTAMP,ta.ISSUING_COUNTRY_ISO_CODE,ta.CURRENCY_ISO_CODE,ta.ASSET_ISSUER_ID,ta.ACTIVE_FLAG,ta.LOOKUP_VALUE
,al.LISTING_ID,al.UNIQUE_LISTING_ID,al.ACTIVE_STATUS,al.SETTLEMENT_COUNTRY_ISO_CODE,al.SECURITY_OF_INTEREST,al.CURRENCY_ID,al.BECAME_SOI_IMPORT_ID,al.ACTIVE_FLAG
,TAT.NAME ASSET TYPE,TAT.DESCRIPTION
,tre1.NAME,tre1.FULLNAME,tre1.LOOKUP_VALUE,tre1.COUNTRY_ID
,tm.COUNTRY_ID,tm.MIC,tm.ACCR,tm.CITY,tm.WEBSITE,tm.ACTIVE_STATUS
FROM TLM_REF_ASSET_LST_EXT_TYPE_LNK tl
LEFT  join TPM_REF_ASSET_LISTING al ON tl.LISTING_ID = al.LISTING_ID
LEFT  JOIN TPM_REF_ASSET ta  ON al.ASSET_ID = ta.ASSET_ID
LEFT  JOIN TPM_REF_EXCHANGE tre1 ON al.EXCHANGE_ID = tre1.EXCHANGE_ID
LEFT  JOIN TPM_REF_MIC tm ON tm.MIC_ID = tre1.MIC_ID
LEFT join TPM_REF_ASSET_TYPE TAT on TAT.ASSET_TYPE=ta.ASSET_TYPE
WHERE tl.ASSET_EXT_ID = 'B011YD2';

------------------------------- Account ----------------

SELECT
    ta.ACCOUNT_ID,ta.ACCOUNT_NO,ta.ACCOUNT_TYPE_ID,ta.ACTIVE_STATUS,ta.CLIENT_ID,ta.CURRENCY_ID,ta.SYS_ENTRY_DATE,
    TC.NAME Country name,TC.COUNTRY_CODE Country code,TC.ACTIVE_STATUS Country ACTIVE_STATUS,
    TAT.name Acc type,TAT.description type DESCRIPTION ,TAT.active_Status type ACTIVE_STATUS,
    TDL.name Delivery name,TDL.DESCRIPTION  Delivery DESCRIPTION,    TDL.ACTIVE_STATUS Delivery ACTIVE_STATUS,
    tl.name L.name,
    tl.description  L.description,
    tl.iso_code  L.iso_code
FROM
    tlm_account       ta
    LEFT JOIN tlm_ref_language  tl ON ta.language_id = tl.language_id
    left join tlm_ref_delivery_type TDL on ta.PREFERRED_COMM_MODE=TDL.DELIVERY_TYPE_ID
    left join TLM_ACCOUNT_TYPE TAT on TAT.ACCOUNT_TYPE_ID=ta.ACCOUNT_TYPE_ID
    left join TPM_REF_COUNTRY TC on TC.COUNTRY_ID=ta.COUNTRY_ID;
    


-------------------  New BIC setup ------------------- 

Insert into CA_DATA_PROVIDER (DATA_PROVIDER_ID,BIC,NAME,ENTITY_TYPE,DESCRIPTION,LOOKUP_VALUE,ACTIVE_STATUS,OVERALL_STATUS,UPDATED_BY,UPDATED_TIMESTAMP,VERIFIED_BY,VERIFIED_TIMESTAMP,SOFT_LOCK_KEY,ACCOUNT_ID,ENABLED) 
values (
(select max(DATA_PROVIDER_ID)+1 from CA_DATA_PROVIDER),
'EDISGB2L','EDISGB2L',20009053,'EDISGB2L','EDISGB2L',null,null,null,null,null,null,0,null,null);

select * from CA_DATA_PROVIDER where BIC in ('EDISGB2L');

-------------------  BIC ranking ------------------- 
Insert into CA_DATA_PROVIDER_RANK 
(DATA_PROVIDER_RANK_ID,DATA_PROVIDER_ID,COUNTRY_ID,ASSET_TYPE,EVENT_TYPE,EXCHANGE_ID,RANK,SOFT_LOCK_KEY) 
values ((select max(DATA_PROVIDER_RANK_ID)+1 from CA_DATA_PROVIDER_RANK),(select DATA_PROVIDER_ID from CA_DATA_PROVIDER where BIC='EDISGB2L'),-1,-1,-1,-1,99,0);

select * from CA_DATA_PROVIDER_RANK where data_provider_id in (
select data_provider_id from CA_DATA_PROVIDER where BIC in ('EDISGB2L') );

-------------------- provider ranking asset country detials joined ---------------

select * from ca_Data_provider cp left join ca_Data_provider_Rank cpr on cp.data_provider_id=cpr.data_provider_id
    left join ca_event_type ce on cpr.event_type=ce.event_type left join TPM_REF_COUNTRY cntry on cpr.country_id=cntry.country_id
    left join TPM_REF_ASSET_TYPE at on cpr.asset_type=at.asset_type;
    
------------ Check ranking of all messages -------

select
--cp.BIC,cpd.rank,vc.*
distinct cp.BIC,cpd.rank
from v_Ca_raw_messages vc  left join ca_data_provider  cp on vc.provider_name=cp.BIC
join  CA_DATA_PROVIDER_RANK cpd on cp.data_provider_id=cpd.data_provider_id
where vc.master_event_num=825673;


-------------------  Diary for event ------------------- 



SELECT cbp.EVENT_NUM,  cbp.PROCESSING_RESPONSBLTY_ID,td.*
FROM TLM_DIARY td, TLM_BDR_DIARY_ROLE_LINK tdrl, CA_BDR_EVENT_ROLE_LINK ERL, CA_BDR_RESPONSIBLE_PARTY cbp
WHERE cbp.EVENT_NUM = 857128
AND td.DIARY_ID = tdrl.DIARY_ID
AND tdrl.ROLE_INSTANCE_ID = ERL.ROLE_INSTANCE_ID
AND erl.EVENT_NUM = cbp.EVENT_NUM;


-------------------  are there any MT565 messages with FAMT tag?  ------------------- 
SELECT cbc.*
FROM CA_SW_OUTMESSAGE  cso, CA_BDR_COMMUNICATION_PARAMETER cbc
WHERE cso.COMMUNICATION_CORRELATION_ID = cbc.COMMUNICATION_CORRELATION_ID
AND param_type_id = 9    
AND cbc.value LIKE '%FAMT%'  ;   



-------------------  POSITION INFO------------------- 

----------- ignore Custody accounts where is_swift_load <> swift ----------------

SELECT cp.event_num,t.account_no,t.name,at.name Account type,at.description,cpt.name POSTYPE,cp.balance_type,
decode(cp.is_swift_load,1,'SWIFT',2,'EPR',3,'Outcome MT566',5,'SERVICER',100,'Aggregation',200,'Recon',cp.is_swift_load) is_swift_load,cp.quantity,cp.election_deadline_date,cp.event_position_id,cp.created_on,source_system,updated_on,cp.reorg_lock,cpa.communication_state,cpa.communication_lifecycle_state FROM ca_event_position cp,ca_event_position_account  cpa,tlm_account t,TLM_ACCOUNT_TYPE   at,CA_REF_POSITION_TYPE cpt WHERE cp.event_num = cpa.event_num AND cp.event_position_id = cpa.event_position_id AND at.ACCOUNT_TYPE_ID=t.ACCOUNT_TYPE_ID AND t.account_id = cpa.account_id AND cpt.POSITION_TYPE_ID=cp.POSITION_TYPE_ID 
AND cp.event_num = 117251 ;


-------------------  communication status  ------------------- Decode value as well

SELECT zd.*, e.CUSTOM
FROM ZS_DECODE zd, emsg e
WHERE zd.EMSG_ID = e.ID
AND zd.ATTRIBUTE_ID = 81406142;



-------------------  key event details  ------------------- 

SELECT Event_num, closed_dt, record_type, master_id, listing_id, asset_id,
decode ( APPROVAL_STATUS,1000007,'New',1000008, 'Updated',1000009, 'Exception',1000010, 'Approved',1000011, 'Closed',
1000012, 'Reviewed',1000013, 'Cancelled',1000014, 'Withdrawn',1000015, 'Rejected'  ) LifeCycleStatus
FROM CA_EVENT
WHERE EVENT_NUM IN ( 101053 ,116519, 101708,137858      ) ;    ---- pass unix grep event list of reversal files here.

 

-------------------  entitlement status Decode information ------------------- 

SELECT zd.*, e.CUSTOM
FROM ZS_DECODE zd, emsg e
WHERE zd.EMSG_ID = e.ID
AND zd.ATTRIBUTE_ID = 81403187;

 

81403187,1000024,81410584=New
81403187,1000025,81410585=Posting
81403187,1000026,81410586=Posted
81403187,1000027,81410587=Reversing
81403187,1000028,81410588=Reversed
81403187,1000034,81410589=Posting Failed
81403187,1000035,81410590=Reversal Failed
81403187,1000036,81410591=Not Calculated
81403187,1000069,81418130=Cancellation
81403187,1000098,81418131=Partially Posted

81425288 
Pending Reconciliation
Not Reconciled
Reconciled
Reconciled With Tolerance
Partially Reconciled
Over Reconciled

------------- Reconciliation ---------------------

select  
decode(source_Type,1,'CUSTODY 564',100,'TLM CAS',200,'RECONCILATION') Source,cep.quantity,
decode(REC_STATUS,1000120,'Pending Reconciliation',1000121,'Not Reconciled',1000122,'Reconciled',1000123,'Reconciled With Tolerance',
1000124,'Partially Reconciled',1000125,'Over Reconciled') REC Status ,
ceprec.EVENT_NUM,ceprec.CUSTODIAN_ACC_ID,ceprec.REC_DATE, cepreclink.POSITION_ID,cepreclink.ELEMENT_TYPE
from ca_event_pos_rec ceprec,ca_event_pos_rec_link cepreclink ,ca_event_position cep
where ceprec.POS_REC_ID=cepreclink.POS_REC_ID and  cep.event_position_id=cepreclink.POSITION_ID and   ceprec.event_num=262873;

 
-----------------  MB Feeds error_Details -----------------------

 SELECT zd.*, e.CUSTOM
FROM ZS_DECODE zd, emsg e
WHERE zd.EMSG_ID = e.ID
AND zd.ATTRIBUTE_ID = 81409781;



----------------------- Audit --------------------

select * from ca_event_audit where event_num=136210;

-------------------    Election status  ------------------- 

SELECT STATE.STATE_ID, STATE.NAME
FROM TLM_REF_STATE STATE, TLM_REF_STATE_MACHINE_TYPE TYPE
WHERE TYPE.ATTRIBUTE_ID = 81409371
AND TYPE.STATE_MACHINE_ID = STATE.STATE_MACHINE_ID;

1000037,No Election
1000038,Partially Elected
1000039,Over Elected
1000040,Fully Elected
1000070,Election Missing
1000071,Election Received

-------------------  events with standard positions but no entitlements   ------------------- 

SELECT ce.EVENT_NUM, cep.POSITION_TYPE_ID, cep.CREATED_ON, cep.EVENT_POSITION_ID-- , cent.POSITION_ID
FROM CA_EVENT ce
INNER JOIN CA_EVENT_POSITION cep  ON ce.EVENT_NUM = cep.EVENT_NUM
-- INNER JOIN CA_EVENT_POSITION cep1  ON cep.EVENT_POSITION_ID = cep1.EVENT_POSITION_ID AND cep.EVENT_NUM = cep1.EVENT_NUM
LEFT OUTER JOIN CA_ENTITLEMENT cent ON cep.EVENT_POSITION_ID = cent.POSITION_ID
WHERE ce.RECORD_TYPE = 1
AND cep.IS_SWIFT_LOAD = 2   
AND ce.APPROVAL_STATUS NOT IN ( '1000011', '1000013', '1000014', '1000015' )  -- closed, cancelled, withdrawn, rejected                    
AND ( cent.POSITION_ID IS NULL OR cent.EVENT_NUM IS NULL )
ORDER BY cep.event_num, cep.EVENT_POSITION_ID;    -- you can comment this and sort the data using Excel  if the sql takes lot of time

  

-------------------  events with standard positions but no entitlements  2041 --- This gives same results as above  ------------------- 

SELECT ce.EVENT_NUM, cep.POSITION_TYPE_ID, cep.CREATED_ON, cep.EVENT_POSITION_ID
FROM CA_EVENT ce
INNER JOIN CA_EVENT_POSITION cep  ON ce.EVENT_NUM = cep.EVENT_NUM
WHERE ce.RECORD_TYPE = 1  
AND cep.IS_SWIFT_LOAD = 2   
AND ce.APPROVAL_STATUS NOT IN ( '1000011', '1000013', '1000014', '1000015' )  -- closed, cancelled, withdrawn, rejected                    
AND ( ce.EVENT_NUM NOT IN ( SELECT DISTINCT EVENT_NUM FROM CA_ENTITLEMENT  ) 
OR ( cep.EVENT_POSITION_ID NOT IN ( SELECT DISTINCT POSITION_ID FROM CA_ENTITLEMENT  )  ) )
ORDER BY cep.event_num, cep.EVENT_POSITION_ID;




-------------------  PROCESS ------------------- 

SELECT sd.NAME, p.NAME, p.DESCRIPTION,p.ID, prj.NAME  Project Folder Name
FROM SCHEDULE_DEFINITION sd, SCHEDULE_PROCESS_REF spr, PROCESS p, project prj
WHERE sd.ID = spr.SCHEDULE_DEFINITION_ID
AND spr.PROCESS_ID = p.ID
AND sd.PROJECT_ID = prj.ID
AND sd.IS_ENABLED = 1;
 
-------------------  Queue respective control process ------------------- 
SELECT q.JNDI_NAME, p.NAME
FROM QUEUE q, INPUT_QUEUE i, PROCESS p
WHERE q.ID = i.ID
AND i.PROCESS_ID = p.ID;
 
 
-------------------  Query to identify calling processes
 
SELECT
  (SELECT name FROM process p WHERE p.id = s.process_id)
  AS processname FROM process_step s
  WHERE ID IN (
    SELECT ID FROM subprocess_step WHERE subprocess_id =
      (SELECT id FROM process WHERE NAME = 'EXR Exception Items Update')
  );
 
-------------------   find step using expression / webconnect message ------------------- 
 
  SELECT p.name PROCESS_NAME,
    ps.name STEP_NAME,
    exp.id, exp.expression_data
  FROM process_step ps
  INNER JOIN process p
  ON ps.process_id=p.id
  INNER JOIN assignment_step ast
  ON ps.id = ast.id
  INNER JOIN expression exp
  ON ast.id=exp.step_id
  where exp.expression_data like '%Pending%'
  ORDER BY PROCESS_NAME,
    STEP_NAME, exp.id; 
    
------------------- correct one ... need to double check with sam  ------------------- 
      SELECT P.NAME PROCESS_NAME,
        PS.NAME STEP_NAME,
        EXP.ID, EXP.EXPRESSION_DATA
      FROM PROCESS_STEP PS
      INNER JOIN PROCESS P
      ON PS.PROCESS_ID=P.ID
      INNER JOIN ASSIGNMENT_STEP AST
      ON PS.ID = AST.NEXT_STEP_ID
      INNER JOIN EXPRESSION EXP
      ON AST.NEXT_STEP_ID = EXP.STEP_ID
      WHERE EXP.EXPRESSION_DATA LIKE '%positionRequest%'
      ORDER BY PROCESS_NAME,
    STEP_NAME, EXP.ID;
 
 
-------------------  control process audit details  302095 ------------------- 
SELECT P.NAME, UD.ITEM_TYPE , UD.CHANGE_CODE , UD.CHANGE_COMMENT , UH.TIME_STAMP , UH.USER_ID
FROM USER_CONFIG_AUDIT_DETAIL UD, USER_CONFIG_AUDIT_HEADER UH, PROCESS P
WHERE UH.DETAIL_ID = UD.ID
AND P.ID = UD.ITEM_ID
ORDER BY TIME_STAMP DESC;
 
-------------------  to view PER from backend without launching Control GUI - oracle version ------------------- 
-------------------  check all PERS generated in the last 24 hrs ------------------- 

ALTER SESSION SET NLS_DATE_FORMAT = 'DD-MM-YYYY HH24:MI:SS';
 
SELECT *
FROM process_exe_audit_detail q
WHERE TRUNC ( q.TIME_STAMP ) >= TRUNC(to_date( SYSDATE -1 ,'DD-MM-YYYY HH24:MI:SS'))
ORDER BY TIME_STAMP DESC;
 
------------------- The below one is a bit tricky one. This generates a http://....  String using which you can directly pull the PER without logging into control UI. ------------------- 
 
select p.name, q.TIME_STAMP, 'http://' ||ip_address ||':'||http_port||'/tcengine/engine/htmlExecutionReportFromDB?id='||q.id
from process p, process_exe_audit_detail q, CLUSTER_INFO c
where p.id = q.process_id
and  TRUNC ( q.TIME_STAMP ) >= TRUNC(to_date( SYSDATE -1 ,'DD-MM-YYYY HH24:MI:SS'))
AND c.NODE_TYPE = 'MASTER'  
ORDER BY q.TIME_STAMP DESC;
 
 
 
-------------------  to view PER from backend without launching Control GUI - SQL server version   ------------------- 
 
 
SELECT P.NAME, Q.TIME_STAMP, 'http://' +IP_ADDRESS +':' + convert(varchar(10), HTTP_PORT )  + '/tcengine/engine/htmlExecutionReportFromDB?id='+ Q.ID , Q.TIME_STAMP
FROM PROCESS P, PROCESS_EXE_AUDIT_DETAIL Q, CLUSTER_INFO C
WHERE P.ID = Q.PROCESS_ID
AND TIME_STAMP >= DATEADD ( DAY, -1, GETDATE() )
AND C.NODE_TYPE = 'MASTER'  
order by Q.TIME_STAMP DESC;
 
  
-------------------  pass java class name and get all the processes using the java code step   ------------------- 
select * from PROCESS where ID in (
select PROCESS_ID from PROCESS_STEP where id in (
select STEP_ID from EXPRESSION where EXPRESSION_DATA like '%EntitlementsUIDataCodeStep%'
));

Here is the handy sql to achive this. First try this in UAT before advising customer.

 
-----------------         process step --- doesnt work though

SELECT p.name PROCESS_NAME,
    ps.name STEP_NAME,
    exp.id, exp.expression_data
  FROM process_step ps
  INNER JOIN process p
  ON ps.process_id=p.id
  INNER JOIN assignment_step ast
  ON ps.id = ast.id
  INNER JOIN expression exp
  ON ast.id=exp.step_id
  where upper(exp.expression_data) like '%INDIA%'
  ORDER BY PROCESS_NAME,
    STEP_NAME, exp.id;


--- manually cancel 565 from backend /

UPDATE CA_BDR_COMMUNICATION SET STATE = 1000032
WHERE EVENT_NUM = 174951
AND COMMUNICATION_CORRELATION_ID = 38308

 

 

We have used this as part of old support ticket 198835. Unfortunately, this ticket details are not available.

 

Couple of other sqls

-- communication details generated for an event

SELECT cbc.*
FROM CA_SW_OUTMESSAGE  cso, CA_BDR_COMMUNICATION_PARAMETER cbc
WHERE cso.COMMUNICATION_CORRELATION_ID = cbc.COMMUNICATION_CORRELATION_ID
AND cso.MASTER_EVENT_NUM = 174951

 

-- communication state

SELECT *
FROM CA_BDR_COMMUNICATION
WHERE EVENT_NUM = 174951
AND COMMUNICATION_CORRELATION_ID IN ( 38307, 38308 );

2056323

------------unknown dashboard-------------

SeLeCt DISTINCT EvtMsg.NOTIFICATION_DATE AS EVTMSG#NOTIFICATION_DATE, STCKFAIL.STACK_FAILURE AS STCKFAIL#STACK_FAILURE, Event.LOAD_FAILURE_REVIEWED AS EVENT#LOAD_FAILURE_REVIEWED, Event.EVENT_TYPE AS EVENT#EVENT_TYPE, ASSET.NAME AS ASSET#NAME, ASSTYPE.LOOKUP_VALUE AS ASSTYPE#LOOKUP_VALUE, LST_ISIN.ASSET_EXT_ID AS LST_ISIN#ASSET_EXT_ID, LST_CUSI.ASSET_EXT_ID AS LST_CUSI#ASSET_EXT_ID, LST_SEDO.ASSET_EXT_ID AS LST_SEDO#ASSET_EXT_ID, LST_CST1.ASSET_EXT_ID AS LST_CST1#ASSET_EXT_ID, Event.EVENT_NUM AS EVENT#EVENT_NUM, EVT_LINK.EVENT_NUM AS EVT_LINK#EVENT_NUM, Event.SOFT_LOCK_KEY AS EVENT#SOFT_LOCK_KEY, EvtMsg.MESSAGE_TYPE AS EVTMSG#MESSAGE_TYPE FROM CA_EVENT Event LEFT OUTER JOIN CA_EVENT_OPTION OPTN  ON  ( Event.EVENT_NUM = OPTN.EVENT_NUM ) LEFT OUTER JOIN V_CA_STACK_FAILURE STCKFAIL  ON  ( Event.EVENT_NUM = STCKFAIL.EVENT_NUM ) LEFT OUTER JOIN CA_EVENT_MESSAGE_DETAIL EvtMsg  ON  ( Event.EVENT_NUM = EvtMsg.EVENT_NUM ) LEFT OUTER JOIN CA_EVENT_LINK EVT_LINK  ON  ( Event.EVENT_NUM = EVT_LINK.EVENT_NUM AND ( EVT_LINK.LINK_MESSAGE_REF_TYPE =1)  ) LEFT OUTER JOIN TPM_REF_ASSET_LISTING LISTING  ON  ( Event.LISTING_ID = LISTING.LISTING_ID ) LEFT OUTER JOIN CA_EVENT_OPTION_PERIOD OPTPERD  ON  ( OPTN.OPTION_SEQUENCE_NUM = OPTPERD.OPTION_SEQUENCE_NUM AND OPTN.EVENT_NUM = OPTPERD.EVENT_NUM ) LEFT OUTER JOIN TLM_REF_ASSET_LST_EXT_TYPE_LNK LST_SEDO  ON  ( LISTING.LISTING_ID = LST_SEDO.LISTING_ID AND ( LST_SEDO.ASSET_EXT_ID_TYPE =4)  ) LEFT OUTER JOIN TLM_REF_ASSET_LST_EXT_TYPE_LNK LST_CST1  ON  ( LISTING.LISTING_ID = LST_CST1.LISTING_ID AND ( LST_CST1.ASSET_EXT_ID_TYPE =5)  ) LEFT OUTER JOIN TPM_REF_ASSET ASSET  ON  ( LISTING.ASSET_ID = ASSET.ASSET_ID ) LEFT OUTER JOIN TLM_REF_ASSET_LST_EXT_TYPE_LNK LST_CUSI  ON  ( LISTING.LISTING_ID = LST_CUSI.LISTING_ID AND ( LST_CUSI.ASSET_EXT_ID_TYPE =2)  ) LEFT OUTER JOIN TLM_REF_ASSET_LST_EXT_TYPE_LNK LST_ISIN  ON  ( LISTING.LISTING_ID = LST_ISIN.LISTING_ID AND ( LST_ISIN.ASSET_EXT_ID_TYPE =1)  ) LEFT OUTER JOIN TPM_REF_ASSET_TYPE ASSTYPE  ON  ( ASSET.ASSET_TYPE = ASSTYPE.ASSET_TYPE )  WHERE (Event.RECORD_TYPE = 2 AND EvtMsg.MISSING_ASSET_FLAG = 0 AND Event.MASTER_ID IS  NULL ) ORDER BY EvtMsg.NOTIFICATION_DATE DESC



------- ASset enquiry ----

SeLeCt Listing.ACTIVE_STATUS AS LISTING#ACTIVE_STATUS, Listing.ASSET_ID AS LISTING#ASSET_ID, ASSET.NAME AS ASSET#NAME, ASSET.ASSET_TYPE AS ASSET#ASSET_TYPE, Listing.CURRENCY_ID AS LISTING#CURRENCY_ID, Listing.SECURITY_OF_INTEREST AS LISTING#SECURITY_OF_INTEREST, Listing.ACTIVE_FLAG AS LISTING#ACTIVE_FLAG, Listing.LAST_UPDATE_DATE AS LISTING#LAST_UPDATE_DATE, INTERNAL.ASSET_EXT_ID AS INTERNAL#ASSET_EXT_ID, ISIN.ASSET_EXT_ID AS ISIN#ASSET_EXT_ID, SEDOL.ASSET_EXT_ID AS SEDOL#ASSET_EXT_ID, BLOOMB.ASSET_EXT_ID AS BLOOMB#ASSET_EXT_ID, CUSIP.ASSET_EXT_ID AS CUSIP#ASSET_EXT_ID, Listing.SETTLEMENT_COUNTRY_ISO_CODE AS LISTING#1436626810SETTLEMENT_C, ASSET.CURRENCY_ISO_CODE AS ASSET#CURRENCY_ISO_CODE, EXCHMIC.MIC AS EXCHMIC#MIC, EXCHMIC.COUNTRY_ID AS EXCHMIC#COUNTRY_ID, ASSETEXC.NAME AS ASSETEXC#NAME, ASSET.ISSUING_COUNTRY_ISO_CODE AS ASSET#ISSUING_COUNTRY_ISO_CODE, ASSISS.NAME AS ASSISS#NAME, ASSISS.DESCRIPTION AS ASSISS#DESCRIPTION, ASSISS.ISSUER_COUNTRY_ISO_CODE AS ASSISS#ISSUER_COUNTRY_ISO_CODE, MICCNTRY.NAME AS MICCNTRY#NAME, MICCNTRY.COUNTRY_CODE AS MICCNTRY#COUNTRY_CODE, Listing.EXCHANGE_ID AS LISTING#EXCHANGE_ID, Listing.LINK_ID AS LISTING#LINK_ID, Listing.LISTING_ID AS LISTING#LISTING_ID, Listing.STARTDATE AS LISTING#STARTDATE, Listing.UPDATED_BY AS LISTING#UPDATED_BY, Listing.UPDATED_TIMESTAMP AS LISTING#UPDATED_TIMESTAMP, MICCNTRY.ACTIVE_STATUS AS MICCNTRY#ACTIVE_STATUS, MICCNTRY.CALENDAR_ID AS MICCNTRY#CALENDAR_ID, MICCNTRY.COUNTRY_ID AS MICCNTRY#COUNTRY_ID, ASSETEXC.FULLNAME AS ASSETEXC#FULLNAME, ISIN.ID AS ISIN#ID, REFTYPE.LOOKUP_VALUE AS REFTYPE#LOOKUP_VALUE, ISIN.LISTING_ID AS ISIN#LISTING_ID, ASSETEXC.LOOKUP_VALUE AS ASSETEXC#LOOKUP_VALUE, EXCHMIC.ACTIVE_STATUS AS EXCHMIC#ACTIVE_STATUS, ASSETEXC.MIC_ID AS ASSETEXC#MIC_ID, Listing.SOFT_LOCK_KEY AS LISTING#SOFT_LOCK_KEY FROM TPM_REF_ASSET_LISTING Listing LEFT OUTER JOIN TLM_REF_ASSET_LST_EXT_TYPE_LNK ISIN  ON  ( Listing.LISTING_ID = ISIN.LISTING_ID AND ( ISIN.ASSET_EXT_ID_TYPE =1)  ) LEFT OUTER JOIN TPM_REF_EXCHANGE ASSETEXC  ON  ( Listing.EXCHANGE_ID = ASSETEXC.EXCHANGE_ID ) LEFT OUTER JOIN TPM_REF_ASSET ASSET  ON  ( Listing.ASSET_ID = ASSET.ASSET_ID ) LEFT OUTER JOIN TLM_REF_ASSET_LST_EXT_TYPE_LNK CUSIP  ON  ( Listing.LISTING_ID = CUSIP.LISTING_ID AND ( CUSIP.ASSET_EXT_ID_TYPE =2)  ) LEFT OUTER JOIN TLM_REF_ASSET_LST_EXT_TYPE_LNK BLOOMB  ON  ( Listing.LISTING_ID = BLOOMB.LISTING_ID AND ( BLOOMB.ASSET_EXT_ID_TYPE =3)  ) LEFT OUTER JOIN TLM_REF_ASSET_LST_EXT_TYPE_LNK SEDOL  ON  ( Listing.LISTING_ID = SEDOL.LISTING_ID AND ( SEDOL.ASSET_EXT_ID_TYPE =4)  ) LEFT OUTER JOIN TLM_REF_ASSET_LST_EXT_TYPE_LNK INTERNAL  ON  ( Listing.LISTING_ID = INTERNAL.LISTING_ID AND ( INTERNAL.ASSET_EXT_ID_TYPE =5)  ) LEFT OUTER JOIN TPM_REF_MIC EXCHMIC  ON  ( ASSETEXC.MIC_ID = EXCHMIC.MIC_ID ) LEFT OUTER JOIN TPM_REF_COUNTRY MICCNTRY  ON  ( EXCHMIC.COUNTRY_ID = MICCNTRY.COUNTRY_ID ) LEFT OUTER JOIN TPM_REF_ASSET_ISSUER ASSISS  ON  ( ASSET.ASSET_ISSUER_ID = ASSISS.ASSET_ISSUER_ID ) LEFT OUTER JOIN TPM_REF_ASSET_EXT_ID_TYPE REFTYPE  ON  ( ISIN.ASSET_EXT_ID_TYPE = REFTYPE.ASSET_EXT_ID_TYPE )  WHERE (Listing.SECURITY_OF_INTEREST = 1 AND ISIN.ASSET_EXT_ID = 'XS1513739760')





--------- EVENT ------------------


SeLeCt DISTINCT Event.ACTIVE_STATUS AS EVENT#ACTIVE_STATUS, Type.EVENT_TYPE_NAME AS TYPE#EVENT_TYPE_NAME, ASSET.NAME AS ASSET#NAME, ISIN.ASSET_EXT_ID AS ISIN#ASSET_EXT_ID, MIC.MIC AS MIC#MIC, LSTCNTRY.COUNTRY_CODE AS LSTCNTRY#COUNTRY_CODE, Event.APPROVAL_STATUS AS EVENT#APPROVAL_STATUS, Event.EVENT_NUM AS EVENT#EVENT_NUM, ASSTYPE.LOOKUP_VALUE AS ASSTYPE#LOOKUP_VALUE, CADate.XDTE_DT AS CADATE#XDTE_DT, CADate.XDTE_DATE_CODE AS CADATE#XDTE_DATE_CODE, CADate.XDTE_REFERENCE_DATE_ID AS CADATE#XDTE_REFERENCE_DATE_ID, CADate.XDTE_DAYS_DIFF AS CADATE#XDTE_DAYS_DIFF, CADate.XDTE_DAY_TYPE AS CADATE#XDTE_DAY_TYPE, CADate.XDTE_FORMAT_TYPE AS CADATE#XDTE_FORMAT_TYPE, CADate.XDTE_DISPLAY AS CADATE#XDTE_DISPLAY, CADate.XDTE_TIMEZONE AS CADATE#XDTE_TIMEZONE, Event.OPTION_CLEANSING_STATUS AS EVENT#OPTION_CLEANSING_STATUS, Event.CLEANSING_STATUS AS EVENT#CLEANSING_STATUS, Event.COMPLETENESS_STATUS AS EVENT#COMPLETENESS_STATUS, Event.LISTING_ID AS EVENT#LISTING_ID, Event.MASTER_ID AS EVENT#MASTER_ID, Event.SOFT_LOCK_KEY AS EVENT#SOFT_LOCK_KEY FROM CA_EVENT Event INNER JOIN CA_EVENT_TYPE Type  ON  ( Event.EVENT_TYPE = Type.EVENT_TYPE ) LEFT OUTER JOIN CA_EVENT_DATE CADate  ON  ( Event.EVENT_NUM = CADate.EVENT_NUM ) LEFT OUTER JOIN TLM_REF_ASSET_LST_EXT_TYPE_LNK ISIN  ON  ( Event.LISTING_ID = ISIN.LISTING_ID AND ( ISIN.ASSET_EXT_ID_TYPE =1)  ) LEFT OUTER JOIN CA_EVENT_OPTION OPTN  ON  ( Event.EVENT_NUM = OPTN.EVENT_NUM ) LEFT OUTER JOIN TPM_REF_ASSET_LISTING LISTING  ON  ( Event.LISTING_ID = LISTING.LISTING_ID ) LEFT OUTER JOIN TPM_REF_ASSET ASSET  ON  ( LISTING.ASSET_ID = ASSET.ASSET_ID ) LEFT OUTER JOIN TPM_REF_ASSET_TYPE ASSTYPE  ON  ( ASSET.ASSET_TYPE = ASSTYPE.ASSET_TYPE ) LEFT OUTER JOIN CA_EVENT_OPTION_PERIOD OPTPERD  ON  ( OPTN.OPTION_SEQUENCE_NUM = OPTPERD.OPTION_SEQUENCE_NUM AND OPTN.EVENT_NUM = OPTPERD.EVENT_NUM ) INNER JOIN TPM_REF_COUNTRY LSTCNTRY  ON  ( LISTING.SETTLEMENT_COUNTRY_ISO_CODE = LSTCNTRY.COUNTRY_ID ) LEFT OUTER JOIN TPM_REF_EXCHANGE EXCHANGE  ON  ( LISTING.EXCHANGE_ID = EXCHANGE.EXCHANGE_ID ) LEFT OUTER JOIN TPM_REF_MIC MIC  ON  ( EXCHANGE.MIC_ID = MIC.MIC_ID )  WHERE (Event.EVENT_NUM = 773614 AND Event.EVENT_NUM > 0 AND Event.RECORD_TYPE = 1)




---------------- EVENT deep ----------------


select  e.EVENT_NUM, e.MASTER_ID, t.EVENT_TYPE_NAME, t.VOLUNTARY_FLAG, t.MEETING_INDICATOR, a.NAME as asset_name, a.DESCRIPTION asset_description, at.NAME as asset_type_name, ex.NAME as exchange_name, m.MIC as exchange_code, l.ACTIVE_FLAG as active_flag, l.INACTIVE_DATE, e.OPTION_COMPLETENESS_STATUS, e.OPTION_CLEANSING_STATUS, e.COMMUNICATION_STATUS, e.ELECTION_STATUS, e.DEPOSITED_STATUS,  e.DEPOSIT_CONFIRMED_STATUS, e.ENTITLEMENT_STATUS, e.RECONCILIATION_STATUS, e.PROCESSING_STATUS, e.CLEANSING_STATUS, e.SOURCE_COMPLETENESS_STATUS, e.MINIMUM_SOURCE_STATUS, e.OVERALL_STATUS, e.APPROVAL_STATUS, e.CLEANSING_STATUS, e.COMPLETENESS_STATUS, e.DETAIL_COMPLETENESS_STATUS, e.MANDATORY_OPTIONS, e.MIN_NO_OF_OPTIONS, e.LISTING_ID, e.TRADED_LOCK_IN_DATE,  e.SETTLED_LOCK_IN_DATE,  tip.TASK_ID,  e.TRADED_LOCK_IN_DATE_ATT_ID,  e.SETTLED_LOCK_IN_DATE_ATT_ID,  e.TRADED_LOCK_IN_OFFSET,  e.SETTLED_LOCK_IN_OFFSET, e.ELIGIBLE_POSITIONS_REQ_STATUS, epr.REQUEST_DATE AS ELIG_POS_REQ_DATE, epr.RESPONSE_DATE AS ELIG_POS_RESP_DATE, epr.BALANCE_LOCKIN_DATE AS ELIG_POS_BAL_LOCKIN_DATE, epr.TRADE_LOCKIN_DATE AS ELIG_POS_TRADE_LOCKIN_DATE, epr.BALANCE_LOCKIN_ATTRIBUTE_ID AS ELIG_POS_BAL_LOCKIN_ATTR_ID, epr.TRADE_LOCKIN_ATTRIBUTE_ID AS ELIG_POS_TRADE_LOCKIN_ATTR_ID, e.MASTER_RECORD_LOCK AS master_lock_state, epr.BALANCE_LOCKIN_OFFSET AS ELIG_POS_BAL_LOCKIN_OFFSET, epr.TRADE_LOCKIN_OFFSET AS ELIG_POS_TRADE_LOCKIN_OFFSET, epr.LOCK_STATE AS lock_state, e.INTERNAL_DEADLINE_DATE, e.INTERNAL_DEADLINE_FORMAT_TYPE, e.INTERNAL_DEADLINE_TIMEZONE, ced.RDDT_DT, ced.RDDT_FORMAT_TYPE, ced.RDDT_TIMEZONE, e.BUYA_DEPOSITED_STATUS, e.BUYA_CONFIRMED_STATUS, e.SLLE_DEPOSITED_STATUS, e.SLLE_CONFIRMED_STATUS, e.VOTING_STATUS, e.VOTING_FORM_COMPLETE_STATUS, e.GOLDEN_RECORD_FLAG from CA_EVENT e left outer join CA_EVENT_TYPE t on (e.EVENT_TYPE = t.EVENT_TYPE) left outer join TPM_REF_ASSET_LISTING l on (e.LISTING_ID = l.LISTING_ID) left outer join TPM_REF_ASSET a on (a.ASSET_ID = l.ASSET_ID) left outer join TPM_REF_ASSET_TYPE at on (at.ASSET_TYPE = a.ASSET_TYPE) left outer join TPM_REF_EXCHANGE ex on (ex.EXCHANGE_ID = l.EXCHANGE_ID) left outer join TPM_REF_MIC m on (m.MIC_ID = ex.MIC_ID) left outer join CA_TASK_IN_PROGRESS tip on tip.EVENT_NUMBER=e.EVENT_NUM left outer join CA_EVENT_ELIGIBLE_POS_REQUEST epr on epr.EVENT_NUM=e.EVENT_NUM left outer join CA_EVENT_DATE ced on ced.EVENT_NUM=e.EVENT_NUM where e.EVENT_NUM = 773614


----- POST-------------

 SeLeCt ELIGPOS.EVENT_POSITION_ID AS ELIGPOS#EVENT_POSITION_ID, IENTMETA.LABEL AS IENTMETA#LABEL, CUSTAC.N
AME AS CUSTAC#NAME, CUSTAC.ACCOUNT_NO AS CUSTAC#ACCOUNT_NO, IACCENT.NAME AS IACCENT#NAME, CUSTAC.ACCOUNT_ID AS CUSTAC#ACCOUNT_ID, ELIGPOS.TRANSACTION_FLAG AS  ELIGPOS#TRANSACTION_FLAG, ELIGPOS.POSITION_TYPE_ID AS ELIGPOS#POSITION_TYPE_ID, ELIGPOS.TX_TYPE_ID AS ELIGPOS#TX_TYPE_ID, ELIGPOS.BALANCE_TYPE AS ELIGPOS#BALANCE_TYPE, ELIGPOS.SPECIAL_TRADE AS ELIGPOS#SPECIAL_TRADE, ELECTED.ELIGIBLE_QUANTITY AS ELECTED#ELIGIBLE_QUANTITY, ELECTED.QUANTITY AS ELECTED#QUANTITY, ELECTED.PERCENTAGE_USED AS ELECTED#PERCENTAGE_USED, ELECTED.DIFFERENCE AS ELECTED#DIFFERENCE, ELECTED.ELECTION_STATUS AS ELECTED#ELECTION_STATUS, CNTACC.NAME AS  CNTACC#NAME, CNTACC.ACCOUNT_NO AS CNTACC#ACCOUNT_NO, CNTACC.ACCOUNT_ID AS CNTACC#ACCOUNT_ID, ELECTED.DEPOSITED_QUANTITY AS ELECTED#DEPOSITED_QUANTITY, ELECTED.DEPOSITED_OUTSTANDING AS ELECTED#DEPOSITED_OUTSTANDING, OPTDEPT.DEPOSITED_STATUS AS OPTDEPT#DEPOSITED_STATUS, ELECTED.CONFIRMED_QUANTITY AS ELECTED#CONFIRMED_QUANTITY, ELECTED.CONFIRMED_OUTSTANDING AS ELECTED#CONFIRMED_OUTSTANDING, OPTDEPT.DEPOSIT_CONFIRMED_STATUS AS OPTDEPT#149330797DEPOSIT_CONFI, ELIGPOS.PROCESSING_STATUS AS ELIGPOS#PROCESSING_STATUS, ELIGPOS.REASON_CODE AS ELIGPOS#REASON_CODE, ELIGPOS.NARRATIVE_IND AS ELIGPOS#NARRATIVE_IND, IPOSACCT.COMMUNICATION_STATE AS IPOSACCT#COMMUNICATION_STATE, IPOSACCT.COMMUNICATION_LIFECYCLE_STATE AS IPOSACCT#1805641549COMMUNICATI, ELIGPOS.ENTITLEMENT_STATUS AS ELIGPOS#ENTITLEMENT_STATUS, ELIGPOS.BOOK_COST AS ELIGPOS#BOOK_COST, BOOKCURR.CURRENCY_CODE AS BOOKCURR#CURRENCY_CODE, IACCENT.LEFT_VAL AS IACCENT#LEFT_VAL, IACCENT.RIGHT_VAL AS IACCENT#RIGHT_VAL, ELECTED.ELECTION_DATE AS ELECTED#ELECTION_DATE, ELECTED.DEPOSITED_DATE AS ELECTED#DEPOSITED_DATE, ELECTED.DEPOSIT_CONFIRMED_DATE AS ELECTED#DEPOSIT_CONFIRMED_DATE, ELIGPOS.OPEN_QUANTITY AS ELIGPOS#OPEN_QUANTITY, ELIGPOS.TRADE_QUANTITY AS ELIGPOS#TRADE_QUANTITY, ELIGPOS.TRADE_COMPANY AS  ELIGPOS#TRADE_COMPANY, ELIGPOS.TRADE_SOURCE_SYSTEM AS ELIGPOS#TRADE_SOURCE_SYSTEM, ELIGPOS.REFERENCE AS ELIGPOS#REFERENCE, ELIGPOS.FO_TRADE_REFERENCE AS ELIGPOS#FO_TRADE_REFERENCE, ELIGPOS.BO_TRADE_REFERENCE AS ELIGPOS#BO_TRADE_REFERENCE, ELIGPOS.RELATED_TRADE_ACCOUNT AS ELIGPOS#RELATED_TRADE_ACCOUNT, ELIGPOS.PRICE_TYPE AS ELIGPOS#PRICE_TYPE, ELIGPOS.CASH_CONSIDERATION AS ELIGPOS#CASH_CONSIDERATION, ELIGPOS.CASH_CONSIDERATION_CUR AS ELIGPOS#CASH_CONSIDERATION_CUR, ELIGPOS.FRONT_OFFICE_PORTFOLIO AS ELIGPOS#FRONT_OFFICE_PORTFOLIO, ELIGPOS.LIABILITY_PERCENTAGE AS ELIGPOS#LIABILITY_PERCENTAGE, ELIGPOS.FEE_RATE AS ELIGPOS#FEE_RATE, ELIGPOS.REBATE_RATE AS ELIGPOS#REBATE_RATE, ELIGPOS.REPO_RATE AS ELIGPOS#REPO_RATE, ELIGPOS.REINVEST_FLAG AS ELIGPOS#REINVEST_FLAG, ELIGPOS.COMPANY AS ELIGPOS#COMPANY, ELIGPOS.SOURCE_SYSTEM AS ELIGPOS#SOURCE_SYSTEM, ELIGPOS.WEIGHTED_AVG_COST AS ELIGPOS#WEIGHTED_AVG_COST, ELIGPOS.CLAIM_REQUIRED AS ELIGPOS#CLAIM_REQUIRED, ELIGPOS.BOOK_ADJUSTED AS ELIGPOS#BOOK_ADJUSTED, ELIGPOS.MANUALLY_CREATED AS ELIGPOS#MANUALLY_CREATED, ELIGPOS.LOCK_STATE AS ELIGPOS#LOCK_STATE, ELIGPOS.REORG_LOCK AS ELIGPOS#REORG_LOCK, ELIGPOS.TRADED_DATE AS ELIGPOS#TRADED_DATE, ELIGPOS.SETTLEMENT_DATE AS ELIGPOS#SETTLEMENT_DATE, ELIGPOS.PRICE AS ELIGPOS#PRICE, ELIGPOS.ACTUAL_SETTLEMENT_DATE AS ELIGPOS#ACTUAL_SETTLEMENT_DATE, ELIGPOS.SWAP_ID AS ELIGPOS#SWAP_ID, ELIGPOS.IS_ARBITRAGE AS ELIGPOS#IS_ARBITRAGE, BUYAQUAN.BUYA_ELECTED_QUANTITY AS BUYAQUAN#BUYA_ELECTED_QUANTITY, BUYAQUAN.BUYA_ELECTED_DATE AS BUYAQUAN#BUYA_ELECTED_DATE, BUYAQUAN.BUYA_DEPOSITED_QUANTITY AS BUYAQUAN#749521681BUYA_DEPOSIT, BUYAQUAN.BUYA_DEPOSITED_OUTSTANDING AS BUYAQUAN#1328544460BUYA_DEPOSI, BUYAQUAN.BUYA_DEPOSITED_DATE AS BUYAQUAN#BUYA_DEPOSITED_DATE, ELIGPOS.BUYA_DEPOSITED_STATUS AS ELIGPOS#BUYA_DEPOSITED_STATUS, BUYAQUAN.BUYA_CONFIRMED_QUANTITY AS BUYAQUAN#50794065BUYA_CONFIRME, BUYAQUAN.BUYA_CONFIRMED_OUTSTANDING AS BUYAQUAN#2123493846BUYA_CONFIR, BUYAQUAN.BUYA_CONFIRMED_DATE AS BUYAQUAN#BUYA_CONFIRMED_DATE, ELIGPOS.BUYA_CONFIRMED_STATUS AS ELIGPOS#BUYA_CONFIRMED_STATUS, SLLEQUAN.SLLE_ELECTED_QUANTITY AS SLLEQUAN#SLLE_ELECTED_QUANTITY, SLLEQUAN.SLLE_ELECTED_DATE AS SLLEQUAN#SLLE_ELECTED_DATE, SLLEQUAN.SLLE_DEPOSITED_QUANTITY AS SLLEQUAN#1510427322SLLE_DEPOSI, SLLEQUAN.SLLE_DEPOSITED_OUTSTANDING AS SLLEQUAN#2025981717SLLE_DEPOSI, SLLEQUAN.SLLE_DEPOSITED_DATE AS SLLEQUAN#SLLE_DEPOSITED_DATE, ELIGPOS.SLLE_DEPOSITED_STATUS AS ELIGPOS#SLLE_DEPOSITED_STATUS, SLLEQUAN.SLLE_CONFIRMED_QUANTITY AS SLLEQUAN#710111576SLLE_CONFIRM, SLLEQUAN.SLLE_CONFIRMED_OUTSTANDING AS SLLEQUAN#1426056589SLLE_CONFIR, SLLEQUAN.SLLE_CONFIRMED_DATE AS SLLEQUAN#SLLE_CONFIRMED_DATE, ELIGPOS.SLLE_CONFIRMED_STATUS AS ELIGPOS#SLLE_CONFIRMED_STATUS, ELIGPOS.ENTL_PRICE AS ELIGPOS#ENTL_PRICE, ENTLCURR.CURRENCY_CODE AS ENTLCURR#CURRENCY_CODE, ELIGPOS.ENTL_TRADE_DATE AS ELIGPOS#ENTL_TRADE_DATE, ELIGPOS.ENTL_SETTLEMENT_DATE AS ELIGPOS#ENTL_SETTLEMENT_DATE, INTAC.NAME AS INTAC#NAME, INTAC.ACCOUNT_NO AS INTAC#ACCOUNT_NO, INTAC.ACCOUNT_ID AS INTAC#ACCOUNT_ID, ELECTED.PENDING_ELECTION_REQ AS ELECTED#PENDING_ELECTION_REQ, ELIGPOS.IS_SWIFT_LOAD AS ELIGPOS#IS_SWIFT_LOAD, VOTE.PERCENTAGECAST AS VOTE#PERCENTAGECAST, EVENT.EVENT_NUM AS EVENT#EVENT_NUM, ELIGPOS.ENTITLEMENT_REQUIRED AS ELIGPOS#ENTITLEMENT_REQUIRED, TX_TYPE.NAME AS TX_TYPE#NAME, ELIGPOS.UPDATE_BALANCE AS ELIGPOS#UPDATE_BALANCE, V_RATTYP.FX_RATE_TYPE AS V_RATTYP#FX_RATE_TYPE, V_RATTYP.ENTITY_ID AS V_RATTYP#ENTITY_ID, IACCENT.ENTITY_ID AS IACCENT#ENTITY_ID, V_RATTYP.COUNTRY_ID AS V_RATTYP#COUNTRY_ID, CNTRY.COUNTRY_ID AS CNTRY#COUNTRY_ID, ELIGPOS.REORG_TRADE AS ELIGPOS#REORG_TRADE, V_RATTYP.ACCOUNT_ID AS V_RATTYP#ACCOUNT_ID, V_RATTYP.ASSET_TYPE AS V_RATTYP#ASSET_TYPE, V_RATTYP.EVENT_TYPE AS V_RATTYP#EVENT_TYPE, AST_TYP.ASSET_TYPE AS AST_TYP#ASSET_TYPE, V_RATTYP.EXCHANGE_ID AS V_RATTYP#EXCHANGE_ID, EXCHNG.EXCHANGE_ID AS EXCHNG#EXCHANGE_ID, EVTTYPE.EVENT_TYPE AS EVTTYPE#EVENT_TYPE, EVTTYPE.MEETING_INDICATOR AS EVTTYPE#MEETING_INDICATOR, EVTTYPE.VOLUNTARY_INDICATOR AS EVTTYPE#VOLUNTARY_INDICATOR FROM CA_EVENT_POSITION ELIGPOS INNER JOIN CA_EVENT EVENT  ON  ( ELIGPOS.EVENT_NUM = EVENT.EVENT_NUM ) LEFT OUTER JOIN CA_EVENT_POSITION_ACCOUNT IPOSACCT  ON  ( ELIGPOS.EVENT_POSITION_ID = IPOSACCT.EVENT_POSITION_ID AND ( IPOSACCT.ACCOUNT_TYPE_ID =1)  ) LEFT OUTER JOIN CA_CURRENCY BOOKCURR  ON  ( ELIGPOS.BOOK_COST_CURRENCY_ID = BOOKCURR.CURRENCY_ID ) INNER JOIN V_CA_POS_DEPOSITED_STATES OPTDEPT  ON  ( ELIGPOS.EVENT_POSITION_ID = OPTDEPT.POSITION_ID ) LEFT OUTER JOIN CA_REF_PRICE_TYPE PRICETYP  ON  ( ELIGPOS.PRICE_TYPE = PRICETYP.NAME ) LEFT OUTER JOIN CA_REF_POSITION_TYPE POS_TYPE  ON  ( ELIGPOS.POSITION_TYPE_ID = POS_TYPE.POSITION_TYPE_ID ) LEFT OUTER JOIN V_CA_POS_BUYA_QUANTITY_SUM BUYAQUAN  ON  ( ELIGPOS.EVENT_POSITION_ID = BUYAQUAN.EVENT_POSITION_ID ) LEFT OUTER JOIN CA_CURRENCY ENTLCURR  ON  ( ELIGPOS.ENTL_CURRENCY_ID = ENTLCURR.CURRENCY_ID ) LEFT OUTER JOIN V_CA_POS_SLLE_QUANTITY_SUM SLLEQUAN  ON  ( ELIGPOS.EVENT_POSITION_ID = SLLEQUAN.EVENT_POSITION_ID ) LEFT OUTER JOIN V_CA_POS_VOTE_COUNT VOTE  ON  ( ELIGPOS.EVENT_POSITION_ID = VOTE.EVENT_POSITION_ID ) INNER JOIN V_CA_POS_ELECTION_SUM ELECTED  ON  ( ELIGPOS.EVENT_POSITION_ID = ELECTED.POSITION_ID ) LEFT OUTER JOIN CA_REF_POS_TX_TYPE TX_TYPE  ON  ( ELIGPOS.TX_TYPE_ID = TX_TYPE.TX_TYPE_ID ) LEFT OUTER JOIN V_CA_POS_FX_RATE_TYPE V_RATTYP  ON  ( ELIGPOS.EVENT_POSITION_ID = V_RATTYP.EVENT_POSITION_ID ) LEFT OUTER JOIN CA_EVENT_POSITION_ACCOUNT CNTPOSAC  ON  ( ELIGPOS.EVENT_POSITION_ID = CNTPOSAC.EVENT_POSITION_ID AND ( CNTPOSAC.ACCOUNT_TYPE_ID =3)  ) LEFT OUTER JOIN CA_EVENT_POSITION_ACCOUNT CPOSACCT  ON  ( ELIGPOS.EVENT_POSITION_ID = CPOSACCT.EVENT_POSITION_ID AND ( CPOSACCT.ACCOUNT_TYPE_ID =2)  ) LEFT OUTER JOIN TPM_REF_ASSET_LISTING AST_LST  ON  ( EVENT.LISTING_ID = AST_LST.LISTING_ID ) LEFT OUTER JOIN TLM_ACCOUNT CNTACC  ON  ( CNTPOSAC.ACCOUNT_ID = CNTACC.ACCOUNT_ID ) LEFT OUTER JOIN TPM_REF_EXCHANGE EXCHNG  ON  ( AST_LST.EXCHANGE_ID = EXCHNG.EXCHANGE_ID ) LEFT OUTER JOIN TLM_ACCOUNT INTAC  ON  ( IPOSACCT.ACCOUNT_ID = INTAC.ACCOUNT_ID AND ( INTAC.ACCOUNT_TYPE_ID =1)  ) INNER JOIN CA_EVENT_TYPE EVTTYPE  ON  ( EVENT.EVENT_TYPE = EVTTYPE.EVENT_TYPE ) LEFT OUTER JOIN TPM_REF_MIC MIC  ON  ( EXCHNG.MIC_ID = MIC.MIC_ID ) LEFT OUTER JOIN TLM_ACCOUNT CUSTAC  ON  ( CPOSACCT.ACCOUNT_ID = CUSTAC.ACCOUNT_ID ) LEFT OUTER JOIN TPM_REF_ASSET ASSET  ON  ( AST_LST.ASSET_ID = ASSET.ASSET_ID ) LEFT OUTER JOIN TLM_ENTITY_ACCOUNT ENTACCT  ON  ( INTAC.ACCOUNT_ID = ENTACCT.ACCOUNT_ID ) LEFT OUTER JOIN TPM_REF_COUNTRY CNTRY  ON  ( MIC.COUNTRY_ID = CNTRY.COUNTRY_ID ) LEFT OUTER JOIN TPM_REF_ASSET_TYPE AST_TYP  ON  ( ASSET.ASSET_TYPE = AST_TYP.ASSET_TYPE ) LEFT OUTER JOIN V_ACTIVE_ENTITIES IACCENT  ON  ( ENTACCT.ENTITY_ID = IACCENT.ENTITY_ID ) LEFT OUTER JOIN TLM_ENTITY_META_DATA IENTMETA  ON  ( IACCENT.NAME = IENTMETA.ENTITY_REFERENCE )  WHERE (EVENT.EVENT_NUM = 773614 AND  (POS_TYPE.DISPLAY_FLAG = 1 OR TX_TYPE.DISPLAY_FLAG = 1 OR ELIGPOS.IS_SWIFT_LOAD = 1 OR  (ELIGPOS.IS_SWIFT_LOAD = 5 AND EVTTYPE.MEETING_INDICATOR = 1 ) ) AND ELIGPOS.BALANCE_TYPE = 'ELIG')






------------------------------------------------- Event lifecycle status change   ----------------------



SELECT trst.event_id, tre.NAME, trst.STATE_TRANSITION_ID, trst.ORIG_STATE_ID, orig.NAME, trst.DEST_STATE_ID, STATE.NAME
FROM TLM_REF_STATE_TRANSITION  trst, TLM_REF_STATE STATE, TLM_REF_STATE_MACHINE_TYPE TYPE , TLM_REF_STATE  orig, TLM_REF_EVENT tre
WHERE TYPE.ATTRIBUTE_ID = 81403608     -- Event Life Cycle Status
AND TYPE.STATE_MACHINE_ID = STATE.STATE_MACHINE_ID
AND trst.STATE_MACHINE_ID= 18003
-- AND trst.DEST_STATE_ID = 1000008   -- lifecycle status Updated
AND trst.DEST_STATE_ID = STATE.STATE_ID
AND trst.ORIG_STATE_ID = orig.STATE_ID
AND trst.EVENT_ID = tre.EVENT_ID


--------------------- Useful sql that shows all control entities and attributes with their underlying tables and columns where the type is 12 (varchar in control) and the lengths are not equal ----------------
 

select je.id as ENTITY_ID,e.NAME as ENTITY_NAME,je.TABLE_NAME,ea.ID as ATTRIBUTE_ID,ea.NAME as ATTRIBUTE_NAME,ja.COLUMN_NAME,ea.COLUMN_SIZE as ATTRIBUTE_size,tc.DATA_LENGTH as COLUMN_SIZE from jdbc_entity je
inner join entity e on e.id=je.id
inner join entity_attribute ea on ea.entity_id=je.id
inner join jdbc_attribute ja on ja.id=ea.id
inner join user_tab_columns tc on tc.table_name=je.table_name and tc.column_name=ja.column_name
where ea.jdbc_type_id=12 and ea.column_size!=tc.data_length
order by 2;

NO balance in EPR file will generate only servicer line

As per the SDD the communication will be triggered only if the event is in approve, clean and complete state, the screen print shared by client for the event, it shows that event is clean but not complete.


rule -> population condition (country =xyz)  and Corporate action event auto assignment

enable debug mode 

standalone.conf   - SQL true

JAVA_OPTS=$JAVA_OPTS -DlogSQL=false






------------------------------------------------------ null master fix------------------------------------------------------



    
select event_num,MASTER_SEQUENCE_NUMBER,OPTION_SEQUENCE_NUM from  CA_EVENT_OPTION  where EVENT_NUM in (SELECT DISTINCT(EP.LINKED_EVENT)
FROM CA_EVENT_POSITION EP
LEFT OUTER JOIN CA_EVENT_POSITION_ACCOUNT EPA ON EPA.EVENT_POSITION_ID = EP.EVENT_POSITION_ID
LEFT OUTER JOIN TLM_ACCOUNT A ON A.ACCOUNT_ID = EPA.ACCOUNT_ID
LEFT OUTER JOIN TLM_CFG_ACCOUNT_CONTACT AC ON AC.ACCOUNT_ID = A.ACCOUNT_ID
LEFT OUTER JOIN TLM_CONTACT C on C.CONTACT_ID = AC.CONTACT_ID
LEFT OUTER JOIN CA_EVENT ES ON ES.EVENT_NUM = EP.LINKED_EVENT
LEFT OUTER JOIN CA_DATA_PROVIDER DPS ON DPS.DATA_PROVIDER_ID = ES.DATA_SOURCE
LEFT OUTER JOIN CA_EVENT_OPTION EOS ON EOS.EVENT_NUM = ES.EVENT_NUM
LEFT OUTER JOIN CA_EVENT EM ON EM.EVENT_NUM = EP.EVENT_NUM AND EM.MASTER_ID = ES.MASTER_ID
LEFT OUTER JOIN CA_EVENT_OPTION EOM ON EOM.EVENT_NUM = EM.EVENT_NUM AND EOM.OPTION_SEQUENCE_NUM = EOS.MASTER_SEQUENCE_NUMBER
WHERE 
A.ACCOUNT_NO in 
('8053008496')
AND
EP.EVENT_NUM = 1890777 
and    CA_EVENT_OPTION.MASTER_SEQUENCE_NUMBER is NULL
);


update CA_EVENT_OPTION set MASTER_SEQUENCE_NUMBER =OPTION_SEQUENCE_NUM where EVENT_NUM in (SELECT DISTINCT(EP.LINKED_EVENT)
FROM CA_EVENT_POSITION EP
LEFT OUTER JOIN CA_EVENT_POSITION_ACCOUNT EPA ON EPA.EVENT_POSITION_ID = EP.EVENT_POSITION_ID
LEFT OUTER JOIN TLM_ACCOUNT A ON A.ACCOUNT_ID = EPA.ACCOUNT_ID
LEFT OUTER JOIN TLM_CFG_ACCOUNT_CONTACT AC ON AC.ACCOUNT_ID = A.ACCOUNT_ID
LEFT OUTER JOIN TLM_CONTACT C on C.CONTACT_ID = AC.CONTACT_ID
LEFT OUTER JOIN CA_EVENT ES ON ES.EVENT_NUM = EP.LINKED_EVENT
LEFT OUTER JOIN CA_DATA_PROVIDER DPS ON DPS.DATA_PROVIDER_ID = ES.DATA_SOURCE
LEFT OUTER JOIN CA_EVENT_OPTION EOS ON EOS.EVENT_NUM = ES.EVENT_NUM
LEFT OUTER JOIN CA_EVENT EM ON EM.EVENT_NUM = EP.EVENT_NUM AND EM.MASTER_ID = ES.MASTER_ID
LEFT OUTER JOIN CA_EVENT_OPTION EOM ON EOM.EVENT_NUM = EM.EVENT_NUM AND EOM.OPTION_SEQUENCE_NUM = EOS.MASTER_SEQUENCE_NUMBER
WHERE 
A.ACCOUNT_NO in 
('8053008496')
AND
EP.EVENT_NUM = 1921995    
and CA_EVENT_OPTION.MASTER_SEQUENCE_NUMBER is NULL
);
commit;

---------------------------Message feed dashboard---------------------------------------


SELECT     * FROM     tlm_mb_records r
    JOIN tlm_mb_messages  m ON r.message_id = m.message_id
    JOIN tlm_mb_feeds     f ON m.feed_id = f.feed_id
WHERE
    f.feed_source LIKE '%MT564_20200703.txt%' ;


INSERT INTO CA_ENTITY_TEMP (USER_ID, ENTITY_ID, TYPE, ROLE_ID, DIARY_ID, DIARY_CATEGORY_ID, DIARY_TYPE_ID, EVENT_NUM, PROCESSING_RESPONSBLTY_ID, PRIORITY) SELECT DISTINCT        UGL.USER_ID,-1 As Expr1, 1 AS Expr2, - 1 AS Expr3, tlm_diary.DIARY_ID, DC.DIARY_CATEGORY_ID, tlm_diary.DIARY_TYPE_ID, ERL.EVENT_NUM,        COALESCE(RP.PROCESSING_RESPONSBLTY_ID,1) AS PROC_RESP_ID,        COALESCE(PRD.PRIORITY, PR.MANUAL_PRIORITY, 100) AS PRIORITY   FROM TLM_DIARY tlm_diary        INNER JOIN TLM_REF_DIARY_TYPE DT ON tlm_diary.DIARY_TYPE_ID = DT.DIARY_TYPE_ID         INNER JOIN TLM_REF_DIARY_CATEGORY DC ON DT.DIARY_CATEGORY_ID = DC.DIARY_CATEGORY_ID         INNER JOIN TLM_BDR_DIARY_ROLE_LINK DRL ON DRL.DIARY_ID = tlm_diary.DIARY_ID         INNER JOIN CA_BDR_EVENT_ROLE_LINK ERL ON ERL.ROLE_INSTANCE_ID = DRL.ROLE_INSTANCE_ID         INNER JOIN CA_BDR_RESPONSIBLE_PARTY RP ON RP.EVENT_NUM = ERL.EVENT_NUM         INNER JOIN CA_CFG_PROCESSING_RESPONSBLTY PR ON PR.PROCESSING_RESPONSBLTY_ID = RP.PROCESSING_RESPONSBLTY_ID         INNER JOIN CA_CFG_USER_GROUP UG ON UG.USER_GROUP_ID = RP.USER_GROUP_ID         INNER JOIN CA_CFG_USER_GROUP_LIST UGL ON UGL.USER_GROUP_ID = UG.USER_GROUP_ID         INNER JOIN TLM_MANUAL_DIARY_ENTRY MANENTRY ON MANENTRY.DIARY_ID = tlm_diary.DIARY_ID                                                  AND MANENTRY.ASSIGN_TO_ALL_USERS=1         LEFT OUTER JOIN CA_CFG_PROC_RESP_DIARY PRD ON PRD.DIARY_TYPE_ID = DT.DIARY_TYPE_ID                                                  AND PRD.PROCESSING_RESPONSBLTY_ID = RP.PROCESSING_RESPONSBLTY_ID   WHERE UGL.USER_ID  = 'CASUSER'

------------ Diary task reference number ---------------------------

SELECT CG.CODE_GROUP_ID, CG.ATTRIBUTE_CODE_ID, E.english, EA.SHORT_NAME
FROM CA_ATTRIBUTE_CODE_GROUP CG
INNER JOIN CA_REF_EMSG E ON E.id = CG.EMSG_ID
INNER JOIN CA_EVENT_ATTRIBUTE_ID EA ON EA.ID = CG.ATTRIBUTE_CODE_ID
WHERE CG.CODE_GROUP_ID =52;





---------------------------- comm to sent status -------------------------------


UPDATE CA_BDR_COMMUNICATION
SET STATE = 1000031
WHERE EVENT_NUM = 675710
AND COMMUNICATION_CORRELATION_ID = 57610



--------------------- control process and project name -------------------------

select proces.id,proces.name,prjt.name Project name,substr(proces.description,1,20) from process proces left join project prjt on proces.PROJECT_ID=prjt.id order by prjt.NAME
;



select * from MMI_OUTMESSAGE order by creation_time desc ;
select * from MMI_OUTERROR order by 2 desc;



swift xsd ;

select name,content from MMI_XSDDOCUMENT where name like  'fin.564.%.xsd';

select * from process workflow_tool;

--------------------------------------------------------------

TLM_CFG_USER_CONTACT - Desk id


------------------ update CASE stetement ------------

UPDATE usrr  
SET email_id = 
CASE USER_ID  
WHEN 'AMULLER' THEN 'alain.muller@quoniam.com'  
WHEN 'RMUNIZ' THEN 'rocio.muniz@quoniam.com'  
WHEN 'MARNDT' THEN 'matthias.arndt@quoniam.com'  
WHEN 'JRIEMENS' THEN 'jan.riemenschneider@quoniam.com'  
ELSE NULL  
END  
where user_id in ('AMULLER','JRIEMENS','MARNDT','RMUNIZ');

-------------------------update election deadline date manually-------------------------

select election_deadline_date from ca_event_position where event_num = ??



----------------------- Cleansing and completeness --------------


EVENT :


SELECT
  --a.ID,
  CA_EVENT_TYPE.EVENT_TYPE_NAME AS EventType,
  CA_EVENT_TYPE.SHORT_NAME      AS EventTypeISO Code,
  TPM_REF_ASSET_TYPE.NAME       AS AssetType,
  tpm_ref_country.NAME          AS Country,
  tpm_ref_exchange.NAME         AS Market,
  --a.ATTRIBUTE_ID,
  --zs_object.object_id,
  c.column_order         AS ColumnOrder,
  e1.english             AS SelectedAttribute,
  a.CLEANSE_FLAG         AS Cleansing,
  a.COMPLETENESS_FLAG    AS Completeness,
  a.CLEANSE_ON_NULL_FLAG AS CleanseonNull,
  a.PROMOTE_ON_NULL_FLAG AS PromoteonNull,
  a.PRESENT_ON_NULL_FLAG AS PresentNull,
  c.PRESENT_ON_COMMS     AS PresentonComms,
  CASE
    WHEN a.RANGE_INDICATOR = 'NIL'
    THEN 'None'
    WHEN a.RANGE_INDICATOR = 'VAL'
    THEN 'Absolute discrete or date value'
    WHEN a.RANGE_INDICATOR = 'PCT'
    THEN 'Percentage'
    ELSE a.RANGE_INDICATOR
  END         AS RangeType,
  a.RANGE_MIN AS RangeMinimum,
  a.RANGE_MAX AS RangeMaximum
FROM CA_CLEANSE_COMPL_CONFIG a,
  CA_ATTRIBUTE_ORDER_CONFIG b,
  CA_ATTRIBUTE_ORDER_DETAILS c,
  CA_EVENT_TYPE,
  TPM_REF_ASSET_TYPE,
  tpm_ref_country,
  tpm_ref_exchange,
  zs_attribute,
  zs_attribute_sheet,
  emsg e1,
  zs_object
WHERE a.EVENT_TYPE                 =b.EVENT_TYPE
AND a.EXCHANGE_ID                  =b.EXCHANGE_ID
AND a.COUNTRY_ID                   =b.COUNTRY_ID
AND a.ASSET_TYPE                   =b.ASSET_TYPE
AND c.ORDER_ID                     =b.ORDER_ID
AND c.ATTRIBUTE_ID                 =a.ATTRIBUTE_ID
AND CA_EVENT_TYPE.EVENT_TYPE       = a.EVENT_TYPE
AND TPM_REF_ASSET_TYPE.ASSET_TYPE  = a.ASSET_TYPE
AND tpm_ref_country.country_id     = a.country_id
AND tpm_ref_exchange.exchange_id   = a.exchange_id
AND zs_attribute.attribute_id      = a.attribute_id
AND zs_attribute.attribute_id      = zs_attribute_sheet.attribute_id
AND e1.id                          = zs_attribute.emsg_id
AND zs_attribute.object_id         = zs_object.object_id
AND zs_attribute_sheet.property_id = 68
AND zs_object.object_id            =81400151
ORDER BY a.EVENT_TYPE,
  a.ASSET_TYPE,
  a.EXCHANGE_ID,
  a.COUNTRY_ID,
  c.column_order;
  
  
  

Option

SELECT
  --ET.ID,
  caet.event_type_name AS EventType,
  caet.SHORT_NAME      AS EventTypeISO Code,
  at.name              AS AssetType,
  ctry.name            AS Country,
  exch.name            AS Market,
  OT.OPTION_TYPE       AS OptionType,
  AO.ORDER_POS         AS ColumnOrder,
  -- AO.ATTRIBUTE_ID,
  em.english              AS SelectedAttribute,
  AO.CLEANSE_FLAG         AS Cleansing,
  AO.COMPLETENESS_FLAG    AS Completeness,
  AO.CLEANSE_ON_NULL_FLAG AS CleanseonNull,
  AO.PROMOTE_ON_NULL_FLAG AS PromoteonNull,
  AO.PRESENT_ON_NULL_FLAG AS PresentNull,
  AO.PRESENT_ON_COMMS     AS PresentonComms,
  CASE
    WHEN AO.RANGE_INDICATOR = 'NIL'
    THEN 'None'
    WHEN AO.RANGE_INDICATOR = 'VAL'
    THEN 'Absolute discrete or date value'
    WHEN AO.RANGE_INDICATOR = 'PCT'
    THEN 'Percentage'
    ELSE AO.RANGE_INDICATOR
  END          AS RangeType,
  AO.RANGE_MIN AS RangeMinimum,
  AO.RANGE_MAX AS RangeMaximum
FROM CA_CFG_EVENT_TEMPLATE ET
INNER JOIN CA_CFG_OPTION_TEMPLATE OT
ON OT.EVENT_TEMPLATE_ID=ET.ID
LEFT OUTER JOIN TLM_CFG_ATTRIBUTE_ORDER AO
ON AO.TEMPLATE_ID =ET.ID
LEFT JOIN ca_event_type caet
ON ET.event_type = caet.event_type
LEFT JOIN tpm_ref_asset_type at
ON ET.asset_type = at.asset_type
LEFT JOIN tpm_ref_exchange exch
ON ET.exchange_id = exch.exchange_id
LEFT JOIN tpm_ref_country ctry
ON ET.country_id = ctry.country_id
LEFT JOIN zs_attribute zsatt
ON AO.attribute_id = zsatt.attribute_id
LEFT JOIN emsg em
ON zsatt.emsg_id = em.id
ORDER BY ET.ID,
  AO.ORDER_POS;


Movement


SELECT
  --ET.ID,
  caet.event_type_name AS EventType,
  caet.SHORT_NAME      AS EventType ISO Code,
  at.name              AS AssetType,
  ctry.name            AS Country,
  exch.name            AS Market,
  OTT.OPTION_TYPE      AS OptionType,
  OTT.OPTION_TERM      AS MovementType,
  AO.ORDER_POS         AS ColumnOrder,
  -- AO.ATTRIBUTE_ID,
  em.english              AS Selected Attribute,
  AO.CLEANSE_FLAG         AS Cleansing,
  AO.COMPLETENESS_FLAG    AS Completeness,
  AO.CLEANSE_ON_NULL_FLAG AS CleanseonNull,
  AO.PROMOTE_ON_NULL_FLAG AS PromoteonNull,
  AO.PRESENT_ON_NULL_FLAG AS PresentNull,
  AO.PRESENT_ON_COMMS     AS PresentonComms,
  CASE
    WHEN AO.RANGE_INDICATOR = 'NIL'
    THEN 'None'
    WHEN AO.RANGE_INDICATOR = 'VAL'
    THEN 'Absolute discrete or date value'
    WHEN AO.RANGE_INDICATOR = 'PCT'
    THEN 'Percentage'
    ELSE AO.RANGE_INDICATOR
  END          AS RangeType,
  AO.RANGE_MIN AS RangeMinimum,
  AO.RANGE_MAX AS RangeMaximum
FROM CA_CFG_EVENT_TEMPLATE ET
INNER JOIN CA_CFG_OPTION_TERM_TEMPLATE OTT
ON OTT.EVENT_TEMPLATE_ID=ET.ID
LEFT OUTER JOIN TLM_CFG_ATTRIBUTE_ORDER AO
ON AO.TEMPLATE_ID =ET.ID
LEFT JOIN ca_event_type caet
ON ET.event_type = caet.event_type
LEFT JOIN tpm_ref_asset_type at
ON ET.asset_type = at.asset_type
LEFT JOIN tpm_ref_exchange exch
ON ET.exchange_id = exch.exchange_id
LEFT JOIN tpm_ref_country ctry
ON ET.country_id = ctry.country_id
LEFT JOIN zs_attribute zsatt
ON AO.attribute_id = zsatt.attribute_id
LEFT JOIN emsg em
ON zsatt.emsg_id = em.id
ORDER BY ET.ID,
  AO.ORDER_POS;





--- Event basic information -----

SELECT
    e.event_num,
    e.master_id,
    t.event_type_name,
    t.voluntary_flag,
    t.meeting_indicator,
    a.name                             AS asset_name,
    a.description                      asset_description,
    at.name                            AS asset_type_name,
    ex.name                            AS exchange_name,
    m.mic                              AS exchange_code,
    l.active_flag                      AS active_flag,
    l.inactive_date,
    e.option_completeness_status,
    e.option_cleansing_status,
    e.communication_status,
    e.election_status,
    e.deposited_status,
    e.deposit_confirmed_status,
    e.entitlement_status,
    e.forecast_status,
    e.is_trade_blocking_active,
    e.trade_blocking_status,
    e.forecast_confirmation_strategy,
    e.processing_status,
    e.cleansing_status,
    e.source_completeness_status,
    e.minimum_source_status,
    e.overall_status,
    e.approval_status,
    e.cleansing_status,
    e.completeness_status,
    e.detail_completeness_status,
    e.mandatory_options,
    e.min_no_of_options,
    e.listing_id,
    e.traded_lock_in_date,
    e.settled_lock_in_date,
    tip.task_id,
    e.traded_lock_in_date_att_id,
    e.settled_lock_in_date_att_id,
    e.traded_lock_in_offset,
    e.settled_lock_in_offset,
    e.eligible_positions_req_status,
    epr.request_date                   AS elig_pos_req_date,
    epr.response_date                  AS elig_pos_resp_date,
    epr.balance_lockin_date            AS elig_pos_bal_lockin_date,
    epr.trade_lockin_date              AS elig_pos_trade_lockin_date,
    epr.balance_lockin_attribute_id    AS elig_pos_bal_lockin_attr_id,
    epr.trade_lockin_attribute_id      AS elig_pos_trade_lockin_attr_id,
    e.master_record_lock               AS master_lock_state,
    epr.balance_lockin_offset          AS elig_pos_bal_lockin_offset,
    epr.trade_lockin_offset            AS elig_pos_trade_lockin_offset,
    epr.lock_state                     AS lock_state,
    e.internal_deadline_date,
    e.internal_deadline_format_type,
    e.internal_deadline_timezone,
    ced.rddt_dt,
    ced.rddt_format_type,
    ced.rddt_timezone,
    e.buya_deposited_status,
    e.buya_confirmed_status,
    e.slle_deposited_status,
    e.slle_confirmed_status,
    e.voting_status,
    e.voting_form_complete_status,
    e.golden_record_flag,
    e.position_rec_status,
    e.election_rec_status,
    e.entitlement_rec_status,
    e.position_rec_flag,
    e.election_rec_flag,
    e.entitlement_rec_flag
FROM
    ca_event                       e
    LEFT OUTER JOIN ca_event_type                  t ON ( e.event_type = t.event_type )
    LEFT OUTER JOIN tpm_ref_asset_listing          l ON ( e.listing_id = l.listing_id )
    LEFT OUTER JOIN tpm_ref_asset                  a ON ( a.asset_id = l.asset_id )
    LEFT OUTER JOIN tpm_ref_asset_type             at ON ( at.asset_type = a.asset_type )
    LEFT OUTER JOIN tpm_ref_exchange               ex ON ( ex.exchange_id = l.exchange_id )
    LEFT OUTER JOIN tpm_ref_mic                    m ON ( m.mic_id = ex.mic_id )
    LEFT OUTER JOIN ca_task_in_progress            tip ON tip.event_number = e.event_num
    LEFT OUTER JOIN ca_event_eligible_pos_request  epr ON epr.event_num = e.event_num
    LEFT OUTER JOIN ca_event_date                  ced ON ced.event_num = e.event_num
WHERE
    e.event_num = 1927551
	
	
	
------ position tab coronation -----


SELECT
    eligpos.event_position_id                 AS eligpos#event_position_id,
    intac.name                                AS intac#name,
    intac.account_no                          AS intac#account_no,
    intac.account_id                          AS intac#account_id,
    ientmeta.label                            AS ientmeta#label,
    custac.name                               AS custac#name,
    custac.account_no                         AS custac#account_no,
    custac.account_id                         AS custac#account_id,
    eligpos.transaction_flag                  AS eligpos#transaction_flag,
    eligpos.position_type_id                  AS eligpos#position_type_id,
    eligpos.tx_type_id                        AS eligpos#tx_type_id,
    eligpos.balance_type                      AS eligpos#balance_type,
    eligpos.special_trade                     AS eligpos#special_trade,
    elected.eligible_quantity                 AS elected#eligible_quantity,
    vote.quantity                             AS vote#quantity,
    vote.votecast                             AS vote#votecast,
    vote.voteremaining                        AS vote#voteremaining,
    eligpos.voting_status                     AS eligpos#voting_status,
    vote.pending_vote_req                     AS vote#pending_vote_req,
    vote.client_to_vote                       AS vote#client_to_vote,
    eligpos.election_deadline_date            AS eligpos#election_deadline_date,
    eligpos.election_deadline_date_tz         AS eligpos#661278006election_dead,
    elected.quantity                          AS elected#quantity,
    elected.percentage_used                   AS elected#percentage_used,
    elected.difference                        AS elected#difference,
    elected.election_status                   AS elected#election_status,
    eligpos.forecast_status                   AS eligpos#forecast_status,
    eligpos.trade_blocking_status             AS eligpos#trade_blocking_status,
    eligpos.trade_blocking_quantity           AS eligpos#1013231386trade_blocki,
    cntacc.name                               AS cntacc#name,
    cntacc.account_no                         AS cntacc#account_no,
    cntacc.account_id                         AS cntacc#account_id,
    elected.deposited_quantity                AS elected#deposited_quantity,
    elected.deposited_outstanding             AS elected#deposited_outstanding,
    optdept.deposited_status                  AS optdept#deposited_status,
    elected.confirmed_quantity                AS elected#confirmed_quantity,
    elected.confirmed_outstanding             AS elected#confirmed_outstanding,
    optdept.deposit_confirmed_status          AS optdept#149330797deposit_confi,
    eligpos.processing_status                 AS eligpos#processing_status,
    eligpos.reason_code                       AS eligpos#reason_code,
    eligpos.narrative_ind                     AS eligpos#narrative_ind,
    iposacct.communication_state              AS iposacct#communication_state,
    iposacct.communication_lifecycle_state    AS iposacct#1805641549communicati,
    eligpos.entitlement_status                AS eligpos#entitlement_status,
    eligpos.book_cost                         AS eligpos#book_cost,
    bookcurr.currency_code                    AS bookcurr#currency_code,
    iaccent.left_val                          AS iaccent#left_val,
    iaccent.right_val                         AS iaccent#right_val,
    elected.election_date                     AS elected#election_date,
    vote.voting_date                          AS vote#voting_date,
    elected.deposited_date                    AS elected#deposited_date,
    elected.deposit_confirmed_date            AS elected#deposit_confirmed_date,
    eligpos.open_quantity                     AS eligpos#open_quantity,
    eligpos.trade_quantity                    AS eligpos#trade_quantity,
    eligpos.trade_company                     AS eligpos#trade_company,
    eligpos.trade_source_system               AS eligpos#trade_source_system,
    eligpos.reference                         AS eligpos#reference,
    eligpos.fo_trade_reference                AS eligpos#fo_trade_reference,
    eligpos.bo_trade_reference                AS eligpos#bo_trade_reference,
    eligpos.related_trade_account             AS eligpos#related_trade_account,
    eligpos.price_type                        AS eligpos#price_type,
    eligpos.cash_consideration                AS eligpos#cash_consideration,
    eligpos.cash_consideration_cur            AS eligpos#cash_consideration_cur,
    eligpos.front_office_portfolio            AS eligpos#front_office_portfolio,
    eligpos.liability_percentage              AS eligpos#liability_percentage,
    eligpos.fee_rate                          AS eligpos#fee_rate,
    eligpos.rebate_rate                       AS eligpos#rebate_rate,
    eligpos.repo_rate                         AS eligpos#repo_rate,
    eligpos.reinvest_flag                     AS eligpos#reinvest_flag,
    eligpos.company                           AS eligpos#company,
    eligpos.source_system                     AS eligpos#source_system,
    eligpos.weighted_avg_cost                 AS eligpos#weighted_avg_cost,
    eligpos.claim_required                    AS eligpos#claim_required,
    eligpos.book_adjusted                     AS eligpos#book_adjusted,
    eligpos.manually_created                  AS eligpos#manually_created,
    eligpos.lock_state                        AS eligpos#lock_state,
    eligpos.reorg_lock                        AS eligpos#reorg_lock,
    eligpos.traded_date                       AS eligpos#traded_date,
    eligpos.settlement_date                   AS eligpos#settlement_date,
    eligpos.price                             AS eligpos#price,
    eligpos.actual_settlement_date            AS eligpos#actual_settlement_date,
    eligpos.swap_id                           AS eligpos#swap_id,
    buyaquan.buya_elected_quantity            AS buyaquan#buya_elected_quantity,
    buyaquan.buya_elected_date                AS buyaquan#buya_elected_date,
    buyaquan.buya_deposited_quantity          AS buyaquan#749521681buya_deposit,
    buyaquan.buya_deposited_outstanding       AS buyaquan#1328544460buya_deposi,
    buyaquan.buya_deposited_date              AS buyaquan#buya_deposited_date,
    eligpos.buya_deposited_status             AS eligpos#buya_deposited_status,
    buyaquan.buya_confirmed_quantity          AS buyaquan#50794065buya_confirme,
    buyaquan.buya_confirmed_outstanding       AS buyaquan#2123493846buya_confir,
    buyaquan.buya_confirmed_date              AS buyaquan#buya_confirmed_date,
    eligpos.buya_confirmed_status             AS eligpos#buya_confirmed_status,
    sllequan.slle_elected_quantity            AS sllequan#slle_elected_quantity,
    sllequan.slle_elected_date                AS sllequan#slle_elected_date,
    sllequan.slle_deposited_quantity          AS sllequan#1510427322slle_deposi,
    sllequan.slle_deposited_outstanding       AS sllequan#2025981717slle_deposi,
    sllequan.slle_deposited_date              AS sllequan#slle_deposited_date,
    eligpos.slle_deposited_status             AS eligpos#slle_deposited_status,
    sllequan.slle_confirmed_quantity          AS sllequan#710111576slle_confirm,
    sllequan.slle_confirmed_outstanding       AS sllequan#1426056589slle_confir,
    sllequan.slle_confirmed_date              AS sllequan#slle_confirmed_date,
    eligpos.slle_confirmed_status             AS eligpos#slle_confirmed_status,
    eligpos.entl_price                        AS eligpos#entl_price,
    entlcurr.currency_code                    AS entlcurr#currency_code,
    eligpos.entl_trade_date                   AS eligpos#entl_trade_date,
    eligpos.entl_settlement_date              AS eligpos#entl_settlement_date,
    evttype.meeting_indicator                 AS evttype#meeting_indicator,
    sposacct.account_id                       AS sposacct#account_id,
    servac.account_no                         AS servac#account_no,
    servac.name                               AS servac#name,
    elected.pending_election_req              AS elected#pending_election_req,
    eligpos.is_swift_load                     AS eligpos#is_swift_load,
    vote.percentagecast                       AS vote#percentagecast,
    event.event_num                           AS event#event_num,
    eligpos.entitlement_required              AS eligpos#entitlement_required,
    tx_type.name                              AS tx_type#name,
    eligpos.update_balance                    AS eligpos#update_balance,
    v_rattyp.fx_rate_type                     AS v_rattyp#fx_rate_type,
    v_rattyp.country_id                       AS v_rattyp#country_id,
    cntry.country_id                          AS cntry#country_id,
    v_rattyp.entity_id                        AS v_rattyp#entity_id,
    iaccent.entity_id                         AS iaccent#entity_id,
    eligpos.reorg_trade                       AS eligpos#reorg_trade,
    v_rattyp.asset_type                       AS v_rattyp#asset_type,
    v_rattyp.account_id                       AS v_rattyp#account_id,
    v_rattyp.event_type                       AS v_rattyp#event_type,
    v_rattyp.exchange_id                      AS v_rattyp#exchange_id,
    exchng.exchange_id                        AS exchng#exchange_id,
    ast_typ.asset_type                        AS ast_typ#asset_type,
    evttype.event_type                        AS evttype#event_type,
    event.is_trade_blocking_active            AS event#is_trade_blocking_active,
    evttype.voluntary_indicator               AS evttype#voluntary_indicator
FROM
         ca_event_position eligpos
    INNER JOIN ca_event                    event ON ( eligpos.event_num = event.event_num )
    LEFT OUTER JOIN ca_event_position_account   iposacct ON ( eligpos.event_position_id = iposacct.event_position_id
                                                            AND ( iposacct.account_type_id = 1 ) )
    LEFT OUTER JOIN ca_currency                 bookcurr ON ( eligpos.book_cost_currency_id = bookcurr.currency_id )
    INNER JOIN v_ca_pos_deposited_states   optdept ON ( eligpos.event_position_id = optdept.position_id )
    LEFT OUTER JOIN ca_ref_price_type           pricetyp ON ( eligpos.price_type = pricetyp.name )
    LEFT OUTER JOIN ca_ref_position_type        pos_type ON ( eligpos.position_type_id = pos_type.position_type_id )
    LEFT OUTER JOIN v_ca_pos_buya_quantity_sum  buyaquan ON ( eligpos.event_position_id = buyaquan.event_position_id )
    LEFT OUTER JOIN ca_currency                 entlcurr ON ( eligpos.entl_currency_id = entlcurr.currency_id )
    LEFT OUTER JOIN v_ca_pos_slle_quantity_sum  sllequan ON ( eligpos.event_position_id = sllequan.event_position_id )
    LEFT OUTER JOIN v_ca_pos_vote_count         vote ON ( eligpos.event_position_id = vote.event_position_id )
    LEFT OUTER JOIN ca_event_position_account   sposacct ON ( eligpos.event_position_id = sposacct.event_position_id
                                                            AND ( sposacct.account_type_id = 5 ) )
    INNER JOIN v_ca_pos_election_sum       elected ON ( eligpos.event_position_id = elected.position_id )
    LEFT OUTER JOIN ca_ref_pos_tx_type          tx_type ON ( eligpos.tx_type_id = tx_type.tx_type_id )
    LEFT OUTER JOIN v_ca_pos_fx_rate_type       v_rattyp ON ( eligpos.event_position_id = v_rattyp.event_position_id )
    LEFT OUTER JOIN ca_event_position_account   cntposac ON ( eligpos.event_position_id = cntposac.event_position_id
                                                            AND ( cntposac.account_type_id = 3 ) )
    LEFT OUTER JOIN ca_event_position_account   cposacct ON ( eligpos.event_position_id = cposacct.event_position_id
                                                            AND ( cposacct.account_type_id = 2 ) )
    LEFT OUTER JOIN tpm_ref_asset_listing       ast_lst ON ( event.listing_id = ast_lst.listing_id )
    LEFT OUTER JOIN tlm_account                 cntacc ON ( cntposac.account_id = cntacc.account_id )
    LEFT OUTER JOIN tpm_ref_exchange            exchng ON ( ast_lst.exchange_id = exchng.exchange_id )
    LEFT OUTER JOIN tlm_account                 intac ON ( iposacct.account_id = intac.account_id
                                           AND ( intac.account_type_id = 1 ) )
    INNER JOIN ca_event_type               evttype ON ( event.event_type = evttype.event_type )
    LEFT OUTER JOIN tpm_ref_mic                 mic ON ( exchng.mic_id = mic.mic_id )
    LEFT OUTER JOIN tlm_account                 servac ON ( sposacct.account_id = servac.account_id )
    LEFT OUTER JOIN tlm_account                 custac ON ( cposacct.account_id = custac.account_id )
    LEFT OUTER JOIN tpm_ref_asset               asset ON ( ast_lst.asset_id = asset.asset_id )
    LEFT OUTER JOIN tlm_entity_account          entacct ON ( intac.account_id = entacct.account_id )
    LEFT OUTER JOIN tpm_ref_country             cntry ON ( mic.country_id = cntry.country_id )
    LEFT OUTER JOIN tpm_ref_asset_type          ast_typ ON ( asset.asset_type = ast_typ.asset_type )
    LEFT OUTER JOIN v_active_entities           iaccent ON ( entacct.entity_id = iaccent.entity_id )
    LEFT OUTER JOIN tlm_entity_meta_data        ientmeta ON ( iaccent.name = ientmeta.entity_reference )
WHERE
    (
            event.event_num = 1927551
        AND ( pos_type.display_flag = 1
              OR tx_type.display_flag = 1
                 OR eligpos.is_swift_load = 1
                    OR ( eligpos.is_swift_load = 5
                         AND evttype.meeting_indicator = 1 ) )
    ) ;
	


-- find underlying table , column values by passing schema name

SELECT 
 distinct(a.attribute_id) AS ATTRIBUTE_ID, 
 a.object_id AS OBJECT_ID, 
 s.attribute AS COLUMN_NAME,
 en.entity AS ENTITY,
 os.property_value AS UNIVERSE_ID,
 e.english AS UNIVERSE_NAME,
 e2.english AS ATTRIBUTE_NAME ,
 --ASh.property_id AS ATT_PROPERTY,
 ASh.property_value AS ATT_PROPERTY_VALUE
FROM 
 zs_attribute a, 
 zs_attribute_sheet ASh,
 zs_db_schema s,
 zs_object o, 
 zs_object_sheet os, 
 zs_entity en,
 emsg e,
 emsg e2
WHERE 
 a.db_schema_id = s.db_schema_id
 AND a.attribute_id = ASh.attribute_id
 AND a.object_id = o.object_id
 AND o.object_id = os.object_id
 AND en.entity_id = s.entity_id
 AND o.emsg_id = e.id
 AND a.emsg_id = e2.id
 --AND s.attribute = 'RESULT_LISTING_ID'
 -- AND a.attribute_id in (81601617)
 AND ( e2.english = 'Identification of Security'  
  OR e2.english = 'Identification of Secmove Security' )
--  OR e2.english = 'Cash Consideration' )
 --AND os.property_value in (81400122)  -- Universe Id
 AND os.property_id = 4
 --AND a.object_id = 81600044
 --AND ASh.property_id = 36
 --AND ASh.property_value = 81402111
 --AND a.attribute_id = ASh.property_value
 --AND e.english like '%User Details%'    -- Universe Name
 --AND e2.english like '%ode Ind%'  -- Attribute Name
ORDER BY ATTRIBUTE_NAME;


-------- to find how many outcomes are available for specific event type -------
SELECT
    ce.event_num,
    COUNT(cet.entitlement_id)
FROM
    ca_event                ce,
    ca_entitlement          cet,
    ca_entitlement_result  cer
WHERE
        ce.event_type = 30
    AND ce.event_num = cet.event_num
    AND cet.entitlement_id = cer.entitlement_id
GROUP BY
    ce.event_num;
    

--------------- entitlement formula for a specific event type ------------	
SELECT
    et.event_type_name,
    et.short_name,
    o.country_id,
--oc.outcome_calc_id,oc.decision_set_id,
    ds.name AS decision_set,
    oe.entitlement_name,
    oe.transaction_type_code,
    oe.sub_transaction_type_code,
    oe.delivery_receipt,
    oe.asset_evaluator_type,
    f.name
FROM
    ca_event_type               et,
    ca_cfg_outcome              o,
    ca_cfg_outcome_calc         oc,
    ca_cfg_outcome_entitlement  oe,
    ca_decision_set_header      ds,
    ca_cfg_formula              f
WHERE
        et.event_type = o.event_type
    AND o.outcome_id = oc.outcome_id
        AND oc.outcome_calc_id = oe.outcome_calc_id
            AND oc.decision_set_id = ds.decision_set_id
-- AND oc.decision_set_id=11771 --- BCAS
                AND oe.formula_id = f.formula_id
-- AND oe.TRANSACTION_TYPE_CODE = 'BCAS'
-- AND ds.name = 'APTP-BuySell Credit Sec First Term with Cash Cons'
                    AND et.event_type = 30 -- from CA_EVENT_TYPE;
                    ;



CA_EVENT_POSITION_AUDIT
CA_ELECTION_AUDIT
CA_ENTITLE_AUDIT
CA_ENTITLE_RES_AUDIT
CA_EVENT_AUDIT
CA_EVENT_MEETING_AGENDA_AUDIT
CA_EVENT_POSITION_AUDIT
CA_EVENT_RESOL_RESP_AUDIT
CA_MASTER_REC_REQ_AUDIT
CA_OPTION_REASSIGN_AUDIT
CA_POSTING_AUDIT
CA_POS_MILESTONES_AUDIT
CA_RESOLUTION_VOTE_AUDIT
CA_RESPONSIBLE_PARTY_AUDIT
CA_RESP_PARTY_CFG_AUDIT


----- update new swift format use date--

UPDATE CA_CFG_SWIFT_STD_RELEASE SET START_DATE = TO_DATE('30/11/2020 01:01:01 AM','DD/MM/YYYY HH:MI:SS AM') WHERE YEAR = 2020;


---- Communication decode ------

SELECT zd.*, e.CUSTOM
FROM ZS_DECODE zd, emsg e
WHERE zd.EMSG_ID = e.ID
-- AND zd.VALUE = '1000051'
AND zd.ATTRIBUTE_ID = 81410335;



---- monthly data load count ----

SELECT
    decode(feed_type, 0, 'Undefined', 1, 'Bloomberg',
           100, 'Ambiguous', 101, 'Unknown', 102,
           'Duplicate', 11, 'ISO20022', 12, 'ISO 20022 Meeting',
           2, 'Assets', 3, 'Accounts', 4,
           'Swift564', 5, 'Swift568', 6, 'Positions',
           7, 'Data Export', 8, 'Mail Message', 9,
           'Swift','Unknown') Feed type,
    SUM(mm.records)
FROM
    tlm_mb_feeds     mbf
    LEFT JOIN tlm_mb_messages  mm ON mbf.feed_id = mm.feed_id
WHERE
    trunc(mbf.RECEIVE_TS) BETWEEN '01-NOV-2020' AND '30-NOV-2020'
GROUP BY
    module_id,
    feed_type;





---------------------- Entity for user --------------------

select TEA.ACCOUNT_ID,TE.Active_Status,TE.Child_entity_flag,TE.Entity_id,TE.Entity_LEvel,TE.Entity_type_id
,TE.lookup_value,TE.Name,TE.Parent_entity_id,TE.updated_Timestamp,TE.user_id,TE.entity_type,TA.Account_id,
TA.Account_no,TA.Account_type_id,TA.Active_Status,TA.Sys_entry_date,TA.name,TA.Description,TA.BIC,TA.Auto_REL_Comm,
TA.Country_id,TA.Currency_id
from TLM_ENTITY_ACCOUNT TEA,tlm_entity TE ,tlm_account TA where TEA.entity_id = TE.entity_id
and TEA.ACCOUNT_ID=TA.ACCOUNT_ID
and TE. entity_id in (
select PARENT_ENTITY_ID from TLM_ENTITY where name like '%HOI%');

------------ if account not there for entity linked to user , then above sql will not give result .--------------

SELECT
    tea.account_id,    te.active_status,    te.child_entity_flag,    te.entity_id,    te.entity_level,    te.entity_type_id,    te.lookup_value,
    te.name,    te.parent_entity_id,    te.updated_timestamp,    te.user_id,    te.entity_type,    ta.account_id,    ta.account_no,    ta.account_type_id,    ta.active_status,    ta.sys_entry_date,    ta.name,    ta.description,    ta.bic,    ta.auto_rel_comm,    ta.country_id,
    ta.currency_id
FROM
    tlm_entity  te left join    tlm_entity_account          tea on     tea.entity_id = te.entity_id    LEFT join tlm_account         ta
    on tea.account_id = ta.account_id
    WHERE te.entity_id IN (       
	SELECT
            parent_entity_id
        FROM
            tlm_entity
        WHERE
            name LIKE '%YEN%'
    );
	
-------------- Account to entity link ------------------

SELECT
    tea.account_id,    te.active_status,    te.child_entity_flag,    te.entity_id,    te.entity_level,    te.entity_type_id,    te.lookup_value,
    te.name,    te.parent_entity_id,    te.updated_timestamp,    te.user_id,    te.entity_type,    ta.account_id,    ta.account_no,
    ta.account_type_id,    ta.active_status,    ta.sys_entry_date,    ta.name,    ta.description,    ta.bic,    ta.auto_rel_comm,    ta.country_id,
    ta.currency_id
FROM
    tlm_entity  te left join
    tlm_entity_account          tea on     tea.entity_id = te.entity_id
    LEFT join tlm_account         ta
    on tea.account_id = ta.account_id
    WHERE ta.account_id IN (
        SELECT
            account_id
        FROM
            tlm_account
        WHERE
            name LIKE '%863671%'
    );

SELECT
    ta.ACCOUNT_NO,
    ta.name,
    tat.name "Account Type",
    te.NAME "Entity"
  --        ta.ACCOUNT_ID
FROM
    tlm_account_type  tat right join
    tlm_account       ta on tat.account_type_id = ta.account_type_id
    left join TLM_ENTITY_ACCOUNT tea on  tea.ACCOUNT_ID=ta.ACCOUNT_ID left join
    tlm_entity te on  te.entity_id = tea.entity_id  
where ta.account_no='28044'
    ;
    
------ communication with account details ------------------

select * from ca_bdr_Communication cbc,tlm_Contact_list_entry tcle,tlm_contact tc,tlm_cfg_Account_Contact tcac,tlm_Account ta
where 
cbc.contact_list_id=tcle.contact_list_id 
and tcle.contact_id=tc.contact_id
and tcac.contact_id=tc.contact_id
and tcac.contact_id=tcle.contact_id
and ta.account_id=tcac.account_id
and cbc.COMMUNICATION_CORRELATION_ID in (31540,31507);


------------ Position reconciliation -------------------------

SELECT
    pos_rec.rec_date            AS pos_rec#rec_date,
    rec_link.source_type        AS rec_link#source_type,
    acc.name                    AS acc#name,
    acc.account_no              AS acc#account_no,
    pos.quantity                AS pos#quantity,
    pos_rec.rec_status          AS pos_rec#rec_status,
    rec_link.element_type       AS rec_link#element_type,
    rec_link.position_id        AS rec_link#position_id,
    rec_link.pos_rec_id         AS rec_link#pos_rec_id,
    rec_link.pos_rec_link_id    AS rec_link#pos_rec_link_id,
    pos.event_num               AS pos#event_num
FROM
    ca_event_pos_rec_link      rec_link
    LEFT OUTER JOIN ca_event_pos_rec           pos_rec ON ( rec_link.pos_rec_id = pos_rec.pos_rec_id )
    LEFT OUTER JOIN ca_event_position          pos ON ( rec_link.position_id = pos.event_position_id )
    LEFT OUTER JOIN ca_event_position_account  pos_acc ON ( pos.event_position_id = pos_acc.event_position_id
                                                           AND ( pos_acc.account_type_id = 2 ) )
    LEFT OUTER JOIN tlm_account                acc ON ( pos_acc.account_id = acc.account_id )
WHERE
    ( pos.event_num = 221521 )
	
	
----- Election reconciliation  ----------------------------------

SELECT
    rec_link.source_type         AS rec_link#source_type,
    acc.name                     AS acc#name,
    acc.account_no               AS acc#account_no,
    elec.option_sequence_num     AS elec#option_sequence_num,
    elec.confirmed_quantity      AS elec#confirmed_quantity,
    rec_link.element_type        AS rec_link#element_type,
    elec_rec.elec_rec_id         AS elec_rec#elec_rec_id,
    pos.event_num                AS pos#event_num,
    elec_rec.rec_date            AS elec_rec#rec_date,
    elec_rec.rec_status          AS elec_rec#rec_status,
    rec_link.elec_rec_link_id    AS rec_link#elec_rec_link_id
FROM
    ca_election_rec_link       rec_link
    LEFT OUTER JOIN ca_election_rec            elec_rec ON ( rec_link.elec_rec_id = elec_rec.elec_rec_id )
    LEFT OUTER JOIN ca_election                elec ON ( rec_link.election_id = elec.election_id )
    LEFT OUTER JOIN ca_event_position          pos ON ( elec.position_id = pos.event_position_id )
    LEFT OUTER JOIN ca_event_position_account  pos_acc ON ( pos.event_position_id = pos_acc.event_position_id
                                                           AND ( pos_acc.account_type_id = 2 ) )
    LEFT OUTER JOIN tlm_account                acc ON ( pos_acc.account_id = acc.account_id )
WHERE
    ( pos.event_num = 221521 )

------------- Entitlement RECONCILATION ------------------

SELECT
    etresrec.rec_date               AS etresrec#rec_date,
    etresrec.rec_status             AS etresrec#rec_status,
    resrecon.source_type            AS resrecon#source_type,
    account.name                    AS account#name,
    account.account_no              AS account#account_no,
    entrecon.option_sequence_num    AS entrecon#option_sequence_num,
    etresrec.term_sequence_num      AS etresrec#term_sequence_num,
    entresul.amount_qualifier       AS entresul#amount_qualifier,
    currency.currency_code          AS currency#currency_code,
    entresul.result_quantity        AS entresul#result_quantity,
    resrecon.element_type           AS resrecon#element_type,
    entrecon.rec_type               AS entrecon#rec_type,
    etresrec.rec_reason             AS etresrec#rec_reason,
    etresrec.res_rec_id             AS etresrec#res_rec_id,
    resrecon.res_rec_link_id        AS resrecon#res_rec_link_id
FROM
         ca_ent_result_rec_link resrecon
    INNER JOIN ca_entitlement_result  entresul ON ( resrecon.result_id = entresul.result_id )
    INNER JOIN ca_ent_result_rec      etresrec ON ( resrecon.res_rec_id = etresrec.res_rec_id )
    INNER JOIN ca_entitlement_rec     entrecon ON ( etresrec.ent_rec_id = entrecon.ent_rec_id )
    INNER JOIN ca_entitlement         entitlem ON ( entresul.entitlement_id = entitlem.entitlement_id )
    INNER JOIN tlm_account            account ON ( entrecon.custodian_acc_id = account.account_id )
    LEFT OUTER JOIN ca_currency            currency ON ( entresul.currency_id = currency.currency_id )
WHERE
    ( entrecon.event_num = 221521 )
	

--------------------------- FAX failure fild -------------------------

select cbc.event_num, cbcp.*
from CA_BDR_COMMUNICATION cbc, CA_BDR_COMMUNICATION_PARAMETER cbcp, CA_CFG_COMMUNICATION cfc, CA_EVENT ce
where cbc.COMMUNICATION_CORRELATION_ID = cbcp.COMMUNICATION_CORRELATION_ID
and cbcp.PARAM_TYPE_ID = 6    --- communication id
and cbcp.INTEGER_VALUE = cfc.communication_id
and cfc.DELIVERY_TYPE_ID = 3  --- communications setup with delivery type as FAX
and cbc.event_num = ce.event_num
and ce.listing_id in ( select listing_id
                       from TLM_REF_ASSET_LST_EXT_TYPE_LNK
                       where asset_ext_id = '<ISIN from unsuccessful/nak alert>'
                       and ASSET_EXT_ID_TYPE = 1 )

SELECT
    cbc.event_num,
    cbcp.*
FROM
    ca_bdr_communication            cbc,
    ca_bdr_communication_parameter  cbcp,
    ca_cfg_communication            cfc,
    ca_event                        ce
WHERE
        cbc.communication_correlation_id = cbcp.communication_correlation_id
    AND cbcp.param_type_id = 6    --- communication id
    AND cbcp.integer_value = cfc.communication_id
    AND cfc.delivery_type_id = 3  --- communications setup with delivery type as FAX 
    AND cbc.event_num = ce.event_num
    AND ce.listing_id IN (
        SELECT
            listing_id
        FROM
            tlm_ref_asset_lst_ext_type_lnk
        WHERE
                asset_ext_id = 'GB00BH4HKS39'
            AND asset_ext_id_type = 1
    )
	

-- Sequence D field 22F::ADDB/CAPA is not allowed for REPL message.', Swift Error code=E09'

In sequence A field :25D::PROC the code ENTL is not present, then in sequence D in field :22F::ADDB, the code CAPA is not allowed', Swift Error code=E22'}

select ADD_BUSINESS_PROCESS_IND from CA_EVENT_DETAILS wHERE event_num in ( 401126,397024);

--- fix Swift Error Code 22…. 
UPDATE CA_EVENT_DETAILS
-- SET ADD_BUSINESS_PROCESS_IND = 272 --- original value
SET ADD_BUSINESS_PROCESS_IND = ''
wHERE event_num = 198652


Error Message =Only one of the fields :92A::TAXR,:92F::TAXR and :92K::TAXR may be present.', Swift Error code=E77'}

--To fix this we need to run the below. I will send an email to AIA for approval.
select TAXR_RATE_CODE,TAXR_FIRST_CURRENCY,TAXR_FIRST_Amount from CA_EVENT_OPTION_TERM_RATE  Where event_num = 395370;

update CA_EVENT_OPTION_TERM_RATE
set TAXR_RATE_CODE = ''
, TAXR_FIRST_CURRENCY = ''
, TAXR_FIRST_Amount = ''
Where event_num = 349501
AND TAXR_FIRST_CURRENCY = -2147483648;




Details of C16.
“C16 If in all occurrences of sequence E, subsequence E1 and subsequence E2 are not present, then in sequence D field :98a::PAYD is optional, in all other cases, field :98a::PAYD, in sequence D, is not
allowed (Error code(s): E24).”

Plesae check AIA prod event 373917  . I am guessing the event might not have contained any Options( Block E) and  E2 Security movement, E1 Cash movement.. 

ERROR c.s.m.m.c.v.SwiftValidationServiceImpl - Error Message =Sequence D field 98a::PAYD is not allowed.', Swift Error code=E24'}

update ca_Event_date set PAYD_DT=null,PAYD_DATE_CODE=null,PAYD_DAY_TYPE=null,PAYD_FORMAT_TYPE=null,PAYD_DAYS_DIFF=null,PAYD_REFERENCE_DATE_ID=null 
where event_num=162909 ;
select PAYD_DT,PAYD_DATE_CODE,PAYD_DAY_TYPE,PAYD_FORMAT_TYPE,PAYD_DAYS_DIFF,PAYD_REFERENCE_DATE_ID from ca_Event_date where event_num in (162909 ,164895);


--------------- stuck in generating ---------------
they need to input the security ID to generate CANO messages.

-------------------------------------------------FIL user portal created by Marina.

User details are:
PORUSR3/PORUSR3


-------------------------------------------------- find table name 

select table_name from dba_tab_columns where column_name like '%%';


--------------------- Diary of events-------------------------------

select erl.event_num,erl.role_instance_id,diary.* from ca_bdr_event_role_link erl ,tlm_bdr_diary_role_link drl,tlm_diary diary
where erl.role_instance_id=drl.role_instance_id
and diary.diary_id=drl.diary_id
--and erl.event_num=771514
and diary.diary_id=4446284
;


------------------------- Stacking ----------------------------

SELECT
  CASE
    WHEN PASS_ID = 'pass1'
    THEN 'Reference Stacking'
    WHEN PASS_ID = 'pass2'
    THEN 'Business Rule Stacking'
    WHEN PASS_ID = 'pass3'
    THEN 'Cross Event Type Stacking'
    WHEN PASS_ID = 'pass4'
    THEN 'Stacking Pass'
    ELSE PASS_ID
  END      AS Pass Description,
  ENABLED  AS Active Status,
  NUM_DAYS AS Number of Days,
  CASE
    WHEN MESSAGE_TYPE = 1
    THEN 564
    WHEN MESSAGE_TYPE = 2
    THEN 568
    WHEN MESSAGE_TYPE = 4
    THEN 566
    ELSE MESSAGE_TYPE
  END AS Message Type
FROM CA_STACK_PASS_CONFIG
WHERE MESSAGE_TYPE IN (1,2,4,3)
ORDER BY MESSAGE_TYPE,
  PASS_ID

SELECT  
   CA_EVENT_TYPE.EVENT_TYPE_NAME AS EventType, 
  CA_EVENT_TYPE.SHORT_NAME      AS EventTypeISOCode, 
  TPM_REF_ASSET_TYPE.NAME       AS AssetType, 
  TPM_REF_COUNTRY.NAME          AS Country, 
  TPM_REF_EXCHANGE.NAME         AS Market, 
  CA_STACK_MAIN_CONFIG.RANKING  AS Rank, 
  MINIMUM_VALUE                 AS MinimumOptionalAttributes, 
  e2.english                  AS AttributeLevel, 
  e1.english                  AS SelectedAttribute, 
  MANDATORY                     AS Mandatory, 
  CASE 
    WHEN RANGE_INDICATOR = 'NIL' 
    THEN 'None' 
    WHEN RANGE_INDICATOR = 'VAL' 
    THEN 'Absolute discrete or date value' 
    WHEN RANGE_INDICATOR = 'PCT' 
    THEN 'Percentage' 
    ELSE RANGE_INDICATOR 
  END AS RangeType, 
  RANGE_MIN AS RangeMinimum, 
  RANGE_MAX AS RangeMaximum 
FROM CA_STACK_MAIN_CONFIG, 
  CA_STACK_CONFIG, 
  CA_EVENT_TYPE, 
  TPM_REF_ASSET_TYPE, 
  TPM_REF_COUNTRY, 
  TPM_REF_EXCHANGE, 
  zs_attribute, 
  zs_object, 
  emsg e1,  
  emsg e2 
WHERE CA_STACK_CONFIG.ID          = CA_STACK_MAIN_CONFIG.ID 
AND CA_EVENT_TYPE.EVENT_TYPE      = CA_STACK_MAIN_CONFIG.EVENT_TYPE 
AND TPM_REF_ASSET_TYPE.ASSET_TYPE = CA_STACK_MAIN_CONFIG.ASSET_TYPE 
AND TPM_REF_COUNTRY.COUNTRY_ID    = CA_STACK_MAIN_CONFIG.COUNTRY_ID 
AND TPM_REF_EXCHANGE.EXCHANGE_ID  = CA_STACK_MAIN_CONFIG.EXCHANGE_ID 
AND zs_attribute.attribute_id     = CA_STACK_CONFIG.ATTRIBUTE_ID 
AND e1.id                       = zs_attribute.emsg_id 
AND zs_attribute.object_id = zs_object.object_id 
AND e2.id = zs_object.emsg_id 
ORDER BY CA_STACK_MAIN_CONFIG.ID;







[12:16 AM] Gopala Yechuri
    --- Diary TYPE, KEY config, decision SET AND underlying rules
 select t.EVENT_TYPE_NAME, dtc.subject as Task_Subject, dc.lookup_value as CATEGORY, dt.lookup_value as TASK, e.custom as start_date,
dtc.start_date_offset, e1.custom as end_date,dtc.end_date_offset,dsh.name as decision_set,  rh.rule_name
from CA_CFG_DIARY_TASK dtc
join CA_CFG_DIARY_TASK_EVENT dte ON dtc.DIARY_TASK_EVENT_ID = dte.DIARY_TASK_EVENT_ID
join CA_EVENT_TYPE t ON dte.EVENT_TYPE = t.EVENT_TYPE
join TLM_REF_DIARY_TYPE dt ON dtc.TASK_CATEGORY_ID = dt.diary_category_id
join TLM_REF_DIARY_CATEGORY dc ON dt.diary_category_id = dc.diary_category_id
join zs_attribute a ON a.attribute_id=dtc.start_date_attribute_id
join zs_attribute a1 ON a1.attribute_id=dtc.end_date_attribute_id
join emsg e ON e.id=a.emsg_id
join emsg e1 ON e1.id=a1.emsg_id
 left outer join ca_cfg_diary_decision_set dds on dt.diary_type_id = dds.diary_type_id
left outer join  ca_decision_set_header dsh on dds.decision_set_id=dsh.decision_set_id
left outer join CA_DECISION_SET_DETAIL dd on dd.decision_set_id=dsh.decision_set_id
left outer join object_list ob on dd.rule_id=ob.object_list_id
left outer join rule_header rh on  ob.id=rh.rule_id
order by t.event_type_name, dt.diary_category_id
------------------

----------------------------- find param_type_id ------------------------------

select * from ca_bdr_communication_parameter cbcp left join tlm_mb_ref_param_type tmrpt on 
cbcp.param_type_id=tmrpt.param_type_id
where
tmrpt.name='Event Number' and cbcp.integer_value=33684;

-----------------------------------------------------------------------------------

order of deploying war files

birt.war
Webconnect.war
tlm-rap.war
tlm-services.war
CASHelp.war
tcengine.war




https://daiwa-cas-test.tlmondemand.com:8443/tlm-services/idp/change-password-page?username=CASUSER&resetToken=eXiYc6epwC_pBvglq66FI4piHNlVPVj2-dBTIWkT8DySaVQaBrNlPNCIRjTYx0oLRqlcl3LmInl9clSwJGLutQ== 

------------- XD-1 -----------------------

SELECT DISTINCT
    asset.description                AS asset#description,
    lst_cst1.asset_ext_id            AS lst_cst1#asset_ext_id,
    type.event_type_name             AS type#event_type_name,
    cadate.xdte_dt                   AS cadate#xdte_dt,
    cadate.xdte_date_code            AS cadate#xdte_date_code,
    cadate.xdte_reference_date_id    AS cadate#xdte_reference_date_id,
    cadate.xdte_days_diff            AS cadate#xdte_days_diff,
    cadate.xdte_day_type             AS cadate#xdte_day_type,
    cadate.xdte_format_type          AS cadate#xdte_format_type,
    cadate.xdte_display              AS cadate#xdte_display,
    cadate.xdte_timezone             AS cadate#xdte_timezone,
    cadate.rdte_dt                   AS cadate#rdte_dt,
    cadate.rdte_date_code            AS cadate#rdte_date_code,
    cadate.rdte_reference_date_id    AS cadate#rdte_reference_date_id,
    cadate.rdte_days_diff            AS cadate#rdte_days_diff,
    cadate.rdte_day_type             AS cadate#rdte_day_type,
    cadate.rdte_format_type          AS cadate#rdte_format_type,
    cadate.rdte_display              AS cadate#rdte_display,
    cadate.rdte_timezone             AS cadate#rdte_timezone,
    cadate.payd_dt                   AS cadate#payd_dt,
    cadate.payd_reference_date_id    AS cadate#payd_reference_date_id,
    cadate.payd_date_code            AS cadate#payd_date_code,
    cadate.payd_day_type             AS cadate#payd_day_type,
    cadate.payd_days_diff            AS cadate#payd_days_diff,
    cadate.payd_format_type          AS cadate#payd_format_type,
    cadate.payd_display              AS cadate#payd_display,
    cadate.payd_timezone             AS cadate#payd_timezone,
    cashocur.currency_code           AS cashocur#currency_code,
    cashoptr.grss_first_amount       AS cashoptr#grss_first_amount,
    rate.nett_first_currency         AS rate#nett_first_currency,
    rate.nett_format_type            AS rate#nett_format_type,
    rate.nett_first_amount           AS rate#nett_first_amount,
    rate.nett_display                AS rate#nett_display,
    rate.nett_rate_code              AS rate#nett_rate_code,
    cashoptr.nett_first_amount       AS cashoptr#nett_first_amount,
    rate.adex_first_currency         AS rate#adex_first_currency,
    rate.adex_display                AS rate#adex_display,
    rate.adex_format_type            AS rate#adex_format_type,
    rate.adex_first_quantity         AS rate#adex_first_quantity,
    rate.adex_second_quantity        AS rate#adex_second_quantity,
    rate.adex_first_amount           AS rate#adex_first_amount,
    rate.adex_second_currency        AS rate#adex_second_currency,
    rate.adex_second_amount          AS rate#adex_second_amount,
    rate.adex_rate_code              AS rate#adex_rate_code,
    rate.newo_first_currency         AS rate#newo_first_currency,
    rate.newo_first_amount           AS rate#newo_first_amount,
    rate.newo_second_currency        AS rate#newo_second_currency,
    rate.newo_second_quantity        AS rate#newo_second_quantity,
    rate.newo_first_quantity         AS rate#newo_first_quantity,
    rate.newo_display                AS rate#newo_display,
    rate.newo_format_type            AS rate#newo_format_type,
    rate.newo_second_amount          AS rate#newo_second_amount,
    rate.newo_rate_code              AS rate#newo_rate_code,
    cadate.due_bill_on_dt            AS cadate#due_bill_on_dt,
    cadate.due_bill_off_dt           AS cadate#due_bill_off_dt,
    asstype.name                     AS asstype#name,
    rate.char_rate                   AS rate#char_rate,
    rate.char_first_currency         AS rate#char_first_currency,
    rate.char_display                AS rate#char_display,
    rate.char_format_type            AS rate#char_format_type,
    rate.char_first_amount           AS rate#char_first_amount,
    rate.char_rate_code              AS rate#char_rate_code,
    lst_sedo.asset_ext_id            AS lst_sedo#asset_ext_id,
    lst_cusi.asset_ext_id            AS lst_cusi#asset_ext_id,
    lst_isin.asset_ext_id            AS lst_isin#asset_ext_id,
    event.event_num                  AS event#event_num,
    event.listing_id                 AS event#listing_id,
    event.master_id                  AS event#master_id,
    event.soft_lock_key              AS event#soft_lock_key
FROM
         ca_event event
    INNER JOIN ca_event_type                   type ON ( event.event_type = type.event_type )
    LEFT OUTER JOIN ca_event_date                   cadate ON ( event.event_num = cadate.event_num )
    LEFT OUTER JOIN ca_event_rate                   rate ON ( event.event_num = rate.event_num )
    LEFT OUTER JOIN ca_event_extra_fields           extras ON ( event.event_num = extras.event_num )
    LEFT OUTER JOIN tpm_ref_asset_listing           listing ON ( event.listing_id = listing.listing_id )
    LEFT OUTER JOIN v_ca_first_option_by_type       cashoptj ON ( event.event_num = cashoptj.event_num
                                                            AND ( cashoptj.option_code_ind = 206 ) )
    LEFT OUTER JOIN tlm_ref_asset_lst_ext_type_lnk  lst_cusi ON ( listing.listing_id = lst_cusi.listing_id
                                                                 AND ( lst_cusi.asset_ext_id_type = 2 ) )
    LEFT OUTER JOIN tlm_ref_asset_lst_ext_type_lnk  lst_cst1 ON ( listing.listing_id = lst_cst1.listing_id
                                                                 AND ( lst_cst1.asset_ext_id_type = 5 ) )
    LEFT OUTER JOIN ca_event_option                 cashopt1 ON ( cashoptj.lowest_sequence_num = cashopt1.option_sequence_num
                                                  AND cashoptj.event_num = cashopt1.event_num )
    LEFT OUTER JOIN ca_currency                     cashocur ON ( cashopt1.currency_option = cashocur.currency_id )
    LEFT OUTER JOIN tpm_ref_asset                   asset ON ( listing.asset_id = asset.asset_id )
    LEFT OUTER JOIN tlm_ref_asset_lst_ext_type_lnk  lst_isin ON ( listing.listing_id = lst_isin.listing_id
                                                                 AND ( lst_isin.asset_ext_id_type = 1 ) )
    LEFT OUTER JOIN tlm_ref_asset_lst_ext_type_lnk  lst_sedo ON ( listing.listing_id = lst_sedo.listing_id
                                                                 AND ( lst_sedo.asset_ext_id_type = 4 ) )
    LEFT OUTER JOIN ca_event_option_rate            cashoptr ON ( cashopt1.option_sequence_num = cashoptr.option_sequence_num
                                                       AND cashopt1.event_num = cashoptr.event_num )
    LEFT OUTER JOIN tpm_ref_asset_type              asstype ON ( asset.asset_type = asstype.asset_type )
WHERE ( ( cadate.xdte_dt - 1 >= trunc(sysdate)  AND CADate.XDTE_DT -2 <     trunc(sysdate)
AND ( event.event_type = 24
      OR event.event_type = 30
         OR event.event_type = 34
            OR event.event_type = 35
               OR event.event_type = 36
                  OR event.event_type = 85
                     OR event.event_type = 86
                        OR event.event_type = 87 )
    AND event.record_type = 1 )
AND ( ( ( extras.string_01 = 'AIA-HK' ) )
      OR ( ( extras.string_01 = 'AIA-IM' ) )
         OR ( ( extras.string_01 = 'AIA-HK' ) )
            OR ( ( extras.string_01 = 'AIA-IM' ) )
               OR ( ( extras.string_01 = 'AIA-HK' ) )
                  OR ( ( extras.string_01 = 'AIA-IM' ) )
                     OR ( ( extras.string_01 = 'AIA-IM' ) )
                        OR ( ( extras.string_01 = 'AIA-IM' ) ) ) )


------------------------ Ex-1 Exception report -----------------------------


SELECT
    event.grss_display            AS event#grss_display,
    event.grss_first_currency     AS event#grss_first_currency,
    event.grss_first_amount       AS event#grss_first_amount,
    event.grss_format_type        AS event#grss_format_type,
    optind.pay_type               AS optind#pay_type,
    event.char_display            AS event#char_display,
    event.char_first_currency     AS event#char_first_currency,
    event.char_first_amount       AS event#char_first_amount,
    event.char_rate               AS event#char_rate,
    event.char_format_type        AS event#char_format_type,
    asset.description             AS asset#description,
    secidcus.asset_ext_id         AS secidcus#asset_ext_id,
    evtype.event_type_name        AS evtype#event_type_name,
    event.listing_id              AS event#listing_id,
    event.xdte_dt                 AS event#xdte_dt,
    event.payd_dt                 AS event#payd_dt,
    event.rdte_dt                 AS event#rdte_dt,
    event.nett_first_currency     AS event#nett_first_currency,
    event.nett_first_amount       AS event#nett_first_amount,
    event.nett_format_type        AS event#nett_format_type,
    event.nett_display            AS event#nett_display,
    event.adex_first_currency     AS event#adex_first_currency,
    event.adex_first_amount       AS event#adex_first_amount,
    event.adex_second_currency    AS event#adex_second_currency,
    event.adex_second_amount      AS event#adex_second_amount,
    event.adex_first_quantity     AS event#adex_first_quantity,
    event.adex_second_quantity    AS event#adex_second_quantity,
    event.adex_format_type        AS event#adex_format_type,
    event.adex_display            AS event#adex_display,
    event.newo_first_currency     AS event#newo_first_currency,
    event.newo_first_amount       AS event#newo_first_amount,
    event.newo_second_currency    AS event#newo_second_currency,
    event.newo_second_amount      AS event#newo_second_amount,
    event.newo_first_quantity     AS event#newo_first_quantity,
    event.newo_second_quantity    AS event#newo_second_quantity,
    event.newo_format_type        AS event#newo_format_type,
    event.newo_display            AS event#newo_display,
    sedol.asset_ext_id            AS sedol#asset_ext_id,
    cusip.asset_ext_id            AS cusip#asset_ext_id,
    isin.asset_ext_id             AS isin#asset_ext_id,
    details.dividend_type_ind     AS details#dividend_type_ind,
    event.event_num               AS event#event_num,
    event.master_id               AS event#master_id
FROM
         v_cas_div_report_fields event
    INNER JOIN ca_event_type                   evtype ON ( event.event_type = evtype.event_type )
    INNER JOIN ca_event_message_detail         msgdet ON ( event.event_num = msgdet.event_num )
    INNER JOIN tpm_ref_asset_listing           listing ON ( event.listing_id = listing.listing_id )
    LEFT OUTER JOIN v_cas_option_ind                optind ON ( event.event_num = optind.event_num )
    LEFT OUTER JOIN ca_event_details                details ON ( event.event_num = details.event_num )
    LEFT OUTER JOIN tlm_ref_asset_lst_ext_type_lnk  cusip ON ( listing.listing_id = cusip.listing_id
                                                              AND ( cusip.asset_ext_id_type = 2 ) )
    INNER JOIN tpm_ref_asset                   asset ON ( listing.asset_id = asset.asset_id )
    INNER JOIN tpm_ref_asset_type              assettyp ON ( asset.asset_type = assettyp.asset_type )
    LEFT OUTER JOIN tlm_ref_asset_lst_ext_type_lnk  isin ON ( listing.listing_id = isin.listing_id
                                                             AND ( isin.asset_ext_id_type = 1 ) )
    LEFT OUTER JOIN tlm_ref_asset_lst_ext_type_lnk  secidcus ON ( listing.listing_id = secidcus.listing_id
                                                                 AND ( secidcus.asset_ext_id_type = 5 ) )
    LEFT OUTER JOIN tlm_ref_asset_lst_ext_type_lnk  sedol ON ( listing.listing_id = sedol.listing_id
                                                              AND ( sedol.asset_ext_id_type = 4 ) )
WHERE ( event.xdte_dt - 1 >= trunc(sysdate) AND Event.XDTE_DT -2 <  trunc(sysdate)
AND ( event.event_type = 24
      OR event.event_type = 30
         OR event.event_type = 34
            OR event.event_type = 35
               OR event.event_type = 36
                  OR event.event_type = 85
                     OR event.event_type = 86
                        OR event.event_type = 87
                           OR event.event_type = 5
                              OR event.event_type = 38 )
    AND event.record_type = 1
        AND ( event.approval_status <> 1000010
              OR event.approval_status <> 1000013
                 OR event.approval_status <> 1000011
                    OR event.approval_status <> 1000015
                       OR event.approval_status <> 1000014 ) )
					   

----------- find table name using colu --------------

select OWNER,TABLE_NAME,COLUMN_NAME from all_tab_columns where column_name = 'UNIVERSE_ID';



--------------- process and workflow -------------------

select * from process p ,workflow_tool w where p.name=w.name;


--------- FULL Table scan ------------------------

SELECT   sp.object_owner, sp.object_name,
         (SELECT sql_text
            FROM v$sqlarea sa
           WHERE sa.address = sp.address
             AND sa.hash_value = sp.hash_value) sqltext,
         (SELECT executions
            FROM v$sqlarea sa
           WHERE sa.address = sp.address
             AND sa.hash_value = sp.hash_value) no_of_full_scans,
         (SELECT    LPAD (NVL (TRIM (TO_CHAR (num_rows)), ' '),
                          15,
                          ' '
                         )
                 || ' | '
                 || LPAD (NVL (TRIM (TO_CHAR (blocks)), ' '), 15, ' ')
                 || ' | '
                 || BUFFER_POOL
            FROM dba_tables
           WHERE table_name = sp.object_name AND owner = sp.object_owner)
                                                           "rows|blocks|pool"
    FROM v$sql_plan sp
   WHERE operation = 'TABLE ACCESS'
     AND options = 'FULL'
     AND object_owner IN ('USERNAME')
ORDER BY 1, 2;




V_CA_MASTER_REC_REQ_AUDIT      approval
V_CA_MASTER_RECORD_REQUEST



-------------------- tables and its relations foreign keys---------------------------------------

select foreign_table.owner as table_schema_name,
       foreign_table.table_name, 
       foreign_table.column_name,
       constr.constraint_name,
       primary_table.owner as primary_table_schema_name,
       primary_table.table_name as primary_table_name,  
       primary_table.column_name  as primary_table_column,
       foreign_table.table_name || '.' || 
         foreign_table.column_name || ' = ' || 
         primary_table.table_name  || '.' || 
         primary_table.column_name as join_condition
  from all_constraints constr 
       inner join all_cons_columns foreign_table
           on foreign_table.owner = constr.owner
          and foreign_table.constraint_name = constr.constraint_name
       inner join all_cons_columns primary_table 
           on primary_table.constraint_name = constr.r_constraint_name
          and primary_table.owner = constr.r_owner
          and primary_table.position = foreign_table.position
 where constr.r_owner not in ('ANONYMOUS','CTXSYS','DBSNMP','EXFSYS',
 'LBACSYS', 'MDSYS','MGMT_VIEW','OLAPSYS','OWBSYS','ORDPLUGINS',
 'ORDSYS','OUTLN', 'SI_INFORMTN_SCHEMA','SYS','SYSMAN','SYSTEM',
 'TSMSYS','WK_TEST','WKSYS', 'WKPROXY','WMSYS','XDB','APEX_040000',
 'APEX_PUBLIC_USER','DIP', 'FLOWS_30000','FLOWS_FILES','MDDATA',
 'ORACLE_OCM','SPATIAL_CSW_ADMIN_USR', 'SPATIAL_WFS_ADMIN_USR',
 'XS$NULL','PUBLIC')
   -- and constr.r_owner = 'HR'
   and lower(foreign_table.table_name) like '%'   
 order by foreign_table.table_name,
       foreign_table.column_name;
	   
	   
2. Views with their definition script and comments


select obj.owner as schema_name,
       obj.object_name as view_name,
       obj.created,
       obj.last_ddl_time as last_modified,
       def.text as definition,
       comm.comments
  from all_objects obj
       left outer join all_views def
           on obj.owner = def.owner
          and obj.object_name = def.view_name
       left outer join all_tab_comments comm
           on obj.object_name = comm.table_name
          and obj.owner = comm.owner
 where obj.object_type = 'VIEW'
   and obj.owner  in ('TLM_DBO')
     --and obj.owner = 'HR'
 order by obj.owner, 
        obj.object_name;
		
		
----------- chaos fil ----------		
SELECT DISTINCT
    parent.entity_id,
    parent.left_val
FROM
         v_active_entities entity
    INNER JOIN tlm_bdr_entity_in_role  eir ON ( eir.entity_id = entity.entity_id )
    INNER JOIN tlm_ref_role            role ON ( role.role_id = eir.role_id )
    INNER JOIN v_active_entities       parent ON ( entity.parent_entity_id = parent.entity_id )
WHERE
        role.role_name = 'Position Owner'
    AND entity.user_id = 'PORUSR3'
ORDER BY
    parent.left_val;		
		
		
		
--------------------------- Statspack ------------------ AWR

    SELECT SNAP_ID, SNAP_TIME FROM STATS$SNAPSHOT ORDER BY 1 desc;

    exec rdsadmin.rds_run_spreport(begin_snap,end_snap);

    Select rds

    Goto  logs

    In search type

    lst


--------- displays plan----------------------

SELECT s.sql_id, p.*
FROM v$sql s, TABLE (
  dbms_xplan.display_cursor (
    s.sql_id, s.child_number, 'ALLSTATS LAST'
  )
) p
WHERE s.sql_id='4fzt0gjpnjm6m';

-------- SWAPNIL ----------  explain plan may change

explain plan for 
select * from usrr;
select * from table (DBMS_XPLAN.display());


auto trace is exution plan

set autotrace traceonly explain;    -> doenst show result but  plan and statistics
set autotrace on -> shows result and plan and statistics
set autotrace off;

plan may change due to bind variable


v$plan is actual plan used  - library cache

SELECT * FROM TABLE(DBMS_XPLAN.display_cursor(sql_id=>'d3z7q78jtgxm2');    - checking an ran plan . so it is execution plan (SWAPNIL prefered)
 
 
----------------------------


select * from process where name like '%minder%';
select * from PROCESS_STEP where process_id='8a8180db-6e6f-85d7-016e-6fa476a63573' ;
select * from expression where step_id='8a8180db-6e6f-85d7-016e-6fa476a735f7';


select * from ASSIGNMENT_STEP;
select * from SWITCH_STEP;
select * from SUBPROCESS_STEP;
select * from STORED_PROCEDURE_STEP;
select * from STEP_RENDERING_DETAILS;


select * from OUTPUT_STEP;
select * from JAVA_CODE_STEP;
select * from IF_STEP where id='8a8180db-6e6f-85d7-016e-6fa476a735d8';
select * from FOREACH_STEP;
select * from  ENTITY_STEP;


---------------------------------queries taking more than 5 minutes ---------------------------------------

select sid, serial#, username, to_char(sysdate-last_call_et/24/60/60,'hh24:mi:ss') started,
 trunc(last_call_et/60) || ' mins, ' || mod(last_call_et,60) ||
' secs' dur,
 (select sql_text from v$sql where address = sql_address ) sql_text
 from v$session
 where username is not null
 and last_call_et > 5*60
 and status = 'ACTIVE';
 
 ------------ user dashboard --------------------
 
 SeLeCt UD.user_id_long AS UD#USER_ID_LONG, UD.authority_id AS UD#AUTHORITY_ID, UDA.profile AS UDA#PROFILE, 
UD.first_names AS UD#FIRST_NAMES, UD.surname AS UD#SURNAME, UD.email_id AS UD#EMAIL_ID, UD.user_id AS UD#USER_ID FROM 
usrr UD INNER JOIN auth UDA  ON  ( UD.authority_id = UDA.user_id );


----- check bic length -------------

select FUNCTION_EID, FUNCTION_PARAM from  MMI_XMLMAPPING  where XPATH like '%/LogicalTerminalAddress%' and TARGET_FIELD_ NAME='sendersBICAddress'
select FUNCTION_EID,FUNCTION_PARAM  from MMI_XMLMAPPING  where XPATH like '%/LTIden%' and TARGET_FIELD_NAME='sendersBICAddress';
select MERGE_FUNCTION_EID from MMI_XMLMAPPING where XPATH like '%/BranchCode/text%' and TARGET_FIELD_NAME='sendersBICAddress';


--- MMI templates ------


    
MMI_TEMPLATE table
MMI_TEMPLATE_CONTENT 




---------- Assets dashboard --------------

SeLeCt Listing.ACTIVE_STATUS AS LISTING#ACTIVE_STATUS, Listing.ASSET_ID AS LISTING#ASSET_ID, ASSET.NAME AS ASSET#NAME, ASSET.ASSET_TYPE AS ASSET#ASSET_TYPE, Listing.CURRENCY_ID AS LISTING#CURRENCY_ID, Listing.SECURITY_OF_INTEREST AS LISTING#SECURITY_OF_INTEREST, Listing.ACTIVE_FLAG AS LISTING#ACTIVE_FLAG, Listing.LAST_UPDATE_DATE AS LISTING#LAST_UPDATE_DATE, INTERNAL.ASSET_EXT_ID AS INTERNAL#ASSET_EXT_ID, ISIN.ASSET_EXT_ID AS ISIN#ASSET_EXT_ID, SEDOL.ASSET_EXT_ID AS SEDOL#ASSET_EXT_ID, BLOOMB.ASSET_EXT_ID AS BLOOMB#ASSET_EXT_ID, CUSIP.ASSET_EXT_ID AS CUSIP#ASSET_EXT_ID, Listing.SETTLEMENT_COUNTRY_ISO_CODE AS LISTING#1436626810SETTLEMENT_C, ASSET.CURRENCY_ISO_CODE AS ASSET#CURRENCY_ISO_CODE, EXCHMIC.MIC AS EXCHMIC#MIC, EXCHMIC.COUNTRY_ID AS EXCHMIC#COUNTRY_ID, ASSETEXC.NAME AS ASSETEXC#NAME, ASSET.ISSUING_COUNTRY_ISO_CODE AS ASSET#ISSUING_COUNTRY_ISO_CODE, ASSISS.NAME AS ASSISS#NAME, ASSISS.DESCRIPTION AS ASSISS#DESCRIPTION, ASSISS.ISSUER_COUNTRY_ISO_CODE AS ASSISS#ISSUER_COUNTRY_ISO_CODE, MICCNTRY.NAME AS MICCNTRY#NAME, MICCNTRY.COUNTRY_CODE AS MICCNTRY#COUNTRY_CODE, Listing.EXCHANGE_ID AS LISTING#EXCHANGE_ID, Listing.LINK_ID AS LISTING#LINK_ID, Listing.LISTING_ID AS LISTING#LISTING_ID, Listing.STARTDATE AS LISTING#STARTDATE, Listing.UPDATED_BY AS LISTING#UPDATED_BY, Listing.UPDATED_TIMESTAMP AS LISTING#UPDATED_TIMESTAMP, MICCNTRY.ACTIVE_STATUS AS MICCNTRY#ACTIVE_STATUS, MICCNTRY.CALENDAR_ID AS MICCNTRY#CALENDAR_ID, MICCNTRY.COUNTRY_ID AS MICCNTRY#COUNTRY_ID, ASSETEXC.FULLNAME AS ASSETEXC#FULLNAME, ISIN.ID AS ISIN#ID, REFTYPE.LOOKUP_VALUE AS REFTYPE#LOOKUP_VALUE, ISIN.LISTING_ID AS ISIN#LISTING_ID, ASSETEXC.LOOKUP_VALUE AS ASSETEXC#LOOKUP_VALUE, EXCHMIC.ACTIVE_STATUS AS EXCHMIC#ACTIVE_STATUS, ASSETEXC.MIC_ID AS ASSETEXC#MIC_ID, Listing.SOFT_LOCK_KEY AS LISTING#SOFT_LOCK_KEY FROM TPM_REF_ASSET_LISTING Listing LEFT OUTER JOIN TLM_REF_ASSET_LST_EXT_TYPE_LNK ISIN  ON  ( Listing.LISTING_ID = ISIN.LISTING_ID AND ( ISIN.ASSET_EXT_ID_TYPE =1)  ) LEFT OUTER JOIN TPM_REF_EXCHANGE ASSETEXC  ON  ( Listing.EXCHANGE_ID = ASSETEXC.EXCHANGE_ID ) LEFT OUTER JOIN TPM_REF_ASSET ASSET  ON  ( Listing.ASSET_ID = ASSET.ASSET_ID ) LEFT OUTER JOIN TLM_REF_ASSET_LST_EXT_TYPE_LNK CUSIP  ON  ( Listing.LISTING_ID = CUSIP.LISTING_ID AND ( CUSIP.ASSET_EXT_ID_TYPE =2)  ) LEFT OUTER JOIN TLM_REF_ASSET_LST_EXT_TYPE_LNK BLOOMB  ON  ( Listing.LISTING_ID = BLOOMB.LISTING_ID AND ( BLOOMB.ASSET_EXT_ID_TYPE =3)  ) LEFT OUTER JOIN TLM_REF_ASSET_LST_EXT_TYPE_LNK SEDOL  ON  ( Listing.LISTING_ID = SEDOL.LISTING_ID AND ( SEDOL.ASSET_EXT_ID_TYPE =4)  ) LEFT OUTER JOIN TLM_REF_ASSET_LST_EXT_TYPE_LNK INTERNAL  ON  ( Listing.LISTING_ID = INTERNAL.LISTING_ID AND ( INTERNAL.ASSET_EXT_ID_TYPE =5)  ) LEFT OUTER JOIN TPM_REF_ASSET_EXT_ID_TYPE REFTYPE  ON  ( ISIN.ASSET_EXT_ID_TYPE = REFTYPE.ASSET_EXT_ID_TYPE ) LEFT OUTER JOIN TPM_REF_MIC EXCHMIC  ON  ( ASSETEXC.MIC_ID = EXCHMIC.MIC_ID ) LEFT OUTER JOIN TPM_REF_ASSET_ISSUER ASSISS  ON  ( ASSET.ASSET_ISSUER_ID = ASSISS.ASSET_ISSUER_ID ) LEFT OUTER JOIN TPM_REF_COUNTRY MICCNTRY  ON  ( EXCHMIC.COUNTRY_ID = MICCNTRY.COUNTRY_ID )



---------- Admin task --------------

---------- Database size

SELECT
--SUM (bytes) / 1024 / 1024 / 1024 AS GB 
*
FROM dba_data_files;

---------- Size used by each category

select
( select sum(bytes)/1024/1024/1024 data_size from dba_data_files ) +
( select nvl(sum(bytes),0)/1024/1024/1024 temp_size from dba_temp_files ) +
( select sum(bytes)/1024/1024/1024 redo_size from sys.v_$log ) +
( select sum(BLOCK_SIZE*FILE_SIZE_BLKS)/1024/1024/1024 controlfile_size from v$controlfile) "Size in GB"
from dual;


-------

select  (bytes)/1024/1024/1024,OWNER,SEGMENT_NAME,SEGMENT_TYPE,TABLESPACE_NAME from dba_segments order by 1 desc;

select segment_name,segment_type,bytes/1024/1024 MB from dba_segments 
--where segment_name='TABLENAME' and owner ='OWNERNAME' 
order by mb desc;	


select * from 
DBA_LOBS where segment_name='SYS_LOB0000021888C00008$$';

-------------- Diary created post event closed ------------

with eventClosedTime as
( select max(date_Time) closedTime,event_num from  ca_Event_Audit where attribute_id=81403608 and NEW_VALUE_INT=1000011 
group by event_num),
diaryDismissedtime as
(
select EVENT_NUM,DATE_TIME diaryope,ATTRIBUTE_NAME,NEW_VALUE_STRING from ca_Event_Audit where OLD_VALUE_INT is null and NEW_VALUE_INT is null
)
select * from diaryDismissedtime d,eventClosedTime e , ca_Event ce where e.event_num=d.event_num and 
e.event_num=ce.event_num and 
ce.event_num=d.event_num and 
closedTime < diaryope-1/24
and  ce.APPROVAL_STATUS=1000011;


------------ indexes -----------------

select * from dba_indexes where owner='TLM_DBO' and TABLE_NAME='CA_EVENT';

select * from dba_ind_columns where INDEX_NAME='CA_EVENT_EVENT_TYPE_IDX';



select * from v$session_longops where TIME_REMAINING <> 0;

--first explain plan then use the cursor

EXPLAIN PLAN FOR
select * from ca_event ce, ca_event_Date ced where ce.event_num=ced.event_num;

select * from  V$SQL_PLAN where sql_id='0sqnn3fx94001';


select plan_table_output
from table(dbms_xplan.display_cursor('0sqnn3fx94001',null,'All'));

--- explain plan is not runing the sql , so the actual plan might be different -----

run this as script to find the actual plan

set autotrace on;

select * from ca_event ce, ca_event_Date ced where ce.event_num=ced.event_num;



The following script will identify those SQL statement that have more than one execution plan in the library cache.  Note that this SQL also looks into historical SQL plans (using dba_hist_sqlstat).  This is an important report for showing the effect of DDL and statistics changes on the execution plans of SQL in a controlled, production environment.

select
   vs.sid,
   vs.sql_id,
   vs.last_call_et,
   sq.plan_hash_value
from
   v$session vs,
   v$sql     sq
where
   vs.sql_id=sq.sql_id
and
   vs.sql_child_number=sq.child_number
and
   sq.plan_hash_value not in
   (select
      ss.plan_hash_value
   from
      dba_hist_sqlstat ss
   where
      ss.sql_id=sq.sql_id) and
   0 <
      (select
           count(ss.plan_hash_value)
       from
           dba_hist_sqlstat ss
   where
      ss.sql_id=sq.sql_id);
      
      
----------------- Get lob of file -------------------------------------
select mf.id,FEED_TYPE,mf.CREATION_TIME,RESOURCE_URI,STATUS,CONTENT,CHARACTER_ENCODING
from MMI_FEED mf ,MMI_MESSAGE mm ,MMI_RAWDATA mr  where mm.FEED_ID = mf.ID 
and 
mm.RAWDATA_ID = mr.ID
and mf.id=32121;


------------------------------- control process change audit --------------------

-- control process audit details 302095
SELECT P.NAME, UD.ITEM_TYPE , UD.CHANGE_CODE , UD.CHANGE_COMMENT , UH.TIME_STAMP , UH.USER_ID
FROM USER_CONFIG_AUDIT_DETAIL UD, USER_CONFIG_AUDIT_HEADER UH, PROCESS P
WHERE UH.DETAIL_ID = UD.ID
AND P.ID = UD.ITEM_ID
ORDER BY TIME_STAMP DESC;


--------------- portal user role --------------

SELECT
    name,
    login,
    creation_date,
    idp_name
FROM
    ca_por_role       cpr,
    ca_por_user_role  cpur,
    ca_por_user       cpu
WHERE
        cpur.role_id = cpr.id
    AND cpu.id = cpur.user_id;
    
    

--------- to find a bulk user id is present in database or not -----------
    
DECLARE 
   type namesarray IS VARRAY(5) OF VARCHAR2(10); 
   names namesarray; 
   total integer; 
   usercount integer;
BEGIN 
   names := namesarray('GUNA', 'Pritam', 'Ayan', 'Rishav', 'Aziz'); 
   total := names.count; 
    FOR i in 1 .. total LOOP 
       select count(user_id) into usercount from usrr where user_id = names(i);
      if (usercount = 1) then
     dbms_output.put_line('user does exist : ' ||names(i)); 
    else
     dbms_output.put_line('user doesnt exist : ' ||names(i)); 
     end if;
   END LOOP; 
END; 
/


--------- Pictet user availablity check ---------

grep UserId entity_account_users_20210625-210046.xml | awk -F"<" '{print $2}' | awk -F">" '{print "\x27"$2"\x27,"}'  | sort  | uniq | tr -d '\n' > /tmp/usrr.txt


DECLARE 
   type namesarray IS VARRAY(250) OF VARCHAR2(10); 
   names namesarray; 
   total integer; 
   usercount integer;
BEGIN 
   names := namesarray('ACAFFORT','ACOLE','ACRISTEA','ADEFISE','ADELAMAZ','ADELITAL','ADESUSAN','ADIOGO','AFRANGUL','AGOCER','AHICKEY','AHOWSON','AHUG','AKERKENE','AMOUTHON','ANURMOHA','ANWONG','AORA','ARUDIN','ASANCHEZ','ASCHENK','AWILMONT','AYIGITBA','BBENECHE','BGARG','BKATLAMA','BLIPPENS','BWEISS','CBANNON','CBENIER','CBORY','CBUTZ','CCAMILLE','CHARTKOP','CHOFFMAN','CLECAMP','CLEPETIT','CLIAW'); 
   total := names.count; 
    FOR i in 1 .. total LOOP 
       select count(user_id) into usercount from usrr where user_id = names(i);
      if (usercount <> 1) then
     dbms_output.put_line('user doesnt exist : ' ||names(i)); 
     end if;
   END LOOP; 
END; 
/





java.net.ConnectException occurs when you are working with client-server architecture and trying to make TCP connection from the client to the server. Now there are many reasons for it to happen. I understand in your case it is happening intermittently i.e sometimes it works and sometimes it doesn't.

network issues, memory issues, down to out of thread issues or trouble with your firewall.

There doesn't seem to be any problem with your client code, its either the server or the network. Network/Firewall is rarely intermittent.

There is not way to fix intermittent network issue, as from client to server end, it goes through so many hops and routes before reaching the actual server. This is no way to guarantee 100% stable all the time.
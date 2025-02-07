create database healthcare;
use healthcare;

select * from main_sql;

#Citywise no. of facilties
select city, count(fac_no) as count_fac_no from main_sql group by city order by count_fac_no desc; 

#Total Inpatient revenue
select sum(NET_INPATIENT_REV) as Tot_Inpatient_Rev from main_sql;

#Total Outpatient revenue
select sum(NET_OUTPATIENT_REV) as Tot_Outpatient_Rev from main_sql; 

#Total bad debt
select sum(BAD_DEBT) as Tot_Bad_Debt from main_sql; 

#Total cost to charge ratio
select avg(COST_TO_CHARGE) as Cost_to_charge from main_sql; 
 
#Total patient visits
select sum(VIS_TOT) as Tot_Outpatient_Visit from main_sql;

#Total Discharge
select sum(dis_tot) as tot_discharge from main_sql;

#Bad Debt & Charity by Ownership
Select type_cntrl, sum(bad_debt) as bad_debt, sum(char_oth) as char_oth from main_sql group by type_cntrl order by char_oth desc;

#Inpatient revenue by ownership
select type_cntrl, sum(net_inpatient_rev) as inpatient_rev from main_sql group by type_cntrl;

#Outpatient revenue by ownership
select type_cntrl, sum(net_outpatient_rev) as outpatient_rev from main_sql group by type_cntrl;





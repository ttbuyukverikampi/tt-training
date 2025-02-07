drop table if exists iceberg.gbm.sm_country_city purge;

create table iceberg.gbm.sm_country_city as
select country_id,count(1) cnt from iceberg.gbm.extr_city;
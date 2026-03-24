/*
==============
Table Creation
==============
Purpose:
	Create tables to recieve all related data for the project.
	Create SQL DDL scripts for all .csv files. 
WARNING:
	This script will drop the tables if they are already created, wiping all data
*/

-- claims_business_interruptions_freq
use CaseStudy2026;
go

drop table if exists unclean.claims_business_interruptions_freq;
go

create table unclean.claims_business_interruptions_freq (
	policy_id nvarchar(50), 
	station_id nvarchar(50),
	solar_system nvarchar(50),
	production_load decimal(18),
	energy_backup_score int,
	supply_chain_index decimal(18),
	avg_crew_exp int,
	maintenance_freq int,
	safety_compliance int,
	exposure decimal(18),
	claim_count int
);
go

-- claims_business_interruptions_sev
drop table if exists unclean.claims_business_interruptions_sev;
go

create table unclean.claims_business_interruptions_sev (
	claim_id nvarchar(50), 
	claim_seq int,
	policy_id nvarchar(50),
	station_id nvarchar(50),
	solar_system nvarchar(50),
	production_load decimal(18),
	exposure decimal(18),
	energy_backup_score int,
	safety_compliance int,
	claim_amount decimal(18)
);
go

-- claims_cargo_freq
drop table if exists unclean.claims_cargo_freq;
go

create table unclean.claims_cargo_freq (
	poicy_id nvarchar(50), 
	shipment_id nvarchar(50),
	cargo_type nvarchar(50),
	cargo_value bigint,
	[weight] int,
	route_risk int,
	distance decimal(8),
	transit_duration decimal(18),
	pilot_experience decimal(18),
	vessel_age decimal(18),
	container_type nvarchar(50),
	solar_radiation decimal(18),
	debris_density decimal(18),
	exposure decimal(18),
	claim_count int
);
go

-- claims_cargo_sev
drop table if exists unclean.claims_cargo_sev;
go

create table unclean.claims_cargo_sev (
	claim_id nvarchar(50),
	claim_seq int,
	poicy_id nvarchar(50), 
	shipment_id nvarchar(50),
	cargo_type nvarchar(50),
	cargo_value bigint,
	[weight] int,
	route_risk int,
	distance decimal(18),
	transit_duration decimal(18),
	pilot_experience decimal(18),
	vessel_age decimal(18),
	container_type nvarchar(50),
	solar_radiation decimal(18),
	debris_density decimal(18),
	exposure decimal(18),
	claim_amount decimal(18)
);
go

-- claims_equipment_failure_freq
drop table if exists unclean.claims_equipment_failure_freq;
go

create table unclean.claims_equipment_failure_freq (
	poicy_id nvarchar(50), 
	equipment_id nvarchar(50),
	equipment_type nvarchar(50),
	equipment_age decimal(18),
	solar_system nvarchar(50),
	maintenance_int decimal(18),
	usage_int decimal(18),
	exposure decimal(18),
	claim_count int
);
go

-- claims_equipment_failure_sev
drop table if exists unclean.claims_equipment_failure_sev;
go

create table unclean.claims_equipment_failure_sev (
	claim_id nvarchar(50), 
	claim_seq int,
	policy_id nvarchar(50),
	equipment_id nvarchar(50),
	equipment_type nvarchar(50),
	equipment_age decimal(18),
	solar_system nvarchar(50),
	maintenance_int decimal(18),
	usage_int decimal(18),
	exposure decimal(18),
	claim_amount decimal(18)
);
go

-- claims_workers_comp_freq
drop table if exists unclean.claims_workers_comp_freq;
go

create table unclean.claims_workers_comp_freq (
	policy_id nvarchar(50),
	worker_id nvarchar(50),
	solar_system nvarchar(50),
	station_id nvarchar(50),
	occupation nvarchar(50),
	employment_type nvarchar(50),
	experience_yrs decimal(18),
	accident_history_flag int,
	psych_stress_index int,
	hours_per_week int,
	supervision_level decimal(18),
	gravity_level decimal(18),
	safety_training_index int,
	protective_gear_quality int,
	base_salary decimal(18),
	exposure decimal(18),
	claim_count int
);
go

-- claims_workers_comp_sev
drop table if exists unclean.claims_workers_comp_sev;
go

create table unclean.claims_workers_comp_sev (
	claim_id nvarchar(50),
	claim_seq int,
	policy_id nvarchar(50),
	worker_id nvarchar(50),
	solar_system nvarchar(50),
	station_id nvarchar(50),
	occupation nvarchar(50),
	employment_type nvarchar(50),
	experience_yrs decimal(18),
	accident_history_flag int,
	psych_stress_index int,
	hours_per_week int,
	supervision_level decimal(18),
	gravity_level decimal(18),
	safety_training_index int,
	protective_gear_quality int,
	base_salary decimal(18),
	exposure decimal(18),
	injury_type nvarchar(50),
	injury_cause nvarchar(50),
	claim_length int,
	claim_amount decimal(18)
);
go

/*
=========================
Creating Stored Procedure
=========================
Purpose:
	Create a stored procedure to load the unclean data.
*/
create or alter procedure unclean.load_data as 
begin
	declare @start_time datetime, @end_time datetime, @start_time_total datetime, @end_time_total datetime
	begin try
		set @start_time_total = getdate();
		print '=====================================';
		print 'Loading Unclean Data';
		print '=====================================';

		print '-------------------------------------';
		print 'Loading Tables';
		print '-------------------------------------';

		-- unclean.claims_business_interruptions_freq
		print '>> Clearing Table: unclean.claims_business_interruptions_freq';
		set @start_time = getdate();
		truncate table unclean.claims_business_interruptions_freq;

		print '>> Populating Table: unclean.claims_business_interruptions_freq';
		bulk insert unclean.claims_business_interruptions_freq 
		from 'C:\Users\jacob\OneDrive\Desktop\Excel Projects\SOA 2026 Case Study\csvs\claims_business_interruptions_freq.csv'
		with (
			firstrow = 2, -- First row contains headers
			fieldterminator = ',', -- Commas separate the data
			tablock
		);
		set @end_time = getdate();
		print '>> Time Elapsed: ' + cast(datediff(second, @start_time, @end_time) as nvarchar) + ' seconds';
		print '-------------------------------------';

		-- unclean.claims_business_interruptions_sev
		print '>> Clearing Table: unclean.claims_business_interruptions_sev';
		set @start_time = getdate();
		truncate table unclean.claims_business_interruptions_sev;

		print '>> Populating Table: unclean.claims_business_interruptions_sev';
		bulk insert unclean.claims_business_interruptions_sev 
		from 'C:\Users\jacob\OneDrive\Desktop\Excel Projects\SOA 2026 Case Study\csvs\claims_business_interruptions_sev.csv'
		with (
			firstrow = 2, 
			fieldterminator = ',', 
			tablock
		);
		set @end_time = getdate();
		print '>> Time Elapsed: ' + cast(datediff(second, @start_time, @end_time) as nvarchar) + ' seconds';
		print '-------------------------------------';

		-- unclean.claims_cargo_freq
		print '>> Clearing Table: unclean.claims_cargo_freq';
		set @start_time = getdate();
		truncate table unclean.claims_cargo_freq;

		print '>> Populating Table: unclean.claims_cargo_freq';
		bulk insert unclean.claims_cargo_freq 
		from 'C:\Users\jacob\OneDrive\Desktop\Excel Projects\SOA 2026 Case Study\csvs\claims_cargo_freq.csv'
		with (
			firstrow = 2, 
			fieldterminator = ',', 
			tablock
		);
		set @end_time = getdate();
		print '>> Time Elapsed: ' + cast(datediff(second, @start_time, @end_time) as nvarchar) + ' seconds';
		print '-------------------------------------';

		-- unclean.claims_cargo_sev
		print '>> Clearing Table: unclean.claims_cargo_sev';
		set @start_time = getdate();
		truncate table unclean.claims_cargo_sev;

		print '>> Populating Table: unclean.claims_cargo_sev';
		bulk insert unclean.claims_cargo_sev
		from 'C:\Users\jacob\OneDrive\Desktop\Excel Projects\SOA 2026 Case Study\csvs\claims_cargo_sev.csv'
		with (
			firstrow = 2, 
			fieldterminator = ',', 
			tablock
		);
		set @end_time = getdate();
		print '>> Time Elapsed: ' + cast(datediff(second, @start_time, @end_time) as nvarchar) + ' seconds';
		print '-------------------------------------';

		-- unclean.claims_equipment_failure_freq
		print '>> Clearing Table: unclean.claims_equipment_failure_freq';
		set @start_time = getdate();
		truncate table unclean.claims_equipment_failure_freq;

		print '>> Populating Table: unclean.claims_equipment_failure_freq';
		bulk insert unclean.claims_equipment_failure_freq 
		from 'C:\Users\jacob\OneDrive\Desktop\Excel Projects\SOA 2026 Case Study\csvs\claims_equipment_failure_freq.csv'
		with (
			firstrow = 2,
			fieldterminator = ',', 
			tablock
		);
		set @end_time = getdate();
		print '>> Time Elapsed: ' + cast(datediff(second, @start_time, @end_time) as nvarchar) + ' seconds';
		print '-------------------------------------';

		-- unclean.claims_equipment_failure_sev
		print '>> Clearing Table: unclean.claims_equipment_failure_sev';
		set @start_time = getdate();
		truncate table unclean.claims_equipment_failure_sev;

		print '>> Populating Table: unclean.claims_equipment_failure_sev';
		bulk insert unclean.claims_equipment_failure_sev 
		from 'C:\Users\jacob\OneDrive\Desktop\Excel Projects\SOA 2026 Case Study\csvs\claims_equipment_failure_sev.csv'
		with (
			firstrow = 2,
			fieldterminator = ',', 
			tablock
		);
		set @end_time = getdate();
		print '>> Time Elapsed: ' + cast(datediff(second, @start_time, @end_time) as nvarchar) + ' seconds';
		print '-------------------------------------';

		-- unclean.claims_workers_comp_freq
		print '>> Clearing Table: unclean.claims_workers_comp_freq';
		set @start_time = getdate();
		truncate table unclean.claims_workers_comp_freq;

		print '>> Populating Table: unclean.claims_workers_comp_freq';
		bulk insert unclean.claims_workers_comp_freq 
		from 'C:\Users\jacob\OneDrive\Desktop\Excel Projects\SOA 2026 Case Study\csvs\claims_workers_comp_freq.csv'
		with (
			firstrow = 2,
			fieldterminator = ',',
			tablock
		);
		set @end_time = getdate();
		print '>> Time Elapsed: ' + cast(datediff(second, @start_time, @end_time) as nvarchar) + ' seconds';
		print '-------------------------------------';

		-- unclean.claims_workers_comp_sev
		print '>> Clearing Table: unclean.claims_workers_comp_sev';
		set @start_time = getdate();
		truncate table unclean.claims_workers_comp_sev;

		print '>> Populating Table: unclean.claims_workers_comp_sev';
		bulk insert unclean.claims_workers_comp_sev 
		from 'C:\Users\jacob\OneDrive\Desktop\Excel Projects\SOA 2026 Case Study\csvs\claims_workers_comp_sev.csv'
		with (
			firstrow = 2,
			fieldterminator = ',',
			tablock
		);
		set @end_time = getdate();
		print '>> Time Elapsed: ' + cast(datediff(second, @start_time, @end_time) as nvarchar) + ' seconds';
		print '-------------------------------------';
		print ' ';
		set @end_time_total = getdate();
		print '-------------------------------------';
		print '>> Loading Tables Complete';
		print '>> Cumulative Time Elapsed: ' + cast(datediff(second, @start_time_total, @end_time_total) as nvarchar) + ' seconds';
		print '-------------------------------------';
	end try
	begin catch
		print '=====================================';
		print 'Error Occurred Loading Unclean Data';
		print 'Error Message: ' + error_message();
		print 'Error Number: ' + cast(error_number() as nvarchar);
		print 'Error Line: ' + cast(error_line() as nvarchar);
		print '=====================================';
	end catch
end

exec unclean.load_data

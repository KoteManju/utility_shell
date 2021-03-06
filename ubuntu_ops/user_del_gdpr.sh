#!/bin/sh


member_id=$1

function select_one()
{
psql \
   --host=$host \
   --port=$port \
   --username  $username\
   --dbname=$dbname << EOF
SELECT * FROM ana.members LIMIT 1;
EOF
}



function for_loop_select()
{

for x in ana.members\
         ana.membership_events\
         ana.member_month_details_table\
         ana.presales_signups\
         ana.member_lifetime\
         ana.member_month_details\
         prc.sdb_members_dev\
         prc.v_cc_individuals_brussels_table\
         prc.trips\
         prc.v_cc_member_first_res\
         prc.v_cc_member_last_res\
         prc.v_cc_members\
         prc.v_mm_customer_email\
         prc.v_mm_eligible_customers\
         prc.v_mm_eligible_customers_dev\
         prc.transactions\
         public.mm_fulfillment\
         public.temp_bru_mm_credits\
         rw.mm_successful_referrals\
         rw.user_address_lonlat\
         rw.user_address_nonnull_lonlat\
         rw.v_cc_members

do 
   echo 'table : ' $x

   psql \
   --host=$host \
   --port=$port \
   --username  $username\
   --dbname=$dbname << EOF
   SELECT * FROM $x LIMIT 1;
EOF

done 

}


function delete_dev_table()
{
psql \
   --host=$host \
   --port=$port \
   --username  $username\
   --dbname=$dbname << EOF

      drop  table ana.members_dev  ; 
      drop  table ana.membership_events_dev ; 
      drop  table ana.member_month_details_table_dev; 
      drop  table prc.sdb_members_devdev ; 
      drop  table prc.v_cc_individuals_brussels_table_dev ; 
      drop  table prc.trips_dev ; 
      drop  table prc.v_cc_members_dev; 
      drop  table rw.mm_successful_referrals_dev ; 
      drop  table rw.user_address_lonlat_dev  ; 
      drop  table rw.user_address_nonnull_lonlat_dev ; 
EOF

}


function create_dev_table()
{
psql \
   --host=$host \
   --port=$port \
   --username  $username\
   --dbname=$dbname << EOF

    create table ana.members_dev as (select * from ana.members ); 
    create table ana.membership_events_dev  as (select * from ana.membership_events ); 
    create table ana.member_month_details_table_dev as (select * from ana.member_month_details_table ); 
    create table prc.sdb_members_devdev as (select * from prc.sdb_members_dev ); 
    create table prc.v_cc_individuals_brussels_table_dev as (select * from prc.v_cc_individuals_brussels_table ); 
    create table prc.trips_dev as (select * from prc.trips ); 
    create table prc.v_cc_members_dev as (select * from prc.v_cc_members ); 
    create table rw.mm_successful_referrals_dev as (select * from rw.mm_successful_referrals ); 
    create table rw.user_address_lonlat_dev  as (select * from rw.user_address_lonlat ); 
    create table rw.user_address_nonnull_lonlat_dev as (select * from rw.user_address_nonnull_lonlat ); 

EOF

}



function for_loop_delete()
{

echo 'member_id : ' $member_id
echo '--- ana.members_dev  ---'

   psql \
   --host=$host \
   --port=$port \
   --username  $username\
   --dbname=$dbname << EOF

   UPDATE ana.members_dev 
   SET login = 'Forgotten_Value',  
       last_name = 'Forgotten_Value', 
       first_name = 'Forgotten_Value',
       middle_name = 'Forgotten_Value', 
       preferred_name = 'Forgotten_Value', 
       birth_date = '25 May 2018', 
       driving_license = 'Forgotten_Value', 
       driving_license_country = 'Forgotten_Value', 
       driving_license_province = 'Forgotten_Value',      
       address_1 = 'Forgotten_Value', 
       address_2 = 'Forgotten_Value', 
       city = 'Forgotten_Value', 
       zipcode = 'Forgotten_Value',  
       province = 'Forgotten_Value', 
       country = 'Forgotten_Value',             
       billing_address_1 = 'Forgotten_Value', 
       billing_address_2 = 'Forgotten_Value', 
       billing_city = 'Forgotten_Value', 
       billing_zipcode = 'Forgotten_Value', 
       billing_province = 'Forgotten_Value', 
       billing_country = 'Forgotten_Value', 
       phone_number = 'Forgotten_Value',
       school = 'Forgotten_Value', 
       email = 'Forgotten_Value', 
       credit_card = 'Forgotten_Value',
       credit_card_name = 'Forgotten_Value'

    WHERE member_id = '$member_id'
EOF

echo '--- ana.membership_events_dev  ---'


   psql \
   --host=$host \
   --port=$port \
   --username  $username\
   --dbname=$dbname << EOF

   UPDATE ana.membership_events_dev 
      SET login = 'Forgotten_Value',  
       last_name = 'Forgotten_Value', 
       first_name = 'Forgotten_Value',
       middle_name = 'Forgotten_Value', 
       preferred_name = 'Forgotten_Value', 
       birth_date = '25 May 2018', 
       driving_license = 'Forgotten_Value', 
       driving_license_country = 'Forgotten_Value', 
       driving_license_province = 'Forgotten_Value',      
       address_1 = 'Forgotten_Value', 
       address_2 = 'Forgotten_Value', 
       city = 'Forgotten_Value', 
       zipcode = 'Forgotten_Value',  
       province = 'Forgotten_Value', 
       country = 'Forgotten_Value',             
       billing_address_1 = 'Forgotten_Value', 
       billing_address_2 = 'Forgotten_Value', 
       billing_city = 'Forgotten_Value', 
       billing_zipcode = 'Forgotten_Value', 
       billing_province = 'Forgotten_Value', 
       billing_country = 'Forgotten_Value', 
       phone_number = 'Forgotten_Value',
       school = 'Forgotten_Value', 
       email = 'Forgotten_Value', 
       credit_card = 'Forgotten_Value',
       credit_card_name = 'Forgotten_Value'

   WHERE member_id = '$member_id'

EOF


echo ' --- ana.member_month_details_table_dev --- '


   psql \
   --host=$host \
   --port=$port \
   --username  $username\
   --dbname=$dbname << EOF

   UPDATE ana.member_month_details_table_dev 
      SET login = 'Forgotten_Value',  
       last_name = 'Forgotten_Value', 
       first_name = 'Forgotten_Value',
       preferred_name = 'Forgotten_Value', 
       birth_date = '25 May 2018'
   WHERE member_id = '$member_id'

EOF




echo ' --- prc.sdb_members_devdev --- '


   psql \
   --host=$host \
   --port=$port \
   --username  $username\
   --dbname=$dbname << EOF

   UPDATE prc.sdb_members_devdev 
      SET
       first_name_zc = 'Forgotten_Value',
       last_name_zc = 'Forgotten_Value',        
       language = 'Forgotten_Value', 
       birth_month_year = '25 May 2018', 
       email_address_zc = 'Forgotten_Value',  
       fleet_country_name = 'Forgotten_Value'
   WHERE member_id_zc = '$member_id'

EOF


echo ' --- prc.v_cc_individuals_brussels_table_dev  --- '


   psql \
   --host=$host \
   --port=$port \
   --username  $username\
   --dbname=$dbname << EOF

   UPDATE prc.v_cc_individuals_brussels_table_dev 
      SET
       first_name_zc = 'Forgotten_Value',
       last_name_zc = 'Forgotten_Value',        
       language = 'Forgotten_Value', 
       birth_month_year = '25 May 2018', 
       email_address_zc = 'Forgotten_Value',  
       fleet_country_name = 'Forgotten_Value'
   WHERE member_id_zc = '$member_id'

EOF



echo ' --- prc.trips_dev  --- '


   psql \
   --host=$host \
   --port=$port \
   --username  $username\
   --dbname=$dbname << EOF

   UPDATE prc.trips_dev
      SET
       start_lat = 0.00, 
       start_lon = 0.00,         
       end_lat = 0.00, 
       end_lon = 0.00 
   WHERE member_id = '$member_id'

EOF



echo ' --- prc.v_cc_members_dev  --- '


   psql \
   --host=$host \
   --port=$port \
   --username  $username\
   --dbname=$dbname << EOF
   UPDATE prc.v_cc_members_dev

      SET login = 'Forgotten_Value',  
          last_name = 'Forgotten_Value', 
          first_name = 'Forgotten_Value',
          middle_name = 'Forgotten_Value', 
          preferred_name = 'Forgotten_Value', 
          birth_date = '25 May 2018', 
          driving_license = 'Forgotten_Value', 
          driving_license_province = 'Forgotten_Value',      
          address_1 = 'Forgotten_Value', 
          address_2 = 'Forgotten_Value', 
          city = 'Forgotten_Value', 
          zipcode = 'Forgotten_Value',  
          province = 'Forgotten_Value', 
          country = 'Forgotten_Value',             
          billing_address_1 = 'Forgotten_Value', 
          billing_address_2 = 'Forgotten_Value', 
          billing_city = 'Forgotten_Value', 
          billing_zipcode = 'Forgotten_Value', 
          billing_province = 'Forgotten_Value', 
          billing_country = 'Forgotten_Value', 
          phone_number = 'Forgotten_Value',
          school = 'Forgotten_Value', 
          email = 'Forgotten_Value', 
          credit_card = 'Forgotten_Value',
          credit_card_name = 'Forgotten_Value'
   WHERE member_id = '$member_id'

EOF

echo ' --- rw.mm_successful_referrals_dev ---'

   psql \
   --host=$host \
   --port=$port \
   --username  $username\
   --dbname=$dbname << EOF
   UPDATE rw.mm_successful_referrals_dev 

      SET customer_email = 'Forgotten_Value',  
          customer_first_name = 'Forgotten_Value',
          customer_surname = 'Forgotten_Value', 
          reason = 'Forgotten_Value', 
          referee_email  = 'Forgotten_Value',
          referrer_email = 'Forgotten_Value'
      WHERE referrer_merchant_customer_identifier = '$member_id'

EOF


echo ' ---  rw.user_address_lonlat_dev  --- '


   psql \
   --host=$host \
   --port=$port \
   --username  $username\
   --dbname=$dbname << EOF
   UPDATE rw.user_address_lonlat_dev

      SET address = 'Forgotten_Value',  
          zipcode = 'Forgotten_Value', 
          lon_lat = '{Forgotten_Value,Forgotten_Value}',
          lat = 0.00, 
          lon = 0.00 
   WHERE member_id = '$member_id'

EOF



echo ' ---  rw.user_address_nonnull_lonlat_dev  --- '


   psql \
   --host=$host \
   --port=$port \
   --username  $username\
   --dbname=$dbname << EOF
   UPDATE rw.user_address_nonnull_lonlat_dev

      SET address = 'Forgotten_Value',  
          zipcode = 'Forgotten_Value', 
          lon_lat = '{Forgotten_Value,Forgotten_Value}',
          lat = 0.00, 
          lon = 0.00 
   WHERE member_id = '$member_id'

EOF


}


# 1) create test table 
# create_dev_table

# 2) delete test table 
# delete_dev_table

# 3) for_loop_select
# for_loop_delete
# run in command line :  
# bash user_deletion_gdpr.sh C000000008


for_loop_delete











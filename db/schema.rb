# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150228170757) do

  create_table "incomes", force: :cascade do |t|
    t.datetime "created_at",                                               null: false
    t.datetime "updated_at",                                               null: false
    t.decimal  "clients_salary_wages"
    t.decimal  "partners_salary_wages"
    t.decimal  "other_income"
    t.decimal  "maintenance_childsupport"
    t.decimal  "boarders_lodgers"
    t.decimal  "non_dependant_contributions"
    t.decimal  "student_loans_grants"
    t.decimal  "other_other_income"
    t.decimal  "jobseekers_allowance_income"
    t.decimal  "jobseekers_allowance_contribution"
    t.decimal  "income_support"
    t.decimal  "working_tax_credit"
    t.decimal  "child_tax_credit"
    t.decimal  "child_benefit"
    t.decimal  "employment_support_allowance_statutory_sickpay"
    t.decimal  "dla_pip_attendance_allowance"
    t.decimal  "carers_allowance"
    t.decimal  "housing_benefit_local_housing_allowance"
    t.decimal  "council_tax_reduction"
    t.decimal  "other_including_universal_credit"
    t.decimal  "other_benefits"
    t.decimal  "state_pensions"
    t.decimal  "private_workpensions"
    t.decimal  "pension_credit"
    t.decimal  "other_pension"
    t.decimal  "monthly_total_pensions"
    t.decimal  "total_value_propertyies"
    t.decimal  "mortgage_outstanding"
    t.decimal  "secured_loans_outstanding"
    t.decimal  "value_vehicles_less_hpoutstanding"
    t.decimal  "savings"
    t.decimal  "otherassets"
    t.decimal  "rent"
    t.decimal  "ground_rent_service_charges_factor_fees"
    t.decimal  "mortgage"
    t.decimal  "other_secured_loans"
    t.decimal  "mortgage_endowment_mortgage_ppi"
    t.decimal  "building_and_contents_insurance"
    t.decimal  "pension_and_life_insurance"
    t.decimal  "council_tax_rates_in_ni"
    t.decimal  "gas"
    t.decimal  "electricity"
    t.decimal  "water_na_in_scotland_or_ni"
    t.decimal  "other_utilities_coal_oil_calor_gas"
    t.decimal  "tv_licence"
    t.decimal  "magistrates_or_sheriff_court_fines"
    t.decimal  "maintenance_or_child_support"
    t.decimal  "hire_purchase_conditional_sale"
    t.decimal  "childcare_costs"
    t.decimal  "adult_care_costs"
    t.decimal  "other_essential1"
    t.decimal  "other_essenttial2"
    t.decimal  "other_essential3"
    t.decimal  "monthly_total_essential_expenditure"
    t.decimal  "home_phone"
    t.decimal  "mobile_phone"
    t.decimal  "other_phone"
    t.decimal  "monthly_total_phone"
    t.decimal  "public_transport_work_school_shopping_etc"
    t.decimal  "other_transport"
    t.decimal  "car_insurance"
    t.decimal  "vehicle_tax"
    t.decimal  "fuel_petrol_diesel_oil_etc"
    t.decimal  "mot_and_car_maintenance"
    t.decimal  "breakdown_or_recovery"
    t.decimal  "parking_charges_or_tolls"
    t.decimal  "other_car_costs"
    t.decimal  "monthly_total_travel"
    t.decimal  "food_and_milk"
    t.decimal  "cleaning_and_toiletries"
    t.decimal  "newspapers_and_magazines"
    t.decimal  "cigarettes_tobacco_sweets"
    t.decimal  "alcohol"
    t.decimal  "laundry_and_dry_cleaning"
    t.decimal  "clothing_and_footwear"
    t.decimal  "nappies_and_baby_items"
    t.decimal  "pet_food"
    t.decimal  "other_housekeeping"
    t.decimal  "monthly_total_housekeeping"
    t.decimal  "health_dentist_glasses_prescriptions_health_ins"
    t.decimal  "repairs_house_maint_incl_window_cleaning_maint_contracts"
    t.decimal  "hairdressing_haircuts"
    t.decimal  "cable_satellite_and_internet"
    t.decimal  "tv_video_and_other_appliance_rental"
    t.decimal  "school_meals_and_meals_at_work"
    t.decimal  "pocket_money_and_school_trips"
    t.decimal  "lottery_and_pools_etc"
    t.decimal  "hobbies_leisure_sport_incl_puboutings_gym_etc"
    t.decimal  "gifts_christmas_birthdays_charity_etc"
    t.decimal  "vet_bills_and_pet_insurance"
    t.decimal  "other_expenditure1"
    t.decimal  "other_expenditure2"
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "mortgage_reference_num"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "password_digest"
  end

end

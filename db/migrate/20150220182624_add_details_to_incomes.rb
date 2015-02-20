class AddDetailsToIncomes < ActiveRecord::Migration
  def change
    add_column :incomes, :clients_salary_wages, :decimal
    add_column :incomes, :partners_salary_wages, :decimal
    add_column :incomes, :other_income, :decimal
    add_column :incomes, :maintenance_childsupport, :decimal
    add_column :incomes, :boarders_lodgers, :decimal
    add_column :incomes, :non_dependant_contributions, :decimal
    add_column :incomes, :student_loans_grants, :decimal
    add_column :incomes, :other_other_income, :decimal
    add_column :incomes, :jobseekers_allowance_income, :decimal
    add_column :incomes, :jobseekers_allowance_contribution, :decimal
    add_column :incomes, :income_support, :decimal
    add_column :incomes, :working_tax_credit, :decimal
    add_column :incomes, :child_tax_credit, :decimal
    add_column :incomes, :child_benefit, :decimal
    add_column :incomes, :employment_support_allowance_statutory_sickpay, :decimal
    add_column :incomes, :dla_pip_attendance_allowance, :decimal
    add_column :incomes, :carers_allowance, :decimal
    add_column :incomes, :housing_benefit_local_housing_allowance, :decimal
    add_column :incomes, :council_tax_reduction, :decimal
    add_column :incomes, :other_including_universal_credit, :decimal
    add_column :incomes, :other_benefits, :decimal
    add_column :incomes, :state_pensions, :decimal
    add_column :incomes, :private_workpensions, :decimal
    add_column :incomes, :pension_credit, :decimal
    add_column :incomes, :other_pension, :decimal
    add_column :incomes, :monthly_total_pensions, :decimal
    add_column :incomes, :total_value_propertyies, :decimal
    add_column :incomes, :mortgage_outstanding, :decimal
    add_column :incomes, :secured_loans_outstanding, :decimal
    add_column :incomes, :value_vehicles_less_hpoutstanding, :decimal
    add_column :incomes, :savings, :decimal
    add_column :incomes, :otherassets, :decimal
    add_column :incomes, :rent, :decimal
    add_column :incomes, :ground_rent_service_charges_factor_fees, :decimal
    add_column :incomes, :mortgage, :decimal
    add_column :incomes, :other_secured_loans, :decimal
    add_column :incomes, :mortgage_endowment_mortgage_ppi, :decimal
    add_column :incomes, :building_and_contents_insurance, :decimal
    add_column :incomes, :pension_and_life_insurance, :decimal
    add_column :incomes, :council_tax_rates_in_ni, :decimal
    add_column :incomes, :gas, :decimal
    add_column :incomes, :electricity, :decimal
    add_column :incomes, :water_na_in_scotland_or_ni, :decimal
    add_column :incomes, :other_utilities_coal_oil_calor_gas, :decimal
    add_column :incomes, :tv_licence, :decimal
    add_column :incomes, :magistrates_or_sheriff_court_fines, :decimal
    add_column :incomes, :maintenance_or_child_support, :decimal
    add_column :incomes, :hire_purchase_conditional_sale, :decimal
    add_column :incomes, :childcare_costs, :decimal
    add_column :incomes, :adult_care_costs, :decimal
    add_column :incomes, :other_essential1, :decimal
    add_column :incomes, :other_essenttial2, :decimal
    add_column :incomes, :other_essential3, :decimal
    add_column :incomes, :monthly_total_essential_expenditure, :decimal
    add_column :incomes, :home_phone, :decimal
    add_column :incomes, :mobile_phone, :decimal
    add_column :incomes, :other_phone, :decimal
    add_column :incomes, :monthly_total_phone, :decimal
    add_column :incomes, :public_transport_work_school_shopping_etc, :decimal
    add_column :incomes, :other_transport, :decimal
    add_column :incomes, :car_insurance, :decimal
    add_column :incomes, :vehicle_tax, :decimal
    add_column :incomes, :fuel_petrol_diesel_oil_etc, :decimal
    add_column :incomes, :mot_and_car_maintenance, :decimal
    add_column :incomes, :breakdown_or_recovery, :decimal
    add_column :incomes, :parking_charges_or_tolls, :decimal
    add_column :incomes, :other_car_costs, :decimal
    add_column :incomes, :monthly_total_travel, :decimal
    add_column :incomes, :food_and_milk, :decimal
    add_column :incomes, :cleaning_and_toiletries, :decimal
    add_column :incomes, :newspapers_and_magazines, :decimal
    add_column :incomes, :cigarettes_tobacco_sweets, :decimal
    add_column :incomes, :alcohol, :decimal
    add_column :incomes, :laundry_and_dry_cleaning, :decimal
    add_column :incomes, :clothing_and_footwear, :decimal
    add_column :incomes, :nappies_and_baby_items, :decimal
    add_column :incomes, :pet_food, :decimal
    add_column :incomes, :other_housekeeping, :decimal
    add_column :incomes, :monthly_total_housekeeping, :decimal
    add_column :incomes, :health_dentist_glasses_prescriptions_health_ins, :decimal
    add_column :incomes, :repairs_house_maint_incl_window_cleaning_maint_contracts, :decimal
    add_column :incomes, :hairdressing_haircuts, :decimal
    add_column :incomes, :cable_satellite_and_internet, :decimal
    add_column :incomes, :tv_video_and_other_appliance_rental, :decimal
    add_column :incomes, :school_meals_and_meals_at_work, :decimal
    add_column :incomes, :pocket_money_and_school_trips, :decimal
    add_column :incomes, :lottery_and_pools_etc, :decimal
    add_column :incomes, :hobbies_leisure_sport_incl_puboutings_gym_etc, :decimal
    add_column :incomes, :gifts_christmas_birthdays_charity_etc, :decimal
    add_column :incomes, :vet_bills_and_pet_insurance, :decimal
    add_column :incomes, :other_expenditure1, :decimal
    add_column :incomes, :other_expenditure2, :decimal

  end
end
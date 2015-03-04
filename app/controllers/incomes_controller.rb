class IncomesController < ApplicationController 

  def index
    @incomes = Income.all
  end
  
    def show
    @income = Income.find(params[:id])
  end
  
  def new
    @income = Income.new
  end

  def create
    @income = Income.new(income_params)
    if @income.save
      redirect_to(:action => 'show', :id => @income.id)
    end
  end

  def edit
    @income = Income.find(params[:id])
  end
  
  def update
    @income = Income.find(params[:id])
    if @income.update_attributes(income_params)
      redirect_to(:action => 'show', :id => @income.id)
     else
      render 'edit'
    end
  end
  
  def destroy
    @income = Income.find(params[:id])
    @income.destroy
    redirect_to(:action => 'index')
  end
  private
  
  def income_params
 params.require(:income).permit(:clients_salary_wages,:partners_salary_wages,:other_income,:maintenance_childsupport,:boarders_lodgers,:non_dependant_contributions,:student_loans_grants,:other_other_income,:jobseekers_allowance_income,:jobseekers_allowance_contribution,:income_support,:working_tax_credit,:child_tax_credit,:child_benefit,:employment_support_allowance_statutory_sickpay,:dla_pip_attendance_allowance,:carers_allowance,:housing_benefit_local_housing_allowance,:council_tax_reduction,:other_including_universal_credit,:other_benefits,:state_pensions,:private_workpensions,:pension_credit,:other_pension,:total_value_propertyies,:mortgage_outstanding,:secured_loans_outstanding,:value_vehicles_less_hpoutstanding,:savings,:otherassets,:rent,:ground_rent_service_charges_factor_fees,:mortgage,:other_secured_loans,:mortgage_endowment_mortgage_ppi,:building_and_contents_insurance,:pension_and_life_insurance,:council_tax_rates_in_ni,:gas,:electricity,:water_na_in_scotland_or_ni,:other_utilities_coal_oil_calor_gas,:tv_licence,:magistrates_or_sheriff_court_fines,:maintenance_or_child_support,:hire_purchase_conditional_sale,:childcare_costs,:adult_care_costs,:other_essential1,:other_essenttial2,:other_essential3,:home_phone,:mobile_phone,:other_phone,:monthly_total_phone,:public_transport_work_school_shopping_etc,:other_transport,:car_insurance,:vehicle_tax,:fuel_petrol_diesel_oil_etc,:mot_and_car_maintenance,:breakdown_or_recovery,:parking_charges_or_tolls,:other_car_costs,:monthly_total_travel,:food_and_milk,:cleaning_and_toiletries,:newspapers_and_magazines,:cigarettes_tobacco_sweets,:alcohol,:laundry_and_dry_cleaning,:clothing_and_footwear,:nappies_and_baby_items,:pet_food,:other_housekeeping,:monthly_total_housekeeping,:health_dentist_glasses_prescriptions_health_ins,:repairs_house_maint_incl_window_cleaning_maint_contracts,:hairdressing_haircuts,:cable_satellite_and_internet,:tv_video_and_other_appliance_rental,:school_meals_and_meals_at_work,:pocket_money_and_school_trips,:lottery_and_pools_etc,:hobbies_leisure_sport_incl_puboutings_gym_etc,:gifts_christmas_birthdays_charity_etc,:vet_bills_and_pet_insurance,:other_expenditure1,:other_expenditure2)
  end
end

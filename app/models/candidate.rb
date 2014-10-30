class Candidate < ActiveRecord::Base
  validates_presence_of :first_name,:last_name,:city_of_birth,:date_of_birth,:country_of_birth,
                        :current_location,:preferred_work_location,:preferred_contact_phone,:email,:ex_merkler,
                        :current_job_title,:current_salary,:expect_salary,:onboard_date,:channel,
                        :field1,:field2
  
  
  
  
end

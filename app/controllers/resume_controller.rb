class ResumeController < ApplicationController
  helper :headshot
  # before_filter :authenticate_user!
  include Wicked::Wizard
  
  steps :start_page, :make_photo, :info, :question1, :question2, :question3, :question4,  :print_resume


 def show
  #  @user = current_user
  case step
  when :info
    @person = Person.create
    cookies[:person_id] = @person.id
  end  
   render_wizard
 end

 def update
  @person = Person.find(cookies[:person_id])
  case step
    when :info
      @person.attributes = params[:person]
    when :question1
      @person.variants << Variant.find_by_id(params[:variant].to_i)
    when :question2
      @person.variants << Variant.find_by_id(params[:variant].to_i)
    when :question3
      @person.variants << Variant.find_by_id(params[:variant].to_i)
    when :question4
      @person.variants << Variant.find_by_id(params[:variant].to_i)
    
    end
     
   render_wizard @person
  end

#def create

#  case step
# when :info
#   @person = Person.create
# end 
# 
#   redirect_to wizard_path(steps.first, :product_id => @product.id)
# end


end

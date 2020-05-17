class UserFormsController < ApplicationController
  def index
    
    @user_forms = UserForm.all

  end
  
  def new
    
  end

  def show
    @user_form = UserForm.find(params[:id]) 
  end
  

  def create
    @user_form = UserForm.new(user_form_params)
    @user_form.save
   if @user_form.save
     redirect_to user_forms_path #Происходит на стороне браузера
   else
     render action: 'new'
   end   
 end
 
 def destroy
  @user_form = UserForm.find(params[:id])
  @user_form.destroy
  redirect_to user_forms_path
 end
 
 
  private

  def user_form_params
    params.require(:user_form).permit(:first_name,
                                      :last_name,
                                      :date,
                                      :country,
                                      :html,
                                      :css,
                                      :ruby,
                                      :php,
                                      :javascript,
                                      :email,
                                      :password,
                                      :answer,
                                      :description)  
  end
end

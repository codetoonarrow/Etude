class TeachersController < ApplicationController
  def index
    @teachers = Teacher.all
  end

  def new
    @teacher = Teacher.new
  end

  def show
    @teacher = Teacher.find(params[:id])
  end

  def create
    @user = current_user
    @teacher = Teacher.new(
      price: teacher_params[:price],
      subject: teacher_params[:subject],
      postal_code: teacher_params[:postal_code],
      bio: teacher_params[:bio],
      picture: teacher_params[:picture],
      teaching_since: teacher_params[:teaching_since],
      street_address: teacher_params[:street_address],
      city: teacher_params[:city],
      province: teacher_params[:province],
      'user_id' => @user.id
    )

    if @teacher.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  private

  def teacher_params
    params.require(:teacher).permit(:price, :subject, :postal_code, :bio, :picture, :teaching_since, :street_address, :city, :province)
  end

end

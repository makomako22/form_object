class UsersController < ApplicationController
  before_action :set_user, only: %i[show edit update destroy]

  # GET /users
  # GET /users.json
  def index
    @informations = Information.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
  end

  # GET /users/new
  def new
    @user = UserForm.new
  end

  # GET /users/1/edit
  def edit
    @user_id = User.find(params[:id]).id
    @user = UserForm.new(first_name: @user.first_name, last_name: @user.last_name, email: @user.email, nickname: @user.information.nickname, location: @user.information.location, hobby: @user.information.hobby)
  end

  # POST /users
  # POST /users.json
  def create
    @user = UserForm.new(user_params)
    if @user.valid?
      @user.save
      redirect_to root_path
    else
      render :new
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    @user = UserForm.new(user_params)
    if @user.valid?
      @user.update(params[:id])
      redirect_to root_path
    else
      render :new
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  # def destroy
  #   コードを記述する
  #   redirect_to users_url, notice: 'User was successfully destroyed.'
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user_form).permit(:first_name, :last_name, :email, :nickname, :location, :hobby)
    end
end

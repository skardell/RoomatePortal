class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
  end

  # GET /users/new
  def new
    puts "AHHHHHHHHH #{@user.household.name} \r \n \n peep"
    if @user.code == NULL
      puts "AHHHHHHHHH #{@user.household.name} \r \n \n poop"
      if Households.exists?(name: @user.household.name)  #@user.household.exists?
        flash "Household Taken"
        redirect_to registration_path
      else
        @user = User.new
      end
    else
      if Households.exists?(name: @user.household.name) #@user.household.exists?
        if @user.code == @user.household.code
          @user = User.new
        else
          flash "invalid code"
          redirect_to registration_path
        end
      else
        flash "household does not exist"
      end
    end
    
  end

  # GET /users/1/edit
  def edit
  end
  
  

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)
    if @user.household_id == ""
      @user.household_id = 1
    end

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.fetch(:user, {})
    end
end

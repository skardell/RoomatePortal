class HouseholdUsersController < ApplicationController
  before_action :set_household_user, only: [:show, :edit, :update, :destroy]

  # GET /household_users
  # GET /household_users.json
  def index
    @household_users = HouseholdUser.all
  end

  # GET /household_users/1
  # GET /household_users/1.json
  def show
  end

  # GET /household_users/new
  def new
    @household_user = HouseholdUser.new
  end

  # GET /household_users/1/edit
  def edit
  end

  # POST /household_users
  # POST /household_users.json
  def create
    @household_user = HouseholdUser.new(household_user_params)

    respond_to do |format|
      if @household_user.save
        format.html { redirect_to @household_user, notice: 'Household user was successfully created.' }
        format.json { render :show, status: :created, location: @household_user }
      else
        format.html { render :new }
        format.json { render json: @household_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /household_users/1
  # PATCH/PUT /household_users/1.json
  def update
    respond_to do |format|
      if @household_user.update(household_user_params)
        format.html { redirect_to @household_user, notice: 'Household user was successfully updated.' }
        format.json { render :show, status: :ok, location: @household_user }
      else
        format.html { render :edit }
        format.json { render json: @household_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /household_users/1
  # DELETE /household_users/1.json
  def destroy
    @household_user.destroy
    respond_to do |format|
      format.html { redirect_to household_users_url, notice: 'Household user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_household_user
      @household_user = HouseholdUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def household_user_params
      params.fetch(:household_user, {})
    end
end

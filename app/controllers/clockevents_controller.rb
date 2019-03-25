class ClockeventsController < ApplicationController
  before_action :set_clockevent, only: [:show, :edit, :update, :destroy]

  before_action :authenticate_user!, except: [:show, :index]

  # GET /clockevents
  # GET /clockevents.json
  def index
    @clockevents = Clockevent.all
  end

  # GET /clockevents/1
  # GET /clockevents/1.json
  def show
  end

  # GET /clockevents/new
  def new
    @clockevent = Clockevent.new
  end

  # GET /clockevents/1/edit
  def edit
  end

  # POST /clockevents
  # POST /clockevents.json
  def create
    @clockevent = Clockevent.new(clockevent_params)
    @clockevent = current_user
    respond_to do |format|
      if @clockevent.save
        format.html { redirect_to @clockevent, notice: 'Clockevent was successfully created.' }
        format.json { render :show, status: :created, location: @clockevent }
      else
        format.html { render :new }
        format.json { render json: @clockevent.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clockevents/1
  # PATCH/PUT /clockevents/1.json
  def update
    respond_to do |format|
      if @clockevent.update(clockevent_params)
        format.html { redirect_to @clockevent, notice: 'Clockevent was successfully updated.' }
        format.json { render :show, status: :ok, location: @clockevent }
      else
        format.html { render :edit }
        format.json { render json: @clockevent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clockevents/1
  # DELETE /clockevents/1.json
  def destroy
    @clockevent.destroy
    respond_to do |format|
      format.html { redirect_to clockevents_url, notice: 'Clockevent was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_clockevent
      @clockevent = Clockevent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def clockevent_params
      params.require(:clockevent).permit(:type, :detail)
    end
end

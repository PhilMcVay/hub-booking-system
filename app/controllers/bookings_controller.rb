class BookingsController < ApplicationController

  load_and_authorize_resource
  before_action :set_booking, only: [:show, :edit, :update, :destroy]


  # GET /bookings
  # GET /bookings.json
  def index
    @bookings = Booking.all
  end

  # GET /bookings/1
  # GET /bookings/1.json
  def show
  end

  # GET /bookings/new
  def new
    @booking = Booking.new
    @areas = Area.all
    @selected = nil

    query = request.query_parameters
    if query['area'] != nil
      @selected = query['area']
    end
  end

  # GET /bookings/1/edit
  def edit
    @areas = Area.all
  end

  # POST /bookings
  # POST /bookings.json
  def create
    @booking = Booking.new(booking_params)
    @areas = Area.all

    respond_to do |format|
      if @booking.save
        format.html { redirect_to new_booking_detail_path(@booking) }
        format.json { render :show, status: :created, location: @booking }
      else
        format.html { render :new }
        format.json { render json: @booking.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bookings/1
  # PATCH/PUT /bookings/1.json
  def update
    @areas = Area.all

    respond_to do |format|
      if @booking.update(booking_params)
        format.html { redirect_to @booking, notice: 'Booking was successfully updated.' }
        format.json { render :show, status: :ok, location: @booking }
      else
        format.html { render :edit }
        format.json { render json: @booking.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bookings/1
  # DELETE /bookings/1.json
  def destroy
    @booking.destroy
    respond_to do |format|
      format.html { redirect_to bookings_url, notice: 'Booking was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  # Approve pending bookings
  def approve
    @booking = Booking.find(params[:booking_id])
    @detail = Detail.where(params[:booking_id]).take!
    @booking.update(status: "Approved")
    ConfirmationMailer.confirmation_email(@detail).deliver_now
    redirect_to bookings_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_booking
      @booking = Booking.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def booking_params
      params.require(:booking).permit(:start_time, :end_time, :no_of_people, {:resource => []}, :status, :area_id, :detail_id)
    end

end

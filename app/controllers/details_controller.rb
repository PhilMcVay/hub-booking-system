class DetailsController < ApplicationController
  before_action :set_detail, only: [:edit, :show, :update, :destroy]

  # GET /details/1
  # GET /details/1.json
  def show
    @booking = Booking.find(params[:booking_id])
  end

  # GET /details/new
  def new
    @detail = Detail.new
    @booking = Booking.find(params[:booking_id])
  end

  # GET /details/1/edit
  def edit
    @booking = Booking.find(params[:booking_id])
    @detail = @booking.details.find(params[:id])
  end

  # POST /details
  # POST /details.json
  def create
    @detail = Detail.new(detail_params)
    @booking = Booking.find(params[:booking_id])
    @detail.booking_id = @booking.id

    respond_to do |format|
      if @detail.save
        format.html { redirect_to @booking, notice: 'Detail was successfully created.' }
        format.json { render :show, status: :created, location: @detail }

        #Booking mailer
        BookingMailer.booking_email(@detail).deliver_now

      else
        format.html { render :new }
        format.json { render json: @detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /details/1
  # PATCH/PUT /details/1.json
  def update
    respond_to do |format|
      if @detail.update(detail_params)
        format.html { redirect_to booking_detail_path, notice: 'Detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @detail }
      else
        format.html { render :edit }
        format.json { render json: @detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /details/1
  # DELETE /details/1.json
  def destroy
    @detail.destroy
    respond_to do |format|
      format.html { redirect_to details_url, notice: 'Detail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_detail
      @detail = Detail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def detail_params
      params.require(:detail).permit(:name, :company, :email, :membership, :other_notes, :booking_id)
    end
end

class DataController < ApplicationController
  before_action :set_datum, only: %i[ show edit update destroy ]

  # GET /data or /data.json
  def index
    @data = Datum.all
  end

  # GET /data/1 or /data/1.json
  def show
    @datum=Datum.find(params[:id])

  end

  # GET /data/new
  def new
    @datum = Datum.new
  end

  # GET /data/1/edit
  def edit
  end

  # POST /data or /data.json
  def create
    @datum = Datum.new(datum_params)

    respond_to do |format|
      if @datum.save
        UserMailer.with(user_data: @datum).new_user_mail.deliver_later
        format.html { redirect_to datum_path(@datum), notice: "Your subscription was successfully created." }
        format.json { render :show, status: :created, location: @datum }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /data/1 or /data/1.json
  def update
    respond_to do |format|
      if @datum.update(datum_params)
        format.html { redirect_to datum_path(@datum), notice: "Datum was successfully updated." }
        format.json { render :show, status: :ok, location: @datum }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /data/1 or /data/1.json
  def destroy
    @datum.destroy

    respond_to do |format|
      format.html { redirect_to root_path, notice: "Datum was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_datum
      @datum = Datum.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def datum_params
      params.require(:datum).permit(:email, :name , :last_name, :phone, :country, :package, :question)
    end
end

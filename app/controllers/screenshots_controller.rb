class ScreenshotsController < ApplicationController
  before_action :set_screenshot, only: %i[ show edit update destroy ]


  # GET /screenshots/1 or /screenshots/1.json
  def show
    @screenshot = Screenshot.find_by_id(params[:id])
  end

  # GET /screenshots/new
  def new
    @screenshot = Screenshot.new
  end

  # GET /screenshots/1/edit
  def edit
  end

  # POST /screenshots or /screenshots.json
  def create
    @screenshot = Screenshot.new(screenshot_params)
    respond_to do |format|
      if @screenshot.save
        format.html { redirect_to screenshots_path, notice: "Screenshot was successfully created." }
      else
        format.html { render screenshots_path, status: :unprocessable_entity }
        format.json { render json: @screenshot.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /screenshots/1 or /screenshots/1.json
  def update
    respond_to do |format|
      if @screenshot.update(screenshot_params)
        format.html { redirect_to screenshots_path, notice: "Screenshot was successfully updated." }
      else
        format.html { render screenshots_path, status: :unprocessable_entity }
        format.json { render json: @screenshot.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /screenshots/1 or /screenshots/1.json
  def destroy
    @screenshot.destroy
    respond_to do |format|
      format.html { redirect_to screenshots_url, notice: "Screenshot was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_screenshot
      @screenshot = Screenshot.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def screenshot_params
      params.require(:screenshot).permit(:url, :user_id,:location, :title, :approved)
    end
end

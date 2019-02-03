class SimpleDiariesController < ApplicationController
  before_action :set_simple_diary, only: [:show, :edit, :update, :destroy]

  # GET /simple_diaries
  # GET /simple_diaries.json
  def index
    @simple_diaries = SimpleDiary.all
  end

  # GET /simple_diaries/1
  # GET /simple_diaries/1.json
  def show
  end

  # GET /simple_diaries/new
  def new
    @simple_diary = SimpleDiary.new
  end

  # GET /simple_diaries/1/edit
  def edit
  end

  # POST /simple_diaries
  # POST /simple_diaries.json
  def create
    @simple_diary = SimpleDiary.new(simple_diary_params)

    respond_to do |format|
      if @simple_diary.save
        format.html { redirect_to @simple_diary, notice: 'Simple diary was successfully created.' }
        format.json { render :show, status: :created, location: @simple_diary }
      else
        format.html { render :new }
        format.json { render json: @simple_diary.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /simple_diaries/1
  # PATCH/PUT /simple_diaries/1.json
  def update
    respond_to do |format|
      if @simple_diary.update(simple_diary_params)
        format.html { redirect_to @simple_diary, notice: 'Simple diary was successfully updated.' }
        format.json { render :show, status: :ok, location: @simple_diary }
      else
        format.html { render :edit }
        format.json { render json: @simple_diary.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /simple_diaries/1
  # DELETE /simple_diaries/1.json
  def destroy
    @simple_diary.destroy
    respond_to do |format|
      format.html { redirect_to simple_diaries_url, notice: 'Simple diary was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_simple_diary
      @simple_diary = SimpleDiary.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def simple_diary_params
      params.require(:simple_diary).permit(:title, :body)
    end
end

class QuestionsController < ApplicationController
  before_action :set_question, only: [:show, :edit, :update, :destroy]

  def authenticate_user_admin
  if session[:user_id]
      @current_user = User.find session[:user_id]
    if @current_user.username=="shivam"
      # set current user object to @current_user object variable
      return true 
    end
    return false
  else
  redirect_to(:controller => 'sessions', :action => 'login')
  return false
  end
  end

#has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  # GET /questions.json
  def index
    authenticate_user_admin
    @questions = Question.all
  end

    # Never trust parameters from the scary internet, only allow the white list through.
    def question_params
      params.require(:question).permit(:name, :answer, :level, :image)
    end

  # GET /questions/1
  # GET /questions/1.json
  def show
    authenticate_user_admin
  end

  # GET /questions/new
  def new
    authenticate_user_admin
    @question = Question.new
  end

  # GET /questions/1/edit
  def edit
    authenticate_user_admin
  end

  # POST /questions
  # POST /questions.json
  def create
    authenticate_user_admin
    @question = Question.new(question_params)

    respond_to do |format|
      if @question.save
        format.html { redirect_to @question, notice: 'Question was successfully created.' }
        format.json { render :show, status: :created, location: @question }
      else
        format.html { render :new }
        format.json { render json: @question.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /questions/1
  # PATCH/PUT /questions/1.json
  def update
    authenticate_user_admin
    respond_to do |format|
      if @question.update(question_params)
        format.html { redirect_to @question, notice: 'Question was successfully updated.' }
        format.json { render :show, status: :ok, location: @question }
      else
        format.html { render :edit }
        format.json { render json: @question.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /questions/1
  # DELETE /questions/1.json
  def destroy
    authenticate_user_admin
    @question.destroy
    respond_to do |format|
      format.html { redirect_to questions_url, notice: 'Question was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_question
    authenticate_user_admin
      @question = Question.find(params[:id])
    end

end

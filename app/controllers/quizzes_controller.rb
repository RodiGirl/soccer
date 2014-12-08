class QuizzesController < ApplicationController
  before_action :set_quiz, only: [:show, :edit, :update, :destroy]
  respond_to :html, :xml, :json

  def index
    @quizzes = Quiz.all
    respond_with(@quizzes)
  end

  def show
    @quiz.user_answer = params[:user_answer]
    @quiz.save
    respond_with(@quiz)
  end

  def new
    @quiz = Quiz.new
    @articles = Article.all
    respond_with(@quiz)
  end

  def edit
    @articles = Article.all
  end

  def create
    @quiz = Quiz.new(quiz_params)
    @quiz.save
    respond_with(@quiz)
  end

  def update
    @quiz.update(quiz_params)
    respond_with(@quiz)
  end

  def destroy
    @quiz.destroy
    respond_with(@quiz)
  end

  private
    def set_quiz
      @quiz = Quiz.find(params[:id])
    end

    def quiz_params
      params.require(:quiz).permit(:question, :corret_answer, :video, :user_answer, :article_id)
    end
end

class TutorialsController < ApplicationController
    layout :check_layout 
  def bookList
   @book =Book.all
  end

  def chapterList
    if params[:id].nil? 
             @chapter =Chapter.all
    else
        @id=params[:id]
        @chapter =Chapter.where("book_id = #{@id}")
    end    
  end

  def pageList
    if params[:id].nil? 
             @page =Page.all
    else
        @id=params[:id]
        @page =Page.where("chapter_id = #{@id}")
    end
  end

  def questionList
    if params[:id].nil? 
             @question =Question.all
             @page = Page.all
    else
        @id=params[:id]
        @question =Question.where("page_id = #{@id}")
        @single_page = Page.find(@id)
    end
 
  end

  def answerList
     if params[:id].nil? 
             @answer =Answer.all
             @chapter = Chapter.all
    else
        @id=params[:id]
        @answer =Answer.where("question_id = #{@id}")
        
    end
 
  end
  def profile
    
  end
end

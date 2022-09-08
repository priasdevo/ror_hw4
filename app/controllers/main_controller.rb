class MainController < ApplicationController
  def test
    @subn = params[:subjectno]
    @score = params[:Score]
    @subj = params[:subject]
    @recur = params[:recur]
    if @score == nil
      @score = []
    end
    if @subj == nil
      @subj = []
    end
    if @score.length.to_i == @subn.to_i && @subj.length.to_i == @subn.to_i
        check = 0
        i=0
        loop do
          i=i+1
          if @score[i-1]=="" || @subj[i-1]==""
            check=check+1
          end
          break if i>@subn.to_i-1
        end
        if check==0
          redirect_to :controller=>'main',:action=>'cal_post',:Score=>@score,:subj=>@subj,:subn=>@subn
        end
    end
  end

  def index
  end

  def cal_post
    @subn = params[:subn]
    @score = params[:Score]
    @subj = params[:subj]
  end
end
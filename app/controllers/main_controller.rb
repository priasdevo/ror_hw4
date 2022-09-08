class MainController < ApplicationController
  def test
    @subn = params[:subjectno]
    @score = params[:Score]
    @subj = params[:subject]
    if @score == nil
      @score = []
    end
    if @subj == nil
      @subj = []
    end
    if @score.length.to_i == @subn.to_i && @subj.length.to_i == @subn.to_i
        redirect_to :controller=>'main',:action=>'cal_post',:Score=>@score,:subj=>@subj,:subn=>@subn
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
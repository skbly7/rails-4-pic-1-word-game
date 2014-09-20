class PlayController < ApplicationController
	def authenticate_user
	if session[:user_id]
	# set current user object to @current_user object variable
	@current_user = User.find session[:user_id]
	return true	
	else
	redirect_to(:controller => 'sessions', :action => 'login')
	return false
	end
	end
	def index
		authenticate_user
	end
	def index1
		authenticate_user
		@ques = Question.where(' level = "1"')
	end
	def index2
		authenticate_user
		@ques = Question.where(' level = "2"')
	end
	def index3
		authenticate_user
		@ques = Question.where(' level = "3"')
	end
	def mark1
		authenticate_user
		@score=give_marks
		current_user = User.find session[:user_id]
		@scoreo=current_user.highest1
		if @score > @scoreo
			current_user.highest1=@score
			current_user.save
		end
		render "index"
	end
	def mark2
		authenticate_user
		@score=give_marks
		current_user = User.find session[:user_id]
		@scoreo=current_user.highest2
		if @score > @scoreo
			current_user.highest2=@score
			current_user.save
		end
		render "index"
	end
	def mark3
		authenticate_user
		@score=give_marks
		current_user = User.find session[:user_id]
		@scoreo=current_user.highest3
		if @score > @scoreo
			current_user.highest3=@score
			current_user.save
		end
		render "index"
	end
	def give_marks
		authenticate_user
		@answer=params
		score=0
#		@yoyo=Question.find(1234)
		@answer.each do |key,value|

#			key=1
			if(Question.find_by_id key)
				test=Question.find(key)
				if test.answer==value
					score=score+3
				else
					score=score-1
				end
			end
		end
		return score
	end
end
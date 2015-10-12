class HackgameController < ApplicationController

	def CheckPassword
		level_id = params[:level]
		password = params[:pwd]
		authcode = params[:auth]
		if level_id == "0" && password == "hahahahahaha"
			redirect_to "https://hackgame.cnbirdlink.com/hackgame/1.html"
		elsif level_id == "1" && password == "password" && authcode == "00001234567"
			redirect_to "https://hackgame.cnbirdlink.com/hackgame/2.html"
		elsif level_id == "2" && password == "nishigehaoren"
			redirect_to "https://hackgame.cnbirdlink.com/hackgame/3.html"
		elsif level_id == "3" && password == "lalalalalala"
			redirect_to "https://hackgame.cnbirdlink.com/hackgame/4.html"
			cookies[:level4_pwd] = "gongxigongxi"
		elsif level_id == "4" && password == "gongxigongxi"
			redirect_to "https://hackgame.cnbirdlink.com/hackgame/5.html"
		elsif level_id == "5" && password == "A401"
			redirect_to "http://oss.lzu.edu.cn/2015/"
		else
			redirect_to request.env["HTTP_REFERER"]
		end
	end
	
end

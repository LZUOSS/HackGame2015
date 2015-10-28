class HackgameController < ApplicationController

	def CheckPassword
		level_id = params[:level]
		password = params[:pwd]
		authcode = params[:auth]
		if level_id == "0" && password == "huanyinglaidaohackgame"
			redirect_to "https://hackgame.cnbirdlink.com/hackgame/1_xdaserqd.html"
		elsif level_id == "1" && password == "zhouqingguo"
			redirect_to "https://hackgame.cnbirdlink.com/hackgame/2-dfsff.html"
		elsif level_id == "2" && password == "duibuqinishigehaoren"
			redirect_to "https://hackgame.cnbirdlink.com/hackgame/3-dsfad.html"
		elsif level_id == "3" && password == "lalalalalala"
			redirect_to "https://hackgame.cnbirdlink.com/hackgame/4-dsfas.html"
			cookies[:level4_pwd] = "tingtianyouming..."
		elsif level_id == "4" && password == "tingtianyouming..."
			redirect_to "https://hackgame.cnbirdlink.com/hackgame/5_ereqfdsf.html"
		elsif level_id == "5" && password == "320" && authcode == "23333333"
			redirect_to "https://hackgame.cnbirdlink.com/hackgame/6_fasdcfac.html"
		elsif level_id == "6" && password == 'zhouding+nan+sumiaoling'
			redirect_to "https://hackgame.cnbirdlink.com/hackgame/7_fsdfas.html"
		elsif level_id == "7" && password == "woaini"
			redirect_to "https://hackgame.cnbirdlink.com/hackgame/8_dfafasd.html"	
		elsif level_id == "8" && password == "2366666"
			redirect_to "https://hackgame.cnbirdlink.com/hackgame/finish_game.html"
		else
			redirect_to request.env["HTTP_REFERER"]
		end
	end
	
	def GetPassword
		password = params[:pwd]
		respond_to do |format|
			if password == '2366666'
				format.html {  }
        		render json: {"result": "true"}
        	else
        		format.html {  }
        		render json: {"result": "false"}
        	end
        end
	end
end

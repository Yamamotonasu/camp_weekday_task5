class FortunetellingsController < ApplicationController
  def show
    @birthday = params[:birthday]
    # 8桁で入力されたパラメータを参照して代入する
    @year = @birthday[0, 4].to_i
    @month = @birthday[4, 2].to_i
    @day = @birthday[6, 2].to_i
    @constellation = determine_constellation(@month, @day)
  end
end

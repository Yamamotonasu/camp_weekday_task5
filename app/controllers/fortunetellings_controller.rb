class FortunetellingsController < ApplicationController
  include FortunetellingsHelper

  def show
    @birthday = params[:birthday]
    # 8桁で入力されたパラメータを参照して代入する
    @year = @birthday[0, 4]
    @month = @birthday[4, 2]
    @day = @birthday[6, 2]
    @constellation = determine_constellation(@month, @day)
    @age = calculate_age(@birthday)
    @fortunes = %w(大吉 中吉 吉 小吉 凶 大凶).sample
  end
end

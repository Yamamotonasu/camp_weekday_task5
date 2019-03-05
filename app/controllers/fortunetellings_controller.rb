class FortunetellingsController < ApplicationController
  def show
    @birthday = params[:birthday]
    # 8桁で入力されたパラメータを参照して代入する
    @year = @birthday[0, 4].to_i
    @month = @birthday[4, 2].to_i
    @day = @birthday[6, 2].to_i
    @constellation = determine_constellation(@month, @day)
    @age = calculate_age(@birthday)
    @fortunes = %w(大吉 中吉 吉 小吉 凶 大凶)
  end
end

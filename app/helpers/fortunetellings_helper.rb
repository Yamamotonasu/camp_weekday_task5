module FortunetellingsHelper
  # 生まれた月と日を渡すと星座を返す
  def determine_constellation(month, day)
    if month == 1 && day.between?(20, 31) || month == 2 && day.between?(1, 18)
      '水瓶'
    elsif month == 2 && day.between?(19, 29) || month == 3 && day.between?(1, 20)
      '魚'
    elsif month == 3 && day.between?(21, 31) || month == 4 && day.between?(1, 19)
      '牡羊'
    elsif month == 4 && day.between?(20, 30) || month == 5 && day.between?(1, 20)
      '牡牛'
    elsif month == 5 && day.between?(21, 31) || month == 6 && day.between?(1, 21)
      '双子'
    elsif month == 6 && day.between?(22, 30) || month == 7 && day.between?(1, 22)
      '蟹'
    elsif month == 7 && day.between?(23, 31) || month == 8 && day.between?(1, 22)
      '獅子'
    elsif month == 8 && day.between?(23, 31) || month == 9 && day.between?(1, 22)
      '乙女'
    elsif month == 9 && day.between?(23, 30) || month == 10 && day.between?(1, 23)
      '天秤'
    elsif month == 10 && day.between?(24, 31) || month == 11 && day.between?(1, 22)
      '蠍'
    elsif month == 11 && day.between?(23, 30) || month == 12 && day.between?(1, 21)
      '射手'
    elsif month == 12 && day.between?(22, 31) || month == 1 && day.between?(1, 19)
      '山羊'
    end
  end

  # yyyymmdd形式で生年月日を渡すと年齢を返す
  def calculate_age(birthday)
    (Date.today.strftime("%Y%m%d").to_i - birthday.to_i) / 10000
  end

  # yyyymmdd形式で有効な生年月日ならtrueを返す
  def valid_date?(birthday)
    Date.valid_date?(@year, @month, @day) && @birthday.length == 8 && Date.today.strftime("%Y%m%d").to_i >= @birthday.to_i
  end

  # 今日が誕生日ならtrueを返す
  def is_birthday?(birthday)
    Date.today.strftime("%m%d").to_i == birthday[4, 4].to_i
  end
end

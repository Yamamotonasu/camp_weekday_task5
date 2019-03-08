module FortunetellingsHelper
  # 生まれた月と日を渡すと星座を返す
  def determine_constellation(month, day)
    days = (month + day).to_i

    if days.between?(120, 218)
      '水瓶'
    elsif days.between?(219, 320)
      '魚'
    elsif days.between?(321, 419)
      '牡羊'
    elsif days.between?(420, 520)
      '牡牛'
    elsif days.between?(521, 621)
      '双子'
    elsif days.between?(622, 722)
      '蟹'
    elsif days.between?(723, 822)
      '獅子'
    elsif days.between?(823, 922)
      '乙女'
    elsif days.between?(923, 1023)
      '天秤'
    elsif days.between?(1024, 1122)
      '蠍'
    elsif days.between?(1123, 1221)
      '射手'
    elsif days.between?(1222, 1231) || days.between?(101, 119)
      '山羊'
    end
  end

  # yyyymmdd形式で生年月日を渡すと年齢を返す
  def calculate_age(birthday)
    (Date.today.strftime("%Y%m%d").to_i - birthday.to_i) / 10000
  end

  # yyyymmdd形式で有効な生年月日ならtrueを返す
  # 存在する日付であること、入力された値が8桁である事、未来の日付は無効であること
  def valid_birthday?(birthday)
    Date.valid_date?(birthday[0,4].to_i, birthday[4,2].to_i, birthday[6, 2].to_i) && birthday.length == 8 && Date.today.strftime("%Y%m%d").to_i >= birthday.to_i
  end

  # 今日が誕生日ならtrueを返す
  def is_birthday?(birthday)
    Date.today.strftime("%m%d") == birthday[4, 4]
  end
end

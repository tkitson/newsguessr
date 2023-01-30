@todays_paper = Newspaper.find_by(live: true)

if @user_guess.persisted?
  json.year @todays_paper.date.year
  if @user_guess.date.year == @todays_paper.date.year
    json.result "correct"
  elsif @user_guess.date.year > @todays_paper.date.year
    json.result "too late!"
  elsif @user_guess.date.year < @todays_paper.date.year
    json.result "too early!"
  end
end

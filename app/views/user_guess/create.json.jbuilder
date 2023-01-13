@answer = Answer.last
if @user_guess.persisted?
  json.year @answer.date.year
  if @user_guess.date.year == @answer.date.year
    json.result "correct"
  elsif @user_guess.date.year > @answer.date.year
    json.result "too late!"
  elsif @user_guess.date.year < @answer.date.year
    json.result "too early!"
  end
end

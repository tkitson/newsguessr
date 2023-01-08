@answer = Answer.last
if @user_guess.persisted?
  if @user_guess.date.year == @answer.date.year
    # json.form render(partial: "pages/form", formats: :html, locals: {user_guess: UserGuess.new})
    # json.correct render(partial: "correct", formats: :html)
    json.result "correct"
  # else
  #   json.form render(partial: "pages/form", formats: :html, locals: {user_guess: UserGuess.new})
  #   # json.incorrect render(partial: "incorrect", formats: :html)
  #   json.result "incorrect"
  end
end

require "spec_helper.rb"

describe "тесты welcome_controller" do

  before(:each) do
    visit '/'
  end

  it "тест контент" do
    expect(page).to have_title("ShowYandexPhoto")
    expect(page).to have_button("Показать 5 случайных фотографий")
    expect(page).to have_link("История")
  end

  it "переход на страницу истории" do
    click_link "История"
    expect(page).to have_content("История просмотра фотографий")
    expect(page).to have_link("На главную")
  end

  it "щелчок по кнопке Показать 5 случайных фотографий" do
    click_button "Показать 5 случайных фотографий"
  end

end
require "spec_helper.rb"

describe "тесты HistoryOfPhoto" do

  before(:each) do
    @historyOfPhoto = HistoryOfPhoto.new(title: "Фото 1", url: "www./photo_1.gpg")
  end

  it "проверка валидации" do
    expect(@historyOfPhoto).to be_valid
  end

  it "должно увеличить число просмотров" do
    hits = @historyOfPhoto.hits
    @historyOfPhoto.increment_hits.should == hits + 1
  end

  it "вывод в виде строки" do
    @historyOfPhoto.to_s.should == "Фото 1:www./photo_1.gpg"
  end

end
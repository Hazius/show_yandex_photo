require 'spec_helper'

describe "history_of_photos/new" do
  before(:each) do
    assign(:history_of_photo, stub_model(HistoryOfPhoto,
      :title => "MyString",
      :url => "MyString",
      :hits => "MyString"
    ).as_new_record)
  end

  it "renders new history_of_photo form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", history_of_photos_path, "post" do
      assert_select "input#history_of_photo_title[name=?]", "history_of_photo[title]"
      assert_select "input#history_of_photo_url[name=?]", "history_of_photo[url]"
      assert_select "input#history_of_photo_hits[name=?]", "history_of_photo[hits]"
    end
  end
end

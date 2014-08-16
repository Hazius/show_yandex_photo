require 'spec_helper'

describe "history_of_photos/show" do
  before(:each) do
    @history_of_photo = assign(:history_of_photo, stub_model(HistoryOfPhoto,
      :title => "Title",
      :url => "Url",
      :hits => "Hits"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/Url/)
    rendered.should match(/Hits/)
  end
end

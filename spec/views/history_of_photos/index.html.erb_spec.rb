require 'spec_helper'

describe "history_of_photos/index" do
  before(:each) do
    assign(:history_of_photos, [
      stub_model(HistoryOfPhoto,
        :title => "Title",
        :url => "Url",
        :hits => "Hits"
      ),
      stub_model(HistoryOfPhoto,
        :title => "Title",
        :url => "Url",
        :hits => "Hits"
      )
    ])
  end

  it "renders a list of history_of_photos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Url".to_s, :count => 2
    assert_select "tr>td", :text => "Hits".to_s, :count => 2
  end
end

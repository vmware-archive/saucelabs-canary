require File.expand_path(File.dirname(__FILE__) + "/selenium_helper")
describe "widget page" do
  it "checks proper widget operations" do
    visit "/widget"
    assert_contain "This is widget/show.html.erb"    
    click_link "Go to edit page"
    assert_contain "Your test appears to be working correctly"
  end
end

describe "second describe block" do
  it "checks proper widget operations" do
    visit "/widget"
    assert_contain "This is widget/show.html.erb"
    click_link "Go to edit page"
    assert_contain "Your test appears to be working correctly"
  end

  describe "nested describe blocks" do
    it "checks proper widget operations" do
      visit "/widget"
      assert_contain "This is widget/show.html.erb"
      click_link "Go to edit page"
      assert_contain "Your test appears to be working correctly"
    end

    it "works for multiple tests" do
      visit "/widget"
      assert_contain "This is widget/show.html.erb"
      click_link "Go to edit page"
      assert_contain "Your test appears to be working correctly"
    end

  end

end

class WidgetTest < ActionController::IntegrationTest
  
  def test_widget
    visit "/widget"
    assert_contain "This is widget/show.html.erb"    
    click_link "Go to edit page"
    assert_contain "Your test appears to be working correctly"
  end
end
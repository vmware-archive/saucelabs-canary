class WidgetTest < ActionController::IntegrationTest
  
  def test_widget
    visit "/widget"
    click_link "Go to edit page"
    assert_contain "Your test appears to be working correctly"
  end
end
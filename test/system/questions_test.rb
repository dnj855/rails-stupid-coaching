require "application_system_test_case"

class QuestionsTest < ApplicationSystemTestCase
  test "visiting /ask renders the form" do
    visit ask_url
    assert_selector "p", text: "Ask anything you want to your coach"
  end

  test "saying Hello yields a grumpy response from the coach" do
    visit ask_url
    fill_in "question", with: "Hello"
    click_on "Ask"
    take_screenshot
    assert_text "I don't care, get dressed and go to work!"
  end

  test "asking a question yields a grumpy order from the coach" do
    visit ask_url
    fill_in "question", with: "How are you today?"
    click_on "Ask"
    take_screenshot
    assert_text "Silly question, get dressed and go to work!"
  end

  test "going to work makes the coach happy" do
    visit ask_url
    fill_in "question", with: "I am going to work"
    click_on "Ask"
    take_screenshot
    assert_text "Great!"
  end
  
  test "yelling you are going to work makes the coach happy" do
    visit ask_url
    fill_in "question", with: "I AM GOING TO WORK"
    click_on "Ask"
    take_screenshot
    assert_text "Great!"
  end

end

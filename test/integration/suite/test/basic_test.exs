defmodule BasicTest do
  use ExUnit.Case

  use Hound.Helpers

  hound_session

  defp find_title do
    find_element(:class, "title")
  end

  test "shows hello" do
    navigate_to("/Main.elm")

    # take_screenshot("./tmp/not-found.png")
    title = find_title()

    assert inner_html(title) == "Hello"
  end

end

require "application_system_test_case"

class UsersTest < ApplicationSystemTestCase
   test "visiting the index" do
     visit users_path
     assert_selector "h1", text: "Users"
   end
end

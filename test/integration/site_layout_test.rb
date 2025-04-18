require "test_helper"

class SiteLayoutTest < ActionDispatch::IntegrationTest

  # ログインしていない状態でのレイアウトテスト
  test "layout links when not logged in" do
    get root_path
    assert_template 'static_pages/home'
    assert_select "a[href=?]", root_path, count: 2
    assert_select "a[href=?]", help_path
    assert_select "a[href=?]", login_path
    assert_select "a[href=?]", users_path, count: 0
    assert_select "a[href=?]", about_path
    assert_select "a[href=?]", contact_path

    # ダミーのidを指定
    assert_select "a[href=?]", user_path(1), count: 0
    assert_select "a[href=?]", edit_user_path(1), count: 0
    assert_select "a[href=?]", logout_path, count: 0

    get contact_path
    assert_select "title", full_title("Contact")
    get signup_path
    assert_select "title", full_title("Sign up")
  end

  # ログインしている状態でのレイアウトテスト
  test "layout links when logged in" do
    log_in_as(users(:michael))
    get root_path
    assert_template 'static_pages/home'
    assert_select "a[href=?]", root_path, count: 2
    assert_select "a[href=?]", help_path
    assert_select "a[href=?]", login_path, count: 0

    assert_select "a[href=?]", users_path
    assert_select "a[href=?]", about_path
    assert_select "a[href=?]", contact_path
    assert_select "a[href=?]", user_path(users(:michael))
    assert_select "a[href=?]", edit_user_path(users(:michael))
    assert_select "a[href=?]", logout_path
  end
end

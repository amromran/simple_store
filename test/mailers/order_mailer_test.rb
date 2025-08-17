require "test_helper"

class OrderMailerTest < ActionMailer::TestCase
  test "received" do
    mail = OrderMailer.received(orders(:one))
    assert_equal "Order Confirmation", mail.subject
    assert_equal [ "amr@example.org" ], mail.to
    assert_equal [ "sample@example.com" ], mail.from
    #assert_match /1 x Placeholder/, mail.body.encoded
  end

  test "shipped" do
    mail = OrderMailer.shipped(orders(:one))
    assert_equal "Order Shipped", mail.subject
    assert_equal [ "amr@example.org" ], mail.to
    assert_equal [ "sample@example.com" ], mail.from
    #assert_match %r{
    #  <td[^>]*>1<\/td>\s*
    #  <td>&times;<\/td>\s*
    #  <td[^>]*>\s*The\sPragmatic\sProgrammer\s*</td>
    #}x, mail.body.encoded
  end
end
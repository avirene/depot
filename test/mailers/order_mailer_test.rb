require 'test_helper'

class OrderMailerTest < ActionMailer::TestCase
  test "received" do
    orders(:one).add_line_items_from_cart(carts(:one))
    mail = OrderMailer.received(orders(:one))
    assert_equal "Pragmatic Store Order Confirmation", mail.subject
    assert_equal ["dave@example.org"], mail.to
    assert_equal ["depot@example.com"], mail.from
    assert_match /Programming Ruby 1.9/, mail.body.encoded
  end

  test "shipped" do
    orders(:one).add_line_items_from_cart(carts(:one))
    mail = OrderMailer.shipped(orders(:one))
    assert_equal "Pragmatic Store Order Shipped", mail.subject
    assert_equal ["dave@example.org"], mail.to
    assert_equal ["depot@example.com"], mail.from
    assert_match /<td[^>]*>1<\/td>\s*<td>Programming Ruby 1.9<\/td>/,
      mail.body.encoded
  end

end

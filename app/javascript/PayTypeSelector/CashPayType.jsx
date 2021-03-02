import React from 'react'

class CashPayType extends React.Component {
  render() {
    return (
      <div>
        <div className="field">
          <label htmlFor="order_cash_amount">{I18n.t("orders.form.cash_pay_type.cash_amount")}</label>
          <input type="text"
                 name="order[cash_amount]" 
                 id="order_cash_amount" />
        </div>
        <div className="field">
          <label htmlFor="order_change">{I18n.t("orders.form.cash_pay_type.change")}</label>
          <input type="text"
                 name="order[change]" 
                 id="order_change"
                 size="9"
                 placeholder="How much change will you need?" />
        </div>
      </div>
    );
  }
}
export default CashPayType
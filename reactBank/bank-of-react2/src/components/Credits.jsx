import React, {Component} from 'react';
import AccountBalance from './AccountBalance';
import {Link} from 'react-router-dom';
import Transactions from './Transactions'

class Credits extends Component {
  render() {
    const credits = this.props.credits;

    const CreditComponent = credits.map((credit, i) => {
      return 
         <Transactions
             key={i}
             amount={credit.amount}
             date={credit.date}
             description={credit.description}
         />
    })
      return (
         <div>
            <h1>Credits</h1>
            <h3>Account Balance: {this.props.accountBalance}</h3>
            <Link to="/">Home</Link><Link to="/debits">   Debits</Link>
            <h3>New Transaction</h3>
            
            <h2>Credit History</h2>
            {CreditComponent}
          </div>
      );
  }
}
export default Credits;
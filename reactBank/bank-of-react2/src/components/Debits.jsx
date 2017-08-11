import React, {Component} from 'react';
import {Link} from 'react-router-dom';
import Transactions from './Transactions';
import TransactionForm from './TransactionForm';
import AccountBalance from './AccountBalance';

class Debits extends Component {
  render() {
    const debits = this.props.debits;

    const DebitComponent = debits.map((debit, i) => {
      return
       <Transactions
         key={i}
         amount={debit.amount}
         date={debit.date}
         description={debit.description}
       />
    })
      return (
       <div>
         <h1>Debits</h1>
         <h3>Account Balance: {this.props.accountBalance}</h3>
         <Link to="/">Home</Link><Link to="/credits">   Credits</Link>
         <h3>New Transaction</h3>
         <TransactionForm newDebit={this.props.newDebit} />
         <h2>Debit History</h2>
            {DebitComponent}
       </div>
      );
  }
}

export default Debits;
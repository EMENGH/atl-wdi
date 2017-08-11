import React, {Component} from 'react'

class TransactionForm extends Component {
  constructor() {
    super();

    this.state = {
      newTransaction: {}
    }
  }

  _handleNewTransactionChange = (event) => {
    const attributeName = event.target.name;
    const attributeValue = event.target.value;

    const newTransaction = {...this.state.newTransaction};
    newTransaction[attributeName] = attributeValue

    this.setState({newTransaction})
  }

  _addNewTransaction = (event) => {
    event.preventDefault();

    this.props.newDebit(this.state.newTransaction)
  }
  render(){
    return (
      <div>
        <form onSubmit={this._addNewTransaction}>
          <div><input type="text" name="amount" placeholder="Amount" onChange={this._handleNewTransactionChange}/></div>
          <div><input type="text" name="description" placeholder="Description" onChange={this._handleNewTransactionChange}/></div>
          <div><input type="submit" value="Add Transaction"/></div>
        </form>
      </div>
    )
  }
}

export default TransactionForm
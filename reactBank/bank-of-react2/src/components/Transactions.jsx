import React, {Component} from 'react';

class Transactions extends Component {
  render() {
    return(
      <div>
        <h3>{this.props.amount}</h3>
        <h6>{this.props.description}</h6>
        <h6>{this.props.date}</h6>

      </div>
    )
  }
}

export default Transactions
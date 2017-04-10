import React from 'react';

class Calculator extends React.Component {
  constructor(props) {
    super(props);

    this.state = { num1: "", num2: "", result: 0}
    this.setNum1 = this.setNum1.bind(this)
    this.setNum2 = this.setNum2.bind(this)

  }

  setNum1(e) {
    if (parseInt(e.target.value)) 
    const num1 = e.target.value
  }

  setNum2(e) {

  }
  render() {
    return (
      <div>
        <h1>{this.state.result}</h1> // replace this with your code
      </div>
    );
  }
}

export default Calculator;

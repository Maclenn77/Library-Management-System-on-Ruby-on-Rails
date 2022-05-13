import React from "react"
import PropTypes from "prop-types"
import 'bootstrap/dist/css/bootstrap.min.css';

class HelloWorld extends React.Component {
  render () {
    return (
      <React.Fragment>
        <p className="text-danger">Greeting: {this.props.greeting}</p>
      </React.Fragment>
    );
  }
}

HelloWorld.propTypes = {
  greeting: PropTypes.string
};
export default HelloWorld

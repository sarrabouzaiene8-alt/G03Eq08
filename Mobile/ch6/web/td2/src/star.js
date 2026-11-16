import React from 'react';

class Star extends React.Component {
  render() {
    return (
      <img 
        src={this.props.isOn ? process.env.PUBLIC_URL + '/star_on.png' : process.env.PUBLIC_URL + '/star_off.png'} 
        onClick={this.props.onClick} 
        alt="étoile"
        style={{ width: '50px', margin: '5px', cursor: 'pointer' }} 
      />
    );
  }
}

export default Star;
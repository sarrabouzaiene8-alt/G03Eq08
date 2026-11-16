import React from "react";

class Pictogramme extends React.Component {
  render() {
    return (
      <div style={{ marginBottom: '20px' }}>
        <button 
          onClick={this.props.onAimerClick}
          style={{ backgroundColor: '#007bff', color: 'white', border: 'none', padding: '10px 20px', borderRadius: '5px', cursor: 'pointer' }}
        >
          <i className="fa fa-thumbs-up" style={{ marginRight: '5px' }}></i> Aimer
        </button>
        <span style={{ float: 'right', color: '#0056b3' }}>Pictogramme</span>
      </div>
    );
  }
}

export default Pictogramme;
import React from "react";

class Icone extends React.Component {
  render() {
    return (
      <div style={{ border: '1px solid #0056b3', padding: '10px', marginBottom: '10px', display: 'flex', alignItems: 'center' }}>
        <i className="fa fa-eye" style={{ fontSize: '24px', marginRight: '10px', color: '#0056b3' }}></i>
        <span style={{ color: '#0056b3' }}>Icone</span>
      </div>
    );
  }
}

export default Icone;
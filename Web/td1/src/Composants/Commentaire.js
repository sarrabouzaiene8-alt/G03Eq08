import React from "react";

class Commentaire extends React.Component {
  render() {
    return (
      <div style={{ border: '2px solid green', borderRadius: '10px', padding: '15px' }}>
        <input 
          type="text" 
          placeholder="Tapez un commentaire..." 
          style={{ width: '100%', padding: '10px', border: '1px solid #ccc', borderRadius: '5px', boxSizing: 'border-box' }}
        />
        <div style={{ textAlign: 'right', color: 'green', marginTop: '10px', fontSize: '0.9em' }}>
          120 Restants <span style={{ marginLeft: '10px', fontWeight: 'bold' }}>Commentaire</span>
        </div>
      </div>
    );
  }
}

export default Commentaire;
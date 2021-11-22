import React from "react"

const LibraryNew = () => {
  return(
    <div>
      <h1>Add New Library:</h1>
      <form action = "/libraries" method = "post">
        <p>Library Name:</p>
        <input name = "library[name]" />
        <p>Street Address:</p>
        <input name = "library[street_address]"/>
        <p>City:</p>
        <input name = "library[city]"/>
        <p>State:</p>
        <input name = "library[state]"/>
        <button type = "submit">Add Library</button>
      </form>
    </div>
  );
};

export default LibraryNew;
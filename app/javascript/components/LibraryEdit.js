import React from "react"

const LibraryEdit = (props) => {
  return(
    <div>
      <h1>Edit Library: {props.library.name}</h1>
      <form action = {`/libraries/${props.library.id}`} method = "post">
        <input type = "hidden" name = "_method" value = "patch" />
        <p>Library Name:</p>
        <input defaultValue = {props.library.name} name = "library[name]" />
        <p>Library Street Address:</p>
        <input defaultValue = {props.library.street_address} name = "library[street_address]" />
        <p>Library City:</p>
        <input defaultValue = {props.library.city} name = "library[city]" />
        <p>Library State:</p>
        <input defaultValue = {props.library.state} name = "library[state]"/>
        <button type = "submit">Submit Library Edits</button>
      </form>
      <a href = "/libraries" >Back to Libraries Index</a>
    </div>
  );
};

export default LibraryEdit;
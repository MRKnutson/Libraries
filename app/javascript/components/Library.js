import React from "react"

const Library = (props) => {
  return(
    <div>
      <h1>Library: {props.library.name} Public Library</h1>
      <p>{props.library.street_address}</p>
      <p>{props.library.city}, {props.library.state}</p>
      <a href = "/libraries">Libraries index</a>
    </div>
  )
};

export default Library;
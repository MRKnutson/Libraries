import React from "react"

const Library = (props) => {
  return(
    <div>
      <h1>Library: {props.library.name} Public Library</h1>
      <p>{props.library.street_address}</p>
      <p>{props.library.city}, {props.library.state}</p>
      <a href = "/libraries">Libraries index</a>
      <a href = {`/libraries/${props.library.id}/edit`}>Edit Library</a>
      <a href = {`/libraries/${props.library.id}`} data-method = "delete">Delete Library</a>
    </div>
  )
};

export default Library;
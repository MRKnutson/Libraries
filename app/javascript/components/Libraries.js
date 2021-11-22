import React from "react"

const Libraries = (props) => {
  const renderLibraries = () => {
    return(props.libraries.map((library)=>{
      return(
        <div>
          <h3>Name: {library.name} Public Library</h3>
          <p>Address: {library.street_address}</p>
          <p>{library.city}, {library.state}</p>
          <a href={`/libraries/${library.id}`}>Library Details</a>
          <a href={`/libraries/${library.id}/edit`}>Edit Library</a>
          <a href={`/libraries/${library.id}`} data-method = "delete">Delete Library</a>
          <hr />
        </div>
      )
    }))
  };
  return(
    <div>
      <h1>Libraries:</h1>
      <a href = "/libraries/new">Add new library</a>
      {renderLibraries()}
    </div>
  );
};

export default Libraries;
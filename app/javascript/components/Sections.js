import React from "react"

const Sections = (props) => {
  const renderSections = () => {
    return(props.sections.map((section) => {
      return(
        <div>
          <p>{section.genre}</p>
          <a href= {`/libraries/${props.library.id}/sections/${section.id}`}>View Books</a>
          <a href={`/libraries/${props.library.id}/sections/${section.id}/edit`}>Edit Section</a>
          <a href={`/libraries/${props.library.id}/sections/${section.id}`} data-method = "delete">Delete Section</a>
          <hr />
        </div>
       );
      }) 
    );
  };
  return(
    <div>
      <h1>{props.library.name} Public Library</h1>
      <p>{props.library.street_address}</p>
      <p>{props.library.city}, {props.library.state}</p>
      <a href="/libraries">Back to Library Index</a>
      <a href={`/libraries/${props.library.id}/sections/new`}>Create a new section</a>
      <h2>Sections:</h2>
      {renderSections()}
    </div>
  );
};

export default Sections;
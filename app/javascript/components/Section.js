import React from "react"

const Section = (props) => {
  return(
    <div>
      <h1>{`${props.library.name}`}</h1>
      <p>Section Genre: {`${props.section.genre}`}</p>
      <a href = {`/libraries/${props.library.id}/sections`}>Return to section list</a>
      <a href = {`/libraries/${props.library.id}/sections/${props.section.id}/edit`}>Edit Section</a>
      <a href = {`/libraries/${props.library.id}/sections/${props.section.id}`} data-method = "delete">Delete section</a>
    </div>
  );
};

export default Section;
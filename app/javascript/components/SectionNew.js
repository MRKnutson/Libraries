import React from "react"

const SectionNew = (props) => {
  return(
    <div>
      <h1>Add a new section to {props.library.name} Public Library</h1>
      <form action = {`/libraries/${props.library.id}/sections`} method ="post">
        <p>Section Genre:</p>
        <input name="section[genre]" />
        <button type ="submit">Add Section</button>
      </form>
      <a href = {`/libraries/${props.library.id}/sections`}>Return to section list for {props.library.name} Public Library</a>
    </div>
  );
};

export default SectionNew;

import React from "react"

const SectionEdit = (props) => {
  return(
    <div>
      <h1>Edit {props.section.genre} section in {props.library.name} Public Library</h1>
      <form action = {`/libraries/${props.library.id}/sections/${props.section.id}`} method="post">
        <input type= "hidden" name = "_method" value="patch" />
        <p>Section genre:</p>
        <input defaultValue= {props.section.genre} name = "section[genre]" />
        <button type="submit">Submit section edits</button>
      </form>
    </div>
  );
};

export default SectionEdit;
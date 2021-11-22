import React from "react"

const BookNew = (props) => {
  return (
    <div>
      <h1>{props.library.name} Public Library</h1>
      <h3>Section: {props.section.name}</h3>
      <h4>Add a book:</h4>
      <form action = {`/sections/${props.section.id}/books`} method = "post">
        <p>Title:</p>
        <input name = "book[title]" />
        <p>Author:</p>
        <input name= "book[author]" />
        <button type ="submit">Add Book</button>
      </form>
      <a href = {`/sections/${props.section.id}/books`}>Return to Book List</a>
    </div>
  );
};

export default BookNew;


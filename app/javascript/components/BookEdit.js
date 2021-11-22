import React from "react"

const BookEdit = (props) => {
  return(
    <div>
      <h1>{props.library.name} Public Library</h1>
      <h3>Section: {props.section.genre}</h3>
      <h4>Edit Book: {props.book.title}</h4>
      <form action = {`/sections/${props.section.id}/books/${props.book.id}`} method = "Post">
        <input type = "hidden" name = "_method" value = "patch" />
        <p>Title:</p>
        <input name = "book[title]" defaultValue={props.book.title} />
        <p>Author:</p>
        <input name = "book[author]" defaultValue={props.book.author} />
        <button type = "submit">Submitted Book Changes</button>
      </form>
      <a href = {`/sections/${props.section.id}/books/${props.book.id}`}>Return to Book details</a>
      <a href = {`/sections/${props.section.id}/books`}>Return to Book List</a>
      <a href = {`/sections/${props.section.id}/books/${props.book.id}`} data-method = "delete">Delete Book</a>
    </div>
  );
};

export default BookEdit;
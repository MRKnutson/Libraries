import React from "react"

const Book = (props) => {
  return (
    <div>
      <h1>{props.library.name} Public Library</h1>
      <h3>{props.section.genre}</h3>
      <h4>{props.book.title}</h4>
      <p>{props.book.author}</p>
      <a href = {`/sections/${props.section.id}/books`}>Return to Book List</a>
      <a href = {`/sections/${props.section.id}/books/${props.book.id}/edit`}>Edit Book</a>
      <a href = {`/sections/${props.section.id}/books/${props.book.id}`} data-method="delete">Delete Book</a>
    </div>
  );
};

export default Book;
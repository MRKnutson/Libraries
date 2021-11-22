import React from "react"

const Books = (props) => {
  const renderBooks = () => {
    return(props.books.map((book) => {
      return(<div>
        <h4>{book.title}</h4>
        <p>{book.author}</p>
        <a href = {`/sections/${props.section.id}/books/${book.id}`}>Book Details</a>
        <a href = {`/sections/${props.section.id}/books/${book.id}`}>Edit Book</a>
        <a href = {`/sections/${props.section.id}/books/${book.id}`} data-method = "delete" >Delete Book</a>
        <hr />
      </div>
      );
    })
    );
  };
  return(
    <div>
      <h1>{props.library.name} Public Library</h1>
      <h3>Section: {props.section.name}</h3>
      <a href={`/libraries/${props.library.id}/sections`}>View all sections</a>
      <a href={`/sections/${props.section.id}/new`}>Add a book</a>
      {renderBooks()}
    </div>
  )
};

export default Books;
import React from "react"
import PropTypes from "prop-types"
import { Form, Button } from "react-bootstrap"

const SearchBar = () => {
  return(
  <Form>
    <Form.Group className="mb-3" controlId="bookQuery">
      <Form.Label>Nombre del libro</Form.Label>
      <Form.Control type="text" placeholder="Encuentre libro por autor, título u otro campo" />
    </Form.Group>
    <Button variant="primary" type="submit">
      Buscar
    </Button>
  </Form>
  )
}

export default SearchBar

import React from "react"
import PropTypes from "prop-types"
import { Container, Navbar } from "react-bootstrap"
import logo from 'images/brand.jpg'

const NavBar = () => {
  return(
    <Navbar bg="white" expand="lg">
      <Container>
        <Navbar.Brand>
          <img 
            src={logo} 
            height="80" 
            className="d-inline-block align-top" 
            alt="La Ceiba | Biblioteca Comunitaria"
          />
        </Navbar.Brand>
      </Container>
    </Navbar>
  )
}

export default NavBar

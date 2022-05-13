import React from "react"
import PropTypes from "prop-types"
import logo from "images/logo.jpeg"

const Footer = () =>(
  <div className="container">
    <footer className="d-flex flex-wrap justify-content-between align-items-center py-3 my-4 border-top">
      <p className="col-md-4 mb-0 text-muted">Daiuk 2022</p>
      <a href="/" className="col-md-4 d-flex align-items-center justify-content-center mb-3 mb-md-0 me-md-auto link-dark text-decoration-none">
        <img src={logo} width="80" className="bi me-2" />
      </a>
      <ul className="nav col-md-4 justify-content-end">
        <li className="nav-item">
          <a href="#" className="nav-link px-2 text-muted">Inicio</a>
        </li>
      </ul>
  </footer>
  </div>
)

export default Footer

**"* use this source file for the definition and implementation of
**"* local helper classes, interface definitions and type
**"* declaration
*CLASS lcl_connection DEFINITION.
*
*  PUBLIC SECTION.
*    DATA carrier_id TYPE /dmo/carrier_id.
*    DATA connection_id TYPE /dmo/connection_id.
*    DATA e_carrier_id TYPE /dmo/carrier_id.
*    DATA e_connection_id TYPE /dmo/connection_id.
*
*    CLASS-DATA conn_counter TYPE i.
*
*    METHODS set_attributes
*      IMPORTING
*        i_carrier_id    TYPE /dmo/carrier_id OPTIONAL
*        i_connection_id TYPE /dmo/connection_id.
*
*    METHODS get_attributes
*      IMPORTING
*        i_carrier_id    TYPE /dmo/carrier_id OPTIONAL
*        i_conneciton_id TYPE /dmo/connection_id.
*
*  PROTECTED SECTION.
*  PRIVATE SECTION.
*
*ENDCLASS.
*
*CLASS lcl_connection IMPLEMENTATION.
*
*  METHOD get_attributes.
*    e_carrier_id = carrier_id.
*    e_connection_id = connection_id.
*  ENDMETHOD.
*
*  METHOD set_attributes.
*    carrier_id = i_carrier_id.
*    connection_id = i_connection_id .
*  ENDMETHOD.
*
*ENDCLASS.
*



CLASS lcl_connection DEFINITION.
  PUBLIC SECTION.

* Attributes
    DATA carrier_id    TYPE /dmo/carrier_id.
    DATA connection_id TYPE /dmo/connection_id.

* Methods
    METHODS set_attributes
      IMPORTING
        i_carrier_id    TYPE /dmo/carrier_id  DEFAULT 'LH'
        i_Connection_id TYPE /dmo/connection_id
      RAISING
        cx_abap_invalid_value.


ENDCLASS.

CLASS lcl_connection IMPLEMENTATION.

  METHOD set_attributes.

    IF i_carrier_id IS INITIAL OR i_connection_id IS INITIAL.
      RAISE EXCEPTION TYPE cx_abap_invalid_value.
    ENDIF.

    carrier_id    = i_carrier_id.
    connection_id = i_connection_id.

  ENDMETHOD.

ENDCLASS.

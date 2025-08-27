CLASS zledg_class_art_001 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZLEDG_CLASS_ART_001 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  data: it_art TYPE STANDARD TABLE OF zledg_tab_art.

  it_art = VALUE #(
  ( client = sy-mandt id_art = 1 descr = 'bottle' descr2 = 'black Earthen bottle'
  color = 'black' piezas = 12 stock = 10 url = 'https://ecomm.gatling.io/assets/images/bottle-black.webp' )
  ( client = sy-mandt id_art = 2 descr = 'T-shirt' descr2 = 'White Gatling T-shirt'
  color = 'white' piezas = 1 stock = 12 url = 'https://ecomm.gatling.io/assets/images/tshirt-white.webp' )
  ( client = sy-mandt id_art = 3 descr = 'hip bag' descr2 = 'blue Throwback hip bag'
  color = 'blue' piezas = 1 stock = 5 url = 'https://ecomm.gatling.io/assets/images/sm-bag-blue.webp' )
  ).

  INSERT zledg_tab_art FROM TABLE @it_art.
  IF sy-subrc = 1.
  out->write( 'insert sucessfull' ).
  ELSE.
  out->write( 'insert wrong' ).
  ENDIF.

  ENDMETHOD.
ENDCLASS.

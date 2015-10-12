'use strict';

window.onmessage = function( message ) {

	var code = message.data;

	window.postMessage( window.JavaParser.parse( code ) );

};
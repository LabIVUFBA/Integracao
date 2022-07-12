// (C) 2001-2020 Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions and other 
// software and tools, and its AMPP partner logic functions, and any output 
// files from any of the foregoing (including device programming or simulation 
// files), and any associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License Subscription 
// Agreement, Intel FPGA IP License Agreement, or other applicable 
// license agreement, including, without limitation, that your use is for the 
// sole purpose of programming logic devices manufactured by Intel and sold by 
// Intel or its authorized distributors.  Please refer to the applicable 
// agreement for further details.


// $Id: //acds/main/ip/sopc/components/verification/altera_tristate_conduit_bfm/altera_tristate_conduit_bfm.sv.terp#7 $
// $Revision: #7 $
// $Date: 2010/08/05 $
// $Author: klong $
//-----------------------------------------------------------------------------
// =head1 NAME
// altera_conduit_bfm
// =head1 SYNOPSIS
// Bus Functional Model (BFM) for a Standard Conduit BFM
//-----------------------------------------------------------------------------
// =head1 DESCRIPTION
// This is a Bus Functional Model (BFM) for a Standard Conduit Master.
// This BFM sampled the input/bidirection port value or driving user's value to 
// output ports when user call the API.  
// This BFM's HDL is been generated through terp file in Qsys/SOPC Builder.
// Generation parameters:
// output_name:                                       altera_conduit_bfm
// role:width:direction:                              cdt_address:20:output,cdt_byteenable:2:output,cdt_chipselect:1:output,cdt_data_io:16:bidir,cdt_outputenable:1:output,cdt_write:1:output
// 0
//-----------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module altera_conduit_bfm
(
   sig_cdt_address,
   sig_cdt_byteenable,
   sig_cdt_chipselect,
   sig_cdt_data_io,
   sig_cdt_outputenable,
   sig_cdt_write
);

   //--------------------------------------------------------------------------
   // =head1 PINS 
   // =head2 User defined interface
   //--------------------------------------------------------------------------
   output [19 : 0] sig_cdt_address;
   output [1 : 0] sig_cdt_byteenable;
   output sig_cdt_chipselect;
   inout wire [15 : 0] sig_cdt_data_io;
   output sig_cdt_outputenable;
   output sig_cdt_write;

   // synthesis translate_off
   import verbosity_pkg::*;
   
   typedef logic [19 : 0] ROLE_cdt_address_t;
   typedef logic [1 : 0] ROLE_cdt_byteenable_t;
   typedef logic ROLE_cdt_chipselect_t;
   typedef logic [15 : 0] ROLE_cdt_data_io_t;
   typedef logic ROLE_cdt_outputenable_t;
   typedef logic ROLE_cdt_write_t;

   reg [19 : 0] sig_cdt_address_temp;
   reg [19 : 0] sig_cdt_address_out;
   reg [1 : 0] sig_cdt_byteenable_temp;
   reg [1 : 0] sig_cdt_byteenable_out;
   reg sig_cdt_chipselect_temp;
   reg sig_cdt_chipselect_out;
   logic sig_cdt_data_io_oe;
   logic sig_cdt_data_io_oe_temp = 0;
   reg [15 : 0] sig_cdt_data_io_temp;
   reg [15 : 0] sig_cdt_data_io_out;
   logic [15 : 0] sig_cdt_data_io_in;
   logic [15 : 0] sig_cdt_data_io_local;
   reg sig_cdt_outputenable_temp;
   reg sig_cdt_outputenable_out;
   reg sig_cdt_write_temp;
   reg sig_cdt_write_out;

   //--------------------------------------------------------------------------
   // =head1 Public Methods API
   // =pod
   // This section describes the public methods in the application programming
   // interface (API). The application program interface provides methods for 
   // a testbench which instantiates, controls and queries state in this BFM 
   // component. Test programs must only use these public access methods and 
   // events to communicate with this BFM component. The API and module pins
   // are the only interfaces of this component that are guaranteed to be
   // stable. The API will be maintained for the life of the product. 
   // While we cannot prevent a test program from directly accessing internal
   // tasks, functions, or data private to the BFM, there is no guarantee that
   // these will be present in the future. In fact, it is best for the user
   // to assume that the underlying implementation of this component can 
   // and will change.
   // =cut
   //--------------------------------------------------------------------------
   
   event signal_input_cdt_data_io_change;
   
   function automatic string get_version();  // public
      // Return BFM version string. For example, version 9.1 sp1 is "9.1sp1" 
      string ret_version = "20.1";
      return ret_version;
   endfunction

   // -------------------------------------------------------
   // cdt_address
   // -------------------------------------------------------

   function automatic void set_cdt_address (
      ROLE_cdt_address_t new_value
   );
      // Drive the new value to cdt_address.
      
      $sformat(message, "%m: method called arg0 %0d", new_value); 
      print(VERBOSITY_DEBUG, message);
      
      sig_cdt_address_temp = new_value;
   endfunction

   // -------------------------------------------------------
   // cdt_byteenable
   // -------------------------------------------------------

   function automatic void set_cdt_byteenable (
      ROLE_cdt_byteenable_t new_value
   );
      // Drive the new value to cdt_byteenable.
      
      $sformat(message, "%m: method called arg0 %0d", new_value); 
      print(VERBOSITY_DEBUG, message);
      
      sig_cdt_byteenable_temp = new_value;
   endfunction

   // -------------------------------------------------------
   // cdt_chipselect
   // -------------------------------------------------------

   function automatic void set_cdt_chipselect (
      ROLE_cdt_chipselect_t new_value
   );
      // Drive the new value to cdt_chipselect.
      
      $sformat(message, "%m: method called arg0 %0d", new_value); 
      print(VERBOSITY_DEBUG, message);
      
      sig_cdt_chipselect_temp = new_value;
   endfunction

   // -------------------------------------------------------
   // cdt_data_io
   // -------------------------------------------------------
   function automatic ROLE_cdt_data_io_t get_cdt_data_io();
   
      // Gets the cdt_data_io input value.
      $sformat(message, "%m: called get_cdt_data_io");
      print(VERBOSITY_DEBUG, message);
      return sig_cdt_data_io_in;
      
   endfunction

   function automatic void set_cdt_data_io (
      ROLE_cdt_data_io_t new_value
   );
      // Drive the new value to cdt_data_io.
      
      $sformat(message, "%m: method called arg0 %0d", new_value); 
      print(VERBOSITY_DEBUG, message);
      
      sig_cdt_data_io_temp = new_value;
   endfunction
   
   function automatic void set_cdt_data_io_oe (
      bit enable
   );
      // bidir port cdt_data_io will work as output port when set to 1.
      // bidir port cdt_data_io will work as input port when set to 0.
      
      $sformat(message, "%m: method called arg0 %0d", enable); 
      print(VERBOSITY_DEBUG, message);
      
      sig_cdt_data_io_oe_temp = enable;
   endfunction

   // -------------------------------------------------------
   // cdt_outputenable
   // -------------------------------------------------------

   function automatic void set_cdt_outputenable (
      ROLE_cdt_outputenable_t new_value
   );
      // Drive the new value to cdt_outputenable.
      
      $sformat(message, "%m: method called arg0 %0d", new_value); 
      print(VERBOSITY_DEBUG, message);
      
      sig_cdt_outputenable_temp = new_value;
   endfunction

   // -------------------------------------------------------
   // cdt_write
   // -------------------------------------------------------

   function automatic void set_cdt_write (
      ROLE_cdt_write_t new_value
   );
      // Drive the new value to cdt_write.
      
      $sformat(message, "%m: method called arg0 %0d", new_value); 
      print(VERBOSITY_DEBUG, message);
      
      sig_cdt_write_temp = new_value;
   endfunction

   assign sig_cdt_address = sig_cdt_address_temp;
   assign sig_cdt_byteenable = sig_cdt_byteenable_temp;
   assign sig_cdt_chipselect = sig_cdt_chipselect_temp;
   assign sig_cdt_data_io_oe = sig_cdt_data_io_oe_temp;
   assign sig_cdt_data_io = (sig_cdt_data_io_oe == 1)? sig_cdt_data_io_temp:'z;
   assign sig_cdt_data_io_in = (sig_cdt_data_io_oe == 0)? sig_cdt_data_io:'z;
   assign sig_cdt_outputenable = sig_cdt_outputenable_temp;
   assign sig_cdt_write = sig_cdt_write_temp;


   always @(sig_cdt_data_io_in) begin
      if (sig_cdt_data_io_oe == 0) begin
         if (sig_cdt_data_io_local != sig_cdt_data_io_in)
            -> signal_input_cdt_data_io_change;
         sig_cdt_data_io_local = sig_cdt_data_io_in;
      end
   end
   


// synthesis translate_on

endmodule


// internal_pin_if.v

// Generated using ACDS version 20.1 711

`timescale 1 ps / 1 ps
module internal_pin_if (
		input  wire        clk_clk,                      //                   clk.clk
		input  wire [31:0] led31_to_0_export,            //            led31_to_0.export
		input  wire [31:0] led63_to_32_export,           //           led63_to_32.export
		output wire [31:0] param1_export,                //                param1.export
		output wire [31:0] param2_export,                //                param2.export
		output wire [31:0] param3_export,                //                param3.export
		output wire [11:0] pbs11_to_10_sws9_to_0_export, // pbs11_to_10_sws9_to_0.export
		input  wire        reset_reset_n                 //                 reset.reset_n
	);

	wire  [31:0] jtag_2_avalon_ip_master_readdata;       // mm_interconnect_0:JTAG_2_Avalon_IP_master_readdata -> JTAG_2_Avalon_IP:master_readdata
	wire         jtag_2_avalon_ip_master_waitrequest;    // mm_interconnect_0:JTAG_2_Avalon_IP_master_waitrequest -> JTAG_2_Avalon_IP:master_waitrequest
	wire  [31:0] jtag_2_avalon_ip_master_address;        // JTAG_2_Avalon_IP:master_address -> mm_interconnect_0:JTAG_2_Avalon_IP_master_address
	wire         jtag_2_avalon_ip_master_read;           // JTAG_2_Avalon_IP:master_read -> mm_interconnect_0:JTAG_2_Avalon_IP_master_read
	wire   [3:0] jtag_2_avalon_ip_master_byteenable;     // JTAG_2_Avalon_IP:master_byteenable -> mm_interconnect_0:JTAG_2_Avalon_IP_master_byteenable
	wire         jtag_2_avalon_ip_master_readdatavalid;  // mm_interconnect_0:JTAG_2_Avalon_IP_master_readdatavalid -> JTAG_2_Avalon_IP:master_readdatavalid
	wire         jtag_2_avalon_ip_master_write;          // JTAG_2_Avalon_IP:master_write -> mm_interconnect_0:JTAG_2_Avalon_IP_master_write
	wire  [31:0] jtag_2_avalon_ip_master_writedata;      // JTAG_2_Avalon_IP:master_writedata -> mm_interconnect_0:JTAG_2_Avalon_IP_master_writedata
	wire  [31:0] mm_interconnect_0_led_ip_0_s1_readdata; // LED_IP_0:readdata -> mm_interconnect_0:LED_IP_0_s1_readdata
	wire   [1:0] mm_interconnect_0_led_ip_0_s1_address;  // mm_interconnect_0:LED_IP_0_s1_address -> LED_IP_0:address
	wire         mm_interconnect_0_sw_ip_s1_chipselect;  // mm_interconnect_0:SW_IP_s1_chipselect -> SW_IP:chipselect
	wire  [31:0] mm_interconnect_0_sw_ip_s1_readdata;    // SW_IP:readdata -> mm_interconnect_0:SW_IP_s1_readdata
	wire   [1:0] mm_interconnect_0_sw_ip_s1_address;     // mm_interconnect_0:SW_IP_s1_address -> SW_IP:address
	wire         mm_interconnect_0_sw_ip_s1_write;       // mm_interconnect_0:SW_IP_s1_write -> SW_IP:write_n
	wire  [31:0] mm_interconnect_0_sw_ip_s1_writedata;   // mm_interconnect_0:SW_IP_s1_writedata -> SW_IP:writedata
	wire  [31:0] mm_interconnect_0_led_ip_1_s1_readdata; // LED_IP_1:readdata -> mm_interconnect_0:LED_IP_1_s1_readdata
	wire   [1:0] mm_interconnect_0_led_ip_1_s1_address;  // mm_interconnect_0:LED_IP_1_s1_address -> LED_IP_1:address
	wire         mm_interconnect_0_param1_s1_chipselect; // mm_interconnect_0:param1_s1_chipselect -> param1:chipselect
	wire  [31:0] mm_interconnect_0_param1_s1_readdata;   // param1:readdata -> mm_interconnect_0:param1_s1_readdata
	wire   [1:0] mm_interconnect_0_param1_s1_address;    // mm_interconnect_0:param1_s1_address -> param1:address
	wire         mm_interconnect_0_param1_s1_write;      // mm_interconnect_0:param1_s1_write -> param1:write_n
	wire  [31:0] mm_interconnect_0_param1_s1_writedata;  // mm_interconnect_0:param1_s1_writedata -> param1:writedata
	wire         mm_interconnect_0_param2_s1_chipselect; // mm_interconnect_0:param2_s1_chipselect -> param2:chipselect
	wire  [31:0] mm_interconnect_0_param2_s1_readdata;   // param2:readdata -> mm_interconnect_0:param2_s1_readdata
	wire   [1:0] mm_interconnect_0_param2_s1_address;    // mm_interconnect_0:param2_s1_address -> param2:address
	wire         mm_interconnect_0_param2_s1_write;      // mm_interconnect_0:param2_s1_write -> param2:write_n
	wire  [31:0] mm_interconnect_0_param2_s1_writedata;  // mm_interconnect_0:param2_s1_writedata -> param2:writedata
	wire         mm_interconnect_0_param3_s1_chipselect; // mm_interconnect_0:param3_s1_chipselect -> param3:chipselect
	wire  [31:0] mm_interconnect_0_param3_s1_readdata;   // param3:readdata -> mm_interconnect_0:param3_s1_readdata
	wire   [1:0] mm_interconnect_0_param3_s1_address;    // mm_interconnect_0:param3_s1_address -> param3:address
	wire         mm_interconnect_0_param3_s1_write;      // mm_interconnect_0:param3_s1_write -> param3:write_n
	wire  [31:0] mm_interconnect_0_param3_s1_writedata;  // mm_interconnect_0:param3_s1_writedata -> param3:writedata
	wire         rst_controller_reset_out_reset;         // rst_controller:reset_out -> JTAG_2_Avalon_IP:clk_reset_reset
	wire         jtag_2_avalon_ip_master_reset_reset;    // JTAG_2_Avalon_IP:master_reset_reset -> [rst_controller:reset_in1, rst_controller_002:reset_in1]
	wire         rst_controller_001_reset_out_reset;     // rst_controller_001:reset_out -> [LED_IP_0:reset_n, LED_IP_1:reset_n, SW_IP:reset_n, mm_interconnect_0:LED_IP_0_reset_reset_bridge_in_reset_reset, param1:reset_n, param2:reset_n, param3:reset_n]
	wire         rst_controller_002_reset_out_reset;     // rst_controller_002:reset_out -> [mm_interconnect_0:JTAG_2_Avalon_IP_clk_reset_reset_bridge_in_reset_reset, mm_interconnect_0:JTAG_2_Avalon_IP_master_translator_reset_reset_bridge_in_reset_reset]

	internal_pin_if_JTAG_2_Avalon_IP #(
		.USE_PLI     (0),
		.PLI_PORT    (50000),
		.FIFO_DEPTHS (2)
	) jtag_2_avalon_ip (
		.clk_clk              (clk_clk),                               //          clk.clk
		.clk_reset_reset      (rst_controller_reset_out_reset),        //    clk_reset.reset
		.master_address       (jtag_2_avalon_ip_master_address),       //       master.address
		.master_readdata      (jtag_2_avalon_ip_master_readdata),      //             .readdata
		.master_read          (jtag_2_avalon_ip_master_read),          //             .read
		.master_write         (jtag_2_avalon_ip_master_write),         //             .write
		.master_writedata     (jtag_2_avalon_ip_master_writedata),     //             .writedata
		.master_waitrequest   (jtag_2_avalon_ip_master_waitrequest),   //             .waitrequest
		.master_readdatavalid (jtag_2_avalon_ip_master_readdatavalid), //             .readdatavalid
		.master_byteenable    (jtag_2_avalon_ip_master_byteenable),    //             .byteenable
		.master_reset_reset   (jtag_2_avalon_ip_master_reset_reset)    // master_reset.reset
	);

	internal_pin_if_LED_IP_0 led_ip_0 (
		.clk      (clk_clk),                                //                 clk.clk
		.reset_n  (~rst_controller_001_reset_out_reset),    //               reset.reset_n
		.address  (mm_interconnect_0_led_ip_0_s1_address),  //                  s1.address
		.readdata (mm_interconnect_0_led_ip_0_s1_readdata), //                    .readdata
		.in_port  (led31_to_0_export)                       // external_connection.export
	);

	internal_pin_if_LED_IP_0 led_ip_1 (
		.clk      (clk_clk),                                //                 clk.clk
		.reset_n  (~rst_controller_001_reset_out_reset),    //               reset.reset_n
		.address  (mm_interconnect_0_led_ip_1_s1_address),  //                  s1.address
		.readdata (mm_interconnect_0_led_ip_1_s1_readdata), //                    .readdata
		.in_port  (led63_to_32_export)                      // external_connection.export
	);

	internal_pin_if_SW_IP sw_ip (
		.clk        (clk_clk),                               //                 clk.clk
		.reset_n    (~rst_controller_001_reset_out_reset),   //               reset.reset_n
		.address    (mm_interconnect_0_sw_ip_s1_address),    //                  s1.address
		.write_n    (~mm_interconnect_0_sw_ip_s1_write),     //                    .write_n
		.writedata  (mm_interconnect_0_sw_ip_s1_writedata),  //                    .writedata
		.chipselect (mm_interconnect_0_sw_ip_s1_chipselect), //                    .chipselect
		.readdata   (mm_interconnect_0_sw_ip_s1_readdata),   //                    .readdata
		.out_port   (pbs11_to_10_sws9_to_0_export)           // external_connection.export
	);

	internal_pin_if_param1 param1 (
		.clk        (clk_clk),                                //                 clk.clk
		.reset_n    (~rst_controller_001_reset_out_reset),    //               reset.reset_n
		.address    (mm_interconnect_0_param1_s1_address),    //                  s1.address
		.write_n    (~mm_interconnect_0_param1_s1_write),     //                    .write_n
		.writedata  (mm_interconnect_0_param1_s1_writedata),  //                    .writedata
		.chipselect (mm_interconnect_0_param1_s1_chipselect), //                    .chipselect
		.readdata   (mm_interconnect_0_param1_s1_readdata),   //                    .readdata
		.out_port   (param1_export)                           // external_connection.export
	);

	internal_pin_if_param1 param2 (
		.clk        (clk_clk),                                //                 clk.clk
		.reset_n    (~rst_controller_001_reset_out_reset),    //               reset.reset_n
		.address    (mm_interconnect_0_param2_s1_address),    //                  s1.address
		.write_n    (~mm_interconnect_0_param2_s1_write),     //                    .write_n
		.writedata  (mm_interconnect_0_param2_s1_writedata),  //                    .writedata
		.chipselect (mm_interconnect_0_param2_s1_chipselect), //                    .chipselect
		.readdata   (mm_interconnect_0_param2_s1_readdata),   //                    .readdata
		.out_port   (param2_export)                           // external_connection.export
	);

	internal_pin_if_param1 param3 (
		.clk        (clk_clk),                                //                 clk.clk
		.reset_n    (~rst_controller_001_reset_out_reset),    //               reset.reset_n
		.address    (mm_interconnect_0_param3_s1_address),    //                  s1.address
		.write_n    (~mm_interconnect_0_param3_s1_write),     //                    .write_n
		.writedata  (mm_interconnect_0_param3_s1_writedata),  //                    .writedata
		.chipselect (mm_interconnect_0_param3_s1_chipselect), //                    .chipselect
		.readdata   (mm_interconnect_0_param3_s1_readdata),   //                    .readdata
		.out_port   (param3_export)                           // external_connection.export
	);

	internal_pin_if_mm_interconnect_0 mm_interconnect_0 (
		.CLK_IP_clk_clk                                                       (clk_clk),                                //                                                     CLK_IP_clk.clk
		.JTAG_2_Avalon_IP_clk_reset_reset_bridge_in_reset_reset               (rst_controller_002_reset_out_reset),     //               JTAG_2_Avalon_IP_clk_reset_reset_bridge_in_reset.reset
		.JTAG_2_Avalon_IP_master_translator_reset_reset_bridge_in_reset_reset (rst_controller_002_reset_out_reset),     // JTAG_2_Avalon_IP_master_translator_reset_reset_bridge_in_reset.reset
		.LED_IP_0_reset_reset_bridge_in_reset_reset                           (rst_controller_001_reset_out_reset),     //                           LED_IP_0_reset_reset_bridge_in_reset.reset
		.JTAG_2_Avalon_IP_master_address                                      (jtag_2_avalon_ip_master_address),        //                                        JTAG_2_Avalon_IP_master.address
		.JTAG_2_Avalon_IP_master_waitrequest                                  (jtag_2_avalon_ip_master_waitrequest),    //                                                               .waitrequest
		.JTAG_2_Avalon_IP_master_byteenable                                   (jtag_2_avalon_ip_master_byteenable),     //                                                               .byteenable
		.JTAG_2_Avalon_IP_master_read                                         (jtag_2_avalon_ip_master_read),           //                                                               .read
		.JTAG_2_Avalon_IP_master_readdata                                     (jtag_2_avalon_ip_master_readdata),       //                                                               .readdata
		.JTAG_2_Avalon_IP_master_readdatavalid                                (jtag_2_avalon_ip_master_readdatavalid),  //                                                               .readdatavalid
		.JTAG_2_Avalon_IP_master_write                                        (jtag_2_avalon_ip_master_write),          //                                                               .write
		.JTAG_2_Avalon_IP_master_writedata                                    (jtag_2_avalon_ip_master_writedata),      //                                                               .writedata
		.LED_IP_0_s1_address                                                  (mm_interconnect_0_led_ip_0_s1_address),  //                                                    LED_IP_0_s1.address
		.LED_IP_0_s1_readdata                                                 (mm_interconnect_0_led_ip_0_s1_readdata), //                                                               .readdata
		.LED_IP_1_s1_address                                                  (mm_interconnect_0_led_ip_1_s1_address),  //                                                    LED_IP_1_s1.address
		.LED_IP_1_s1_readdata                                                 (mm_interconnect_0_led_ip_1_s1_readdata), //                                                               .readdata
		.param1_s1_address                                                    (mm_interconnect_0_param1_s1_address),    //                                                      param1_s1.address
		.param1_s1_write                                                      (mm_interconnect_0_param1_s1_write),      //                                                               .write
		.param1_s1_readdata                                                   (mm_interconnect_0_param1_s1_readdata),   //                                                               .readdata
		.param1_s1_writedata                                                  (mm_interconnect_0_param1_s1_writedata),  //                                                               .writedata
		.param1_s1_chipselect                                                 (mm_interconnect_0_param1_s1_chipselect), //                                                               .chipselect
		.param2_s1_address                                                    (mm_interconnect_0_param2_s1_address),    //                                                      param2_s1.address
		.param2_s1_write                                                      (mm_interconnect_0_param2_s1_write),      //                                                               .write
		.param2_s1_readdata                                                   (mm_interconnect_0_param2_s1_readdata),   //                                                               .readdata
		.param2_s1_writedata                                                  (mm_interconnect_0_param2_s1_writedata),  //                                                               .writedata
		.param2_s1_chipselect                                                 (mm_interconnect_0_param2_s1_chipselect), //                                                               .chipselect
		.param3_s1_address                                                    (mm_interconnect_0_param3_s1_address),    //                                                      param3_s1.address
		.param3_s1_write                                                      (mm_interconnect_0_param3_s1_write),      //                                                               .write
		.param3_s1_readdata                                                   (mm_interconnect_0_param3_s1_readdata),   //                                                               .readdata
		.param3_s1_writedata                                                  (mm_interconnect_0_param3_s1_writedata),  //                                                               .writedata
		.param3_s1_chipselect                                                 (mm_interconnect_0_param3_s1_chipselect), //                                                               .chipselect
		.SW_IP_s1_address                                                     (mm_interconnect_0_sw_ip_s1_address),     //                                                       SW_IP_s1.address
		.SW_IP_s1_write                                                       (mm_interconnect_0_sw_ip_s1_write),       //                                                               .write
		.SW_IP_s1_readdata                                                    (mm_interconnect_0_sw_ip_s1_readdata),    //                                                               .readdata
		.SW_IP_s1_writedata                                                   (mm_interconnect_0_sw_ip_s1_writedata),   //                                                               .writedata
		.SW_IP_s1_chipselect                                                  (mm_interconnect_0_sw_ip_s1_chipselect)   //                                                               .chipselect
	);

	altera_reset_controller #(
		.NUM_RESET_INPUTS          (2),
		.OUTPUT_RESET_SYNC_EDGES   ("none"),
		.SYNC_DEPTH                (2),
		.RESET_REQUEST_PRESENT     (0),
		.RESET_REQ_WAIT_TIME       (1),
		.MIN_RST_ASSERTION_TIME    (3),
		.RESET_REQ_EARLY_DSRT_TIME (1),
		.USE_RESET_REQUEST_IN0     (0),
		.USE_RESET_REQUEST_IN1     (0),
		.USE_RESET_REQUEST_IN2     (0),
		.USE_RESET_REQUEST_IN3     (0),
		.USE_RESET_REQUEST_IN4     (0),
		.USE_RESET_REQUEST_IN5     (0),
		.USE_RESET_REQUEST_IN6     (0),
		.USE_RESET_REQUEST_IN7     (0),
		.USE_RESET_REQUEST_IN8     (0),
		.USE_RESET_REQUEST_IN9     (0),
		.USE_RESET_REQUEST_IN10    (0),
		.USE_RESET_REQUEST_IN11    (0),
		.USE_RESET_REQUEST_IN12    (0),
		.USE_RESET_REQUEST_IN13    (0),
		.USE_RESET_REQUEST_IN14    (0),
		.USE_RESET_REQUEST_IN15    (0),
		.ADAPT_RESET_REQUEST       (0)
	) rst_controller (
		.reset_in0      (~reset_reset_n),                      // reset_in0.reset
		.reset_in1      (jtag_2_avalon_ip_master_reset_reset), // reset_in1.reset
		.clk            (),                                    //       clk.clk
		.reset_out      (rst_controller_reset_out_reset),      // reset_out.reset
		.reset_req      (),                                    // (terminated)
		.reset_req_in0  (1'b0),                                // (terminated)
		.reset_req_in1  (1'b0),                                // (terminated)
		.reset_in2      (1'b0),                                // (terminated)
		.reset_req_in2  (1'b0),                                // (terminated)
		.reset_in3      (1'b0),                                // (terminated)
		.reset_req_in3  (1'b0),                                // (terminated)
		.reset_in4      (1'b0),                                // (terminated)
		.reset_req_in4  (1'b0),                                // (terminated)
		.reset_in5      (1'b0),                                // (terminated)
		.reset_req_in5  (1'b0),                                // (terminated)
		.reset_in6      (1'b0),                                // (terminated)
		.reset_req_in6  (1'b0),                                // (terminated)
		.reset_in7      (1'b0),                                // (terminated)
		.reset_req_in7  (1'b0),                                // (terminated)
		.reset_in8      (1'b0),                                // (terminated)
		.reset_req_in8  (1'b0),                                // (terminated)
		.reset_in9      (1'b0),                                // (terminated)
		.reset_req_in9  (1'b0),                                // (terminated)
		.reset_in10     (1'b0),                                // (terminated)
		.reset_req_in10 (1'b0),                                // (terminated)
		.reset_in11     (1'b0),                                // (terminated)
		.reset_req_in11 (1'b0),                                // (terminated)
		.reset_in12     (1'b0),                                // (terminated)
		.reset_req_in12 (1'b0),                                // (terminated)
		.reset_in13     (1'b0),                                // (terminated)
		.reset_req_in13 (1'b0),                                // (terminated)
		.reset_in14     (1'b0),                                // (terminated)
		.reset_req_in14 (1'b0),                                // (terminated)
		.reset_in15     (1'b0),                                // (terminated)
		.reset_req_in15 (1'b0)                                 // (terminated)
	);

	altera_reset_controller #(
		.NUM_RESET_INPUTS          (1),
		.OUTPUT_RESET_SYNC_EDGES   ("deassert"),
		.SYNC_DEPTH                (2),
		.RESET_REQUEST_PRESENT     (0),
		.RESET_REQ_WAIT_TIME       (1),
		.MIN_RST_ASSERTION_TIME    (3),
		.RESET_REQ_EARLY_DSRT_TIME (1),
		.USE_RESET_REQUEST_IN0     (0),
		.USE_RESET_REQUEST_IN1     (0),
		.USE_RESET_REQUEST_IN2     (0),
		.USE_RESET_REQUEST_IN3     (0),
		.USE_RESET_REQUEST_IN4     (0),
		.USE_RESET_REQUEST_IN5     (0),
		.USE_RESET_REQUEST_IN6     (0),
		.USE_RESET_REQUEST_IN7     (0),
		.USE_RESET_REQUEST_IN8     (0),
		.USE_RESET_REQUEST_IN9     (0),
		.USE_RESET_REQUEST_IN10    (0),
		.USE_RESET_REQUEST_IN11    (0),
		.USE_RESET_REQUEST_IN12    (0),
		.USE_RESET_REQUEST_IN13    (0),
		.USE_RESET_REQUEST_IN14    (0),
		.USE_RESET_REQUEST_IN15    (0),
		.ADAPT_RESET_REQUEST       (0)
	) rst_controller_001 (
		.reset_in0      (~reset_reset_n),                     // reset_in0.reset
		.clk            (clk_clk),                            //       clk.clk
		.reset_out      (rst_controller_001_reset_out_reset), // reset_out.reset
		.reset_req      (),                                   // (terminated)
		.reset_req_in0  (1'b0),                               // (terminated)
		.reset_in1      (1'b0),                               // (terminated)
		.reset_req_in1  (1'b0),                               // (terminated)
		.reset_in2      (1'b0),                               // (terminated)
		.reset_req_in2  (1'b0),                               // (terminated)
		.reset_in3      (1'b0),                               // (terminated)
		.reset_req_in3  (1'b0),                               // (terminated)
		.reset_in4      (1'b0),                               // (terminated)
		.reset_req_in4  (1'b0),                               // (terminated)
		.reset_in5      (1'b0),                               // (terminated)
		.reset_req_in5  (1'b0),                               // (terminated)
		.reset_in6      (1'b0),                               // (terminated)
		.reset_req_in6  (1'b0),                               // (terminated)
		.reset_in7      (1'b0),                               // (terminated)
		.reset_req_in7  (1'b0),                               // (terminated)
		.reset_in8      (1'b0),                               // (terminated)
		.reset_req_in8  (1'b0),                               // (terminated)
		.reset_in9      (1'b0),                               // (terminated)
		.reset_req_in9  (1'b0),                               // (terminated)
		.reset_in10     (1'b0),                               // (terminated)
		.reset_req_in10 (1'b0),                               // (terminated)
		.reset_in11     (1'b0),                               // (terminated)
		.reset_req_in11 (1'b0),                               // (terminated)
		.reset_in12     (1'b0),                               // (terminated)
		.reset_req_in12 (1'b0),                               // (terminated)
		.reset_in13     (1'b0),                               // (terminated)
		.reset_req_in13 (1'b0),                               // (terminated)
		.reset_in14     (1'b0),                               // (terminated)
		.reset_req_in14 (1'b0),                               // (terminated)
		.reset_in15     (1'b0),                               // (terminated)
		.reset_req_in15 (1'b0)                                // (terminated)
	);

	altera_reset_controller #(
		.NUM_RESET_INPUTS          (2),
		.OUTPUT_RESET_SYNC_EDGES   ("deassert"),
		.SYNC_DEPTH                (2),
		.RESET_REQUEST_PRESENT     (0),
		.RESET_REQ_WAIT_TIME       (1),
		.MIN_RST_ASSERTION_TIME    (3),
		.RESET_REQ_EARLY_DSRT_TIME (1),
		.USE_RESET_REQUEST_IN0     (0),
		.USE_RESET_REQUEST_IN1     (0),
		.USE_RESET_REQUEST_IN2     (0),
		.USE_RESET_REQUEST_IN3     (0),
		.USE_RESET_REQUEST_IN4     (0),
		.USE_RESET_REQUEST_IN5     (0),
		.USE_RESET_REQUEST_IN6     (0),
		.USE_RESET_REQUEST_IN7     (0),
		.USE_RESET_REQUEST_IN8     (0),
		.USE_RESET_REQUEST_IN9     (0),
		.USE_RESET_REQUEST_IN10    (0),
		.USE_RESET_REQUEST_IN11    (0),
		.USE_RESET_REQUEST_IN12    (0),
		.USE_RESET_REQUEST_IN13    (0),
		.USE_RESET_REQUEST_IN14    (0),
		.USE_RESET_REQUEST_IN15    (0),
		.ADAPT_RESET_REQUEST       (0)
	) rst_controller_002 (
		.reset_in0      (~reset_reset_n),                      // reset_in0.reset
		.reset_in1      (jtag_2_avalon_ip_master_reset_reset), // reset_in1.reset
		.clk            (clk_clk),                             //       clk.clk
		.reset_out      (rst_controller_002_reset_out_reset),  // reset_out.reset
		.reset_req      (),                                    // (terminated)
		.reset_req_in0  (1'b0),                                // (terminated)
		.reset_req_in1  (1'b0),                                // (terminated)
		.reset_in2      (1'b0),                                // (terminated)
		.reset_req_in2  (1'b0),                                // (terminated)
		.reset_in3      (1'b0),                                // (terminated)
		.reset_req_in3  (1'b0),                                // (terminated)
		.reset_in4      (1'b0),                                // (terminated)
		.reset_req_in4  (1'b0),                                // (terminated)
		.reset_in5      (1'b0),                                // (terminated)
		.reset_req_in5  (1'b0),                                // (terminated)
		.reset_in6      (1'b0),                                // (terminated)
		.reset_req_in6  (1'b0),                                // (terminated)
		.reset_in7      (1'b0),                                // (terminated)
		.reset_req_in7  (1'b0),                                // (terminated)
		.reset_in8      (1'b0),                                // (terminated)
		.reset_req_in8  (1'b0),                                // (terminated)
		.reset_in9      (1'b0),                                // (terminated)
		.reset_req_in9  (1'b0),                                // (terminated)
		.reset_in10     (1'b0),                                // (terminated)
		.reset_req_in10 (1'b0),                                // (terminated)
		.reset_in11     (1'b0),                                // (terminated)
		.reset_req_in11 (1'b0),                                // (terminated)
		.reset_in12     (1'b0),                                // (terminated)
		.reset_req_in12 (1'b0),                                // (terminated)
		.reset_in13     (1'b0),                                // (terminated)
		.reset_req_in13 (1'b0),                                // (terminated)
		.reset_in14     (1'b0),                                // (terminated)
		.reset_req_in14 (1'b0),                                // (terminated)
		.reset_in15     (1'b0),                                // (terminated)
		.reset_req_in15 (1'b0)                                 // (terminated)
	);

endmodule

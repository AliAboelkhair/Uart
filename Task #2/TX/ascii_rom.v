// The 7-bit ASCII code for each character is used as
// the MSB of the address. The 4-bit LSB is the row value.
// *********************

module ascii_rom(
	input clk, 
	input wire [10:0] addr,
	output reg [7:0] data
	);

	(* rom_style = "block" *)	// Infer BRAM : uses a block RAM on the FPGA

	reg [10:0] addr_reg;

	always @(posedge clk)
		addr_reg <= addr;

	always @*
		case(addr_reg)
			// Begin non-printable ASCII characters (00 - 1f)
			// code x00 (nul) null byte, which is the all-zero pattern

			// code x47 (G)
			11'h000: data = 8'b00000000;	//
			11'h001: data = 8'b00000000;	//
			11'h002: data = 8'b01111100;	// ***
			11'h003: data = 8'b11111110;	//***
			11'h004: data = 8'b11000000;	//**
			11'h005: data = 8'b11000000;	//**   
			11'h006: data = 8'b11111110;	//***
			11'h007: data = 8'b11111110;	//***
			11'h008: data = 8'b11000110;	//*   *
			11'h009: data = 8'b11000110;	//*   *
			11'h00a: data = 8'b11111110;	//***
			11'h00b: data = 8'b01110110;	// * **
			11'h00c: data = 8'b00000000;	//
			11'h00d: data = 8'b00000000;	//
			11'h00e: data = 8'b00000000;	//
			11'h00f: data = 8'b00000000;	//


			// code x41 (A)
			11'h010: data = 8'b00000000;	//
			11'h011: data = 8'b00000000;	//
			11'h012: data = 8'b00010000;	//   *
			11'h013: data = 8'b00111000;	//  *
			11'h014: data = 8'b01101100;	// * *   
			11'h015: data = 8'b11000110;	//*   *   
			11'h016: data = 8'b11000110;	//*   *
			11'h017: data = 8'b11111110;	//***
			11'h018: data = 8'b11111110;	//***
			11'h019: data = 8'b11000110;	//*   *
			11'h01a: data = 8'b11000110;	//*   *
			11'h01b: data = 8'b11000110;	//*   *
			11'h01c: data = 8'b00000000;	//
			11'h01d: data = 8'b00000000;	//
			11'h01e: data = 8'b00000000;	//
			11'h01f: data = 8'b00000000;	//

			// code x4d (M)
			11'h020: data = 8'b00000000;	//
			11'h021: data = 8'b00000000;	//
			11'h022: data = 8'b11000110;	//*   *
			11'h023: data = 8'b11000110;	//*   *
			11'h024: data = 8'b11101110;	//* *
			11'h025: data = 8'b11111110;	//***
			11'h026: data = 8'b11010110;	//* * *
			11'h027: data = 8'b11000110;	//*   *
			11'h028: data = 8'b11000110;	//*   *
			11'h029: data = 8'b11000110;	//*   *
			11'h02a: data = 8'b11000110;	//*   *
			11'h02b: data = 8'b11000110;	//*   *
			11'h02c: data = 8'b00000000;	//
			11'h02d: data = 8'b00000000;	//
			11'h02e: data = 8'b00000000;	//
			11'h02f: data = 8'b00000000;	//

						// code x45 (E)
			11'h030: data = 8'b00000000;	//
			11'h031: data = 8'b00000000;	//
			11'h032: data = 8'b11111110;	//***
			11'h033: data = 8'b11111110;	//***
			11'h034: data = 8'b11000000;	//**
			11'h035: data = 8'b11000000;	//**   
			11'h036: data = 8'b11111100;	//**
			11'h037: data = 8'b11111100;	//**
			11'h038: data = 8'b11000000;	//** 
			11'h039: data = 8'b11000000;	//** 
			11'h03a: data = 8'b11111110;	//***
			11'h03b: data = 8'b11111110;	//***
			11'h03c: data = 8'b00000000;	//
			11'h03d: data = 8'b00000000;	//
			11'h03e: data = 8'b00000000;	//
			11'h03f: data = 8'b00000000;	//


			// code x4f (O)
			11'h040: data = 8'b00000000;	//
			11'h041: data = 8'b00000000;	//
			11'h042: data = 8'b01111100;	// ***
			11'h043: data = 8'b11111110;	//***
			11'h044: data = 8'b11000110;	//*   *
			11'h045: data = 8'b11000110;	//*   *
			11'h046: data = 8'b11000110;	//*   *
			11'h047: data = 8'b11000110;	//*   *
			11'h048: data = 8'b11000110;	//*   *
			11'h049: data = 8'b11000110;	//*   *
			11'h04a: data = 8'b11111110;	//***
			11'h04b: data = 8'b01111100;	// ***
			11'h04c: data = 8'b00000000;	//
			11'h04d: data = 8'b00000000;	//
			11'h04e: data = 8'b00000000;	//
			11'h04f: data = 8'b00000000;	//


			// code x56 (V)
			11'h050: data = 8'b00000000;	//
			11'h051: data = 8'b00000000;	//
			11'h052: data = 8'b11000110;	//*   *
			11'h053: data = 8'b11000110;	//*   *
			11'h054: data = 8'b11000110;	//*   *
			11'h055: data = 8'b11000110;	//*   *
			11'h056: data = 8'b11000110;	//*   *
			11'h057: data = 8'b11000110;	//*   *
			11'h058: data = 8'b11000110;	//*   *
			11'h059: data = 8'b01101100;	// * *
			11'h05a: data = 8'b00111000;	//  *  
			11'h05b: data = 8'b00010000;	//   * 
			11'h05c: data = 8'b00000000;	//
			11'h05d: data = 8'b00000000;	//
			11'h05e: data = 8'b00000000;	//
			11'h05f: data = 8'b00000000;	//

												// code x45 (E)
			11'h060: data = 8'b00000000;	//
			11'h061: data = 8'b00000000;	//
			11'h062: data = 8'b11111110;	//***
			11'h063: data = 8'b11111110;	//***
			11'h064: data = 8'b11000000;	//**
			11'h065: data = 8'b11000000;	//**   
			11'h066: data = 8'b11111100;	//**
			11'h067: data = 8'b11111100;	//**
			11'h068: data = 8'b11000000;	//** 
			11'h069: data = 8'b11000000;	//** 
			11'h06a: data = 8'b11111110;	//***
			11'h06b: data = 8'b11111110;	//***
			11'h06c: data = 8'b00000000;	//
			11'h06d: data = 8'b00000000;	//
			11'h06e: data = 8'b00000000;	//
			11'h06f: data = 8'b00000000;	//



			// code x52 (R)
			11'h070: data = 8'b00000000;	//
			11'h071: data = 8'b00000000;	//
			11'h072: data = 8'b11111100;	//**
			11'h073: data = 8'b11111110;	//***
			11'h074: data = 8'b11000110;	//*   *
			11'h075: data = 8'b11000110;	//*   *
			11'h076: data = 8'b11111110;	//***
			11'h077: data = 8'b11111100;	//**   
			11'h078: data = 8'b11011000;	//* *  
			11'h079: data = 8'b11001100;	//*  * 
			11'h07a: data = 8'b11000110;	//*   *
			11'h07b: data = 8'b11000110;	//*   *
			11'h07c: data = 8'b00000000;	//
			11'h07d: data = 8'b00000000;	//
			11'h07e: data = 8'b00000000;	//
			11'h07f: data = 8'b00000000;	//

			// code x5f (_)
			11'h080: data = 8'b00000000;	//
			11'h081: data = 8'b00000000;	//
			11'h082: data = 8'b00000000;	//
			11'h083: data = 8'b00000000;	//
			11'h084: data = 8'b00000000;	//
			11'h085: data = 8'b00000000;	//
			11'h086: data = 8'b00000000;	//
			11'h087: data = 8'b00000000;	//
			11'h088: data = 8'b00000000;	//
			11'h089: data = 8'b00000000;	//
			11'h08a: data = 8'b00000000;	//
			11'h08b: data = 8'b00000000;	//
			11'h08c: data = 8'b00000000;	//
			11'h08d: data = 8'b00000000;	//
			11'h08e: data = 8'b00000000;	//
			11'h08f: data = 8'b00000000;	//

		endcase
endmodule
module src_tb;
	reg CLK;
	wire [31:0] PC;
	wire [31:0] Instruction;
	wire [31:0] ALUResult;
	
	Lab9 uut(
		.CLK(clk),
		.PC(PC_Reg),
		.Instruction(Instruction_IFID),
		.ALUResult(ALURESULT_EXMEM)
		);
		
		initial begin
			CLK = 0;
			#10;
			#400;
			$finish;
		end
		always
		begin
			#10;
			CLK = ~CLK;
		end
		
endmodule	

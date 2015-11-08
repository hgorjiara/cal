module instruction_mem(clk,rst,pc_out,instr_out);
input rst,clk;
input [15:0] pc_out;
output reg[15:0] instr_out;
always@(pc_out)begin
	case(pc_out)
		0: instr_out=16'b0001_101_010_000_000;//add
		1: instr_out=16'b0110_110_010_001_000;//sl
		2: instr_out=16'b0100_110_100_010_000;//or
		3: instr_out=16'b1100_000_000_000010;//bz pc=pc+1+2
		4: instr_out=16'b0010_101_100_001_000;//sub
		5: instr_out=16'b0101_101_100_011_000;//xor
		6: instr_out=16'b0010_101_100_011_000;//sub
		7: instr_out=16'b1100_000_000_111100;//bz pc=pc+1-4
	endcase
end
endmodule
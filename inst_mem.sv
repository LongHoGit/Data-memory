module inst_mem (
  //input
  //input rst_ni,
  //input clk_i,
  input  logic [13:0] addr_i,

  //output
  output logic [31:0] r_data_o
);

logic [31:0] mem[16383:0];

initial $readmemh("C:/altera/13.0sp1/lab3_computer_architecture/memory/instmem.data",mem);

always_ff @(addr_i)
	r_data_o <= mem[addr_i];

endmodule : inst_mem
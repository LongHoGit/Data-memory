module inst_mem (
  //input
  //input rst_ni,
  //input clk_i,
  input  logic [13:0] addr,

  //output
  output logic [31:0] r_data
);

logic [31:0] mem[16383:0];

initial $readmemb("C:/altera/13.0sp1/lab3_computer_architecture/memory/instmem.data",mem);

always_ff @(addr)
	r_data <= mem[addr];

endmodule : inst_mem
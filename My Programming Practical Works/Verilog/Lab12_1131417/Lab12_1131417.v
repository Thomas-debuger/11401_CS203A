// using RGB332

module Lab12_1131417 (

  input     wire                clk,
  input     wire                rst_n,
  
  output    wire                vga_vs,
  output    wire                vga_hs,
  output    wire        [7:0]   vga_rgb
);
  
  wire                          clk_vga;
  wire                          pll_locked;
  
  pll_vga  pll_vga_inst (
      .areset     ( ~rst_n ),
      .inclk0     ( clk ),
      .c0         ( clk_vga ),
      .locked     ( pll_locked )
    );
  
  vga_ctrl vga_ctrl_inst(

      .clk        (clk_vga),
      .rst_n      (pll_locked),
      
      .vga_hs     (vga_hs),
      .vga_vs     (vga_vs),
      .vga_rgb    (vga_rgb)
    );

endmodule

module vga_ctrl(

    input  wire        clk,        // 25MHz from PLL
    input  wire        rst_n,

    output reg         vga_hs,
    output reg         vga_vs,
    output reg [7:0]   vga_rgb
);

    // --------------------------------------------------------------------
    // VGA Timing: 640x480 @ 60Hz
    // --------------------------------------------------------------------
    parameter HS_A = 96;
    parameter HS_B = 48;
    parameter HS_C = 640;
    parameter HS_D = 16;
    parameter HS_E = 800;

    parameter VS_A = 2;
    parameter VS_B = 33;
    parameter VS_C = 480;
    parameter VS_D = 10;
    parameter VS_E = 525;

    reg [9:0] cnt_hs;
    reg [9:0] cnt_vs;

    // --------------------------------------------------------------------
    // Horizontal counter
    // --------------------------------------------------------------------
    always @ (posedge clk or negedge rst_n) begin
        if(!rst_n)
            cnt_hs <= 10'd0;
        else if(cnt_hs < HS_E - 1)
            cnt_hs <= cnt_hs + 1;
        else
            cnt_hs <= 10'd0;
    end

    // H-sync
    always @ (posedge clk or negedge rst_n) begin
        if(!rst_n)
            vga_hs <= 1'b1;
        else if(cnt_hs < HS_A)
            vga_hs <= 1'b0;
        else
            vga_hs <= 1'b1;
    end

    // --------------------------------------------------------------------
    // Vertical counter
    // --------------------------------------------------------------------
    always @ (posedge clk or negedge rst_n) begin
        if (!rst_n)
            cnt_vs <= 10'd0;
        else if(cnt_hs == HS_E-1) begin
            if(cnt_vs < VS_E - 1)
                cnt_vs <= cnt_vs + 1;
            else
                cnt_vs <= 10'd0;
        end
    end

    // V-sync
    always @ (posedge clk or negedge rst_n) begin
        if(!rst_n)
            vga_vs <= 1'b1;
        else if(cnt_vs < VS_A)
            vga_vs <= 1'b0;
        else
            vga_vs <= 1'b1;
    end

    // --------------------------------------------------------------------
    // Visible region
    // --------------------------------------------------------------------
    wire hs_en = (cnt_hs >= HS_A + HS_B) &&
                 (cnt_hs <  HS_A + HS_B + HS_C);

    wire vs_en = (cnt_vs >= VS_A + VS_B) &&
                 (cnt_vs <  VS_A + VS_B + VS_C);

    // --------------------------------------------------------------------
    // Active pixel coordinate
    // --------------------------------------------------------------------
    wire [9:0] pix_x = hs_en ? (cnt_hs - (HS_A + HS_B)) : 10'd0;
    wire [9:0] pix_y = vs_en ? (cnt_vs - (VS_A + VS_B)) : 10'd0;

    // --------------------------------------------------------------------
    // Instantiate ROM (10000 deep)
    // --------------------------------------------------------------------
    reg [13:0] rom_addr;     // 0 ~ 9999
    wire [7:0] rom_data;

    my_img_rom u_rom (
        .clock  (clk),
        .address(rom_addr),
        .q      (rom_data)
    );

    // --------------------------------------------------------------------
    // Image display logic
    // Display region: 0 ? x < 400, 0 ? y < 400
    // Each pixel enlarged 4x4
    // --------------------------------------------------------------------

    always @(posedge clk or negedge rst_n) begin
        if(!rst_n)
            rom_addr <= 14'd0;
        else if(hs_en && vs_en &&
                pix_x < 10'd400 &&
                pix_y < 10'd400) begin

            rom_addr <= (pix_y >> 2) * 14'd100 + (pix_x >> 2);

        end else
            rom_addr <= 14'd0;
    end

    // --------------------------------------------------------------------
    // Output RGB
    // --------------------------------------------------------------------
    always @(posedge clk or negedge rst_n) begin
        if(!rst_n)
            vga_rgb <= 8'd0;
        else if(hs_en && vs_en &&
                pix_x < 400 &&
                pix_y < 400)
            vga_rgb <= rom_data;
        else
            vga_rgb <= 8'd0;
    end

endmodule

module counter10 ( load, D, en, clrn, clk, Q, Co);
input load,en,clrn,clk;
input [3:0] D;
output [3:0] Q;
output Co;
reg [3:0] Q;

	always @(posedge clk or posedge clrn )
	begin
         if (clrn == 1)
	        Q = 4'd0;
         else if (load == 1)
	        Q = D;
         else if (en == 1)
	       begin
	          if (Q == 4'd9)
	             Q = 4'd0;
	          else 
	            Q = Q + 1;
	       end
	 end
    assign Co = Q[3] & Q[0] & en;	
endmodule



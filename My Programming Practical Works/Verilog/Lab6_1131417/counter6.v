module counter6 ( load, D, en, clrn, clk, Q, Co);
input load,en,clrn,clk;
input [2:0] D;
output [2:0] Q;
output Co;
reg [2:0] Q;

	always @(posedge clk or posedge clrn)
	begin
         if (clrn == 1)
	        Q = 3'd0;
         else if (load == 1)
	        Q = D;
         else if (en == 1)
	       begin
	          if (Q == 3'd5)
	             Q = 3'd0;
	          else 
	            Q = Q + 1;
	       end
	 end
    assign Co = Q[2] & Q[0] & en;	
endmodule


module Lab3_BCD_to_Excess3_state_diagram(
                                         output reg z,
										 input x,
										 input clock,
										 input reset
										 );
reg [2:0] state;
reg [2:0] next_state;

parameter S0 = 3'b000, S1 = 3'b001, S2 = 3'b010, S3 = 3'b011, S4 = 3'b100, S5 = 3'b101, S6 = 3'b110;

always@(posedge clock)begin
     if(~reset)
	   state <= S0;
	 else
	   state <= next_state;
end

always@(reset)begin
    if(~reset)
      state <= S0;
end

always@(state,x)begin
    case(state)
	S0: begin
	      if(x) begin
		    next_state <= S2;
		    z <= 1'b0;
		  end else begin 
		    next_state <= S1;
		    z <= 1'b1;
		  end
		end
	S1: begin
	      if(x) begin
		    next_state <= S4;
		    z <= 1'b0;
		  end else begin 
		    next_state <= S3;
		    z <= 1'b1;
		  end
		end
	S2: begin
	      if(x)
		    z <= 1'b1;
		  else
		    z <= 1'b0;
		  next_state <= S4;
		end
	S3: begin
	      if(x)
		    z <= 1'b1;
		  else
		    z <= 1'b0;
		  next_state <= S5;
		end
	S4: begin
	      if(x) begin
		    next_state <= S6;
		    z <= 1'b0;
		  end else begin 
		    next_state <= S5;
		    z <= 1'b1;
		  end
		end
	S5: begin
	      if(x)
		    z <= 1'b1;
		  else
		    z <= 1'b0;
		  next_state <= S0;
		end
	S6: begin 
	      z <= 1'b1;
	      next_state <= S0;
		end
	endcase
end

endmodule
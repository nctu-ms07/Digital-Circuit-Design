module Lab3_BCD_to_Excess3_structure(
                                     output z,
									 input x,
									 input clock,
									 input reset
									 );

wire [2:0] state;
wire [2:0] next_state;

assign next_state[0] = (~state[0] & ~state[1] & ~x) | (state[0] & state[1] & ~state[2]) | (~state[1] & ~state[2] & ~x);
assign next_state[1] = (state[0] & ~state[1] & ~state[2] & ~x) | (~state[0] & ~state[1] & x);
assign next_state[2] = (~state[0] & ~state[1] & state[2]) | (state[0] & ~state[2] & x) | (state[1] & ~state[2]);
assign z = (state[0] & ~state[1] & state[2] & x) | (~state[1] & ~state[2] & ~x) | (~state[0] & state[2] & ~x) | (state[1] & ~state[2] & x);

D_ff_AR Q0 (
            .Q(state[0]),
			.D(next_state[0]),
			.clock(clock),
			.reset(reset)
			);
			
D_ff_AR Q1 (
            .Q(state[1]),
			.D(next_state[1]),
			.clock(clock),
			.reset(reset)
			);

D_ff_AR Q2 (
            .Q(state[2]),
			.D(next_state[2]),
			.clock(clock),
			.reset(reset)
			);

endmodule
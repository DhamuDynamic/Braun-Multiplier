module Braun_Multiplier_tb();
	reg [3:0] a;
	reg [3:0] b;
	wire [7:0] p;
	integer i;
	Braun_Multiplier dut (a,b,p);
	initial
		begin
			for(i=0;i<14;i=i+1)
				begin
					a = i;
					b = i+1;
					#10;
					$display("a = %d,b = %d,p = %d",a,b,p);
				end
		end
	initial
		begin
			$dumpfile("dump.vcd");
			$dumpvars(1);
		end
	initial
		begin
			#200 $finish;
		end
endmodule

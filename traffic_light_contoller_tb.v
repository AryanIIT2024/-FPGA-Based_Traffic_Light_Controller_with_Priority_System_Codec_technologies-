// code for the testbench with the clock synthesis 



module traffic_light_controller_tb;

reg clk;
reg rst;

wire [2:0] light_M1;
wire [2:0] light_MT;
wire [2:0] light_M2;
wire [2:0] light_S;

traffic_light_contoller uut(
.clk(clk),
.rst(rst),
.light_M1(light_M1),
.light_MT(light_MT),
.light_M2(light_M2),
.light_S(light_S)
);

initial begin
clk=0;
forever #5 clk = ~clk;
end

initial begin
rst=1;
#15 
rst=0;
#1500 
$stop;
end

endmodule

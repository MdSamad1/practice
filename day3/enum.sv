module enum_week_days;
	
	typedef enum {sat,sun,mon,tue,wed,thr,fri} week;

	initial begin
		week weeked;

		weekend = sun;
		module enum_week_days;

        typedef enum {sat,sun,mon,tue,wed,thr,fri} week;

        initial begin
                week weekend;

                weekend = sun;
          $display("Weekend day is %s",weekend.name());

        end
endmodule


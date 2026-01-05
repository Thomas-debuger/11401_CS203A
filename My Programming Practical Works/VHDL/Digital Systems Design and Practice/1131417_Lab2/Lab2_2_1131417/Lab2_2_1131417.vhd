entity Lab2_2_1131417 is

	port
	(
		-- Input ports
		A	: in  BIT;
		B	: in  BIT;
		C	: in  BIT;
		D	: in  BIT;
		-- Output ports
		Y	: out BIT
		
	);
end Lab2_2_1131417;

-- Library Clause(s) (optional)
-- Use Clause(s) (optional)

architecture RDL of Lab2_2_1131417 is

	-- Declarations (optional)

begin
	
	y <= (A or not B or not C) and (A or not C or D) and (not A or not B or C or not D) and (not A or B or not C or D);
	-- Process Statement (optional) 

	-- Concurrent Procedure Call (optional)

	-- Concurrent Signal Assignment (optional)

	-- Conditional Signal Assignment (optional)

	-- Selected Signal Assignment (optional)

	-- Component Instantiation Statement (optional)

	-- Generate Statement (optional)

end RDL;

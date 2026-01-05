entity Lab2_3_1131417 is


    port
    (
        -- Input ports
        i0    : in  BIT;
        i1    : in  BIT;
        i2    : in  BIT;
        i3    : in  BIT;
        i4    : in  BIT;
        i5    : in  BIT;
        i6    : in  BIT;
        i7    : in  BIT;
        enable    : in  BIT;

        -- Output ports
        o0  : out BIT;
        o1  : out BIT;
        o2  : out BIT
    );
end Lab2_3_1131417;

-- Library Clause(s) (optional)
-- Use Clause(s) (optional)

architecture RDL of Lab2_3_1131417 is

    -- Declarations (optional)

begin
    o0 <= (i1 or i3 or i5 or i7) and enable;
    o1 <= (i2 or i3 or i6 or i7) and enable;
    o2 <= (i4 or i5 or i6 or i7) and enable;
    -- Process Statement (optional)

    -- Concurrent Procedure Call (optional)

    -- Concurrent Signal Assignment (optional)

    -- Conditional Signal Assignment (optional)

    -- Selected Signal Assignment (optional)

    -- Component Instantiation Statement (optional)

    -- Generate Statement (optional)

end RDL;
table 60000 "Commission Setup"
{
    // version DAX002


    fields
    {
        field(1; "Entry No."; Integer)
        {
        }
        field(2; "Salesperson Code"; Code[10])
        {
            TableRelation = "Salesperson/Purchaser".Code;
            //This property is currently not supported
            //TestTableRelation = false;

            trigger OnValidate();
            begin
                if Salesperson.GET("Salesperson Code") then begin
                    "Salesperson Name" := Salesperson.Name;
                    "Commission %" := Salesperson."Commission %";
                end else begin
                    "Salesperson Name" := '';
                    "Commission %" := 0;
                end;
            end;
        }
        field(3; "Salesperson Name"; Text[50])
        {
        }
        field(4; "Commission %"; Decimal)
        {
        }
        field(5; "Item No."; Code[20])
        {
            TableRelation = Item."No.";
            //This property is currently not supported
            //TestTableRelation = false;

            trigger OnValidate();
            begin
                if Item.GET("Item No.") then
                    "Item Description" := Item.Description
                else
                    "Item Description" := '';
            end;
        }
        field(6; "Item Description"; Text[50])
        {
        }
        field(7; "Area Code"; Code[20])
        {
            // TableRelation = "Dimension Value".Code WHERE("Dimension Code" = CONST('AREA'));
            //This property is currently not supported
            //TestTableRelation = false;

            trigger OnValidate();
            begin
                DimensionValue.SETFILTER("Dimension Code", 'AREA');
                DimensionValue.SETFILTER(Code, "Area Code");
                if DimensionValue.FINDFIRST then
                    "Area Name" := DimensionValue.Name
                else
                    "Area Name" := '';
            end;
        }
        field(8; "Area Name"; Text[50])
        {
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
        }
        key(Key2; "Salesperson Code")
        {
        }
    }

    fieldgroups
    {
    }

    trigger OnInsert();
    begin
        TESTFIELD("Salesperson Code");
        TESTFIELD("Item No.");
        TESTFIELD("Area Code");

        CommissionSetup.SETFILTER("Salesperson Code", "Salesperson Code");
        CommissionSetup.SETFILTER("Item No.", "Item No.");
        CommissionSetup.SETFILTER("Area Code", "Area Code");
        if CommissionSetup.FINDFIRST then
            ERROR(STRSUBSTNO(AlreadyExistsError,
              "Salesperson Code", "Salesperson Name",
              FIELDCAPTION("Item No."), FIELDCAPTION("Area Code")));

        CLEAR(CommissionSetup);
        if CommissionSetup.FINDLAST then
            "Entry No." := CommissionSetup."Entry No." + 1
        else
            "Entry No." := 1
    end;

    var
        CommissionSetup: Record "Commission Setup";
        Salesperson: Record "Salesperson/Purchaser";
        Item: Record Item;
        DimensionValue: Record "Dimension Value";
        AlreadyExistsError: Label 'Salesperson %1 %2 with the same %3 and %4 already exists.';
}


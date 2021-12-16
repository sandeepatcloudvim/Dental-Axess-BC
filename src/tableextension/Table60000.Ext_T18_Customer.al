tableextension 60000 Extend_T18_Customer extends Customer
{
    fields
    {
        // DAX003 - 10/05/2017 Added new fieldS 50000,50001



        field(50000; "Shortcut Dimension 4 Code"; Code[20])
        {
            CaptionClass = '1,2,4';
            CaptionML = ENU = 'Shortcut Dimension 4 Code',
                        ENA = 'Shortcut Dimension 4 Code';
            Description = 'DAX002';
            TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(4),
                                                          "Dimension Value Type" = CONST(Standard),
                                                          Blocked = CONST(false));

            trigger OnValidate();
            begin
                // >> DAX002
                ValidateShortcutDimCode(4, "Shortcut Dimension 4 Code");
                // << DAX002
            end;
        }
        field(50001; "Shortcut Dimension 6 Code"; Code[20])
        {
            CaptionClass = '1,2,6';
            CaptionML = ENU = 'Shortcut Dimension 6 Code',
                        ENA = 'Shortcut Dimension 6 Code';
            Description = 'DAX002';
            TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(6),
                                                          "Dimension Value Type" = CONST(Standard),
                                                          Blocked = CONST(false));

            trigger OnValidate();
            begin
                // >> DAX002
                ValidateShortcutDimCode(6, "Shortcut Dimension 6 Code");
                // << DAX002
            end;
        }

    }

    var
        myInt: Integer;
}
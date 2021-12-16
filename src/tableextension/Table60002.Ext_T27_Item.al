tableextension 60002 Extend_T27_Item extends Item

{

    fields
    {
        // Add changes to table fields here
        field(50003; "Shortcut Dimension 5 Code"; Code[20])
        {
            CaptionClass = '1,2,5';
            CaptionML = ENU = 'Shortcut Dimension 5 Code',
                        ENA = 'Shortcut Dimension 5 Code';
            Description = 'DAX002';
            TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(5),
                                                          "Dimension Value Type" = CONST(Standard),
                                                          Blocked = CONST(false));

            trigger OnValidate();
            begin
                // >> DAX002
                ValidateShortcutDimCode(5, "Shortcut Dimension 5 Code");
                // << DAX002
            end;
        }
    }

    var
        WebShopCategory: Record "Web Shop Category";
        WebShopSubCategory: Record "Web Shop Sub Category";
}
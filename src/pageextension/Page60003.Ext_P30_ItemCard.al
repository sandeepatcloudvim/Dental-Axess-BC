pageextension 60003 Extend_P30_ItemCard extends "Item Card"
{
    layout
    {

        addafter("Web Shop Category4")
        {

            field("Shortcut Dimension 5 Code"; Rec."Shortcut Dimension 5 Code")
            {
                ApplicationArea = All;
            }
        }

    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}
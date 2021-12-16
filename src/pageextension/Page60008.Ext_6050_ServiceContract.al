pageextension 60008 Extend_P6050_SerContract extends "Service Contract"
{
    layout
    {
        // Add changes to page layout here

        addafter("Shortcut Dimension 2 Code")
        {
            field("Dongle No."; Rec."Dongle No.")
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
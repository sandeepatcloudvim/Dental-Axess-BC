pageextension 60004 Extend_P31_ItemList extends "Item List"
{
    layout
    {
        addafter("Default Deferral Template Code")
        {
            field("Shortcut Dimension 5 Code"; Rec."Shortcut Dimension 5 Code")
            {
                ApplicationArea = All;
            }
            field("Gross Weight"; Rec."Gross Weight")
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

}
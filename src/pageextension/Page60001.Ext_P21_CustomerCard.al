pageextension 60001 Extend_P21_CustomerCard extends "Customer Card"
{
    layout
    {
        // Add changes to page layout here
        //DAX003 - 10/05/2017 - Added fields "Shortcut Dimension 4 Code","Shortcut Dimension 6 Code" into General Fasttab


        addafter("Last Date Modified")
        {
            field("Shortcut Dimension 4 Code"; Rec."Shortcut Dimension 4 Code")
            {
                ApplicationArea = all;
            }
            field("Shortcut Dimension 6 Code"; Rec."Shortcut Dimension 6 Code")
            {
                ApplicationArea = all;
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
pageextension 60002 Extend_P22_CustomerList extends "Customer List"
{
    layout
    {
        // Add changes to page layout here
        //DAX003 - 10/05/2017 - Added fields "Shortcut Dimension 4 Code","Shortcut Dimension 6 Code"
        addafter("Base Calendar Code")
        {

            field("Territory Code"; Rec."Territory Code")
            {
                ApplicationArea = all;
            }
            field("Shortcut Dimension 4 Code"; Rec."Shortcut Dimension 4 Code")
            {
                ApplicationArea = all;
            }
            field("Shortcut Dimension 6 Code"; Rec."Shortcut Dimension 6 Code")
            {
                ApplicationArea = all;
            }
            field(Balance; Rec.Balance)
            {
                ApplicationArea = all;
            }

        }
        addafter("Phone No.")
        {
            field("E-Mail"; Rec."E-Mail")
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
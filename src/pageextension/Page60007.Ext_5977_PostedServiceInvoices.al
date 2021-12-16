pageextension 60007 Extend_P5977_PstdServInvs extends "Posted Service Invoices"
{
    layout
    {
        // Add changes to page layout here

        //  Amount Including VAT
        addafter("Shortcut Dimension 2 Code")
        {
            field(" Amount Including VAT"; Rec."Amount Including VAT")
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
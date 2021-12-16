pageextension 60011 Extend_P46_SalesOrderSub extends "Sales Order Subform"
{
    layout
    {
        addafter("Unit of Measure Code")
        {
            field("VAT Prod Posting Group"; Rec."VAT Prod. Posting Group")
            {
                ApplicationArea = All;
                Caption = 'VAT Prod. Posting Group';
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
pageextension 60009 Extend_P9001_AccMngRoleCenter extends "Accounting Manager Role Center"
{
    layout
    {
        // Add changes to page layout here
    }

    actions
    {
        // Add changes to page actions here
        addafter("Incoming Documents")
        {
            action("GST Sales Entries")
            {

                ApplicationArea = Basic, Suite;

                RunObject = page "GST Sales Entries";

            }

            action("GST Purchase Entries")
            {

                ApplicationArea = Basic, Suite;

                RunObject = page "GST Purchase Entries";
                Image = VATEntries;

            }
            action("Sales Invoice Lines")
            {

                ApplicationArea = Basic, Suite;

                RunObject = page "Web Shop Sub Category";
                Image = Sales;

            }
            action("Sales Credit Memo Lines")
            {

                ApplicationArea = Basic, Suite;

                RunObject = page "Web Shop Category2";
                Image = CreditMemo;

            }



        }
        addafter("Calculate GST Settlement")

        {
            action("Melanie Commission Repor")
            {

                ApplicationArea = Basic, Suite;
                Promoted = true;
                PromotedIsBig = true;
                Image = Calculate;
            }
        }
    }

    var
        myInt: Integer;
}
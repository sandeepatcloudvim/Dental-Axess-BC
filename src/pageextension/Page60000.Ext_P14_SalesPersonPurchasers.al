pageextension 60000 Extend_P14_SalePersonPurchaser extends "Salespersons/Purchasers"
{
    layout
    {
        // Add changes to page layout here
    }

    actions
    {
        // Add changes to page actions here
        addafter("S&egments")
        {
            action("Commission Setup")
            {
                Caption = 'Commission Setup';
                Image = UserSetup;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                ApplicationArea = All;
                trigger OnAction();
                var
                    CommissionSetup: Record "Commission Setup";
                    CommissionSetupList: Page "Commission Setup List";
                begin
                    CommissionSetup.SETFILTER("Salesperson Code", Code);
                    if CommissionSetup.FINDFIRST then
                        CommissionSetupList.SETRECORD(CommissionSetup);
                    CommissionSetupList.RUN;
                end;
            }
            action("Commission Calculation")
            {
                ApplicationArea = All;
                Caption = 'Commission Calculation';
                Image = TeamSales;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                RunObject = Report "Commission Calculation";
            }
        }
    }

    var
        myInt: Integer;
}
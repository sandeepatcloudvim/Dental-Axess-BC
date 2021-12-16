pageextension 60006 Extend_P9700_EmailDialog extends "Email Dialog"
{
    layout
    {
        // Add changes to page layout here
        modify(OutlookEdit)
        {
            ApplicationArea = All;
            trigger OnAfterValidate()
            var
                myInt: Integer;
            begin
                ShownFromEmail := 'admin@dentalaxess.com';
            end;
        }


    }



    actions
    {
        // Add changes to page actions here
    }

    trigger OnOpenPage()
    var
        myInt: Integer;
    begin
        ShownFromEmail := 'admin@dentalaxess.com';
    end;

    var
        myInt: Integer;
        ShownFromEmail: Text;
}
pageextension 60010 Extend_P9305_SalesOrderList extends "Sales Order List"
{
    layout
    {
        // Add changes to page layout here
    }

    actions
    {
        // Add changes to page actions here
        addafter("Order &Promising")
        {

            action("Import Orders from Magentos")
            {

                ApplicationArea = Basic, Suite;

                RunObject = xmlport "Magento Order Import";
                Image = Import;

            }


        }
    }

    var
        myInt: Integer;
}
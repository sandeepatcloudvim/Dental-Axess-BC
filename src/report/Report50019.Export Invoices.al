report 50019 "Export Invoices"
{
    // version Daneco

    ProcessingOnly = true;

    dataset
    {
        dataitem("Sales Invoice Header"; "Sales Invoice Header")
        {
            RequestFilterFields = "No.", "Posting Date";

            trigger OnAfterGetRecord();
            begin
                rcSalesInvoiceHeader.SETRANGE("No.", "No.");
                //   REPORT.SAVEASPDF(50020,'D:\PDFs\'+"No."+'.pdf',rcSalesInvoiceHeader);
            end;
        }
        dataitem("Sales Cr.Memo Header"; "Sales Cr.Memo Header")
        {
            RequestFilterFields = "No.", "Posting Date";

            trigger OnAfterGetRecord();
            begin
                rcSalesCrMemoHeader.SETRANGE("No.", "No.");
                //REPORT.SAVEASPDF(50002, 'D:\PDFs\' + "No." + '.pdf', rcSalesCrMemoHeader);
            end;
        }
    }

    requestpage
    {

        layout
        {
        }

        actions
        {
        }
    }

    labels
    {
    }

    var
        rcSalesInvoiceHeader: Record "Sales Invoice Header";
        rcSalesCrMemoHeader: Record "Sales Cr.Memo Header";
}


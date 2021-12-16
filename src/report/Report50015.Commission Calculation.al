report 50015 "Commission Calculation"
{
    // version DAX002

    DefaultLayout = RDLC;
    RDLCLayout = './Commission Calculation.rdl';

    dataset
    {
        dataitem("Salesperson/Purchaser"; "Salesperson/Purchaser")
        {
            DataItemTableView = SORTING(Code) ORDER(Ascending);
            PrintOnlyIfDetail = true;
            RequestFilterFields = "Code", "Date Filter";
            column(CompanyName; COMPANYNAME)
            {
            }
            column(SalespersonTableCaptionSalespersonFilter; 'Salesperson filter: ' + SalespersonFilter)
            {
            }
            column(SalespersonName; "Salesperson/Purchaser".Name)
            {
            }
            column(SalespersonCommissionAmount; SalesCommissionAmount)
            {
            }
            dataitem("Commission Setup"; "Commission Setup")
            {
                DataItemLink = "Salesperson Code" = FIELD(Code);
                DataItemTableView = SORTING("Salesperson Code") ORDER(Ascending);
                PrintOnlyIfDetail = true;
                dataitem("Sales Invoice Line"; "Sales Invoice Line")
                {
                    DataItemLink = "No." = FIELD("Item No.");
                    DataItemTableView = SORTING("Document No.", "Line No.") ORDER(Ascending) WHERE(Type = CONST(Item));
                    column(SalesInvLinePostDate; FORMAT("Posting Date"))
                    {
                    }
                    column(SalesInvLineCustomerName; SalesInvoiceHeader."Sell-to Customer Name")
                    {
                    }
                    column(SalesInvLineDocNo; "Document No.")
                    {
                    }
                    column(SalesInvLineSalespersonName; "Salesperson/Purchaser".Name)
                    {
                    }
                    column(SalesInvLineDescription; Description)
                    {
                    }
                    column(SalesInvLineQuantity; Quantity)
                    {
                    }
                    column(SalesInvLineAreaName; "Commission Setup"."Area Name")
                    {
                    }
                    column(SalesInvLineAmountExclVAT; Amount)
                    {
                    }
                    column(SalesInvLineAmountInclVAT; "Amount Including VAT")
                    {
                    }
                    column(SalesInvLineCommissionRate; "Commission Setup"."Commission %")
                    {
                    }
                    column(SalesInvLineCommissionAmount; SalesCommissionAmount)
                    {
                    }

                    trigger OnAfterGetRecord();
                    begin
                        if not CheckDimension("Sales Invoice Line") then
                            CurrReport.SKIP;

                        SalesInvoiceHeader.GET("Document No.");
                        //IF NOT Salesperson.GET(SalesInvoiceHeader."Salesperson Code") THEN//
                        //  CLEAR(Salesperson);

                        SalesCommissionAmount := ROUND(Amount * "Commission Setup"."Commission %" / 100);
                    end;

                    trigger OnPreDataItem();
                    begin
                        SETFILTER("Posting Date", '%1..%2', "Salesperson/Purchaser".GETRANGEMIN("Date Filter"),
                                                          "Salesperson/Purchaser".GETRANGEMAX("Date Filter"));

                        //   CurrReport.CREATETOTALS(SalesCommissionAmount);
                    end;
                }
            }

            trigger OnPreDataItem();
            begin
                //   CurrReport.CREATETOTALS(SalesCommissionAmount);
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

    trigger OnPreReport();
    begin
        SalespersonFilter := "Salesperson/Purchaser".GETFILTERS;
        //SalesInvLineFilter := "Sales Invoice Line".GETFILTERS;
        PeriodText := "Sales Invoice Line".GETFILTER("Posting Date");
    end;

    var
        SalesInvoiceHeader: Record "Sales Invoice Header";
        Salesperson: Record "Salesperson/Purchaser";
        DimMgt: Codeunit DimensionManagement;
        SalesCommissionAmount: Decimal;
        SalespersonFilter: Text;
        SalesInvLineFilter: Text;
        PeriodText: Text[30];

    local procedure CheckDimension(SalesInvoiceLine: Record "Sales Invoice Line"): Boolean;
    var
        DimSetEntry: Record "Dimension Set Entry";
        DimCode: array[1] of Code[20];
    begin
        if not DimSetEntry.GET("Sales Invoice Line"."Dimension Set ID", 'SALESTER') then
            exit(false);

        if DimSetEntry."Dimension Value Code" <> "Commission Setup"."Area Code" then
            exit(false);

        exit(true);
    end;
}


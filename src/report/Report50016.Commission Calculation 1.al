report 50016 "Commission Calculation 1"
{
    // version DAX002

    DefaultLayout = RDLC;
    RDLCLayout = './Commission Calculation 1.rdl';

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
            column(SalesInvoiceLineTableCaptionSalesInvLineFilter; 'Sales line filter: ' + SalesInvLineFilter)
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
                dataitem("Sales Invoice Line"; "Sales Invoice Line")
                {
                    DataItemLink = "No." = FIELD("Item No.");
                    DataItemTableView = SORTING("Document No.", "Line No.") ORDER(Ascending) WHERE(Type = CONST(Item));
                    PrintOnlyIfDetail = false;
                    RequestFilterFields = "Posting Date";
                    column(SalesInvLinePostDate; FORMAT("Sales Invoice Line"."Posting Date"))
                    {
                    }
                    column(SalesInvLineCustomerName; SalesInvoiceHeader."Sell-to Customer Name")
                    {
                    }
                    column(SalesInvLineDocNo; "Sales Invoice Line"."Document No.")
                    {
                    }
                    column(SalesInvLineSalespersonName; Salesperson.Name)
                    {
                    }
                    column(SalesInvLineDescription; "Sales Invoice Line".Description)
                    {
                    }
                    column(SalesInvLineQuantity; "Sales Invoice Line".Quantity)
                    {
                    }
                    column(SalesInvLineAreaName; "Commission Setup"."Area Name")
                    {
                    }
                    column(SalesInvLineAmountExclVAT; "Sales Invoice Line".Amount)
                    {
                    }
                    column(SalesInvLineAmountInclVAT; "Sales Invoice Line"."Amount Including VAT")
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
                        if not Salesperson.GET(SalesInvoiceHeader."Salesperson Code") then
                            CLEAR(Salesperson);

                        SalesCommissionAmount := ROUND(Amount * "Commission Setup"."Commission %" / 100);
                    end;

                    trigger OnPreDataItem();
                    begin
                        //  CurrReport.CREATETOTALS(SalesCommissionAmount);
                    end;
                }
            }

            trigger OnPreDataItem();
            begin
                //  CurrReport.CREATETOTALS(SalesCommissionAmount);
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
        SalesInvLineFilter := "Sales Invoice Line".GETFILTERS;
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
        if not DimSetEntry.GET("Sales Invoice Line"."Dimension Set ID", 'AREA') then
            exit;

        if DimSetEntry."Dimension Value Code" <> "Commission Setup"."Area Code" then
            exit;

        exit(true);
    end;
}


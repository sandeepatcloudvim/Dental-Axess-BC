report 50008 "DAX Sales Commission Report"
{
    // version NAVW17.10

    DefaultLayout = RDLC;
    RDLCLayout = './DAX Sales Commission Report.rdl';
    CaptionML = ENU = 'Inventory - Sales Statistics',
                ENA = 'Inventory - Sales Statistics';

    dataset
    {
        dataitem(Item; Item)
        {
            DataItemTableView = SORTING("Inventory Posting Group");
            RequestFilterFields = "No.", "Search Description", "Assembly BOM", "Inventory Posting Group", "Statistics Group", "Base Unit of Measure", "Date Filter";
            column(PeriodTextCaption; STRSUBSTNO(Text000, PeriodText))
            {
            }
            column(CompanyName; COMPANYNAME)
            {
            }
            column(PrintAlsoWithoutSale; PrintAlsoWithoutSale)
            {
            }
            column(ItemFilterCaption; STRSUBSTNO('%1: %2', TABLECAPTION, ItemFilter))
            {
            }
            column(ItemFilter; ItemFilter)
            {
            }
            column(InventoryPostingGrp_Item; "Inventory Posting Group")
            {
            }
            column(No_Item; "No.")
            {
                IncludeCaption = true;
            }
            column(Description_Item; Description)
            {
                IncludeCaption = true;
            }
            column(AssemblyBOM_Item; FORMAT("Assembly BOM"))
            {
            }
            column(BaseUnitofMeasure_Item; "Base Unit of Measure")
            {
                IncludeCaption = true;
            }
            column(UnitCost; UnitCost)
            {
            }
            column(UnitPrice; UnitPrice)
            {
            }
            column(SalesQty; SalesQty)
            {
            }
            column(SalesAmount; SalesAmount)
            {
            }
            column(ItemProfit; ItemProfit)
            {
                AutoFormatType = 1;
            }
            column(ItemProfitPct; ItemProfitPct)
            {
                DecimalPlaces = 1 : 1;
            }
            column(InvSalesStatisticsCapt; InvSalesStatisticsCaptLbl)
            {
            }
            column(PageCaption; PageCaptionLbl)
            {
            }
            column(IncludeNotSoldItemsCaption; IncludeNotSoldItemsCaptionLbl)
            {
            }
            column(ItemAssemblyBOMCaption; ItemAssemblyBOMCaptionLbl)
            {
            }
            column(UnitCostCaption; UnitCostCaptionLbl)
            {
            }
            column(UnitPriceCaption; UnitPriceCaptionLbl)
            {
            }
            column(SalesQtyCaption; SalesQtyCaptionLbl)
            {
            }
            column(SalesAmountCaption; SalesAmountCaptionLbl)
            {
            }
            column(ItemProfitCaption; ItemProfitCaptionLbl)
            {
            }
            column(ItemProfitPctCaption; ItemProfitPctCaptionLbl)
            {
            }
            column(TotalCaption; TotalCaptionLbl)
            {
            }
            column(SalesCommission; Commission)
            {
            }
            column(Mags; Commission)
            {
                AutoCalcField = false;
            }

            trigger OnAfterGetRecord();
            begin
                CALCFIELDS("Assembly BOM");

                SetFilters;
                Calculate;

                //Calculate Commission for Melanie
                Commission := 0;
                case Item."No." of
                    '01500', '01501', '01502', '01503':
                        Commission := SalesAmount * 0.1;
                    else
                        Commission := SalesAmount * 0.08;
                end;

                if (SalesAmount = 0) and not PrintAlsoWithoutSale then
                    CurrReport.SKIP;
            end;

            trigger OnPreDataItem();
            begin
                CurrReport.CREATETOTALS(SalesQty, SalesAmount, COGSAmount, ItemProfit);
            end;
        }
    }

    requestpage
    {
        SaveValues = true;

        layout
        {
            area(content)
            {
                group(Options)
                {
                    CaptionML = ENU = 'Options',
                                ENA = 'Options';
                    field(PrintAlsoWithoutSale; PrintAlsoWithoutSale)
                    {
                        ApplicationArea = All;
                        CaptionML = ENU = 'Include Items Not Sold',
                                    ENA = 'Include Items Not Sold';
                        MultiLine = true;
                    }
                }
            }
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
        GLSetup.GET;

        ItemFilter := Item.GETFILTERS;
        PeriodText := Item.GETFILTER("Date Filter");

        //  with ItemStatisticsBuf do begin
        if Item.GETFILTER("Date Filter") <> '' then
            ItemStatisticsBuf.SETFILTER("Date Filter", PeriodText);
        if Item.GETFILTER("Location Filter") <> '' then
            ItemStatisticsBuf.SETFILTER("Location Filter", Item.GETFILTER("Location Filter"));
        if Item.GETFILTER("Variant Filter") <> '' then
            ItemStatisticsBuf.SETFILTER("Variant Filter", Item.GETFILTER("Variant Filter"));
        if Item.GETFILTER("Global Dimension 1 Filter") <> '' then
            ItemStatisticsBuf.SETFILTER("Global Dimension 1 Filter", Item.GETFILTER("Global Dimension 1 Filter"));
        if Item.GETFILTER("Global Dimension 2 Filter") <> '' then
            ItemStatisticsBuf.SETFILTER("Global Dimension 2 Filter", Item.GETFILTER("Global Dimension 2 Filter"));
    end;
    //  end;

    var
        Text000: TextConst ENU = 'Period: %1', ENA = 'Period: %1';
        ItemStatisticsBuf: Record "Item Statistics Buffer";
        GLSetup: Record "General Ledger Setup";
        ItemFilter: Text;
        PeriodText: Text[30];
        SalesQty: Decimal;
        SalesAmount: Decimal;
        COGSAmount: Decimal;
        ItemProfit: Decimal;
        ItemProfitPct: Decimal;
        UnitPrice: Decimal;
        UnitCost: Decimal;
        PrintAlsoWithoutSale: Boolean;
        InvSalesStatisticsCaptLbl: TextConst ENU = 'Inventory - Sales Statistics', ENA = 'Inventory - Sales Statistics';
        PageCaptionLbl: TextConst ENU = 'Page', ENA = 'Page';
        IncludeNotSoldItemsCaptionLbl: TextConst ENU = 'This report also includes items that are not sold.', ENA = 'This report also includes items that are not sold.';
        ItemAssemblyBOMCaptionLbl: TextConst ENU = 'BOM', ENA = 'BOM';
        UnitCostCaptionLbl: TextConst ENU = 'Unit Cost', ENA = 'Unit Cost';
        UnitPriceCaptionLbl: TextConst ENU = 'Unit Price', ENA = 'Unit Price';
        SalesQtyCaptionLbl: TextConst ENU = 'Sales (Qty.)', ENA = 'Sales (Qty.)';
        SalesAmountCaptionLbl: TextConst ENU = 'Sales (LCY)', ENA = 'Sales (LCY)';
        ItemProfitCaptionLbl: TextConst ENU = 'Profit', ENA = 'Profit';
        ItemProfitPctCaptionLbl: TextConst ENU = 'Profit %', ENA = 'Profit %';
        TotalCaptionLbl: TextConst ENU = 'Total', ENA = 'Total';
        Commission: Decimal;

    procedure Calculate();
    begin
        SalesQty := -CalcInvoicedQty;
        SalesAmount := CalcSalesAmount;
        COGSAmount := CalcCostAmount + CalcCostAmountNonInvnt;
        ItemProfit := SalesAmount + COGSAmount;

        if SalesAmount <> 0 then
            ItemProfitPct := ROUND(100 * ItemProfit / SalesAmount, 0.1)
        else
            ItemProfitPct := 0;

        UnitPrice := CalcPerUnit(SalesAmount, SalesQty);
        UnitCost := -CalcPerUnit(COGSAmount, SalesQty);
    end;

    local procedure SetFilters();
    begin
        with ItemStatisticsBuf do begin
            SETRANGE("Item Filter", Item."No.");
            SETRANGE("Item Ledger Entry Type Filter", "Item Ledger Entry Type Filter"::Sale);
            SETFILTER("Entry Type Filter", '<>%1', "Entry Type Filter"::Revaluation);
        end;
    end;

    local procedure CalcSalesAmount(): Decimal;
    begin
        with ItemStatisticsBuf do begin
            CALCFIELDS("Sales Amount (Actual)");
            exit("Sales Amount (Actual)");
        end;
    end;

    local procedure CalcCostAmount(): Decimal;
    begin
        with ItemStatisticsBuf do begin
            CALCFIELDS("Cost Amount (Actual)");
            exit("Cost Amount (Actual)");
        end;
    end;

    local procedure CalcCostAmountNonInvnt(): Decimal;
    begin
        with ItemStatisticsBuf do begin
            SETRANGE("Item Ledger Entry Type Filter");
            CALCFIELDS("Cost Amount (Non-Invtbl.)");
            exit("Cost Amount (Non-Invtbl.)");
        end;
    end;

    local procedure CalcInvoicedQty(): Decimal;
    begin
        with ItemStatisticsBuf do begin
            SETRANGE("Entry Type Filter");
            CALCFIELDS("Invoiced Quantity");
            exit("Invoiced Quantity");
        end;
    end;

    procedure CalcPerUnit(Amount: Decimal; Qty: Decimal): Decimal;
    begin
        if Qty <> 0 then
            exit(ROUND(Amount / ABS(Qty), GLSetup."Unit-Amount Rounding Precision"));
        exit(0);
    end;
}


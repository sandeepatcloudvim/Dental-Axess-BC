report 50013 "Customer Statement DX"
{
    // version NAVW19.00.00.43402

    DefaultLayout = RDLC;
    RDLCLayout = './Customer Statement.rdl';
    CaptionML = ENU = 'Statement',
                ENA = 'Statement';

    dataset
    {
        dataitem(Customer; Customer)
        {
            DataItemTableView = SORTING("No.");
            PrintOnlyIfDetail = true;
            RequestFilterFields = "No.", "Search Name", "Print Statements", "Currency Filter";
            column(No_Cust; "No.")
            {
            }
            dataitem("Integer"; "Integer")
            {
                DataItemTableView = SORTING(Number) WHERE(Number = CONST(1));
                PrintOnlyIfDetail = true;
                column(CompanyInfo1Picture; CompanyInfo1.Picture)
                {
                }
                column(CompanyInfo2Picture; CompanyInfo2.Picture)
                {
                }
                column(CompanyInfo3Picture; CompanyInfo3.Picture)
                {
                }
                column(CustAddr1; CustAddr[1])
                {
                }
                column(CompanyAddr1; CompanyAddr[1])
                {
                }
                column(CustAddr2; CustAddr[2])
                {
                }
                column(CompanyAddr2; CompanyAddr[2])
                {
                }
                column(CustAddr3; CustAddr[3])
                {
                }
                column(CompanyAddr3; CompanyAddr[3])
                {
                }
                column(CustAddr4; CustAddr[4])
                {
                }
                column(CompanyAddr4; CompanyAddr[4])
                {
                }
                column(CustAddr5; CustAddr[5])
                {
                }
                column(PhoneNo_CompanyInfo; CompanyInfo."Phone No.")
                {
                }
                column(CustAddr6; CustAddr[6])
                {
                }
                column(CompanyInfoEmail; CompanyInfo."E-Mail")
                {
                }
                column(CompanyInfoHomePage; CompanyInfo."Home Page")
                {
                }
                column(VATRegNo_CompanyInfo; CompanyInfo."VAT Registration No.")
                {
                }
                column(GiroNo_CompanyInfo; CompanyInfo."Giro No.")
                {
                }
                column(BankName_CompanyInfo; CompanyInfo."Bank Name")
                {
                }
                column(BankAccNo_CompanyInfo; CompanyInfo."Bank Account No.")
                {
                }
                column(No1_Cust; Customer."No.")
                {
                }
                column(TodayFormatted; FORMAT(TODAY))
                {
                }
                column(StartDate; FORMAT(StartDate))
                {
                }
                column(EndDate; FORMAT(EndDate))
                {
                }
                column(LastStatmntNo_Cust; FORMAT(Customer."Last Statement No."))
                {
                    //  DecimalPlaces = 0 : 0;
                }
                column(CustAddr7; CustAddr[7])
                {
                }
                column(CustAddr8; CustAddr[8])
                {
                }
                column(CompanyAddr7; CompanyAddr[7])
                {
                }
                column(CompanyAddr8; CompanyAddr[8])
                {
                }
                column(StatementCaption; StatementCaptionLbl)
                {
                }
                column(PhoneNo_CompanyInfoCaption; PhoneNo_CompanyInfoCaptionLbl)
                {
                }
                column(VATRegNo_CompanyInfoCaption; VATRegNo_CompanyInfoCaptionLbl)
                {
                }
                column(GiroNo_CompanyInfoCaption; GiroNo_CompanyInfoCaptionLbl)
                {
                }
                column(BankName_CompanyInfoCaption; BankName_CompanyInfoCaptionLbl)
                {
                }
                column(BankAccNo_CompanyInfoCaption; BankAccNo_CompanyInfoCaptionLbl)
                {
                }
                column(No1_CustCaption; No1_CustCaptionLbl)
                {
                }
                column(StartDateCaption; StartDateCaptionLbl)
                {
                }
                column(EndDateCaption; EndDateCaptionLbl)
                {
                }
                column(LastStatmntNo_CustCaption; LastStatmntNo_CustCaptionLbl)
                {
                }
                column(PostDate_DtldCustLedgEntriesCaption; PostDate_DtldCustLedgEntriesCaptionLbl)
                {
                }
                column(DocNo_DtldCustLedgEntriesCaption; DtldCustLedgEntries.FIELDCAPTION("Document No."))
                {
                }
                column(Desc_CustLedgEntry2Caption; CustLedgEntry2.FIELDCAPTION(Description))
                {
                }
                column(DueDate_CustLedgEntry2Caption; DueDate_CustLedgEntry2CaptionLbl)
                {
                }
                column(RemainAmtCustLedgEntry2Caption; CustLedgEntry2.FIELDCAPTION("Remaining Amount"))
                {
                }
                column(CustBalanceCaption; CustBalanceCaptionLbl)
                {
                }
                column(OriginalAmt_CustLedgEntry2Caption; CustLedgEntry2.FIELDCAPTION("Original Amount"))
                {
                }
                column(CompanyInfoHomepageCaption; CompanyInfoHomepageCaptionLbl)
                {
                }
                column(CompanyInfoEmailCaption; CompanyInfoEmailCaptionLbl)
                {
                }
                column(DocDateCaption; DocDateCaptionLbl)
                {
                }
                column(Total_Caption2; Total_CaptionLbl)
                {
                }
                column(CurrReportPageNoCaption; CurrReportPageNoCaptionLbl)
                {
                }
                dataitem(CurrencyLoop; "Integer")
                {
                    DataItemTableView = SORTING(Number) WHERE(Number = FILTER(1 ..));
                    PrintOnlyIfDetail = true;
                    dataitem(CustLedgEntryHdr; "Integer")
                    {
                        DataItemTableView = SORTING(Number) WHERE(Number = CONST(1));
                        column(Currency2Code_CustLedgEntryHdr; STRSUBSTNO(Text001, CurrencyCode3))
                        {
                        }
                        column(StartBalance; StartBalance)
                        {
                            AutoFormatExpression = Currency2.Code;
                            AutoFormatType = 1;
                        }
                        column(CurrencyCode3; CurrencyCode3)
                        {
                        }
                        column(CustBalance_CustLedgEntryHdr; CustBalance)
                        {
                        }
                        column(PrintLine; PrintLine)
                        {
                        }
                        column(DtldCustLedgEntryType; FORMAT(DtldCustLedgEntries."Entry Type", 0, 2))
                        {
                        }
                        column(EntriesExists; EntriesExists)
                        {
                        }
                        column(IsNewCustCurrencyGroup; IsNewCustCurrencyGroup)
                        {
                        }
                        dataitem(DtldCustLedgEntries; "Detailed Cust. Ledg. Entry")
                        {
                            DataItemTableView = SORTING("Customer No.", "Posting Date", "Entry Type", "Currency Code");
                            column(PostDate_DtldCustLedgEntries; FORMAT("Posting Date"))
                            {
                            }
                            column(DocNo_DtldCustLedgEntries; "Document No.")
                            {
                            }
                            column(Description; Description)
                            {
                            }
                            column(DueDate_DtldCustLedgEntries; FORMAT("Due Date"))
                            {
                            }
                            column(CurrCode_DtldCustLedgEntries; "Currency Code")
                            {
                            }
                            column(Amt_DtldCustLedgEntries; Amount)
                            {
                                AutoFormatExpression = "Currency Code";
                                AutoFormatType = 1;
                            }
                            column(RemainAmt_DtldCustLedgEntries; "Remaining Amount")
                            {
                                AutoFormatExpression = "Currency Code";
                                AutoFormatType = 1;
                            }
                            column(CustBalance; CustBalance)
                            {
                                AutoFormatExpression = "Currency Code";
                                AutoFormatType = 1;
                            }
                            column(Currency2Code; Currency2.Code)
                            {
                            }

                            trigger OnAfterGetRecord();
                            begin
                                if SkipReversedUnapplied(DtldCustLedgEntries) or (Amount = 0) then
                                    CurrReport.SKIP;
                                "Remaining Amount" := 0;
                                PrintLine := false;

                                case "Entry Type" of
                                    "Entry Type"::"Initial Entry":
                                        begin
                                            "Cust. Ledger Entry".GET("Cust. Ledger Entry No.");
                                            Description := "Cust. Ledger Entry".Description;
                                            "Due Date" := "Cust. Ledger Entry"."Due Date";
                                            "Cust. Ledger Entry".SETRANGE("Date Filter", 0D, EndDate);
                                            "Cust. Ledger Entry".CALCFIELDS("Remaining Amount");
                                            "Remaining Amount" := "Cust. Ledger Entry"."Remaining Amount";
                                            "Cust. Ledger Entry".SETRANGE("Date Filter");
                                        end;
                                    "Entry Type"::Application:
                                        begin
                                            DtldCustLedgEntries2.SETCURRENTKEY("Customer No.", "Posting Date", "Entry Type");
                                            DtldCustLedgEntries2.SETRANGE("Customer No.", "Customer No.");
                                            DtldCustLedgEntries2.SETRANGE("Posting Date", "Posting Date");
                                            DtldCustLedgEntries2.SETRANGE("Entry Type", "Entry Type"::Application);
                                            DtldCustLedgEntries2.SETRANGE("Transaction No.", "Transaction No.");
                                            DtldCustLedgEntries2.SETFILTER("Currency Code", '<>%1', "Currency Code");

                                            if not DtldCustLedgEntries2.ISEMPTY then begin
                                                Description := Text005;
                                                "Due Date" := 0D;
                                            end else
                                                PrintLine := false;
                                        end;
                                    "Entry Type"::"Payment Discount",
                                    "Entry Type"::"Payment Discount (VAT Excl.)",
                                    "Entry Type"::"Payment Discount (VAT Adjustment)",
                                    "Entry Type"::"Payment Discount Tolerance",
                                    "Entry Type"::"Payment Discount Tolerance (VAT Excl.)",
                                    "Entry Type"::"Payment Discount Tolerance (VAT Adjustment)":
                                        begin
                                            Description := Text006;
                                            "Due Date" := 0D;
                                        end;
                                    "Entry Type"::"Payment Tolerance",
                                    "Entry Type"::"Payment Tolerance (VAT Excl.)",
                                    "Entry Type"::"Payment Tolerance (VAT Adjustment)":
                                        begin
                                            Description := Text014;
                                            "Due Date" := 0D;
                                        end;
                                    "Entry Type"::"Appln. Rounding",
                                    "Entry Type"::"Correction of Remaining Amount":
                                        begin
                                            Description := Text007;
                                            "Due Date" := 0D;
                                        end;
                                end;

                                if PrintLine then begin
                                    CustBalance := CustBalance + Amount;
                                    IsNewCustCurrencyGroup := IsFirstPrintLine;
                                    IsFirstPrintLine := false;
                                end;
                            end;

                            trigger OnPreDataItem();
                            begin
                                SETRANGE("Customer No.", Customer."No.");
                                SETRANGE("Posting Date", StartDate, EndDate);
                                SETRANGE("Currency Code", Currency2.Code);

                                if Currency2.Code = '' then begin
                                    GLSetup.TESTFIELD("LCY Code");
                                    CurrencyCode3 := GLSetup."LCY Code"
                                end else
                                    CurrencyCode3 := Currency2.Code;

                                IsFirstPrintLine := true;
                            end;
                        }
                    }
                    dataitem(CustLedgEntryFooter; "Integer")
                    {
                        DataItemTableView = SORTING(Number) WHERE(Number = CONST(1));
                        column(CurrencyCode3_CustLedgEntryFooter; CurrencyCode3)
                        {
                        }
                        column(Total_Caption; Total_CaptionLbl)
                        {
                        }
                        column(CustBalance_CustLedgEntryHdrFooter; CustBalance)
                        {
                            AutoFormatExpression = Currency2.Code;
                            AutoFormatType = 1;
                        }
                        column(EntriesExistsl_CustLedgEntryFooterCaption; EntriesExists)
                        {
                        }
                    }
                    dataitem(CustLedgEntry2; "Cust. Ledger Entry")
                    {
                        DataItemLink = "Customer No." = FIELD("No.");
                        DataItemLinkReference = Customer;
                        DataItemTableView = SORTING("Customer No.", Open, Positive, "Due Date");
                        column(OverDueEntries; STRSUBSTNO(Text002, Currency2.Code))
                        {
                        }
                        column(RemainAmt_CustLedgEntry2; "Remaining Amount")
                        {
                            AutoFormatExpression = "Currency Code";
                            AutoFormatType = 1;
                        }
                        column(PostDate_CustLedgEntry2; FORMAT("Posting Date"))
                        {
                        }
                        column(DocNo_CustLedgEntry2; "Document No.")
                        {
                        }
                        column(Desc_CustLedgEntry2; Description)
                        {
                        }
                        column(DueDate_CustLedgEntry2; FORMAT("Due Date"))
                        {
                        }
                        column(OriginalAmt_CustLedgEntry2; "Original Amount")
                        {
                            AutoFormatExpression = "Currency Code";
                        }
                        column(CurrCode_CustLedgEntry2; "Currency Code")
                        {
                        }
                        column(PrintEntriesDue; PrintEntriesDue)
                        {
                        }
                        column(Currency2Code_CustLedgEntry2; Currency2.Code)
                        {
                        }
                        column(CurrencyCode3_CustLedgEntry2; CurrencyCode3)
                        {
                        }
                        column(CustNo_CustLedgEntry2; "Customer No.")
                        {
                        }
                        column(Open; "Cust. Ledger Entry".Open)
                        {
                        }

                        trigger OnAfterGetRecord();
                        var
                            CustLedgEntry: Record "Cust. Ledger Entry";
                        begin
                            if IncludeAgingBand then
                                if ("Posting Date" > EndDate) and ("Due Date" >= EndDate) then
                                    CurrReport.SKIP;
                            CustLedgEntry := CustLedgEntry2;
                            CustLedgEntry.SETRANGE("Date Filter", 0D, EndDate);
                            CustLedgEntry.CALCFIELDS("Remaining Amount");
                            "Remaining Amount" := CustLedgEntry."Remaining Amount";
                            if CustLedgEntry."Remaining Amount" = 0 then
                                CurrReport.SKIP;

                            if IncludeAgingBand and ("Posting Date" <= EndDate) then
                                UpdateBuffer(Currency2.Code, GetDate("Posting Date", "Due Date"), "Remaining Amount");
                            if "Due Date" >= EndDate then
                                CurrReport.SKIP;
                        end;

                        trigger OnPreDataItem();
                        begin
                            //  CurrReport.CREATETOTALS("Remaining Amount");
                            if not IncludeAgingBand then
                                SETRANGE("Due Date", 0D, EndDate - 1);
                            SETRANGE("Currency Code", Currency2.Code);
                            if (not PrintEntriesDue) and (not IncludeAgingBand) then
                                CurrReport.BREAK;
                        end;
                    }

                    trigger OnAfterGetRecord();
                    begin
                        if Number = 1 then
                            Currency2.FINDFIRST;

                        repeat
                            if not IsFirstLoop then
                                IsFirstLoop := true
                            else
                                if Currency2.NEXT = 0 then
                                    CurrReport.BREAK;
                            "Cust. Ledger Entry".SETCURRENTKEY("Customer No.", "Posting Date", "Currency Code");
                            "Cust. Ledger Entry".SETRANGE("Customer No.", Customer."No.");
                            "Cust. Ledger Entry".SETRANGE("Posting Date", 0D, EndDate);
                            "Cust. Ledger Entry".SETRANGE("Currency Code", Currency2.Code);
                            EntriesExists := not "Cust. Ledger Entry".ISEMPTY;
                        until EntriesExists;
                        Cust2 := Customer;
                        Cust2.SETRANGE("Date Filter", 0D, StartDate - 1);
                        Cust2.SETRANGE("Currency Filter", Currency2.Code);
                        Cust2.CALCFIELDS("Net Change");
                        StartBalance := Cust2."Net Change";
                        CustBalance := Cust2."Net Change";
                    end;

                    trigger OnPreDataItem();
                    begin
                        Customer.COPYFILTER("Currency Filter", Currency2.Code);
                    end;
                }
                dataitem(AgingBandLoop; "Integer")
                {
                    DataItemTableView = SORTING(Number) WHERE(Number = FILTER(1 ..));
                    column(AgingDate1; FORMAT(AgingDate[1] + 1))
                    {
                    }
                    column(AgingDate2; FORMAT(AgingDate[2]))
                    {
                    }
                    column(AgingDate21; FORMAT(AgingDate[2] + 1))
                    {
                    }
                    column(AgingDate3; FORMAT(AgingDate[3]))
                    {
                    }
                    column(AgingDate31; FORMAT(AgingDate[3] + 1))
                    {
                    }
                    column(AgingDate4; FORMAT(AgingDate[4]))
                    {
                    }
                    column(AgingBandEndingDate; STRSUBSTNO(Text011, AgingBandEndingDate, PeriodLength, SELECTSTR(DateChoice + 1, Text013)))
                    {
                    }
                    column(AgingDate41; FORMAT(AgingDate[4] + 1))
                    {
                    }
                    column(AgingDate5; FORMAT(AgingDate[5]))
                    {
                    }
                    column(AgingBandBufCol1Amt; AgingBandBuf."Column 1 Amt.")
                    {
                        AutoFormatExpression = AgingBandBuf."Currency Code";
                        AutoFormatType = 1;
                    }
                    column(AgingBandBufCol2Amt; AgingBandBuf."Column 2 Amt.")
                    {
                        AutoFormatExpression = AgingBandBuf."Currency Code";
                        AutoFormatType = 1;
                    }
                    column(AgingBandBufCol3Amt; AgingBandBuf."Column 3 Amt.")
                    {
                        AutoFormatExpression = AgingBandBuf."Currency Code";
                        AutoFormatType = 1;
                    }
                    column(AgingBandBufCol4Amt; AgingBandBuf."Column 4 Amt.")
                    {
                        AutoFormatExpression = AgingBandBuf."Currency Code";
                        AutoFormatType = 1;
                    }
                    column(AgingBandBufCol5Amt; AgingBandBuf."Column 5 Amt.")
                    {
                        AutoFormatExpression = AgingBandBuf."Currency Code";
                        AutoFormatType = 1;
                    }
                    column(AgingBandCurrencyCode; AgingBandCurrencyCode)
                    {
                    }
                    column(beforeCaption; beforeCaptionLbl)
                    {
                    }

                    trigger OnAfterGetRecord();
                    begin
                        if Number = 1 then begin
                            if not AgingBandBuf.FIND('-') then
                                CurrReport.BREAK;
                        end else
                            if AgingBandBuf.NEXT = 0 then
                                CurrReport.BREAK;
                        AgingBandCurrencyCode := AgingBandBuf."Currency Code";
                        if AgingBandCurrencyCode = '' then
                            AgingBandCurrencyCode := GLSetup."LCY Code";
                    end;

                    trigger OnPreDataItem();
                    begin
                        if not IncludeAgingBand then
                            CurrReport.BREAK;
                    end;
                }
            }

            trigger OnAfterGetRecord();
            begin
                AgingBandBuf.DELETEALL;
                IF "Language Code" <> '' then
                    CurrReport.LANGUAGE := Language.GetLanguageID("Language Code");
                PrintLine := false;
                Cust2 := Customer;
                COPYFILTER("Currency Filter", Currency2.Code);
                if PrintAllHavingBal then begin
                    if Currency2.FIND('-') then
                        repeat
                            Cust2.SETRANGE("Date Filter", 0D, EndDate);
                            Cust2.SETRANGE("Currency Filter", Currency2.Code);
                            Cust2.CALCFIELDS("Net Change");
                            PrintLine := Cust2."Net Change" <> 0;
                        until (Currency2.NEXT = 0) or PrintLine;
                end;
                if (not PrintLine) and PrintAllHavingEntry then begin
                    "Cust. Ledger Entry".RESET;
                    "Cust. Ledger Entry".SETCURRENTKEY("Customer No.", "Posting Date");
                    "Cust. Ledger Entry".SETRANGE("Customer No.", "No.");
                    "Cust. Ledger Entry".SETRANGE("Posting Date", StartDate, EndDate);

                    COPYFILTER("Currency Filter", "Cust. Ledger Entry"."Currency Code");
                    PrintLine := not "Cust. Ledger Entry".ISEMPTY;
                end;
                if not PrintLine then
                    CurrReport.SKIP;

                FormatAddr.Customer(CustAddr, Customer);
                CurrReport.PAGENO := 1;

                if not CurrReport.PREVIEW then begin
                    LOCKTABLE;
                    FIND;
                    "Last Statement No." := "Last Statement No." + 1;
                    MODIFY;
                    COMMIT;
                end else
                    "Last Statement No." := "Last Statement No." + 1;

                if LogInteraction then
                    if not CurrReport.PREVIEW then
                        SegManagement.LogDocument(
                          7, FORMAT("Last Statement No."), 0, 0, DATABASE::Customer, "No.", "Salesperson Code", '',
                          Text003 + FORMAT("Last Statement No."), '');
                IsFirstLoop := false;
            end;

            trigger OnPreDataItem();
            begin
                VerifyDates;
                AgingBandEndingDate := EndDate;
                CalcAgingBandDates;

                CompanyInfo.GET;
                FormatAddr.Company(CompanyAddr, CompanyInfo);

                Currency2.Code := '';
                Currency2.INSERT;
                COPYFILTER("Currency Filter", Currency.Code);
                if Currency.FIND('-') then
                    repeat
                        Currency2 := Currency;
                        Currency2.INSERT;
                    until Currency.NEXT = 0;
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
                    field("Start Date"; StartDate)
                    {
                        ApplicationArea = All;
                        CaptionML = ENU = 'Start Date',
                                    ENA = 'Start Date';
                    }
                    field("End Date"; EndDate)
                    {
                        ApplicationArea = All;
                        CaptionML = ENU = 'End Date',
                                    ENA = 'End Date';
                    }
                    field(ShowOverdueEntries; PrintEntriesDue)
                    {
                        ApplicationArea = All;
                        CaptionML = ENU = 'Show Overdue Entries',
                                    ENA = 'Show Overdue Entries';
                    }
                    group(Include)
                    {

                        CaptionML = ENU = 'Include',
                                    ENA = 'Include';
                        field(IncludeAllCustomerswithLE; PrintAllHavingEntry)
                        {
                            CaptionML = ENU = 'Include All Customers with Ledger Entries',
                                        ENA = 'Include All Customers with Ledger Entries';
                            MultiLine = true;
                            ApplicationArea = All;
                            trigger OnValidate();
                            begin
                                if not PrintAllHavingEntry then
                                    PrintAllHavingBal := true;
                            end;
                        }
                        field(IncludeAllCustomerswithBalance; PrintAllHavingBal)
                        {
                            CaptionML = ENU = 'Include All Customers with a Balance',
                                        ENA = 'Include All Customers with a Balance';
                            MultiLine = true;
                            ApplicationArea = All;
                            trigger OnValidate();
                            begin
                                if not PrintAllHavingBal then
                                    PrintAllHavingEntry := true;
                            end;
                        }
                        field(IncludeReversedEntries; PrintReversedEntries)
                        {
                            ApplicationArea = All;
                            CaptionML = ENU = 'Include Reversed Entries',
                                        ENA = 'Include Reversed Entries';
                        }
                        field(IncludeUnappliedEntries; PrintUnappliedEntries)
                        {
                            ApplicationArea = All;
                            CaptionML = ENU = 'Include Unapplied Entries',
                                        ENA = 'Include Unapplied Entries';
                        }
                    }
                    group("Aging Band")
                    {
                        CaptionML = ENU = 'Aging Band',
                                    ENA = 'Aging Band';
                        field(IncludeAgingBand; IncludeAgingBand)
                        {
                            ApplicationArea = All;
                            CaptionML = ENU = 'Include Aging Band',
                                        ENA = 'Include Aging Band';
                        }
                        field(AgingBandPeriodLengt; PeriodLength)
                        {
                            ApplicationArea = All;
                            CaptionML = ENU = 'Aging Band Period Length',
                                        ENA = 'Aging Band Period Length';
                        }
                        field(AgingBandby; DateChoice)
                        {
                            ApplicationArea = All;
                            CaptionML = ENU = 'Aging Band by',
                                        ENA = 'Aging Band by';
                            OptionCaptionML = ENU = 'Due Date,Posting Date',
                                              ENA = 'Due Date,Posting Date';
                        }
                    }
                    field(LogInteraction; LogInteraction)
                    {
                        ApplicationArea = All;
                        CaptionML = ENU = 'Log Interaction',
                                    ENA = 'Log Interaction';
                        Enabled = LogInteractionEnable;
                    }
                }
                group("Output Options")
                {
                    CaptionML = ENU = 'Output Options',
                                ENA = 'Output Options';
                    field(ReportOutput; SupportedOutputMethod)
                    {
                        ApplicationArea = All;
                        CaptionML = ENU = 'Report Output',
                                    ENA = 'Report Output';
                        OptionCaptionML = ENU = 'Print,Preview,PDF,Email,Excel,XML',
                                          ENA = 'Print,Preview,PDF,Email,Excel,XML';

                        trigger OnValidate();
                        var
                            CustomLayoutReporting: Codeunit "Custom Layout Reporting";
                        begin
                            ShowPrintRemaining := (SupportedOutputMethod = SupportedOutputMethod::Email);

                            case SupportedOutputMethod of
                                SupportedOutputMethod::Print:
                                    ChosenOutputMethod := CustomLayoutReporting.GetPrintOption;
                                SupportedOutputMethod::Preview:
                                    ChosenOutputMethod := CustomLayoutReporting.GetPreviewOption;
                                SupportedOutputMethod::PDF:
                                    ChosenOutputMethod := CustomLayoutReporting.GetPDFOption;
                                SupportedOutputMethod::Email:
                                    ChosenOutputMethod := CustomLayoutReporting.GetEmailOption;
                                SupportedOutputMethod::Excel:
                                    ChosenOutputMethod := CustomLayoutReporting.GetExcelOption;
                                SupportedOutputMethod::XML:
                                    ChosenOutputMethod := CustomLayoutReporting.GetXMLOption;
                            end;
                        end;
                    }
                    field(ChosenOutput; ChosenOutputMethod)
                    {
                        ApplicationArea = All;
                        CaptionML = ENU = 'Chosen Output',
                                    ENA = 'Chosen Output';
                        Visible = false;
                    }
                    group(EmailOptions)
                    {

                        CaptionML = ENU = 'Email Options',
                                    ENA = 'Email Options';
                        Visible = ShowPrintRemaining;
                        field(PrintMissingAddresses; PrintRemaining)
                        {
                            ApplicationArea = All;
                            CaptionML = ENU = 'Print remaining statements',
                                        ENA = 'Print remaining statements';
                        }
                    }
                }
            }
        }

        actions
        {
        }

        trigger OnOpenPage();
        begin
            InitRequestPageDataInternal;
        end;
    }

    labels
    {
    }

    trigger OnInitReport();
    begin
        GLSetup.GET;
        SalesSetup.GET;

        case SalesSetup."Logo Position on Documents" of
            SalesSetup."Logo Position on Documents"::"No Logo":
                ;
            SalesSetup."Logo Position on Documents"::Left:
                begin
                    CompanyInfo1.GET;
                    CompanyInfo1.CALCFIELDS(Picture);
                end;
            SalesSetup."Logo Position on Documents"::Center:
                begin
                    CompanyInfo2.GET;
                    CompanyInfo2.CALCFIELDS(Picture);
                end;
            SalesSetup."Logo Position on Documents"::Right:
                begin
                    CompanyInfo3.GET;
                    CompanyInfo3.CALCFIELDS(Picture);
                end;
        end;

        LogInteractionEnable := true;
    end;

    trigger OnPreReport();
    begin
        InitRequestPageDataInternal;
    end;

    var
        Text001: TextConst ENU = 'Entries %1', ENA = 'Entries %1';
        Text002: TextConst ENU = 'Overdue Entries %1', ENA = 'Overdue Entries %1';
        Text003: TextConst ENU = 'Statement ', ENA = 'Statement ';
        GLSetup: Record "General Ledger Setup";
        SalesSetup: Record "Sales & Receivables Setup";
        CompanyInfo: Record "Company Information";
        CompanyInfo1: Record "Company Information";
        CompanyInfo2: Record "Company Information";
        CompanyInfo3: Record "Company Information";
        Cust2: Record Customer;
        Currency: Record Currency;
        Currency2: Record Currency temporary;
        Language: Codeunit Language;
        "Cust. Ledger Entry": Record "Cust. Ledger Entry";
        DtldCustLedgEntries2: Record "Detailed Cust. Ledg. Entry";
        AgingBandBuf: Record "Aging Band Buffer" temporary;
        PrintAllHavingEntry: Boolean;
        PrintAllHavingBal: Boolean;
        PrintEntriesDue: Boolean;
        PrintUnappliedEntries: Boolean;
        PrintReversedEntries: Boolean;
        PrintLine: Boolean;
        LogInteraction: Boolean;
        EntriesExists: Boolean;
        StartDate: Date;
        EndDate: Date;
        "Due Date": Date;
        CustAddr: array[8] of Text[50];
        CompanyAddr: array[8] of Text[50];
        Description: Text[50];
        StartBalance: Decimal;
        CustBalance: Decimal;
        "Remaining Amount": Decimal;
        FormatAddr: Codeunit "Format Address";
        SegManagement: Codeunit SegManagement;
        CurrencyCode3: Code[10];
        Text005: TextConst ENU = 'Multicurrency Application', ENA = 'Multicurrency Application';
        Text006: TextConst ENU = 'Payment Discount', ENA = 'Payment Discount';
        Text007: TextConst ENU = 'Rounding', ENA = 'Rounding';
        PeriodLength: DateFormula;
        PeriodLength2: DateFormula;
        DateChoice: Option "Due Date","Posting Date";
        AgingDate: array[5] of Date;
        Text008: TextConst ENU = 'You must specify the Aging Band Period Length.', ENA = 'You must specify the Aging Band Period Length.';
        AgingBandEndingDate: Date;
        Text010: TextConst ENU = 'You must specify Aging Band Ending Date.', ENA = 'You must specify Aging Band Ending Date.';
        Text011: TextConst ENU = 'Aged Summary by %1 (%2 by %3)', ENA = 'Aged Summary by %1 (%2 by %3)';
        IncludeAgingBand: Boolean;
        Text012: TextConst ENU = 'Period Length is out of range.', ENA = 'Period Length is out of range.';
        AgingBandCurrencyCode: Code[20];
        Text013: TextConst ENU = 'Due Date,Posting Date', ENA = 'Due Date,Posting Date';
        Text014: TextConst ENU = 'Application Writeoffs', ENA = 'Application Writeoffs';
        [InDataSet]
        LogInteractionEnable: Boolean;
        Text036: TextConst Comment = 'Negating the period length: %1 is the period length', ENU = '-%1', ENA = '-%1';
        StatementCaptionLbl: TextConst ENU = 'Statement', ENA = 'Statement';
        PhoneNo_CompanyInfoCaptionLbl: TextConst ENU = 'Phone No.', ENA = 'Phone No.';
        VATRegNo_CompanyInfoCaptionLbl: TextConst ENU = 'VAT Registration No.', ENA = 'Exemption Certificate No.';
        GiroNo_CompanyInfoCaptionLbl: TextConst ENU = 'Giro No.', ENA = 'Giro No.';
        BankName_CompanyInfoCaptionLbl: TextConst ENU = 'Bank', ENA = 'Bank';
        BankAccNo_CompanyInfoCaptionLbl: TextConst ENU = 'Account No.', ENA = 'Account No.';
        No1_CustCaptionLbl: TextConst ENU = 'Customer No.', ENA = 'Customer No.';
        StartDateCaptionLbl: TextConst ENU = 'Starting Date', ENA = 'Starting Date';
        EndDateCaptionLbl: TextConst ENU = 'Ending Date', ENA = 'Ending Date';
        LastStatmntNo_CustCaptionLbl: TextConst ENU = 'Statement No.', ENA = 'Statement No.';
        PostDate_DtldCustLedgEntriesCaptionLbl: TextConst ENU = 'Posting Date', ENA = 'Posting Date';
        DueDate_CustLedgEntry2CaptionLbl: TextConst ENU = 'Due Date', ENA = 'Due Date';
        CustBalanceCaptionLbl: TextConst ENU = 'Balance', ENA = 'Balance';
        beforeCaptionLbl: TextConst ENU = '..before', ENA = '..before';
        isInitialized: Boolean;
        CompanyInfoHomepageCaptionLbl: TextConst ENU = 'Home Page', ENA = 'Home Page';
        CompanyInfoEmailCaptionLbl: TextConst ENU = 'E-Mail', ENA = 'E-Mail';
        DocDateCaptionLbl: TextConst ENU = 'Document Date', ENA = 'Document Date';
        Total_CaptionLbl: TextConst ENU = 'Total', ENA = 'Total';
        BlankStartDateErr: TextConst ENU = 'Start Date must have a value.', ENA = 'Start Date must have a value.';
        BlankEndDateErr: TextConst ENU = 'End Date must have a value.', ENA = 'End Date must have a value.';
        StartDateLaterTheEndDateErr: TextConst ENU = 'Start date must be earlier than End date.', ENA = 'Start date must be earlier than End date.';
        IsFirstLoop: Boolean;
        CurrReportPageNoCaptionLbl: TextConst ENU = 'Page', ENA = 'Page';
        IsFirstPrintLine: Boolean;
        IsNewCustCurrencyGroup: Boolean;
        SupportedOutputMethod: Option Print,Preview,PDF,Email,Excel,XML;
        ChosenOutputMethod: Integer;
        PrintRemaining: Boolean;
        [InDataSet]
        ShowPrintRemaining: Boolean;

    local procedure GetDate(PostingDate: Date; DueDate: Date): Date;
    begin
        if DateChoice = DateChoice::"Posting Date" then
            exit(PostingDate);

        exit(DueDate);
    end;

    local procedure CalcAgingBandDates();
    begin
        if not IncludeAgingBand then
            exit;
        if AgingBandEndingDate = 0D then
            ERROR(Text010);
        if FORMAT(PeriodLength) = '' then
            ERROR(Text008);
        EVALUATE(PeriodLength2, STRSUBSTNO(Text036, PeriodLength));
        AgingDate[5] := AgingBandEndingDate;
        AgingDate[4] := CALCDATE(PeriodLength2, AgingDate[5]);
        AgingDate[3] := CALCDATE(PeriodLength2, AgingDate[4]);
        AgingDate[2] := CALCDATE(PeriodLength2, AgingDate[3]);
        AgingDate[1] := CALCDATE(PeriodLength2, AgingDate[2]);
        if AgingDate[2] <= AgingDate[1] then
            ERROR(Text012);
    end;

    local procedure UpdateBuffer(CurrencyCode: Code[10]; Date: Date; Amount: Decimal);
    var
        I: Integer;
        GoOn: Boolean;
    begin
        AgingBandBuf.INIT;
        AgingBandBuf."Currency Code" := CurrencyCode;
        if not AgingBandBuf.FIND then
            AgingBandBuf.INSERT;
        I := 1;
        GoOn := true;
        while (I <= 5) and GoOn do begin
            if Date <= AgingDate[I] then
                if I = 1 then begin
                    AgingBandBuf."Column 1 Amt." := AgingBandBuf."Column 1 Amt." + Amount;
                    GoOn := false;
                end;
            if Date <= AgingDate[I] then
                if I = 2 then begin
                    AgingBandBuf."Column 2 Amt." := AgingBandBuf."Column 2 Amt." + Amount;
                    GoOn := false;
                end;
            if Date <= AgingDate[I] then
                if I = 3 then begin
                    AgingBandBuf."Column 3 Amt." := AgingBandBuf."Column 3 Amt." + Amount;
                    GoOn := false;
                end;
            if Date <= AgingDate[I] then
                if I = 4 then begin
                    AgingBandBuf."Column 4 Amt." := AgingBandBuf."Column 4 Amt." + Amount;
                    GoOn := false;
                end;
            if Date <= AgingDate[I] then
                if I = 5 then begin
                    AgingBandBuf."Column 5 Amt." := AgingBandBuf."Column 5 Amt." + Amount;
                    GoOn := false;
                end;
            I := I + 1;
        end;
        AgingBandBuf.MODIFY;
    end;

    procedure SkipReversedUnapplied(var DtldCustLedgEntries: Record "Detailed Cust. Ledg. Entry"): Boolean;
    var
        CustLedgEntry: Record "Cust. Ledger Entry";
    begin
        if PrintReversedEntries and PrintUnappliedEntries then
            exit(false);
        if not PrintUnappliedEntries then
            if DtldCustLedgEntries.Unapplied then
                exit(true);
        if not PrintReversedEntries then begin
            CustLedgEntry.GET(DtldCustLedgEntries."Cust. Ledger Entry No.");
            if CustLedgEntry.Reversed then
                exit(true);
        end;
        exit(false);
    end;

    procedure InitializeRequest(NewPrintEntriesDue: Boolean; NewPrintAllHavingEntry: Boolean; NewPrintAllHavingBal: Boolean; NewPrintReversedEntries: Boolean; NewPrintUnappliedEntries: Boolean; NewIncludeAgingBand: Boolean; NewPeriodLength: Text[30]; NewDateChoice: Option; NewLogInteraction: Boolean; NewStartDate: Date; NewEndDate: Date);
    begin
        InitRequestPageDataInternal;

        PrintEntriesDue := NewPrintEntriesDue;
        PrintAllHavingEntry := NewPrintAllHavingEntry;
        PrintAllHavingBal := NewPrintAllHavingBal;
        PrintReversedEntries := NewPrintReversedEntries;
        PrintUnappliedEntries := NewPrintUnappliedEntries;
        IncludeAgingBand := NewIncludeAgingBand;
        EVALUATE(PeriodLength, NewPeriodLength);
        DateChoice := NewDateChoice;
        LogInteraction := NewLogInteraction;
        StartDate := NewStartDate;
        EndDate := NewEndDate;
    end;

    procedure InitRequestPageDataInternal();
    begin
        if isInitialized then
            exit;

        isInitialized := true;

        if (not PrintAllHavingEntry) and (not PrintAllHavingBal) then
            PrintAllHavingBal := true;

        LogInteraction := SegManagement.FindInteractTmplCode(7) <> '';
        LogInteractionEnable := LogInteraction;

        if FORMAT(PeriodLength) = '' then
            EVALUATE(PeriodLength, '<1M+CM>');

        ShowPrintRemaining := (SupportedOutputMethod = SupportedOutputMethod::Email);
    end;

    local procedure VerifyDates();
    begin
        if StartDate = 0D then
            ERROR(BlankStartDateErr);
        if EndDate = 0D then
            ERROR(BlankEndDateErr);
        if StartDate > EndDate then
            ERROR(StartDateLaterTheEndDateErr);
    end;

    procedure SetFilters(pAllHavingEntries: Boolean; pAllHavingBalance: Boolean; pUpdateNumbers: Boolean; pPrintCompany: Boolean; pPrintLCY: Boolean; pStatementStyle: Option "Open Item",Balance; pAgingMethod: Option "None","Due Date","Trans Date","Doc Date"; pPeriodCalculation: Code[10]; pCustNo: Code[10]; pCustDateFilter: Text[30]);
    begin
        /*
        PrintAllHavingEntry := pAllHavingEntries;
        PrintAllHavingBal := pAllHavingBalance;
        PrintEntriesDue := pUpdateNumbers;
        //PrintCompany := pPrintCompany;
        PrintLCY := pPrintLCY;
        StatementStyle := pStatementStyle;
        AgingMethod := pAgingMethod;
        PeriodCalculation := pPeriodCalculation;
        CustNo := pCustNo;
        CustDateFilter := pCustDateFilter;
        */

    end;
}


report 50014 "AU/NZ Statement Custom"
{
    // version NAVAPAC7.10,EC3.00,EC1.01

    // ECSAK
    // -----
    //   18-10-2019  EC1.01
    //   OPX-0020746023 CAS-148220 Modified Surcharge % on Report

    CaptionML = ENU = 'AU/NZ Statement',
                ENA = 'AU/NZ Statement';
    ProcessingOnly = true;

    dataset
    {
        dataitem(Customer; Customer)
        {
            DataItemTableView = SORTING("No.");
            RequestFilterFields = "No.", "Print Statements", "Date Filter";
            column(Customer_No_; "No.")
            {
            }
            column(Customer_Global_Dimension_1_Filter; "Global Dimension 1 Filter")
            {
            }
            column(Customer_Global_Dimension_2_Filter; "Global Dimension 2 Filter")
            {
            }

            trigger OnAfterGetRecord();
            begin

                CLEAR(CustStatement);
                CompInfo.GET;

                J := "No.";
                SendTo.Add('');

                SendTo.Add(Customer."E-Mail");

                if SendTo.Contains('') then begin

                    // CustStatement.SetFilters(A, B, C, D, E, F, G, H, J, K);
                    CustStatement.USEREQUESTPAGE(false);
                    CustStatement.RUNMODAL;
                end else begin

                    FileName := CompInfo.Name + '(Customer Statement - ' + Customer."No." + ')';
                    EmailSubject := CompInfo.Name + ' (Customer Statement - ' + Customer."No." + ')';
                    OpenForm := true;


                    FileName := FileName + '.pdf';
                    //TempFileName := TEMPORARYPATH + '\' + FileName;


                    // CustStatement.SetFilters(A, B, C, D, E, F, G, H, J, K);
                    CustStatement.USEREQUESTPAGE(false);
                    //  CustStatement.SAVEASPDF(TempFileName);

                    //SendTo := 'ynair@csc.com';

                    if SMTPSetup.GET then begin
                        SMTP_mail.CreateMessage('', CompInfo."E-Mail", SendTo, EmailSubject, EmailBody, false);
                        //  SMTP_mail.AddAttachment(TempFileName, FileName);
                        SMTP_mail.Send;

                    end;


                end;
            end;

            trigger OnPreDataItem();
            begin
                // IF STRPOS(OSVERSION,'NT') = 0 THEN
                // OSSystem := OSSystem::Windows
                // ELSE
                // OSSystem := OSSystem::NT;

                /* remove user-entered date filter; info now in FromDate & ToDate */
                //SETRANGE("Date Filter");
                //CalcAging;



                A := AllHavingEntries;
                B := AllHavingBalance;
                C := UpdateNumbers;
                D := PrintCompany;
                D := true;
                E := PrintLCY;
                F := StatementStyle;
                G := AgingMethod;
                H := PeriodCalculation;
                K := GETFILTER("Date Filter");

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
                    field(PrintAllWithEntries; AllHavingEntries)
                    {
                        ApplicationArea = All;
                        CaptionML = ENU = 'Print All with Entries',
                                    ENA = 'Print All with Entries';
                    }
                    field(PrintAllWithBalance; AllHavingBalance)
                    {
                        ApplicationArea = All;
                        CaptionML = ENU = 'Print All with Balance',
                                    ENA = 'Print All with Balance';
                    }
                    field(UpdateStatementNo; UpdateNumbers)
                    {
                        ApplicationArea = All;
                        CaptionML = ENU = 'Update Statement No.',
                                    ENA = 'Update Statement No.';
                    }
                    field(PrintCompanyAddress; PrintCompany)
                    {
                        ApplicationArea = All;
                        CaptionML = ENU = 'Print Company Address',
                                    ENA = 'Print Company Address';
                    }
                    field(PrintInLCY; PrintLCY)
                    {
                        ApplicationArea = All;
                        CaptionML = ENU = 'Print in LCY',
                                    ENA = 'Print in LCY';
                    }
                    field(StatementStyle; StatementStyle)
                    {
                        ApplicationArea = All;
                        CaptionML = ENU = 'Statement Style',
                                    ENA = 'Statement Style';
                        OptionCaptionML = ENU = 'Open Item,Balance',
                                          ENA = 'Open Item,Balance';
                    }
                    field(AgedBy; AgingMethod)
                    {
                        ApplicationArea = All;
                        CaptionML = ENU = 'Aged By',
                                    ENA = 'Aged By';
                        OptionCaptionML = ENU = 'None,Due Date,Trans Date,Doc Date',
                                          ENA = 'None,Due Date,Trans Date,Doc Date';
                    }
                    field(LengthOfAgingPeriods; PeriodCalculation)
                    {
                        ApplicationArea = All;
                        CaptionML = ENU = 'Length of Aging Periods',
                                    ENA = 'Length of Aging Periods';

                        trigger OnValidate();
                        begin
                            if (AgingMethod <> AgingMethod::None) and (PeriodCalculation = '') then
                                ERROR('You must enter a Length of Aging Periods if you select aging.');
                        end;
                    }
                }
                group("Output Options")
                {
                    CaptionML = ENU = 'Output Options',
                                ENA = 'Output Options';
                    Visible = false;
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
                }
            }
        }

        actions
        {
        }

        trigger OnOpenPage();
        begin
            if (not AllHavingEntries) and (not AllHavingBalance) then
                AllHavingBalance := true;
        end;
    }

    labels
    {
    }

    trigger OnPreReport();
    begin
        if PrintLCY then
            CurrencyLabel := 'Local (LCY)'
        else
            CurrencyLabel := 'Customer';

        if (not AllHavingEntries) and (not AllHavingBalance) then
            ERROR(Text1500001);
        if UpdateNumbers and CurrReport.PREVIEW then
            ERROR(Text1500002);
        FromDate := Customer.GETRANGEMIN("Date Filter");
        ToDate := Customer.GETRANGEMAX("Date Filter");

        if (StatementStyle = StatementStyle::Balance) and (FromDate = ToDate) then
            ERROR(Text1500003);

        if (AgingMethod <> AgingMethod::None) and (PeriodCalculation = '') then
            ERROR(Text1500004);

        if PrintCompany then begin
            CompanyInformation.GET('');
            FormatAddress.Company(CompanyAddress, CompanyInformation);
            PhoneNo := 'Phone No.';
            FaxNo := 'Fax No.';
            VATRegNo := 'VAT Reg. No.';
            GiroNo := 'GIRO No.';
            Bank := 'Bank';
            AccountNo := 'Account No.';
        end else
            CLEAR(CompanyAddress);
    end;

    var
        OpenDrBal: Decimal;
        OpenDrBalLCY: Decimal;
        OpenCrBal: Decimal;
        OpenCrBalLCY: Decimal;
        Periodstartdate: array[5] of Date;
        StatementBalance: Decimal;
        PeriodLength2: DateFormula;
        FaxNo: Text[50];
        VATRegNo: Text[50];
        GiroNo: Text[50];
        Bank: Text[50];
        AccountNo: Text[50];
        CompanyInformation: Record "Company Information";
        FormatAddress: Codeunit "Format Address";
        StatementStyle: Option "Open Item",Balance;
        AllHavingEntries: Boolean;
        AllHavingBalance: Boolean;
        UpdateNumbers: Boolean;
        PhoneNo: Text[50];
        AgingMethod: Option "None","Due Date","Trans Date","Doc Date";
        PrintCompany: Boolean;
        PeriodCalculation: Code[10];
        Print: Boolean;
        FromDate: Date;
        ToDate: Date;
        CustomerAddress: array[8] of Text[50];
        CompanyAddress: array[8] of Text[50];
        BalanceToPrint: Decimal;
        BalanceToPrintLCY: Decimal;
        DebitBalance: Decimal;
        CreditBalance: Decimal;
        AgingHead: array[4] of Text[14];
        CurrencyLabel: Text[30];
        AmountDue: array[4] of Decimal;
        AgingDaysText: Text[16];
        PeriodEndingDate: array[5] of Date;
        StatementComplete: Boolean;
        PrintLCY: Boolean;
        i: Integer;
        LedgEntryLast: Integer;
        Text1500001: TextConst ENU = 'You must select either All with Entries or All with Balance.', ENA = 'You must select either All with Entries or All with Balance.';
        Text1500002: TextConst ENU = 'You must print statements if you want to update statement numbers.', ENA = 'You must print statements if you want to update statement numbers.';
        Text1500003: TextConst ENU = 'You must enter a range of dates (not just one date) in the Date Filter if you want to print Balance Forward Statements.', ENA = 'You must enter a range of dates (not just one date) in the Date Filter if you want to print Balance Forward Statements.';
        Text1500004: TextConst ENU = 'You must enter a Length of Aging Periods if you select aging.', ENA = 'You must enter a Length of Aging Periods if you select aging.';
        Text1500005: TextConst ENU = 'days', ENA = 'days';
        Text1500006: TextConst ENU = 'Over', ENA = 'Over';
        Text1500007: TextConst ENU = 'Upto', ENA = 'Upto';
        Text1500008: TextConst ENU = 'The Date Formula %1 cannot be used. Try to restate it. E.g. 1M+CM instead of CM+1M.', ENA = 'The Date Formula %1 cannot be used. Try to restate it. E.g. 1M+CM instead of CM+1M.';
        TempCustLedgerEntry1: Record "Cust. Ledger Entry" temporary;
        TempCustLedgerEntry2: Record "Cust. Ledger Entry" temporary;
        TempCustLedgerEntry3: Record "Cust. Ledger Entry" temporary;
        TempCustLedgerEntry4: Record "Cust. Ledger Entry" temporary;
        AgingAmount: array[4] of Decimal;
        CustLedEntry: Record "Cust. Ledger Entry";
        DueDate: Date;
        Text1500009: TextConst ENU = 'Days overdue:', ENA = 'Days overdue:';
        Text1500010: TextConst ENU = 'Days old:', ENA = 'Days old:';
        STATEMENTCaptionLbl: TextConst ENU = 'STATEMENT', ENA = 'STATEMENT';
        Statement_Date_CaptionLbl: TextConst ENU = 'Statement Date:', ENA = 'Statement Date:';
        Account_Number_CaptionLbl: TextConst ENU = 'Account Number:', ENA = 'Account Number:';
        Currency_CaptionLbl: TextConst ENU = 'Currency:', ENA = 'Currency:';
        Page_CaptionLbl: TextConst ENU = 'Page:', ENA = 'Page:';
        BalanceCaptionLbl: TextConst ENU = 'Balance', ENA = 'Balance';
        CreditsCaptionLbl: TextConst ENU = 'Credits', ENA = 'Credits';
        DebitsCaptionLbl: TextConst ENU = 'Debits', ENA = 'Debits';
        Due_DateCaptionLbl: TextConst ENU = 'Due Date', ENA = 'Due Date';
        No_CaptionLbl: TextConst ENU = 'No.', ENA = 'No.';
        DocumentCaptionLbl: TextConst ENU = 'Document', ENA = 'Document';
        DateCaptionLbl: TextConst ENU = 'Date', ENA = 'Date';
        Statement_BalanceCaptionLbl: TextConst ENU = 'Statement Balance', ENA = 'Statement Balance';
        Balance_ForwardCaptionLbl: TextConst ENU = 'Balance Forward', ENA = 'Balance Forward';
        Bal_FwdCaptionLbl: TextConst ENU = 'Bal Fwd', ENA = 'Bal Fwd';
        Statement_BalanceCaption_Control1000000007Lbl: TextConst ENU = 'Statement Balance', ENA = 'Statement Balance';
        Statement_Aging_Caption_Control1000000009Lbl: TextConst ENU = 'Statement Aging:', ENA = 'Statement Aging:';
        Aged_Amounts_Caption_Control1000000012Lbl: TextConst ENU = 'Aged Amounts:', ENA = 'Aged Amounts:';
        SupportedOutputMethod: Option Print,Preview,PDF,Email,Excel,XML;
        ChosenOutputMethod: Integer;
        PrintRemaining: Boolean;
        [InDataSet]
        ShowPrintRemaining: Boolean;
        CustNo: Code[20];
        CustDateFilter: Text[30];
        TempFileName: Text[250];
        FileName: Text[250];
        Mail: Codeunit Mail;
        EmailSubject: Text[250];
        EmailBody: Text[1024];
        OpenForm: Boolean;
        CompInfo: Record "Company Information";
        A: Boolean;
        B: Boolean;
        C: Boolean;
        D: Boolean;
        E: Boolean;
        F: Option "Open Item",Balance;
        G: Option "None","Due Date","Trans Date","Doc Date";
        H: Code[10];
        J: Code[20];
        K: Text[30];
        SendTo: List of [Text];
        CustStatement: Report "AU/NZ Statement";
        SMTPSetup: Record "SMTP Mail Setup";
        SMTP_mail: Codeunit "SMTP Mail";

    procedure GetTermsString(var CustLedgerEntry: Record "Cust. Ledger Entry"): Text[250];
    var
        InvoiceHeader: Record "Sales Invoice Header";
        PaymentTerms: Record "Payment Terms";
    begin
        with CustLedgerEntry do begin
            if ("Document No." = '') or ("Document Type" <> "Document Type"::Invoice) then
                exit('');

            if InvoiceHeader.READPERMISSION then
                if InvoiceHeader.GET("Document No.") then
                    if PaymentTerms.GET(InvoiceHeader."Payment Terms Code") then begin
                        if PaymentTerms.Description <> '' then
                            exit(PaymentTerms.Description);

                        exit(InvoiceHeader."Payment Terms Code");
                    end else
                        exit(InvoiceHeader."Payment Terms Code");
        end;

        if Customer."Payment Terms Code" <> '' then
            if PaymentTerms.GET(Customer."Payment Terms Code") then begin
                if PaymentTerms.Description <> '' then
                    exit(PaymentTerms.Description);

                exit(Customer."Payment Terms Code");
            end else
                exit(Customer."Payment Terms Code");

        exit('');
    end;

    procedure SetFilters(pAllHavingEntries: Boolean; pAllHavingBalance: Boolean; pUpdateNumbers: Boolean; pPrintCompany: Boolean; pPrintLCY: Boolean; pStatementStyle: Option "Open Item",Balance; pAgingMethod: Option "None","Due Date","Trans Date","Doc Date"; pPeriodCalculation: Code[10]; pCustNo: Code[10]; pCustDateFilter: Text[30]);
    begin

        AllHavingEntries := pAllHavingEntries;
        AllHavingBalance := pAllHavingBalance;
        UpdateNumbers := pUpdateNumbers;
        PrintCompany := pPrintCompany;
        PrintLCY := pPrintLCY;
        StatementStyle := pStatementStyle;
        AgingMethod := pAgingMethod;
        PeriodCalculation := pPeriodCalculation;
        CustNo := pCustNo;
        CustDateFilter := pCustDateFilter;
    end;
}


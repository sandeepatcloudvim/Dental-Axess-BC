report 50009 "DAX Service Quote"
{
    // version NAVW17.10,EC1.00

    // ECCL
    // -----
    //   09-07-19  EC1.00
    //   Add logo
    DefaultLayout = RDLC;
    RDLCLayout = './DAX Service Quote.rdlc';

    CaptionML = ENU = 'Service Quote',
                ENA = 'Service Quote';

    dataset
    {
        dataitem("Service Header"; "Service Header")
        {
            DataItemTableView = SORTING("Document Type", "No.") WHERE("Document Type" = CONST(Quote));
            RequestFilterFields = "No.", "Customer No.";
            column(DocumentType_ServHeader; "Document Type")
            {
            }
            column(No_ServHeader; "No.")
            {
            }
            column(HomePageCaption; HomePageCaptionLbl)
            {
            }
            column(EmailCaption; EmailCaptionLbl)
            {
            }
            dataitem(CopyLoop; "Integer")
            {
                DataItemTableView = SORTING(Number);
                dataitem(PageLoop; "Integer")
                {
                    DataItemTableView = SORTING(Number) WHERE(Number = CONST(1));
                    column(CompInfoLogo; CompInfoLogo.Picture)
                    {
                    }
                    column(CompanyInfo1Picture; CompanyInfo1.Picture)
                    {
                    }
                    column(CompanyInfo2Picture; CompanyInfo2.Picture)
                    {
                    }
                    column(CompanyInfo3Picture; CompanyInfo3.Picture)
                    {
                    }
                    column(HomePage; CompanyInfo."Home Page")
                    {
                    }
                    column(Email; CompanyInfo."E-Mail")
                    {
                    }
                    column(OrderTime_ServHeader; "Service Header"."Order Time")
                    {
                    }
                    column(OrderDate_ServHeader; FORMAT("Service Header"."Order Date"))
                    {
                    }
                    column(Status_ServHeader; "Service Header".Status)
                    {
                    }
                    column(No1_ServHeader; "Service Header"."No.")
                    {
                    }
                    column(CustAddr6; CustAddr[6])
                    {
                    }
                    column(CustAddr5; CustAddr[5])
                    {
                    }
                    column(CustAddr4; CustAddr[4])
                    {
                    }
                    column(CustAddr3; CustAddr[3])
                    {
                    }
                    column(CustAddr2; CustAddr[2])
                    {
                    }
                    column(CustAddr1; CustAddr[1])
                    {
                    }
                    column(CompanyAddr6; CompanyAddr[6])
                    {
                    }
                    column(CompanyAddr5; CompanyAddr[5])
                    {
                    }
                    column(BilltoName_ServHeader; "Service Header"."Bill-to Name")
                    {
                    }
                    column(CompanyAddr4; CompanyAddr[4])
                    {
                    }
                    column(CompanyAddr3; CompanyAddr[3])
                    {
                    }
                    column(CompanyAddr2; CompanyAddr[2])
                    {
                    }
                    column(CompanyAddr1; CompanyAddr[1])
                    {
                    }
                    column(OrderConfirmationCopyText; STRSUBSTNO(Text001, CopyText))
                    {
                    }
                    column(CurrReportPageNo; STRSUBSTNO(Text002, FORMAT(CurrReport.PAGENO)))
                    {
                    }
                    column(CompanyInfoPhoneNo; CompanyInfo."Phone No.")
                    {
                    }
                    column(EMail_ServHeader; "Service Header"."E-Mail")
                    {
                    }
                    column(PhoneNo_ServHeader; "Service Header"."Phone No.")
                    {
                    }
                    column(OutputNo; OutputNo)
                    {
                    }
                    column(PageCaption; STRSUBSTNO(Text002, ''))
                    {
                    }
                    column(SerHdrOrderDateCaption; SerHdrOrderDateCaptionLbl)
                    {
                    }
                    column(InvoicetoCaption; InvoicetoCaptionLbl)
                    {
                    }
                    column(CompanyInfoPhoneNoCaption; CompanyInfoPhoneNoCaptionLbl)
                    {
                    }
                    column(ServiceHeaderEMailCaption; ServiceHeaderEMailCaptionLbl)
                    {
                    }
                    column(OrderTime_ServHeaderCaption; "Service Header".FIELDCAPTION("Order Time"))
                    {
                    }
                    column(Status_ServHeaderCaption; "Service Header".FIELDCAPTION(Status))
                    {
                    }
                    column(No1_ServHeaderCaption; "Service Header".FIELDCAPTION("No."))
                    {
                    }
                    dataitem(DimensionLoop1; "Integer")
                    {
                        DataItemTableView = SORTING(Number) WHERE(Number = FILTER(1 ..));
                        column(DimText; DimText)
                        {
                        }
                        column(DimensionLoopNumber; Number)
                        {
                        }
                        column(HeaderDimensionsCaption; HeaderDimensionsCaptionLbl)
                        {
                        }

                        trigger OnAfterGetRecord();
                        begin
                            if Number = 1 then begin
                                if not DimSetEntry1.FINDSET then
                                    CurrReport.BREAK;
                            end else
                                if not Continue then
                                    CurrReport.BREAK;

                            CLEAR(DimText);
                            Continue := false;
                            repeat
                                OldDimText := DimText;
                                if DimText = '' then
                                    DimText := STRSUBSTNO('%1 %2', DimSetEntry1."Dimension Code", DimSetEntry1."Dimension Value Code")
                                else
                                    DimText :=
                                      STRSUBSTNO(
                                        '%1, %2 %3', DimText,
                                        DimSetEntry1."Dimension Code", DimSetEntry1."Dimension Value Code");
                                if STRLEN(DimText) > MAXSTRLEN(OldDimText) then begin
                                    DimText := OldDimText;
                                    Continue := true;
                                    exit;
                                end;
                            until DimSetEntry1.NEXT = 0;
                        end;

                        trigger OnPreDataItem();
                        begin
                            if not ShowInternalInfo then
                                CurrReport.BREAK;
                        end;
                    }
                    dataitem("Service Order Comment"; "Service Comment Line")
                    {
                        DataItemLink = "Table Subtype" = FIELD("Document Type"), "No." = FIELD("No.");
                        DataItemLinkReference = "Service Header";
                        DataItemTableView = SORTING("Table Name", "Table Subtype", "No.", Type, "Table Line No.", "Line No.") WHERE("Table Name" = CONST("Service Header"), Type = CONST(General));
                        column(LineNo_ServOrderComment; "Line No.")
                        {
                        }
                        column(TblSubtype_ServOrderComm; "Table Subtype")
                        {
                        }
                        column(Type_ServOrderComment; Type)
                        {
                        }
                    }
                    dataitem("Service Item Line"; "Service Item Line")
                    {
                        DataItemLink = "Document Type" = FIELD("Document Type"), "Document No." = FIELD("No.");
                        DataItemLinkReference = "Service Header";
                        DataItemTableView = SORTING("Document Type", "Document No.", "Line No.");
                        column(ShowInternalInfo; ShowInternalInfo)
                        {
                        }
                        column(SerialNo_ServLineType; "Serial No.")
                        {
                        }
                        column(Description_ServLineType; Description)
                        {
                        }
                        column(ServItemNo_ServLineType; "Service Item No.")
                        {
                        }
                        column(SerItmGrCode_ServLineType; "Service Item Group Code")
                        {
                        }
                        column(Warranty_ServLineType; Warranty)
                        {
                        }
                        column(ItemNo_ServLineType; "Item No.")
                        {
                        }
                        column(LoanerNo_ServLineType; "Loaner No.")
                        {
                        }
                        column(ServShelfNo_ServLineType; "Service Shelf No.")
                        {
                        }
                        column(Warranty1_ServLineType; FORMAT(Warranty))
                        {
                        }
                        column(DocNo_ServLineType; "Document No.")
                        {
                        }
                        column(LineNo_ServLineType; "Line No.")
                        {
                        }
                        column(ServiceItemLinesCaption; ServiceItemLinesCaptionLbl)
                        {
                        }
                        column(SerialNo_ServLineTypeCaption; FIELDCAPTION("Serial No."))
                        {
                        }
                        column(Description_ServLineTypeCaption; FIELDCAPTION(Description))
                        {
                        }
                        column(ServItemNo_ServLineTypeCaption; FIELDCAPTION("Service Item No."))
                        {
                        }
                        column(SerItmGrCode_ServLineTypeCaption; FIELDCAPTION("Service Item Group Code"))
                        {
                        }
                        column(Warranty_ServLineTypeCaption; FIELDCAPTION(Warranty))
                        {
                        }
                        column(ItemNo_ServLineTypeCaption; FIELDCAPTION("Item No."))
                        {
                        }
                        column(LoanerNo_ServLineTypeCaption; FIELDCAPTION("Loaner No."))
                        {
                        }
                        column(ServShelfNo_ServLineTypeCaption; FIELDCAPTION("Service Shelf No."))
                        {
                        }
                        dataitem("Fault Comment"; "Service Comment Line")
                        {
                            DataItemLink = "Table Subtype" = FIELD("Document Type"), "No." = FIELD("Document No."), "Table Line No." = FIELD("Line No.");
                            DataItemTableView = SORTING("Table Name", "Table Subtype", "No.", Type, "Table Line No.", "Line No.") WHERE("Table Name" = CONST("Service Header"), Type = CONST(Fault));
                            column(Comment_FaultComment; Comment)
                            {
                            }
                            column(Number_FaultComment; Number1)
                            {
                            }
                            column(TableSubtype_FaultComment; "Table Subtype")
                            {
                            }
                            column(Type_FaultComment; Type)
                            {
                            }
                            column(LineNo_FaultComment; "Line No.")
                            {
                            }
                            column(FaultCommentsCaption; FaultCommentsCaptionLbl)
                            {
                            }

                            trigger OnAfterGetRecord();
                            begin
                                Number2 := 0;
                                Number1 := Number1 + 1;
                            end;
                        }
                        dataitem("Resolution Comment"; "Service Comment Line")
                        {
                            DataItemLink = "Table Subtype" = FIELD("Document Type"), "No." = FIELD("Document No."), "Table Line No." = FIELD("Line No.");
                            DataItemTableView = SORTING("Table Name", "Table Subtype", "No.", Type, "Table Line No.", "Line No.") WHERE("Table Name" = CONST("Service Header"), Type = CONST(Resolution));
                            column(Comment_ResolutionComment; Comment)
                            {
                            }
                            column(Number_ResolutionComment; Number2)
                            {
                            }
                            column(TblSubtype_ResolComment; "Table Subtype")
                            {
                            }
                            column(Type_ResolutionComment; Type)
                            {
                            }
                            column(LineNo_ResolutionComment; "Line No.")
                            {
                            }
                            column(ResolutionCommentsCaption; ResolutionCommentsCaptionLbl)
                            {
                            }

                            trigger OnAfterGetRecord();
                            begin
                                Number1 := 0;
                                Number2 := Number2 + 1;
                            end;
                        }

                        trigger OnAfterGetRecord();
                        begin
                            Number1 := 0;
                            Number2 := 0;
                        end;
                    }
                    dataitem("Service Line"; "Service Line")
                    {
                        DataItemLink = "Document Type" = FIELD("Document Type"), "Document No." = FIELD("No.");
                        DataItemLinkReference = "Service Header";
                        DataItemTableView = SORTING("Document Type", "Document No.", "Line No.");
                        column(SerItemSlNo_ServLine; "Service Item Serial No.")
                        {
                        }
                        column(Type_ServLine; Type)
                        {
                        }
                        column(No_ServLine; "No.")
                        {
                        }
                        column(Description_ServLine; Description)
                        {
                        }
                        column(UnitPrice_ServLine; "Unit Price")
                        {
                        }
                        column(LineDiscount_ServLine; "Line Discount %")
                        {
                        }
                        column(Amt; Amt)
                        {
                        }
                        column(VariantCode_ServLine; "Variant Code")
                        {
                        }
                        column(GrossAmt; GrossAmt)
                        {
                        }
                        column(Quantity_ServLine; Quantity)
                        {
                        }
                        column(TotAmt; TotAmt)
                        {
                        }
                        column(TotGrossAmt; TotGrossAmt)
                        {
                        }
                        column(DocumentNo_ServLine; "Document No.")
                        {
                        }
                        column(LineNo_ServLine; "Line No.")
                        {
                        }
                        column(ServiceLineCaption; ServiceLineCaptionLbl)
                        {
                        }
                        column(AmtCaption; AmtCaptionLbl)
                        {
                        }
                        column(GrossAmountCaption; GrossAmountCaptionLbl)
                        {
                        }
                        column(SerItemSlNo_ServLineCaption; FIELDCAPTION("Service Item Serial No."))
                        {
                        }
                        column(TotalCaption; TotalCaptionLbl)
                        {
                        }
                        column(Type_ServLineCaption; FIELDCAPTION(Type))
                        {
                        }
                        column(No_ServLineCaption; FIELDCAPTION("No."))
                        {
                        }
                        column(Description_ServLineCaption; FIELDCAPTION(Description))
                        {
                        }
                        column(UnitPrice_ServLineCaption; FIELDCAPTION("Unit Price"))
                        {
                        }
                        column(LineDiscount_ServLineCaption; FIELDCAPTION("Line Discount %"))
                        {
                        }
                        column(VariantCode_ServLineCaption; FIELDCAPTION("Variant Code"))
                        {
                        }
                        column(Quantity_ServLineCaption; FIELDCAPTION(Quantity))
                        {
                        }
                        dataitem(DimesionLoop2; "Integer")
                        {
                            DataItemTableView = SORTING(Number) WHERE(Number = FILTER(1 ..));
                            column(DimText1; DimText)
                            {
                            }
                            column(LineDimensionsCaption; LineDimensionsCaptionLbl)
                            {
                            }

                            trigger OnAfterGetRecord();
                            begin
                                if Number = 1 then begin
                                    if not DimSetEntry2.FINDSET then
                                        CurrReport.BREAK;
                                end else
                                    if not Continue then
                                        CurrReport.BREAK;

                                CLEAR(DimText);
                                Continue := false;
                                repeat
                                    OldDimText := DimText;
                                    if DimText = '' then
                                        DimText := STRSUBSTNO('%1 %2', DimSetEntry2."Dimension Code", DimSetEntry2."Dimension Value Code")
                                    else
                                        DimText :=
                                          STRSUBSTNO(
                                            '%1, %2 %3', DimText,
                                            DimSetEntry2."Dimension Code", DimSetEntry2."Dimension Value Code");
                                    if STRLEN(DimText) > MAXSTRLEN(OldDimText) then begin
                                        DimText := OldDimText;
                                        Continue := true;
                                        exit;
                                    end;
                                until DimSetEntry2.NEXT = 0;
                            end;

                            trigger OnPreDataItem();
                            begin
                                if not ShowInternalInfo then
                                    CurrReport.BREAK;

                                DimSetEntry2.SETRANGE("Dimension Set ID", "Service Line"."Dimension Set ID");
                            end;
                        }

                        trigger OnAfterGetRecord();
                        begin
                            Qty := Quantity;

                            Amt := "Line Amount";
                            GrossAmt := "Amount Including VAT";

                            TotAmt := TotAmt + Amt;
                            TotGrossAmt := TotGrossAmt + GrossAmt;
                        end;
                    }
                    dataitem(Shipto; "Integer")
                    {
                        DataItemTableView = SORTING(Number) WHERE(Number = CONST(1));
                        column(ShipToAddr6; ShipToAddr[6])
                        {
                        }
                        column(ShipToAddr5; ShipToAddr[5])
                        {
                        }
                        column(ShipToAddr4; ShipToAddr[4])
                        {
                        }
                        column(ShipToAddr3; ShipToAddr[3])
                        {
                        }
                        column(ShipToAddr2; ShipToAddr[2])
                        {
                        }
                        column(ShipToAddr1; ShipToAddr[1])
                        {
                        }
                        column(ShipToAddressCaption; ShipToAddressCaptionLbl)
                        {
                        }

                        trigger OnPreDataItem();
                        begin
                            if not ShowShippingAddr then
                                CurrReport.BREAK;
                        end;
                    }
                }

                trigger OnAfterGetRecord();
                begin
                    TotAmt := 0;
                    TotGrossAmt := 0;

                    if Number > 1 then
                        CopyText := Text000;
                    OutputNo += 1;
                    CurrReport.PAGENO := 1;
                end;

                trigger OnPostDataItem();
                begin
                    if not CurrReport.PREVIEW then
                        ServCountPrinted.RUN("Service Header");
                end;

                trigger OnPreDataItem();
                begin
                    NoOfLoops := ABS(NoOfCopies) + 1;
                    if NoOfLoops <= 0 then
                        NoOfLoops := 1;
                    CopyText := '';
                    SETRANGE(Number, 1, NoOfLoops);
                    OutputNo := 1;
                end;
            }

            trigger OnAfterGetRecord();
            begin
                IF "Language Code" <> '' then
                    CurrReport.LANGUAGE := Language.GetLanguageID("Language Code");

                DimSetEntry1.SETRANGE("Dimension Set ID", "Dimension Set ID");

                if RespCenter.GET("Responsibility Center") then begin
                    FormatAddr.RespCenter(CompanyAddr, RespCenter);
                    CompanyInfo."Phone No." := RespCenter."Phone No.";
                    CompanyInfo."Fax No." := RespCenter."Fax No.";
                end else
                    FormatAddr.Company(CompanyAddr, CompanyInfo);

                FormatAddr.ServiceOrderSellto(CustAddr, "Service Header");
                ShowShippingAddr := "Ship-to Code" <> '';
                if ShowShippingAddr then
                    FormatAddr.ServiceOrderShipto(ShipToAddr, "Service Header");
                if LogInteraction then
                    if not CurrReport.PREVIEW then begin
                        if "Contact No." <> '' then
                            SegManagement.LogDocument(
                              25, "No.", 0, 0, DATABASE::Contact, "Contact No.", "Salesperson Code", '', '', '')
                        else
                            SegManagement.LogDocument(
                              25, "No.", 0, 0, DATABASE::Customer, "Customer No.", "Salesperson Code", '', '', '')
                    end;
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
                    field(NoOfCopies; NoOfCopies)
                    {
                        ApplicationArea = All;
                        CaptionML = ENU = 'No. of Copies',
                                    ENA = 'No. of Copies';
                    }
                    field(ShowInternalInfo; ShowInternalInfo)
                    {
                        ApplicationArea = All;
                        CaptionML = ENU = 'Show Internal Information',
                                    ENA = 'Show Internal Information';
                    }
                    field(LogInteraction; LogInteraction)
                    {
                        ApplicationArea = All;
                        CaptionML = ENU = 'Log Interaction',
                                    ENA = 'Log Interaction';
                        Enabled = LogInteractionEnable;
                    }
                }
            }
        }

        actions
        {
        }

        trigger OnInit();
        begin
            LogInteractionEnable := true;
        end;

        trigger OnOpenPage();
        begin
            LogInteraction := SegManagement.FindInteractTmplCode(25) <> '';
            LogInteractionEnable := LogInteraction;
        end;
    }

    labels
    {
    }

    trigger OnInitReport();
    begin
        CompanyInfo.GET;
        ServiceSetup.GET;

        case ServiceSetup."Logo Position on Documents" of
            ServiceSetup."Logo Position on Documents"::"No Logo":
                ;
            ServiceSetup."Logo Position on Documents"::Left:
                begin
                    CompanyInfo3.GET;
                    CompanyInfo3.CALCFIELDS(Picture);
                end;
            ServiceSetup."Logo Position on Documents"::Center:
                begin
                    CompanyInfo1.GET;
                    CompanyInfo1.CALCFIELDS(Picture);
                end;
            ServiceSetup."Logo Position on Documents"::Right:
                begin
                    CompanyInfo2.GET;
                    CompanyInfo2.CALCFIELDS(Picture);
                end;
        end;

        // >>EC1.00
        CompInfoLogo.GET;
        CompInfoLogo.CALCFIELDS(Picture);
        // <<EC1.00
    end;

    var
        Text000: TextConst ENU = ' COPY', ENA = ' COPY';
        Text001: TextConst ENU = 'Service Quote%1', ENA = 'Service Quote%1';
        Text002: TextConst ENU = 'Page %1', ENA = 'Page %1';
        CompanyInfo: Record "Company Information";
        CompanyInfo1: Record "Company Information";
        CompanyInfo2: Record "Company Information";
        CompanyInfo3: Record "Company Information";
        ServiceSetup: Record "Service Mgt. Setup";
        RespCenter: Record "Responsibility Center";
        Language: Codeunit Language;
        DimSetEntry1: Record "Dimension Set Entry";
        DimSetEntry2: Record "Dimension Set Entry";
        FormatAddr: Codeunit "Format Address";
        SegManagement: Codeunit SegManagement;
        ServCountPrinted: Codeunit "Service-Printed";
        NoOfCopies: Integer;
        NoOfLoops: Integer;
        Number1: Integer;
        Number2: Integer;
        ShowInternalInfo: Boolean;
        ShowShippingAddr: Boolean;
        Continue: Boolean;
        CopyText: Text[30];
        CompanyAddr: array[8] of Text[50];
        CustAddr: array[8] of Text[50];
        ShipToAddr: array[8] of Text[50];
        DimText: Text[120];
        OldDimText: Text[120];
        Qty: Decimal;
        Amt: Decimal;
        TotAmt: Decimal;
        LogInteraction: Boolean;
        GrossAmt: Decimal;
        TotGrossAmt: Decimal;
        OutputNo: Integer;
        [InDataSet]
        LogInteractionEnable: Boolean;
        SerHdrOrderDateCaptionLbl: TextConst ENU = 'Order Date', ENA = 'Order Date';
        InvoicetoCaptionLbl: TextConst ENU = 'Invoice to', ENA = 'Invoice to';
        CompanyInfoPhoneNoCaptionLbl: TextConst ENU = 'Phone No.', ENA = 'Phone No.';
        ServiceHeaderEMailCaptionLbl: TextConst ENU = 'E-Mail', ENA = 'E-Mail';
        HeaderDimensionsCaptionLbl: TextConst ENU = 'Header Dimensions', ENA = 'Header Dimensions';
        ServiceItemLinesCaptionLbl: TextConst ENU = 'Service Item Lines', ENA = 'Service Item Lines';
        FaultCommentsCaptionLbl: TextConst ENU = 'Fault Comments', ENA = 'Fault Comments';
        ResolutionCommentsCaptionLbl: TextConst ENU = 'Resolution Comments', ENA = 'Resolution Comments';
        ServiceLineCaptionLbl: TextConst ENU = 'Service Line', ENA = 'Service Line';
        AmtCaptionLbl: TextConst ENU = 'Amount', ENA = 'Amount';
        GrossAmountCaptionLbl: TextConst ENU = 'Gross Amount', ENA = 'Gross Amount';
        TotalCaptionLbl: TextConst ENU = 'Total', ENA = 'Total';
        LineDimensionsCaptionLbl: TextConst ENU = 'Line Dimensions', ENA = 'Line Dimensions';
        ShipToAddressCaptionLbl: TextConst ENU = 'Ship-to Address', ENA = 'Ship-to Address';
        HomePageCaptionLbl: TextConst ENU = 'Home Page', ENA = 'Home Page';
        EmailCaptionLbl: TextConst ENU = 'E-Mail', ENA = 'E-Mail';
        CompInfoLogo: Record "Company Information";
}


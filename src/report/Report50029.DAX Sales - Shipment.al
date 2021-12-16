report 50029 "DAX Sales - Shipment"
{
    // version NAVW17.10.00.36366,NAVAPAC7.10.00.36366,EC1.00

    // ECCL
    // -----
    //   09-07-19  EC1.00
    //   Add logo
    DefaultLayout = RDLC;
    RDLCLayout = './DAX Sales - Shipment.rdl';

    CaptionML = ENU = 'Sales - Shipment',
                ENA = 'Sales - Shipment';

    dataset
    {
        dataitem("Sales Shipment Header"; "Sales Shipment Header")
        {
            DataItemTableView = SORTING("No.");
            RequestFilterFields = "No.", "Sell-to Customer No.", "No. Printed";
            RequestFilterHeadingML = ENU = 'Posted Sales Shipment',
                                     ENA = 'Posted Sales Shipment';
            column(No_SalesShptHeader; "No.")
            {
            }
            column(PageCaption; PageCaptionCap)
            {
            }
            column(DocumentDateCaption; DocumentDateCaptionLbl)
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
                    column(SalesShptCopyText; STRSUBSTNO(Text002, CopyText))
                    {
                    }
                    column(ShipToAddr1; ShipToAddr[1])
                    {
                    }
                    column(CompanyAddr1; CompanyAddr[1])
                    {
                    }
                    column(ShipToAddr2; ShipToAddr[2])
                    {
                    }
                    column(CompanyAddr2; CompanyAddr[2])
                    {
                    }
                    column(ShipToAddr3; ShipToAddr[3])
                    {
                    }
                    column(CompanyAddr3; CompanyAddr[3])
                    {
                    }
                    column(ShipToAddr4; ShipToAddr[4])
                    {
                    }
                    column(CompanyAddr4; CompanyAddr[4])
                    {
                    }
                    column(ShipToAddr5; ShipToAddr[5])
                    {
                    }
                    column(CompanyInfoPhoneNo; CompanyInfo."Phone No.")
                    {
                    }
                    column(ShipToAddr6; ShipToAddr[6])
                    {
                    }
                    column(CompanyInfoVATRegNo; CompanyInfo."VAT Registration No.")
                    {
                    }
                    column(CompanyInfoHomePage; CompanyInfo."Home Page")
                    {
                    }
                    column(CompanyInfoEmail; CompanyInfo."E-Mail")
                    {
                    }
                    column(CompanyInfoGiroNo; CompanyInfo."Giro No.")
                    {
                    }
                    column(CompanyInfoBankName; CompanyInfo."Bank Name")
                    {
                    }
                    column(CompanyInfoBankAccNo; CompanyInfo."Bank Account No.")
                    {
                    }
                    column(QuantityCaption; QuantityCaptionLbl)
                    {
                    }
                    column(DescriptionCaption; DescriptionCaptionLbl)
                    {
                    }
                    column(UnitofMeasureCaption; UnitofMeasureCaptionLbl)
                    {
                    }
                    column(SelltoCustNo_SalesShptHeader; "Sales Shipment Header"."Sell-to Customer No.")
                    {
                    }
                    column(ShptHeaderDocDate; FORMAT("Sales Shipment Header"."Document Date", 0, 4))
                    {
                    }
                    column(SalesPersonText; SalesPersonText)
                    {
                    }
                    column(SalesPurchPersonName; SalesPurchPerson.Name)
                    {
                    }
                    column(ReferenceText; ReferenceText)
                    {
                    }
                    column(YourReference_SalesShptHeader; "Sales Shipment Header"."Your Reference")
                    {
                    }
                    column(ShipToAddr7; ShipToAddr[7])
                    {
                    }
                    column(ShipToAddr8; ShipToAddr[8])
                    {
                    }
                    column(CompanyAddr5; CompanyAddr[5])
                    {
                    }
                    column(CompanyAddr6; CompanyAddr[6])
                    {
                    }
                    column(ShipmentDate_SalesShptHeader; FORMAT("Sales Shipment Header"."Shipment Date"))
                    {
                    }
                    column(OutputNo; OutputNo)
                    {
                    }
                    column(CompanyInfoABNDivisionPartNo; CompanyInfo."ABN Division Part No.")
                    {
                    }
                    column(CompanyInfoABN; CompanyInfo.ABN)
                    {
                    }
                    column(ItemTrackingAppendixCaption; ItemTrackingAppendixCaptionLbl)
                    {
                    }
                    column(CompanyInfoPhoneNoCaption; CompanyInfoPhoneNoCaptionLbl)
                    {
                    }
                    column(CompanyInfoVATRegistrationNoCaption; CompanyInfoVATRegistrationNoCaptionLbl)
                    {
                    }
                    column(CompanyInfoGiroNoCaption; CompanyInfoGiroNoCaptionLbl)
                    {
                    }
                    column(CompanyInfoBankNameCaption; CompanyInfoBankNameCaptionLbl)
                    {
                    }
                    column(CompanyInfoBankAccountNoCaption; CompanyInfoBankAccountNoCaptionLbl)
                    {
                    }
                    column(SalesShipmentHeaderNoCaption; SalesShipmentHeaderNoCaptionLbl)
                    {
                    }
                    column(SalesShipmentHeaderShipmentDateCaption; SalesShipmentHeaderShipmentDateCaptionLbl)
                    {
                    }
                    column(CompanyInfoABNCaption; CompanyInfoABNCaptionLbl)
                    {
                    }
                    column(CompanyInfoABNDivisionPartNoCaption; CompanyInfoABNDivisionPartNoCaptionLbl)
                    {
                    }
                    column(SelltoCustNo_SalesShptHeaderCaption; "Sales Shipment Header".FIELDCAPTION("Sell-to Customer No."))
                    {
                    }
                    dataitem(DimensionLoop1; "Integer")
                    {
                        DataItemLinkReference = "Sales Shipment Header";
                        DataItemTableView = SORTING(Number) WHERE(Number = FILTER(1 ..));
                        column(DimText; DimText)
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
                                    DimText := STRSUBSTNO('%1 - %2', DimSetEntry1."Dimension Code", DimSetEntry1."Dimension Value Code")
                                else
                                    DimText :=
                                      STRSUBSTNO(
                                        '%1; %2 - %3', DimText,
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
                    dataitem("Sales Shipment Line"; "Sales Shipment Line")
                    {
                        DataItemLink = "Document No." = FIELD("No.");
                        DataItemLinkReference = "Sales Shipment Header";
                        DataItemTableView = SORTING("Document No.", "Line No.");
                        column(Description_SalesShptLine; Description)
                        {
                            IncludeCaption = false;
                        }
                        column(ShowInternalInfo; ShowInternalInfo)
                        {
                        }
                        column(ShowCorrectionLines; ShowCorrectionLines)
                        {
                        }
                        column(Type_SalesShptLine; FORMAT("Sales Shipment Line".Type, 0, 2))
                        {
                        }
                        column(AsmHeaderExists; AsmHeaderExists)
                        {
                        }
                        column(DocumentNo_SalesShptLine; "Document No.")
                        {
                        }
                        column(LinNo; LinNo)
                        {
                        }
                        column(Qty_SalesShptLine; Quantity)
                        {
                        }
                        column(UnitofMeasure_SalesShptLine; "Unit of Measure")
                        {
                        }
                        column(No_SalesShptLine; "No.")
                        {
                        }
                        column(LineNo_SalesShptLine; "Line No.")
                        {
                        }
                        column(SalesShipmentLineNoCaption; FIELDCAPTION("No."))
                        {
                        }
                        column(Quantity_SalesShptLineCaption; FIELDCAPTION(Quantity))
                        {
                        }
                        column(UnitofMeasure_SalesShptLineCaption; FIELDCAPTION("Unit of Measure"))
                        {
                        }
                        dataitem(DimensionLoop2; "Integer")
                        {
                            DataItemTableView = SORTING(Number) WHERE(Number = FILTER(1 ..));
                            column(DimText1; DimText)
                            {
                            }
                            column(DimLoopNumber; DimensionLoop2.Number)
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
                                        DimText := STRSUBSTNO('%1 - %2', DimSetEntry2."Dimension Code", DimSetEntry2."Dimension Value Code")
                                    else
                                        DimText :=
                                          STRSUBSTNO(
                                            '%1; %2 - %3', DimText,
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
                            end;
                        }
                        dataitem(DisplayAsmInfo; "Integer")
                        {
                            column(PostedAsmLineUnitofMeasureCode; GetUnitOfMeasureDescr(PostedAsmLine."Unit of Measure Code"))
                            {
                                //  DecimalPlaces = 0:5;
                            }
                            column(PostedAsmLineQuantity; PostedAsmLine.Quantity)
                            {
                                DecimalPlaces = 0 : 5;
                            }
                            column(PostedAsmLineDescription; BlanksForIndent + PostedAsmLine.Description)
                            {
                            }
                            column(PostedAsmLineItemNo; BlanksForIndent + PostedAsmLine."No.")
                            {
                            }

                            trigger OnAfterGetRecord();
                            var
                                ItemTranslation: Record "Item Translation";
                            begin
                                if Number = 1 then
                                    PostedAsmLine.FINDSET
                                else
                                    PostedAsmLine.NEXT;

                                if ItemTranslation.GET(PostedAsmLine."No.",
                                     PostedAsmLine."Variant Code",
                                     "Sales Shipment Header"."Language Code")
                                then
                                    PostedAsmLine.Description := ItemTranslation.Description;
                            end;

                            trigger OnPreDataItem();
                            begin
                                if not DisplayAssemblyInformation then
                                    CurrReport.BREAK;
                                if not AsmHeaderExists then
                                    CurrReport.BREAK;

                                PostedAsmLine.SETRANGE("Document No.", PostedAsmHeader."No.");
                                SETRANGE(Number, 1, PostedAsmLine.COUNT);
                            end;
                        }

                        trigger OnAfterGetRecord();
                        begin
                            LinNo := "Line No.";
                            if not ShowCorrectionLines and Correction then
                                CurrReport.SKIP;

                            DimSetEntry2.SETRANGE("Dimension Set ID", "Dimension Set ID");
                            if DisplayAssemblyInformation then
                                AsmHeaderExists := AsmToShipmentExists(PostedAsmHeader);
                        end;

                        trigger OnPostDataItem();
                        begin
                            // Item Tracking:
                            if ShowLotSN then begin
                                ItemTrackingDocMgt.SetRetrieveAsmItemTracking(true);
                                TrackingSpecCount := ItemTrackingDocMgt.RetrieveDocumentItemTracking(TrackingSpecBuffer, "Sales Shipment Header"."No.",
                                  DATABASE::"Sales Shipment Header", 0);
                                ItemTrackingDocMgt.SetRetrieveAsmItemTracking(false);
                            end;
                        end;

                        trigger OnPreDataItem();
                        begin
                            MoreLines := FIND('+');
                            while MoreLines and (Description = '') and ("No." = '') and (Quantity = 0) do
                                MoreLines := NEXT(-1) <> 0;
                            if not MoreLines then
                                CurrReport.BREAK;
                            SETRANGE("Line No.", 0, "Line No.");
                        end;
                    }
                    dataitem(Total; "Integer")
                    {
                        DataItemTableView = SORTING(Number) WHERE(Number = CONST(1));
                    }
                    dataitem(Total2; "Integer")
                    {
                        DataItemTableView = SORTING(Number) WHERE(Number = CONST(1));
                        column(BilltoCustNo_SalesShptHeader; "Sales Shipment Header"."Bill-to Customer No.")
                        {
                        }
                        column(CustAddr1; CustAddr[1])
                        {
                        }
                        column(CustAddr2; CustAddr[2])
                        {
                        }
                        column(CustAddr3; CustAddr[3])
                        {
                        }
                        column(CustAddr4; CustAddr[4])
                        {
                        }
                        column(CustAddr5; CustAddr[5])
                        {
                        }
                        column(CustAddr6; CustAddr[6])
                        {
                        }
                        column(CustAddr7; CustAddr[7])
                        {
                        }
                        column(CustAddr8; CustAddr[8])
                        {
                        }
                        column(BilltoAddressCaption; BilltoAddressCaptionLbl)
                        {
                        }
                        column(BilltoCustNo_SalesShptHeaderCaption; "Sales Shipment Header".FIELDCAPTION("Bill-to Customer No."))
                        {
                        }

                        trigger OnPreDataItem();
                        begin
                            if not ShowCustAddr then
                                CurrReport.BREAK;
                        end;
                    }
                    dataitem(ItemTrackingLine; "Integer")
                    {
                        DataItemTableView = SORTING(Number);
                        column(TrackingSpecBufferItemNo; TrackingSpecBuffer."Item No.")
                        {
                        }
                        column(TrackingSpecBufferDescription; TrackingSpecBuffer.Description)
                        {
                        }
                        column(TrackingSpecBufferLotNo; TrackingSpecBuffer."Lot No.")
                        {
                        }
                        column(TrackingSpecBufferSerialNo; TrackingSpecBuffer."Serial No.")
                        {
                        }
                        column(TrackingSpecBufferQty; TrackingSpecBuffer."Quantity (Base)")
                        {
                        }
                        column(ShowTotal; ShowTotal)
                        {
                        }
                        column(ShowGroup; ShowGroup)
                        {
                        }
                        column(SerialNoCaption; SerialNoCaptionLbl)
                        {
                        }
                        column(LotNoCaption; LotNoCaptionLbl)
                        {
                        }
                        column(NoCaption; NoCaptionLbl)
                        {
                        }
                        dataitem(TotalItemTracking; "Integer")
                        {
                            DataItemTableView = SORTING(Number) WHERE(Number = CONST(1));
                            column(TotalQuantity; TotalQty)
                            {
                            }
                        }

                        trigger OnAfterGetRecord();
                        begin
                            if Number = 1 then
                                TrackingSpecBuffer.FINDSET
                            else
                                TrackingSpecBuffer.NEXT;

                            if not ShowCorrectionLines and TrackingSpecBuffer.Correction then
                                CurrReport.SKIP;
                            if TrackingSpecBuffer.Correction then
                                TrackingSpecBuffer."Quantity (Base)" := -TrackingSpecBuffer."Quantity (Base)";

                            ShowTotal := false;
                            if ItemTrackingAppendix.IsStartNewGroup(TrackingSpecBuffer) then
                                ShowTotal := true;

                            ShowGroup := false;
                            if (TrackingSpecBuffer."Source Ref. No." <> OldRefNo) or
                               (TrackingSpecBuffer."Item No." <> OldNo)
                            then begin
                                OldRefNo := TrackingSpecBuffer."Source Ref. No.";
                                OldNo := TrackingSpecBuffer."Item No.";
                                TotalQty := 0;
                            end else
                                ShowGroup := true;
                            TotalQty += TrackingSpecBuffer."Quantity (Base)";
                        end;

                        trigger OnPreDataItem();
                        begin
                            if TrackingSpecCount = 0 then
                                CurrReport.BREAK;
                            CurrReport.NEWPAGE;
                            SETRANGE(Number, 1, TrackingSpecCount);
                            TrackingSpecBuffer.SETCURRENTKEY("Source ID", "Source Type", "Source Subtype", "Source Batch Name",
                              "Source Prod. Order Line", "Source Ref. No.");
                        end;
                    }

                    trigger OnPreDataItem();
                    begin
                        //MAGNUS 300914 Always show LOT No.
                        ShowLotSN := true;
                        //MAGNUS

                        // Item Tracking:
                        if ShowLotSN then begin
                            TrackingSpecCount := 0;
                            OldRefNo := 0;
                            ShowGroup := false;
                        end;
                    end;
                }

                trigger OnAfterGetRecord();
                begin
                    if Number > 1 then begin
                        CopyText := Text001;
                        OutputNo += 1;
                    end;
                    CurrReport.PAGENO := 1;
                    TotalQty := 0;           // Item Tracking
                end;

                trigger OnPostDataItem();
                begin
                    if not CurrReport.PREVIEW then
                        ShptCountPrinted.RUN("Sales Shipment Header");
                end;

                trigger OnPreDataItem();
                begin
                    NoOfLoops := 1 + ABS(NoOfCopies);
                    CopyText := '';
                    SETRANGE(Number, 1, NoOfLoops);
                    OutputNo := 1;
                end;
            }

            trigger OnAfterGetRecord();
            begin
                IF "Language Code" <> '' then
                    CurrReport.LANGUAGE := Language.GetLanguageID("Language Code");

                if RespCenter.GET("Responsibility Center") then begin
                    FormatAddr.RespCenter(CompanyAddr, RespCenter);
                    CompanyInfo."Phone No." := RespCenter."Phone No.";
                    CompanyInfo."Fax No." := RespCenter."Fax No.";
                end else begin
                    FormatAddr.Company(CompanyAddr, CompanyInfo);
                end;

                DimSetEntry1.SETRANGE("Dimension Set ID", "Dimension Set ID");

                if "Salesperson Code" = '' then begin
                    SalesPurchPerson.INIT;
                    SalesPersonText := '';
                end else begin
                    SalesPurchPerson.GET("Salesperson Code");
                    SalesPersonText := Text000;
                end;
                if "Your Reference" = '' then
                    ReferenceText := ''
                else
                    ReferenceText := FIELDCAPTION("Your Reference");
                FormatAddr.SalesShptShipTo(ShipToAddr, "Sales Shipment Header");
                FormatAddr.SalesShptBillTo(CustAddr, ShipToAddr, "Sales Shipment Header");
                ShowCustAddr := "Bill-to Customer No." <> "Sell-to Customer No.";
                for i := 1 to ARRAYLEN(CustAddr) do
                    if CustAddr[i] <> ShipToAddr[i] then
                        ShowCustAddr := true;

                if LogInteraction then
                    if not CurrReport.PREVIEW then
                        SegManagement.LogDocument(
                          5, "No.", 0, 0, DATABASE::Customer, "Sell-to Customer No.", "Salesperson Code",
                          "Campaign No.", "Posting Description", '');
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
                    field("Show Correction Lines"; ShowCorrectionLines)
                    {
                        ApplicationArea = All;
                        CaptionML = ENU = 'Show Correction Lines',
                                    ENA = 'Show Correction Lines';
                    }
                    field(ShowLotSN; ShowLotSN)
                    {
                        ApplicationArea = All;
                        CaptionML = ENU = 'Show Serial/Lot Number Appendix',
                                    ENA = 'Show Serial/Lot Number Appendix';
                    }
                    field(DisplayAsmInfo; DisplayAssemblyInformation)
                    {
                        ApplicationArea = All;
                        CaptionML = ENU = 'Show Assembly Components',
                                    ENA = 'Show Assembly Components';
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
            InitLogInteraction;
            LogInteractionEnable := LogInteraction;
        end;
    }

    labels
    {
    }

    trigger OnInitReport();
    begin
        CompanyInfo.GET;
        SalesSetup.GET;

        case SalesSetup."Logo Position on Documents" of
            SalesSetup."Logo Position on Documents"::"No Logo":
                ;
            SalesSetup."Logo Position on Documents"::Left:
                begin
                    CompanyInfo3.GET;
                    CompanyInfo3.CALCFIELDS(Picture);
                end;
            SalesSetup."Logo Position on Documents"::Center:
                begin
                    CompanyInfo1.GET;
                    CompanyInfo1.CALCFIELDS(Picture);
                end;
            SalesSetup."Logo Position on Documents"::Right:
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

    trigger OnPreReport();
    begin
        if not CurrReport.USEREQUESTPAGE then
            InitLogInteraction;
    end;

    var
        Text000: TextConst ENU = 'Salesperson', ENA = 'Salesperson';
        Text001: TextConst ENU = 'COPY', ENA = 'COPY';
        Text002: TextConst ENU = 'Sales - Shipment %1', ENA = 'Sales - Shipment %1';
        Text003: TextConst ENU = 'Page %1', ENA = 'Page %1';
        SalesPurchPerson: Record "Salesperson/Purchaser";
        CompanyInfo: Record "Company Information";
        CompanyInfo1: Record "Company Information";
        CompanyInfo2: Record "Company Information";
        CompanyInfo3: Record "Company Information";
        SalesSetup: Record "Sales & Receivables Setup";
        DimSetEntry1: Record "Dimension Set Entry";
        DimSetEntry2: Record "Dimension Set Entry";
        Language: Codeunit Language;
        TrackingSpecBuffer: Record "Tracking Specification" temporary;
        PostedAsmHeader: Record "Posted Assembly Header";
        PostedAsmLine: Record "Posted Assembly Line";
        ShptCountPrinted: Codeunit "Sales Shpt.-Printed";
        SegManagement: Codeunit SegManagement;
        ItemTrackingDocMgt: Codeunit "Item Tracking Doc. Management";
        RespCenter: Record "Responsibility Center";
        ItemTrackingAppendix: Report "Item Tracking Appendix";
        CustAddr: array[8] of Text[50];
        ShipToAddr: array[8] of Text[50];
        CompanyAddr: array[8] of Text[50];
        SalesPersonText: Text[20];
        ReferenceText: Text[80];
        MoreLines: Boolean;
        NoOfCopies: Integer;
        OutputNo: Integer;
        NoOfLoops: Integer;
        TrackingSpecCount: Integer;
        Quantity_itemtracking: Integer;
        OldRefNo: Integer;
        OldNo: Code[20];
        CopyText: Text[30];
        ShowCustAddr: Boolean;
        i: Integer;
        FormatAddr: Codeunit "Format Address";
        DimText: Text[120];
        OldDimText: Text[75];
        ShowInternalInfo: Boolean;
        Continue: Boolean;
        LogInteraction: Boolean;
        ShowCorrectionLines: Boolean;
        ShowLotSN: Boolean;
        ShowTotal: Boolean;
        ShowGroup: Boolean;
        TotalQty: Decimal;
        NewPage: Boolean;
        [InDataSet]
        LogInteractionEnable: Boolean;
        DisplayAssemblyInformation: Boolean;
        AsmHeaderExists: Boolean;
        LinNo: Integer;
        PageCaptionCap: TextConst ENU = 'Page %1 of %2', ENA = 'Page %1 of %2';
        QuantityCaptionLbl: TextConst ENU = 'Quantity', ENA = 'Quantity';
        DescriptionCaptionLbl: TextConst ENU = 'Description', ENA = 'Description';
        UnitofMeasureCaptionLbl: TextConst ENU = 'Unit of Measure', ENA = 'Unit of Measure';
        ItemTrackingAppendixCaptionLbl: TextConst ENU = 'Item Tracking - Appendix', ENA = 'Item Tracking - Appendix';
        CompanyInfoPhoneNoCaptionLbl: TextConst ENU = 'Phone No.', ENA = 'Phone No.';
        CompanyInfoVATRegistrationNoCaptionLbl: TextConst ENU = 'VAT Registration No.', ENA = 'Exemption Certificate No.';
        CompanyInfoGiroNoCaptionLbl: TextConst ENU = 'Giro No.', ENA = 'Giro No.';
        CompanyInfoBankNameCaptionLbl: TextConst ENU = 'Bank', ENA = 'Bank';
        CompanyInfoBankAccountNoCaptionLbl: TextConst ENU = 'Account No.', ENA = 'Account No.';
        SalesShipmentHeaderNoCaptionLbl: TextConst ENU = 'Shipment No.', ENA = 'Shipment No.';
        SalesShipmentHeaderShipmentDateCaptionLbl: TextConst ENU = 'Shipment Date', ENA = 'Shipment Date';
        CompanyInfoABNCaptionLbl: TextConst ENU = 'ABN', ENA = 'ABN';
        CompanyInfoABNDivisionPartNoCaptionLbl: TextConst ENU = 'Division Part No.', ENA = 'Division Part No.';
        HeaderDimensionsCaptionLbl: TextConst ENU = 'Header Dimensions', ENA = 'Header Dimensions';
        LineDimensionsCaptionLbl: TextConst ENU = 'Line Dimensions', ENA = 'Line Dimensions';
        BilltoAddressCaptionLbl: TextConst ENU = 'Bill-to Address', ENA = 'Bill-to Address';
        SerialNoCaptionLbl: TextConst ENU = 'Serial No.', ENA = 'Serial No.';
        LotNoCaptionLbl: TextConst ENU = 'Lot No.', ENA = 'Lot No.';
        NoCaptionLbl: TextConst ENU = 'No.', ENA = 'No.';
        DocumentDateCaptionLbl: TextConst ENU = 'Document Date', ENA = 'Document Date';
        HomePageCaptionLbl: TextConst ENU = 'Home Page', ENA = 'Home Page';
        EmailCaptionLbl: TextConst ENU = 'E-Mail', ENA = 'E-Mail';
        CompInfoLogo: Record "Company Information";

    procedure InitLogInteraction();
    begin
        LogInteraction := SegManagement.FindInteractTmplCode(5) <> '';
    end;

    procedure InitializeRequest(NewNoOfCopies: Integer; NewShowInternalInfo: Boolean; NewLogInteraction: Boolean; NewShowCorrectionLines: Boolean; NewShowLotSN: Boolean; DisplayAsmInfo: Boolean);
    begin
        NoOfCopies := NewNoOfCopies;
        ShowInternalInfo := NewShowInternalInfo;
        LogInteraction := NewLogInteraction;
        ShowCorrectionLines := NewShowCorrectionLines;
        ShowLotSN := NewShowLotSN;
        DisplayAssemblyInformation := DisplayAsmInfo;
    end;

    procedure GetUnitOfMeasureDescr(UOMCode: Code[10]): Text[10];
    var
        UnitOfMeasure: Record "Unit of Measure";
    begin
        if not UnitOfMeasure.GET(UOMCode) then
            exit(UOMCode);
        exit(UnitOfMeasure.Description);
    end;

    procedure BlanksForIndent(): Text[10];
    begin
        exit(PADSTR('', 2, ' '));
    end;
}


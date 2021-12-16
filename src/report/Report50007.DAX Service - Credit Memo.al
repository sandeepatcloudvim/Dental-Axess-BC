report 50007 "Service - Credit Memo DAX"
{
    // version NAVW17.10

    DefaultLayout = RDLC;
    RDLCLayout = './DAX Service - Credit Memo.rdl';
    CaptionML = ENU = 'Service - Credit Memo',
                ENA = 'Service - CR/Adj Note';
    Permissions = TableData "Sales Shipment Buffer" = rimd;

    dataset
    {
        dataitem("Service Cr.Memo Header"; "Service Cr.Memo Header")
        {
            DataItemTableView = SORTING("No.");
            RequestFilterFields = "No.", "Customer No.", "No. Printed";
            RequestFilterHeadingML = ENU = 'Posted Service Credit Memo',
                                     ENA = 'Posted Service CR/Adj Note';
            column(VATAmtLineVATAmtText; VATAmountLine.VATAmountText)
            {
            }
            column(TotalAmountInclVAT; TotalAmountInclVAT)
            {
            }
            column(TotalInclVATText; TotalInclVATText)
            {
            }
            column(TotalExclVATText; TotalExclVATText)
            {
            }
            column(TotalInvDiscAmount; TotalInvDiscAmount)
            {
            }
            column(TotalAmount; TotalAmount)
            {
            }
            column(TotalText; TotalText)
            {
            }
            column(SubtotalCaption; SubtotalCaptionLbl)
            {
            }
            column(PaymentDiscountonVATCaption; PaymentDiscountonVATCaptionLbl)
            {
            }
            column(UnitPriceCaption; UnitPriceCaptionLbl)
            {
            }
            column(AmountCaption; AmountCaptionLbl)
            {
            }
            column(PostedReceiptDateCaption; PostedReceiptDateCaptionLbl)
            {
            }
            column(ServiceCrMemoLineLineDiscountCaption; ServiceCrMemoLineLineDiscountCaptionLbl)
            {
            }
            column(InvDiscountAmountCaption; InvDiscountAmountCaptionLbl)
            {
            }
            dataitem(CopyLoop; "Integer")
            {
                DataItemTableView = SORTING(Number);
                dataitem(PageLoop; "Integer")
                {
                    DataItemTableView = SORTING(Number) WHERE(Number = CONST(1));
                    column(CompanyInfoPicture; CompanyInfo.Picture)
                    {
                    }
                    column(CompanyInfo1Picture; CompanyInfo1.Picture)
                    {
                    }
                    column(CompanyInfo2Picture; CompanyInfo2.Picture)
                    {
                    }
                    column(ReportTitleCopyText; STRSUBSTNO(Text005, CopyText))
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
                    column(CompanyInfoPhoneNo; CompanyInfo."Phone No.")
                    {
                    }
                    column(CustAddr6; CustAddr[6])
                    {
                    }
                    column(CompanyInfoFaxNo; CompanyInfo."Fax No.")
                    {
                    }
                    column(CompanyInfoVATRegNo; CompanyInfo."VAT Registration No.")
                    {
                    }
                    column(CompanyInfoGiroNo; CompanyInfo."Giro No.")
                    {
                    }
                    column(CompanyInfoBankName; CompanyInfo."Bank Name")
                    {
                    }
                    column(CompanyInfoBankAccountNo; CompanyInfo."Bank Account No.")
                    {
                    }
                    column(BillToCustNo_ServiceCrMemoHeader; "Service Cr.Memo Header"."Bill-to Customer No.")
                    {
                    }
                    column(PostingDate_ServiceCrMemoHeader; FORMAT("Service Cr.Memo Header"."Posting Date"))
                    {
                    }
                    column(VATNoText; VATNoText)
                    {
                    }
                    column(VATRegNo_ServiceCrMemoHeader; "Service Cr.Memo Header"."VAT Registration No.")
                    {
                    }
                    column(No1_ServiceCrMemoHeader; "Service Cr.Memo Header"."No.")
                    {
                    }
                    column(SalesPersonText; SalesPersonText)
                    {
                    }
                    column(SalesPurchPersonName; SalesPurchPerson.Name)
                    {
                    }
                    column(AppliedToText; AppliedToText)
                    {
                    }
                    column(ReferenceText; ReferenceText)
                    {
                    }
                    column(YourRef_ServiceCrMemoHeader; "Service Cr.Memo Header"."Your Reference")
                    {
                    }
                    column(CustAddr7; CustAddr[7])
                    {
                    }
                    column(CustAddr8; CustAddr[8])
                    {
                    }
                    column(CompanyAddr5; CompanyAddr[5])
                    {
                    }
                    column(CompanyAddr6; CompanyAddr[6])
                    {
                    }
                    column(DocDate_ServiceCrMemoHeader; FORMAT("Service Cr.Memo Header"."Document Date", 0, 4))
                    {
                    }
                    column(PricesInclVAT_ServiceCrMemoHeader; "Service Cr.Memo Header"."Prices Including VAT")
                    {
                    }
                    column(PageCaption; STRSUBSTNO(Text006, ''))
                    {
                    }
                    column(OutputNo; OutputNo)
                    {
                    }
                    column(PricesInclVAT1_ServiceCrMemoHeader; FORMAT("Service Cr.Memo Header"."Prices Including VAT"))
                    {
                    }
                    column(CompanyInfoPhoneNoCaption; CompanyInfoPhoneNoCaptionLbl)
                    {
                    }
                    column(CompanyInfoFaxNoCaption; CompanyInfoFaxNoCaptionLbl)
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
                    column(ServiceCrMemoHeaderNoCaption; ServiceCrMemoHeaderNoCaptionLbl)
                    {
                    }
                    column(ServiceCrMemoHeaderPostingDateCaption; ServiceCrMemoHeaderPostingDateCaptionLbl)
                    {
                    }
                    column(BillToCustNo_ServiceCrMemoHeaderCaption; "Service Cr.Memo Header".FIELDCAPTION("Bill-to Customer No."))
                    {
                    }
                    column(PricesInclVAT_ServiceCrMemoHeaderCaption; "Service Cr.Memo Header".FIELDCAPTION("Prices Including VAT"))
                    {
                    }
                    dataitem(DimensionLoop1; "Integer")
                    {
                        DataItemLinkReference = "Service Cr.Memo Header";
                        DataItemTableView = SORTING(Number);
                        column(DimText; DimText)
                        {
                        }
                        column(Number_IntegerLine; Number)
                        {
                        }
                        column(HeaderDimensionsCaption; HeaderDimensionsCaptionLbl)
                        {
                        }

                        trigger OnAfterGetRecord();
                        begin
                            DimText := DimTxtArr[Number];
                        end;

                        trigger OnPreDataItem();
                        begin
                            if not ShowInternalInfo then
                                CurrReport.BREAK;
                            FindDimTxt("Service Cr.Memo Header"."Dimension Set ID");
                            SETRANGE(Number, 1, DimTxtArrLength);
                        end;
                    }
                    dataitem("Service Cr.Memo Line"; "Service Cr.Memo Line")
                    {
                        DataItemLink = "Document No." = FIELD("No.");
                        DataItemLinkReference = "Service Cr.Memo Header";
                        DataItemTableView = SORTING("Document No.", "Line No.");
                        column(TypeInt; TypeInt)
                        {
                        }
                        column(LineNo_ServCrMemoLine; "Line No.")
                        {
                        }
                        column(VAtBaseDisc_ServiceCrMemoHeader; "Service Cr.Memo Header"."VAT Base Discount %")
                        {
                        }
                        column(TotalLineAmount; TotalLineAmount)
                        {
                        }
                        column(LineAmt_ServCrMemoLine; "Line Amount")
                        {
                            AutoFormatExpression = GetCurrencyCode;
                            AutoFormatType = 1;
                        }
                        column(Desc_ServCrMemoLine; Description)
                        {
                        }
                        column(No_ServCrMemoLine; "No.")
                        {
                        }
                        column(Quantity_ServCrMemoLine; Quantity)
                        {
                        }
                        column(UOM_ServCrMemoLine; "Unit of Measure")
                        {
                        }
                        column(UnitPrice_ServCrMemoLine; "Unit Price")
                        {
                            AutoFormatExpression = GetCurrencyCode;
                            AutoFormatType = 2;
                        }
                        column(LineDisc_ServCrMemoLine; "Line Discount %")
                        {
                        }
                        column(VATIdentifier_ServCrMemoLine; "VAT Identifier")
                        {
                        }
                        column(PostedRcptDate; FORMAT(PostedReceiptDate))
                        {
                        }
                        column(Amt_ServCrMemoLine; Amount)
                        {
                            AutoFormatExpression = GetCurrencyCode;
                            AutoFormatType = 1;
                        }
                        column(InvDiscountAmount; -"Inv. Discount Amount")
                        {
                            AutoFormatExpression = GetCurrencyCode;
                            AutoFormatType = 1;
                        }
                        column(AmtInclVAT_ServCrMemoLine; "Amount Including VAT")
                        {
                            AutoFormatExpression = GetCurrencyCode;
                            AutoFormatType = 1;
                        }
                        column(AmtInclVATAmt; "Amount Including VAT" - Amount)
                        {
                            AutoFormatExpression = GetCurrencyCode;
                            AutoFormatType = 1;
                        }
                        column(LineAmtInvDiscAmtInclVAT; -("Line Amount" - "Inv. Discount Amount" - "Amount Including VAT"))
                        {
                            AutoFormatExpression = "Service Cr.Memo Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(Desc_ServCrMemoLineCaption; FIELDCAPTION(Description))
                        {
                        }
                        column(No_ServCrMemoLineCaption; FIELDCAPTION("No."))
                        {
                        }
                        column(Quantity_ServCrMemoLineCaption; FIELDCAPTION(Quantity))
                        {
                        }
                        column(UOM_ServCrMemoLineCaption; FIELDCAPTION("Unit of Measure"))
                        {
                        }
                        column(VATIdentifier_ServCrMemoLineCaption; FIELDCAPTION("VAT Identifier"))
                        {
                        }
                        dataitem("Service Shipment Buffer"; "Integer")
                        {
                            DataItemTableView = SORTING(Number);
                            column(ServShptBuffPostingDate; FORMAT(ServiceShipmentBuffer."Posting Date"))
                            {
                            }
                            column(ServShptBuffQty; ServiceShipmentBuffer.Quantity)
                            {
                                DecimalPlaces = 0 : 5;
                            }
                            column(ReturnReceiptCaption; ReturnReceiptCaptionLbl)
                            {
                            }

                            trigger OnAfterGetRecord();
                            begin
                                if Number = 1 then
                                    ServiceShipmentBuffer.FIND('-')
                                else
                                    ServiceShipmentBuffer.NEXT;
                            end;

                            trigger OnPreDataItem();
                            begin
                                SETRANGE(Number, 1, ServiceShipmentBuffer.COUNT);
                            end;
                        }
                        dataitem(DimensionLoop2; "Integer")
                        {
                            DataItemTableView = SORTING(Number);
                            column(DimText1; DimText)
                            {
                            }
                            column(LineDimensionsCaption; LineDimensionsCaptionLbl)
                            {
                            }

                            trigger OnAfterGetRecord();
                            begin
                                DimText := DimTxtArr[Number];
                            end;

                            trigger OnPreDataItem();
                            begin
                                if not ShowInternalInfo then
                                    CurrReport.BREAK;

                                FindDimTxt("Service Cr.Memo Line"."Dimension Set ID");
                                SETRANGE(Number, 1, DimTxtArrLength);
                            end;
                        }

                        trigger OnAfterGetRecord();
                        begin
                            ServiceShipmentBuffer.DELETEALL;
                            PostedReceiptDate := 0D;
                            if Quantity <> 0 then
                                PostedReceiptDate := FindPostedShipmentDate;

                            if (Type = Type::"G/L Account") and not ShowInternalInfo then
                                "No." := '';

                            VATAmountLine.INIT;
                            VATAmountLine."VAT Identifier" := "VAT Identifier";
                            VATAmountLine."VAT Calculation Type" := "VAT Calculation Type";
                            VATAmountLine."Tax Group Code" := "Tax Group Code";
                            VATAmountLine."VAT %" := "VAT %";
                            VATAmountLine."VAT Base" := Amount;
                            VATAmountLine."Amount Including VAT" := "Amount Including VAT";
                            VATAmountLine."Line Amount" := "Line Amount";
                            if "Allow Invoice Disc." then
                                VATAmountLine."Inv. Disc. Base Amount" := "Line Amount";
                            VATAmountLine."Invoice Discount Amount" := "Inv. Discount Amount";
                            VATAmountLine."VAT Clause Code" := "VAT Clause Code";
                            VATAmountLine.InsertLine;

                            TotalAmount += Amount;
                            TotalAmountInclVAT += "Amount Including VAT";
                            TotalInvDiscAmount += "Inv. Discount Amount";
                            TotalLineAmount += "Line Amount";
                            TypeInt := Type;
                        end;

                        trigger OnPreDataItem();
                        begin
                            VATAmountLine.DELETEALL;
                            ServiceShipmentBuffer.RESET;
                            ServiceShipmentBuffer.DELETEALL;
                            FirstValueEntryNo := 0;
                            MoreLines := FIND('+');
                            while MoreLines and (Description = '') and ("No." = '') and (Quantity = 0) and (Amount = 0) do
                                MoreLines := NEXT(-1) <> 0;
                            if not MoreLines then
                                CurrReport.BREAK;
                            SETRANGE("Line No.", 0, "Line No.");
                            CurrReport.CREATETOTALS(Amount, "Amount Including VAT", "Inv. Discount Amount");

                            TotalAmount := 0;
                            TotalAmountInclVAT := 0;
                            TotalInvDiscAmount := 0;
                            TotalLineAmount := 0;
                        end;
                    }
                    dataitem(VATCounter; "Integer")
                    {
                        DataItemTableView = SORTING(Number);
                        column(VATAmtLineVATBase; VATAmountLine."VAT Base")
                        {
                            AutoFormatExpression = "Service Cr.Memo Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATAmtLineVATAmt; VATAmountLine."VAT Amount")
                        {
                            AutoFormatExpression = "Service Cr.Memo Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATAmtLineLineAmt; VATAmountLine."Line Amount")
                        {
                            AutoFormatExpression = "Service Cr.Memo Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATAmtLineInvDiscBaseAmt; VATAmountLine."Inv. Disc. Base Amount")
                        {
                            AutoFormatExpression = "Service Cr.Memo Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATAmtLineInvoiceDisctAmt; VATAmountLine."Invoice Discount Amount")
                        {
                            AutoFormatExpression = "Service Cr.Memo Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATAmtLineVAT; VATAmountLine."VAT %")
                        {
                            DecimalPlaces = 0 : 5;
                        }
                        column(VATAmtLineVATIdentifier; VATAmountLine."VAT Identifier")
                        {
                        }
                        column(VATAmountLineVATCaption; VATAmountLineVATCaptionLbl)
                        {
                        }
                        column(VATBaseCaption; VATBaseCaptionLbl)
                        {
                        }
                        column(VATAmountLineVATAmnCaption; VATAmountLineVATAmnCaptionLbl)
                        {
                        }
                        column(VATAmountSpecificationCaption; VATAmountSpecificationCaptionLbl)
                        {
                        }
                        column(VATAmountLineVATIdentifierCaption; VATAmountLineVATIdentifierCaptionLbl)
                        {
                        }
                        column(VATAmountLineInvDiscBaseAmtCaption; VATAmountLineInvDiscBaseAmtCaptionLbl)
                        {
                        }
                        column(VATAmountLineLineAmntCaption; VATAmountLineLineAmntCaptionLbl)
                        {
                        }

                        trigger OnAfterGetRecord();
                        begin
                            VATAmountLine.GetLine(Number);
                        end;

                        trigger OnPreDataItem();
                        begin
                            if VATAmountLine.GetTotalVATAmount = 0 then
                                CurrReport.BREAK;
                            SETRANGE(Number, 1, VATAmountLine.COUNT);
                            CurrReport.CREATETOTALS(
                              VATAmountLine."Line Amount", VATAmountLine."Inv. Disc. Base Amount",
                              VATAmountLine."Invoice Discount Amount", VATAmountLine."VAT Base", VATAmountLine."VAT Amount");
                        end;
                    }
                    dataitem(VATClauseEntryCounter; "Integer")
                    {
                        DataItemTableView = SORTING(Number);
                        column(VATClauseVATIdentifier; VATAmountLine."VAT Identifier")
                        {
                        }
                        column(VATClauseCode; VATAmountLine."VAT Clause Code")
                        {
                        }
                        column(VATClauseDescription; VATClause.Description)
                        {
                        }
                        column(VATClauseDescription2; VATClause."Description 2")
                        {
                        }
                        column(VATClauseAmount; VATAmountLine."VAT Amount")
                        {
                            AutoFormatExpression = "Service Cr.Memo Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATClausesCaption; VATClausesCap)
                        {
                        }
                        column(VATClauseVATIdentifierCaption; VATAmountLineVATIdentifierCaptionLbl)
                        {
                        }
                        column(VATClauseVATAmtCaption; VATAmountLineVATAmnCaptionLbl)
                        {
                        }
                        column(TotalCaption; TotalCaptionLbl)
                        {
                        }

                        trigger OnAfterGetRecord();
                        begin
                            VATAmountLine.GetLine(Number);
                            if not VATClause.GET(VATAmountLine."VAT Clause Code") then
                                CurrReport.SKIP;
                            VATClause.TranslateDescription("Service Cr.Memo Header"."Language Code");
                        end;

                        trigger OnPreDataItem();
                        begin
                            CLEAR(VATClause);
                            SETRANGE(Number, 1, VATAmountLine.COUNT);
                            CurrReport.CREATETOTALS(VATAmountLine."VAT Amount");
                        end;
                    }
                    dataitem(Total; "Integer")
                    {
                        DataItemTableView = SORTING(Number) WHERE(Number = CONST(1));
                    }
                    dataitem(Total2; "Integer")
                    {
                        DataItemTableView = SORTING(Number) WHERE(Number = CONST(1));
                        column(Cust_ServCrMemoHeader; "Service Cr.Memo Header"."Customer No.")
                        {
                        }
                        column(ShipToAddr1; ShipToAddr[1])
                        {
                        }
                        column(ShipToAddr2; ShipToAddr[2])
                        {
                        }
                        column(ShipToAddr3; ShipToAddr[3])
                        {
                        }
                        column(ShipToAddr4; ShipToAddr[4])
                        {
                        }
                        column(ShipToAddr5; ShipToAddr[5])
                        {
                        }
                        column(ShipToAddr6; ShipToAddr[6])
                        {
                        }
                        column(ShipToAddr7; ShipToAddr[7])
                        {
                        }
                        column(ShipToAddr8; ShipToAddr[8])
                        {
                        }
                        column(ShiptoAddressCaption; ShiptoAddressCaptionLbl)
                        {
                        }
                        column(Cust_ServCrMemoHeaderCaption; "Service Cr.Memo Header".FIELDCAPTION("Customer No."))
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
                    CurrReport.PAGENO := 1;
                    if Number > 1 then begin
                        CopyText := Text004;
                        OutputNo += 1;
                    end;
                end;

                trigger OnPostDataItem();
                begin
                    if not CurrReport.PREVIEW then
                        ServiceCrMemoCountPrinted.RUN("Service Cr.Memo Header");
                end;

                trigger OnPreDataItem();
                begin
                    NoOfLoops := ABS(NoOfCopies) + 1;
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
                end else
                    FormatAddr.Company(CompanyAddr, CompanyInfo);

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
                if "VAT Registration No." = '' then
                    VATNoText := ''
                else
                    VATNoText := FIELDCAPTION("VAT Registration No.");
                if "Currency Code" = '' then begin
                    GLSetup.TESTFIELD("LCY Code");
                    TotalText := STRSUBSTNO(Text001, GLSetup."LCY Code");
                    TotalInclVATText := STRSUBSTNO(Text002, GLSetup."LCY Code");
                    TotalExclVATText := STRSUBSTNO(Text007, GLSetup."LCY Code");
                end else begin
                    TotalText := STRSUBSTNO(Text001, "Currency Code");
                    TotalInclVATText := STRSUBSTNO(Text002, "Currency Code");
                    TotalExclVATText := STRSUBSTNO(Text007, "Currency Code");
                end;
                FormatAddr.ServiceCrMemoBillTo(CustAddr, "Service Cr.Memo Header");
                if "Applies-to Doc. No." = '' then
                    AppliedToText := ''
                else
                    AppliedToText := STRSUBSTNO(Text003, "Applies-to Doc. Type", "Applies-to Doc. No.");

                FormatAddr.ServiceCrMemoShipTo(ShipToAddr, CustAddr, "Service Cr.Memo Header");
                ShowShippingAddr := "Customer No." <> "Bill-to Customer No.";
                for i := 1 to ARRAYLEN(ShipToAddr) do
                    if ShipToAddr[i] <> CustAddr[i] then
                        ShowShippingAddr := true;
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

    trigger OnInitReport();
    begin
        GLSetup.GET;
        CompanyInfo.GET;
        ServiceSetup.GET;

        case ServiceSetup."Logo Position on Documents" of
            ServiceSetup."Logo Position on Documents"::"No Logo":
                ;
            ServiceSetup."Logo Position on Documents"::Left:
                CompanyInfo.CALCFIELDS(Picture);
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
    end;

    var
        Text000: TextConst ENU = 'Salesperson', ENA = 'Salesperson';
        Text001: TextConst ENU = 'Total %1', ENA = 'Total %1';
        Text002: TextConst ENU = 'Total %1 Incl. VAT', ENA = 'Total %1 Incl. GST';
        Text003: TextConst ENU = '(Applies to %1 %2)', ENA = '(Applies to %1 %2)';
        Text004: TextConst ENU = 'COPY', ENA = 'COPY';
        Text005: TextConst ENU = 'Service - Credit Memo %1', ENA = 'Service - CR/Adj Note %1';
        Text006: TextConst ENU = 'Page %1', ENA = 'Page %1';
        Text007: TextConst ENU = 'Total %1 Excl. VAT', ENA = 'Total %1 Excl. GST';
        GLSetup: Record "General Ledger Setup";
        SalesPurchPerson: Record "Salesperson/Purchaser";
        CompanyInfo: Record "Company Information";
        CompanyInfo1: Record "Company Information";
        CompanyInfo2: Record "Company Information";
        ServiceSetup: Record "Service Mgt. Setup";
        VATAmountLine: Record "VAT Amount Line" temporary;
        VATClause: Record "VAT Clause";
        DimSetEntry: Record "Dimension Set Entry";
        Language: Codeunit Language;
        ServiceShipmentBuffer: Record "Service Shipment Buffer" temporary;
        RespCenter: Record "Responsibility Center";
        ServiceCrMemoCountPrinted: Codeunit "Service Cr. Memo-Printed";
        FormatAddr: Codeunit "Format Address";
        CustAddr: array[8] of Text[50];
        ShipToAddr: array[8] of Text[50];
        CompanyAddr: array[8] of Text[50];
        SalesPersonText: Text[30];
        VATNoText: Text[80];
        ReferenceText: Text[80];
        AppliedToText: Text[40];
        TotalText: Text[50];
        TotalExclVATText: Text[50];
        TotalInclVATText: Text[50];
        MoreLines: Boolean;
        NoOfCopies: Integer;
        NoOfLoops: Integer;
        OutputNo: Integer;
        TypeInt: Integer;
        CopyText: Text[30];
        ShowShippingAddr: Boolean;
        i: Integer;
        DimText: Text[120];
        ShowInternalInfo: Boolean;
        FirstValueEntryNo: Integer;
        PostedReceiptDate: Date;
        NextEntryNo: Integer;
        TotalAmount: Decimal;
        TotalAmountInclVAT: Decimal;
        TotalInvDiscAmount: Decimal;
        TotalLineAmount: Decimal;
        DimTxtArrLength: Integer;
        DimTxtArr: array[500] of Text[50];
        SubtotalCaptionLbl: TextConst ENU = 'Subtotal', ENA = 'Subtotal';
        PaymentDiscountonVATCaptionLbl: TextConst ENU = 'Payment Discount on VAT', ENA = 'Payment Discount on GST';
        UnitPriceCaptionLbl: TextConst ENU = 'Unit Price', ENA = 'Unit Price';
        AmountCaptionLbl: TextConst ENU = 'Amount', ENA = 'Amount';
        PostedReceiptDateCaptionLbl: TextConst ENU = 'Posted Return Receipt Date', ENA = 'Posted Return Receipt Date';
        ServiceCrMemoLineLineDiscountCaptionLbl: TextConst ENU = 'Disc. %', ENA = 'Disc. %';
        CompanyInfoPhoneNoCaptionLbl: TextConst ENU = 'Phone No.', ENA = 'Phone No.';
        CompanyInfoFaxNoCaptionLbl: TextConst ENU = 'Fax No.', ENA = 'Fax No.';
        CompanyInfoVATRegistrationNoCaptionLbl: TextConst ENU = 'VAT Reg. No.', ENA = 'Exempt. Cert. No.';
        CompanyInfoGiroNoCaptionLbl: TextConst ENU = 'Giro No.', ENA = 'Giro No.';
        CompanyInfoBankNameCaptionLbl: TextConst ENU = 'Bank', ENA = 'Bank';
        CompanyInfoBankAccountNoCaptionLbl: TextConst ENU = 'Account No.', ENA = 'Account No.';
        ServiceCrMemoHeaderNoCaptionLbl: TextConst ENU = 'Credit Memo No.', ENA = 'CR/Adj Note No.';
        ServiceCrMemoHeaderPostingDateCaptionLbl: TextConst ENU = 'Posting Date', ENA = 'Posting Date';
        HeaderDimensionsCaptionLbl: TextConst ENU = 'Header Dimensions', ENA = 'Header Dimensions';
        ReturnReceiptCaptionLbl: TextConst ENU = 'Return Receipt', ENA = 'Return Receipt';
        LineDimensionsCaptionLbl: TextConst ENU = 'Line Dimensions', ENA = 'Line Dimensions';
        VATClausesCap: TextConst ENU = 'VAT Clause', ENA = 'GST Clause';
        VATAmountLineVATCaptionLbl: TextConst ENU = 'VAT %', ENA = 'GST %';
        VATBaseCaptionLbl: TextConst ENU = 'VAT Base', ENA = 'GST Base';
        VATAmountLineVATAmnCaptionLbl: TextConst ENU = 'VAT Amount', ENA = 'GST Amount';
        VATAmountSpecificationCaptionLbl: TextConst ENU = 'VAT Amount Specification', ENA = 'GST Amount Specification';
        VATAmountLineVATIdentifierCaptionLbl: TextConst ENU = 'VAT Identifier', ENA = 'GST Identifier';
        VATAmountLineInvDiscBaseAmtCaptionLbl: TextConst ENU = 'Inv. Disc. Base Amount', ENA = 'Inv. Disc. Base Amount';
        VATAmountLineLineAmntCaptionLbl: TextConst ENU = 'Line Amount', ENA = 'Line Amount';
        TotalCaptionLbl: TextConst ENU = 'Total', ENA = 'Total';
        ShiptoAddressCaptionLbl: TextConst ENU = 'Ship-to Address', ENA = 'Ship-to Address';
        InvDiscountAmountCaptionLbl: TextConst ENU = 'Invoice Discount Amount', ENA = 'Invoice Discount Amount';

    procedure FindPostedShipmentDate(): Date;
    var
        ServiceShipmentBuffer2: Record "Service Shipment Buffer" temporary;
    begin
        NextEntryNo := 1;

        case "Service Cr.Memo Line".Type of
            "Service Cr.Memo Line".Type::Item:
                GenerateBufferFromValueEntry("Service Cr.Memo Line");
            "Service Cr.Memo Line".Type::" ":
                exit(0D);
        end;

        ServiceShipmentBuffer.RESET;
        ServiceShipmentBuffer.SETRANGE("Document No.", "Service Cr.Memo Line"."Document No.");
        ServiceShipmentBuffer.SETRANGE("Line No.", "Service Cr.Memo Line"."Line No.");

        if ServiceShipmentBuffer.FIND('-') then begin
            ServiceShipmentBuffer2 := ServiceShipmentBuffer;
            if ServiceShipmentBuffer.NEXT = 0 then begin
                ServiceShipmentBuffer.GET(ServiceShipmentBuffer2."Document No.", ServiceShipmentBuffer2."Line No.", ServiceShipmentBuffer2.
                  "Entry No.");
                ServiceShipmentBuffer.DELETE;
                exit(ServiceShipmentBuffer2."Posting Date");
            end;
            ServiceShipmentBuffer.CALCSUMS(Quantity);
            if ServiceShipmentBuffer.Quantity <> "Service Cr.Memo Line".Quantity then begin
                ServiceShipmentBuffer.DELETEALL;
                exit("Service Cr.Memo Header"."Posting Date");
            end;
        end else
            exit("Service Cr.Memo Header"."Posting Date");
    end;

    procedure GenerateBufferFromValueEntry(ServiceCrMemoLine2: Record "Service Cr.Memo Line");
    var
        ValueEntry: Record "Value Entry";
        ItemLedgerEntry: Record "Item Ledger Entry";
        TotalQuantity: Decimal;
        Quantity: Decimal;
    begin
        TotalQuantity := ServiceCrMemoLine2."Quantity (Base)";
        ValueEntry.SETCURRENTKEY("Document No.");
        ValueEntry.SETRANGE("Document No.", ServiceCrMemoLine2."Document No.");
        ValueEntry.SETRANGE("Posting Date", "Service Cr.Memo Header"."Posting Date");
        ValueEntry.SETRANGE("Item Charge No.", '');
        ValueEntry.SETFILTER("Entry No.", '%1..', FirstValueEntryNo);
        if ValueEntry.FIND('-') then
            repeat
                if ItemLedgerEntry.GET(ValueEntry."Item Ledger Entry No.") then begin
                    if ServiceCrMemoLine2."Qty. per Unit of Measure" <> 0 then
                        Quantity := ValueEntry."Invoiced Quantity" / ServiceCrMemoLine2."Qty. per Unit of Measure"
                    else
                        Quantity := ValueEntry."Invoiced Quantity";
                    AddBufferEntry(
                      ServiceCrMemoLine2,
                      -Quantity,
                      ItemLedgerEntry."Posting Date");
                    TotalQuantity := TotalQuantity - ValueEntry."Invoiced Quantity";
                end;
                FirstValueEntryNo := ValueEntry."Entry No." + 1;
            until (ValueEntry.NEXT = 0) or (TotalQuantity = 0);
    end;

    procedure AddBufferEntry(ServiceCrMemoLine: Record "Service Cr.Memo Line"; QtyOnShipment: Decimal; PostingDate: Date);
    begin
        ServiceShipmentBuffer.SETRANGE("Document No.", ServiceCrMemoLine."Document No.");
        ServiceShipmentBuffer.SETRANGE("Line No.", ServiceCrMemoLine."Line No.");
        ServiceShipmentBuffer.SETRANGE("Posting Date", PostingDate);
        if ServiceShipmentBuffer.FIND('-') then begin
            ServiceShipmentBuffer.Quantity := ServiceShipmentBuffer.Quantity - QtyOnShipment;
            ServiceShipmentBuffer.MODIFY;
            exit;
        end;

        with ServiceShipmentBuffer do begin
            INIT;
            "Document No." := ServiceCrMemoLine."Document No.";
            "Line No." := ServiceCrMemoLine."Line No.";
            "Entry No." := NextEntryNo;
            Type := ServiceCrMemoLine.Type;
            "No." := ServiceCrMemoLine."No.";
            Quantity := -QtyOnShipment;
            "Posting Date" := PostingDate;
            INSERT;
            NextEntryNo := NextEntryNo + 1
        end;
    end;

    procedure FindDimTxt(DimSetID: Integer);
    var
        Separation: Text[5];
        i: Integer;
        TxtToAdd: Text[120];
        StartNewLine: Boolean;
    begin
        DimSetEntry.SETRANGE("Dimension Set ID", DimSetID);
        DimTxtArrLength := 0;
        for i := 1 to ARRAYLEN(DimTxtArr) do
            DimTxtArr[i] := '';
        if not DimSetEntry.FINDSET then
            exit;
        Separation := '; ';
        repeat
            TxtToAdd := DimSetEntry."Dimension Code" + ' - ' + DimSetEntry."Dimension Value Code";
            if DimTxtArrLength = 0 then
                StartNewLine := true
            else
                StartNewLine := STRLEN(DimTxtArr[DimTxtArrLength]) + STRLEN(Separation) + STRLEN(TxtToAdd) > MAXSTRLEN(DimTxtArr[1]);
            if StartNewLine then begin
                DimTxtArrLength += 1;
                DimTxtArr[DimTxtArrLength] := TxtToAdd
            end else
                DimTxtArr[DimTxtArrLength] := DimTxtArr[DimTxtArrLength] + Separation + TxtToAdd;
        until DimSetEntry.NEXT = 0;
    end;

    procedure InitializeRequest(NewShowInternalInfo: Boolean);
    begin
        ShowInternalInfo := NewShowInternalInfo;
    end;
}


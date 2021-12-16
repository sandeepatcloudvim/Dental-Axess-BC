report 50018 "DAX Invoice"
{
    // version NAVW17.10.00.36366,NAVAPAC7.10.00.36366,EC1.01

    // ECCL
    // -----
    //   09-07-19  EC1.00
    //   Add logo
    // 
    // ECSAK
    // -----
    //   18-10-2019  EC1.01
    //   OPX-0020746023 CAS-148220 Modified Surcharge % on Report
    DefaultLayout = RDLC;
    RDLCLayout = './DAX Invoice.rdl';

    CaptionML = ENU = 'Sales - Invoice',
                ENA = 'Sales - Invoice';
    Permissions = TableData "Sales Shipment Buffer" = rimd;

    dataset
    {
        dataitem("Sales Invoice Header"; "Sales Invoice Header")
        {
            DataItemTableView = SORTING("No.");
            RequestFilterFields = "No.", "Sell-to Customer No.", "No. Printed";
            RequestFilterHeadingML = ENU = 'Posted Sales Invoice',
                                     ENA = 'Posted Sales Invoice';
            column(No_SalesInvHeader; "No.")
            {
            }
            column(VATPercentCaption; VATPercentCaptionLbl)
            {
            }
            column(VATBaseCaption; VATBaseCaptionLbl)
            {
            }
            column(VATAmountCaption; VATAmountCaptionLbl)
            {
            }
            column(VATAmountSpecificationCaption; VATAmountSpecificationCaptionLbl)
            {
            }
            column(VATIdentifierCaption; VATIdentifierCaptionLbl)
            {
            }
            column(InvDiscBaseAmountCaption; InvDiscBaseAmountCaptionLbl)
            {
            }
            column(LineAmountCaption; LineAmountCaptionLbl)
            {
            }
            column(InvoiceDiscountAmountCaption; InvoiceDiscountAmountCaptionLbl)
            {
            }
            column(TotalCaption; TotalCaptionLbl)
            {
            }
            column(ExtOrder; "Sales Invoice Header"."External Document No.")
            {
            }
            column(CustNumber; "Sales Invoice Header"."Bill-to Customer No.")
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
                    column(CompInfo3Picture; CompanyInfo3.Picture)
                    {
                    }
                    column(CompInfo2Picture; CompanyInfo2.Picture)
                    {
                    }
                    column(CompInfo1Picture; CompanyInfo1.Picture)
                    {
                    }
                    column(CompInfoPicture; CompanyInfo.Picture)
                    {
                    }
                    column(DocCaptionCopyText; STRSUBSTNO(DocumentCaption, CopyText))
                    {
                    }
                    column(CustAddr1; CustAddr[1])
                    {
                    }
                    column(CompAddr1; CompanyAddr[1])
                    {
                    }
                    column(CustAddr2; CustAddr[2])
                    {
                    }
                    column(CompAddr2; CompanyAddr[2])
                    {
                    }
                    column(CustAddr3; CustAddr[3])
                    {
                    }
                    column(CompAddr3; CompanyAddr[3])
                    {
                    }
                    column(CustAddr4; CustAddr[4])
                    {
                    }
                    column(CompAddr4; CompanyAddr[4])
                    {
                    }
                    column(CustAddr5; CustAddr[5])
                    {
                    }
                    column(CompInfoPhoneNo; CompanyInfo."Phone No.")
                    {
                    }
                    column(CustAddr6; CustAddr[6])
                    {
                    }
                    column(ShipMethodDesc; ShipmentMethod.Description)
                    {
                    }
                    column(PaymentTermsDesc; PaymentTerms.Description)
                    {
                    }
                    column(CompInfoVATRegsNo; CompanyInfo."VAT Registration No.")
                    {
                    }
                    column(CompInfoHomePage; CompanyInfo."Home Page")
                    {
                    }
                    column(CompInfoEmail; CompanyInfo."E-Mail")
                    {
                    }
                    column(CompInfoGiroNo; CompanyInfo."Giro No.")
                    {
                    }
                    column(CompInfoBankName; CompanyInfo."Bank Name")
                    {
                    }
                    column(CompInfoBankAccNo; CompanyInfo."Bank Account No.")
                    {
                    }
                    column(BilltoCustNo_SalesInvHeader; "Sales Invoice Header"."Bill-to Customer No.")
                    {
                    }
                    column(PostingDt_SalesInvHeader; FORMAT("Sales Invoice Header"."Posting Date", 0, 4))
                    {
                    }
                    column(VATNoText; VATNoText)
                    {
                    }
                    column(VATRegsNo_SalesInvHeader; "Sales Invoice Header"."VAT Registration No.")
                    {
                    }
                    column(DueDate_SalesInvHeader; FORMAT("Sales Invoice Header"."Due Date", 0, 4))
                    {
                    }
                    column(SalesPersonText; SalesPersonText)
                    {
                    }
                    column(SalesPurchPersonName; SalesPurchPerson.Name)
                    {
                    }
                    column(SalesInvHeaderNo1; "Sales Invoice Header"."No.")
                    {
                    }
                    column(ReferenceText; ReferenceText)
                    {
                    }
                    column(SalesInvHeaderYourReference; "Sales Invoice Header"."Your Reference")
                    {
                    }
                    column(OrderNoText; OrderNoText)
                    {
                    }
                    column(OrderNo_SalesInvHdr; "Sales Invoice Header"."Order No.")
                    {
                    }
                    column(CustAddr7; CustAddr[7])
                    {
                    }
                    column(CustAddr8; CustAddr[8])
                    {
                    }
                    column(CompAddr5; CompanyAddr[5])
                    {
                    }
                    column(CompAddr6; CompanyAddr[6])
                    {
                    }
                    column(DocumentDate04_SalesInvHeader; FORMAT("Sales Invoice Header"."Document Date", 0, 4))
                    {
                    }
                    column(PricesIncludVAT_SalesInvHdr; "Sales Invoice Header"."Prices Including VAT")
                    {
                    }
                    column(OutputNo; OutputNo)
                    {
                    }
                    column(PricesInclVATYesNo; FORMAT("Sales Invoice Header"."Prices Including VAT"))
                    {
                    }
                    column(PageCaption; PageCaptionCap)
                    {
                    }
                    column(FormatAddrPrintBarCode1; FormatAddr.PrintBarCode(1))
                    {
                    }
                    column(CompInfoABNDivPartNo; CompanyInfo."ABN Division Part No.")
                    {
                    }
                    column(CompInfoABN; CompanyInfo.ABN)
                    {
                    }
                    column(DocumentDateCaption; DocumentDateCaptionLbl)
                    {
                    }
                    column(PhoneNoCaption; PhoneNoCaptionLbl)
                    {
                    }
                    column(VATRegNoCaption; VATRegNoCaptionLbl)
                    {
                    }
                    column(GiroNoCaption; GiroNoCaptionLbl)
                    {
                    }
                    column(BankNameCaption; BankNameCaptionLbl)
                    {
                    }
                    column(BankAccountNoCaption; BankAccountNoCaptionLbl)
                    {
                    }
                    column(DueDateCaption; DueDateCaptionLbl)
                    {
                    }
                    column(InvoiceNoCaption; InvoiceNoCaptionLbl)
                    {
                    }
                    column(PostingDateCaption; PostingDateCaptionLbl)
                    {
                    }
                    column(ABNCaption; ABNCaptionLbl)
                    {
                    }
                    column(DivisionPartNoCaption; DivisionPartNoCaptionLbl)
                    {
                    }
                    column(PaymentTermsDescriptionCaption; PaymentTermsDescriptionCaptionLbl)
                    {
                    }
                    column(ShipmentMethodDescriptionCaption; ShipmentMethodDescriptionCaptionLbl)
                    {
                    }
                    column(HomePageCaption; HomePageCaptionCap)
                    {
                    }
                    column(EmailIdCaption; EmailIdCaptionLbl)
                    {
                    }
                    column(BilltoCustNo_SalesInvHeaderCaption; "Sales Invoice Header".FIELDCAPTION("Bill-to Customer No."))
                    {
                    }
                    column(PricesIncludVAT_SalesInvHdrCaption; "Sales Invoice Header".FIELDCAPTION("Prices Including VAT"))
                    {
                    }
                    dataitem(DimensionLoop1; "Integer")
                    {
                        DataItemLinkReference = "Sales Invoice Header";
                        DataItemTableView = SORTING(Number) WHERE(Number = FILTER(1 ..));
                        column(DimText; DimText)
                        {
                        }
                        column(Number1_IntergerLine; DimensionLoop1.Number)
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
                    dataitem("Sales Invoice Line"; "Sales Invoice Line")
                    {
                        DataItemLink = "Document No." = FIELD("No.");
                        DataItemLinkReference = "Sales Invoice Header";
                        DataItemTableView = SORTING("Document No.", "Line No.");
                        column(LineAmt_SalesInvLine; "Line Amount")
                        {
                            AutoFormatExpression = "Sales Invoice Line".GetCurrencyCode;
                            AutoFormatType = 1;
                        }
                        column(Desc_SalesInvLine; Description)
                        {
                        }
                        column(No_SalesInvLine; "No.")
                        {
                        }
                        column(No_SalesInvLineCaption; FIELDCAPTION("No."))
                        {
                        }
                        column(Qty_SalesInvLine; Quantity)
                        {
                        }
                        column(UnitMeasure_SalesInvLine; "Unit of Measure")
                        {
                        }
                        column(UnitPrice_SalesInvLine; "Unit Price")
                        {
                            AutoFormatExpression = "Sales Invoice Line".GetCurrencyCode;
                            AutoFormatType = 2;
                        }
                        column(LineDiscount_SalesInvLine; "Line Discount %")
                        {
                        }
                        column(VATIdentifier_SalesInvLine; "VAT Identifier")
                        {
                        }
                        column(PostedShipDt_SalesInvLine; FORMAT(PostedShipmentDate))
                        {
                        }
                        column(SalesLineType_SalesInvLine; FORMAT("Sales Invoice Line".Type))
                        {
                        }
                        column(InvDiscountAmt_SalesInvLine; -"Inv. Discount Amount")
                        {
                            AutoFormatExpression = "Sales Invoice Line".GetCurrencyCode;
                            AutoFormatType = 1;
                        }
                        column(TotalSubTotal_SalesInvLine; TotalSubTotal)
                        {
                            AutoFormatExpression = "Sales Invoice Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(TotalInvDiscountAmt_SalesInvLine; TotalInvoiceDiscountAmount)
                        {
                            AutoFormatExpression = "Sales Invoice Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(TotalText_SalesInvLine; TotalText)
                        {
                        }
                        column(Amount__SalesInvLine; Amount)
                        {
                            AutoFormatExpression = "Sales Invoice Line".GetCurrencyCode;
                            AutoFormatType = 1;
                        }
                        column(TotalAmount__SalesInvLine; TotalAmount)
                        {
                            AutoFormatExpression = "Sales Invoice Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(AmtIncludVATAmt; "Amount Including VAT" - Amount)
                        {
                            AutoFormatExpression = "Sales Invoice Line".GetCurrencyCode;
                            AutoFormatType = 1;
                        }
                        column(AmtIncludVAT_SalesInvLine; "Amount Including VAT")
                        {
                            AutoFormatExpression = "Sales Invoice Line".GetCurrencyCode;
                            AutoFormatType = 1;
                        }
                        column(VATAmtLineVATAmtText; VATAmountLine.VATAmountText)
                        {
                        }
                        column(TotalExclVATText; TotalExclVATText)
                        {
                        }
                        column(TotalInclVATText; TotalInclVATText)
                        {
                        }
                        column(TotalAmtInclVAT; TotalAmountInclVAT)
                        {
                            AutoFormatExpression = "Sales Invoice Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(TotalAmtVAT; TotalAmountVAT)
                        {
                            AutoFormatExpression = "Sales Invoice Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATBaseDisc_SalesInvHdr; "Sales Invoice Header"."VAT Base Discount %")
                        {
                            AutoFormatType = 1;
                        }
                        column(TotalPaymentDisOnVAT; TotalPaymentDiscountOnVAT)
                        {
                            AutoFormatType = 1;
                        }
                        column(SalesInvHeaderCurrFactor; "Sales Invoice Header"."Currency Factor")
                        {
                        }
                        column(TotalExclVATTextLCY; TotalExclVATTextLCY)
                        {
                        }
                        column(TotalInclVATTextLCY; TotalInclVATTextLCY)
                        {
                        }
                        column(AmtIncLCYAmtLCY; AmountIncLCY - AmountLCY)
                        {
                            AutoFormatExpression = "Sales Invoice Line".GetCurrencyCode;
                            AutoFormatType = 1;
                        }
                        column(AmtIncLCY; AmountIncLCY)
                        {
                            AutoFormatExpression = "Sales Invoice Line".GetCurrencyCode;
                            AutoFormatType = 1;
                        }
                        column(AmtLCY; AmountLCY)
                        {
                            AutoFormatExpression = "Sales Invoice Line".GetCurrencyCode;
                            AutoFormatType = 1;
                        }
                        column(CurrLCY; CurrencyLCY)
                        {
                        }
                        column(CurrCode_SalesInvHeader; "Sales Invoice Header"."Currency Code")
                        {
                        }
                        column(AmtLangB1AmtLangB2; AmountLangB[1] + ' ' + AmountLangB[2])
                        {
                            AutoFormatType = 1;
                        }
                        column(AmtLangA1AmtLangA2; AmountLangA[1] + ' ' + AmountLangA[2])
                        {
                            AutoFormatType = 1;
                        }
                        column(AmtInWords; AmountInWords)
                        {
                        }
                        column(SalesInvLineLineNo; "Line No.")
                        {
                        }
                        column(UnitPriceCaption; UnitPriceCaptionLbl)
                        {
                        }
                        column(DiscountPercentCaption; DiscountPercentCaptionLbl)
                        {
                        }
                        column(AmountCaption; AmountCaptionLbl)
                        {
                        }
                        column(PostedShipmentDateCaption; PostedShipmentDateCaptionLbl)
                        {
                        }
                        column(InvDiscountAmountCaption; InvDiscountAmountCaptionLbl)
                        {
                        }
                        column(SubtotalCaption; SubtotalCaptionLbl)
                        {
                        }
                        column(PaymentDiscountonVATCaption; PaymentDiscountonVATCaptionLbl)
                        {
                        }
                        column(ExchangeRateCaption; ExchangeRateCaptionLbl)
                        {
                        }
                        column(Desc_SalesInvLineCaption; FIELDCAPTION(Description))
                        {
                        }
                        column(Qty_SalesInvLineCaption; FIELDCAPTION(Quantity))
                        {
                        }
                        column(UnitMeasure_SalesInvLineCaption; FIELDCAPTION("Unit of Measure"))
                        {
                        }
                        column(VATIdentifier_SalesInvLineCaption; FIELDCAPTION("VAT Identifier"))
                        {
                        }
                        dataitem("Item Ledger Entry"; "Item Ledger Entry")
                        {
                            DataItemLink = "Item No." = FIELD("No."), "Document No." = FIELD("Document No.");
                            column(LotNo; "Item Ledger Entry"."Lot No.")
                            {
                            }
                        }
                        dataitem("Sales Shipment Buffer"; "Integer")
                        {
                            DataItemTableView = SORTING(Number);
                            column(SalesShipBufferPostingDt; FORMAT(SalesShipmentBuffer."Posting Date"))
                            {
                            }
                            column(SalesShipBufferQty; SalesShipmentBuffer.Quantity)
                            {
                                DecimalPlaces = 0 : 5;
                            }
                            column(ShipmentCaption; ShipmentCaptionLbl)
                            {
                            }

                            trigger OnAfterGetRecord();
                            begin
                                if Number = 1 then
                                    SalesShipmentBuffer.FIND('-')
                                else
                                    SalesShipmentBuffer.NEXT;
                            end;

                            trigger OnPreDataItem();
                            begin
                                SalesShipmentBuffer.SETRANGE("Document No.", "Sales Invoice Line"."Document No.");
                                SalesShipmentBuffer.SETRANGE("Line No.", "Sales Invoice Line"."Line No.");

                                SETRANGE(Number, 1, SalesShipmentBuffer.COUNT);
                            end;
                        }
                        dataitem(DimensionLoop2; "Integer")
                        {
                            DataItemTableView = SORTING(Number) WHERE(Number = FILTER(1 ..));
                            column(DimTextCtrl82; DimText)
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

                                DimSetEntry2.SETRANGE("Dimension Set ID", "Sales Invoice Line"."Dimension Set ID");
                            end;
                        }
                        dataitem(AsmLoop; "Integer")
                        {
                            column(PostedAsmMeasureCode; GetUOMText(TempPostedAsmLine."Unit of Measure Code"))
                            {
                                //  DecimalPlaces = 0 : 5;

                            }
                            column(PostedAsmLineQty; TempPostedAsmLine.Quantity)
                            {
                                DecimalPlaces = 0 : 5;
                            }
                            column(PostedAsmLineVarCode; BlanksForIndent + TempPostedAsmLine."Variant Code")
                            {
                                //  DecimalPlaces = 0 : 5;
                            }
                            column(TempPostedAsmLineDesc; BlanksForIndent + TempPostedAsmLine.Description)
                            {
                            }
                            column(PostedAsmLineNo; BlanksForIndent + TempPostedAsmLine."No.")
                            {
                            }

                            trigger OnAfterGetRecord();
                            var
                                ItemTranslation: Record "Item Translation";
                            begin
                                if Number = 1 then
                                    TempPostedAsmLine.FINDSET
                                else
                                    TempPostedAsmLine.NEXT;

                                if ItemTranslation.GET(TempPostedAsmLine."No.",
                                     TempPostedAsmLine."Variant Code",
                                     "Sales Invoice Header"."Language Code")
                                then
                                    TempPostedAsmLine.Description := ItemTranslation.Description;
                            end;

                            trigger OnPreDataItem();
                            begin
                                CLEAR(TempPostedAsmLine);
                                if not DisplayAssemblyInformation then
                                    CurrReport.BREAK;
                                CollectAsmInformation;
                                CLEAR(TempPostedAsmLine);
                                SETRANGE(Number, 1, TempPostedAsmLine.COUNT);
                            end;
                        }

                        trigger OnAfterGetRecord();
                        begin
                            PostedShipmentDate := 0D;
                            if Quantity <> 0 then
                                PostedShipmentDate := FindPostedShipmentDate;

                            if (Type = Type::"G/L Account") and (not ShowInternalInfo) then
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
                            VATAmountLine.InsertLine;

                            TotalSubTotal += "Line Amount";
                            TotalInvoiceDiscountAmount -= "Inv. Discount Amount";
                            TotalAmount += Amount;
                            TotalAmountVAT += "Amount Including VAT" - Amount;
                            TotalAmountInclVAT += "Amount Including VAT";
                            TotalPaymentDiscountOnVAT += -("Line Amount" - "Inv. Discount Amount" - "Amount Including VAT");
                        end;

                        trigger OnPreDataItem();
                        begin
                            VATAmountLine.DELETEALL;
                            SalesShipmentBuffer.RESET;
                            SalesShipmentBuffer.DELETEALL;
                            FirstValueEntryNo := 0;
                            MoreLines := FIND('+');
                            while MoreLines and (Description = '') and ("No." = '') and (Quantity = 0) and (Amount = 0) do
                                MoreLines := NEXT(-1) <> 0;
                            if not MoreLines then
                                CurrReport.BREAK;
                            SETRANGE("Line No.", 0, "Line No.");
                            CurrReport.CREATETOTALS("Line Amount", Amount, "Amount Including VAT", "Inv. Discount Amount");
                        end;
                    }
                    dataitem(VATCounter; "Integer")
                    {
                        DataItemTableView = SORTING(Number);
                        column(VATBase_VATAmtLine; VATAmountLine."VAT Base")
                        {
                            AutoFormatExpression = "Sales Invoice Line".GetCurrencyCode;
                            AutoFormatType = 1;
                        }
                        column(VATAmt_VATAmtLine; VATAmountLine."VAT Amount")
                        {
                            AutoFormatExpression = "Sales Invoice Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(LineAmt_VATAmtLine; VATAmountLine."Line Amount")
                        {
                            AutoFormatExpression = "Sales Invoice Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(InvDiscBaseAmt_VATAmtLine; VATAmountLine."Inv. Disc. Base Amount")
                        {
                            AutoFormatExpression = "Sales Invoice Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(InvDiscAmt_VATAmtLine; VATAmountLine."Invoice Discount Amount")
                        {
                            AutoFormatExpression = "Sales Invoice Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VAT_VATAmtLine; VATAmountLine."VAT %")
                        {
                            DecimalPlaces = 0 : 5;
                        }
                        column(VATIdentifier_VATAmtLine; VATAmountLine."VAT Identifier")
                        {
                        }

                        trigger OnAfterGetRecord();
                        begin
                            VATAmountLine.GetLine(Number);
                        end;

                        trigger OnPreDataItem();
                        begin
                            SETRANGE(Number, 1, VATAmountLine.COUNT);
                            CurrReport.CREATETOTALS(
                              VATAmountLine."Line Amount", VATAmountLine."Inv. Disc. Base Amount",
                              VATAmountLine."Invoice Discount Amount", VATAmountLine."VAT Base", VATAmountLine."VAT Amount");
                        end;
                    }
                    dataitem(VatCounterLCY; "Integer")
                    {
                        DataItemTableView = SORTING(Number);
                        column(VALSpecLCYHdr; VALSpecLCYHeader)
                        {
                        }
                        column(VALExchRate; VALExchRate)
                        {
                        }
                        column(VALVATBaseLCY; VALVATBaseLCY)
                        {
                            AutoFormatType = 1;
                        }
                        column(VALVATAmtLCY; VALVATAmountLCY)
                        {
                            AutoFormatType = 1;
                        }
                        column(VATCtrl164_VATAmtLine; VATAmountLine."VAT %")
                        {
                            DecimalPlaces = 0 : 5;
                        }
                        column(VATIndCtrl_VATAmtLine; VATAmountLine."VAT Identifier")
                        {
                        }

                        trigger OnAfterGetRecord();
                        begin
                            VATAmountLine.GetLine(Number);
                            VALVATBaseLCY :=
                              VATAmountLine.GetBaseLCY(
                                "Sales Invoice Header"."Posting Date", "Sales Invoice Header"."Currency Code",
                                "Sales Invoice Header"."Currency Factor");
                            VALVATAmountLCY :=
                              VATAmountLine.GetAmountLCY(
                                "Sales Invoice Header"."Posting Date", "Sales Invoice Header"."Currency Code",
                                "Sales Invoice Header"."Currency Factor");
                        end;

                        trigger OnPreDataItem();
                        begin
                            if (not GLSetup."Print VAT specification in LCY") or
                               ("Sales Invoice Header"."Currency Code" = '')
                            then
                                CurrReport.BREAK;

                            SETRANGE(Number, 1, VATAmountLine.COUNT);
                            CurrReport.CREATETOTALS(VALVATBaseLCY, VALVATAmountLCY);

                            if GLSetup."LCY Code" = '' then
                                VALSpecLCYHeader := Text007 + Text008
                            else
                                VALSpecLCYHeader := Text007 + FORMAT(GLSetup."LCY Code");

                            CurrExchRate.FindCurrency("Sales Invoice Header"."Posting Date", "Sales Invoice Header"."Currency Code", 1);
                            CalculatedExchRate := ROUND(1 / "Sales Invoice Header"."Currency Factor" * CurrExchRate."Exchange Rate Amount", 0.000001);
                            VALExchRate := STRSUBSTNO(Text009, CalculatedExchRate, CurrExchRate."Exchange Rate Amount");
                        end;
                    }
                    dataitem(Total; "Integer")
                    {
                        DataItemTableView = SORTING(Number) WHERE(Number = CONST(1));
                    }
                    dataitem(Total2; "Integer")
                    {
                        DataItemTableView = SORTING(Number) WHERE(Number = CONST(1));
                        column(SelltoCustomerNo_SalesInvHeader; "Sales Invoice Header"."Sell-to Customer No.")
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
                        column(SelltoCustomerNo_SalesInvHeaderCaption; "Sales Invoice Header".FIELDCAPTION("Sell-to Customer No."))
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
                    if Number > 1 then begin
                        CopyText := Text003;
                        OutputNo += 1;
                    end;
                    CurrReport.PAGENO := 1;

                    TotalSubTotal := 0;
                    TotalInvoiceDiscountAmount := 0;
                    TotalAmount := 0;
                    TotalAmountVAT := 0;
                    TotalAmountInclVAT := 0;
                    TotalPaymentDiscountOnVAT := 0;
                end;

                trigger OnPostDataItem();
                begin
                    if not CurrReport.PREVIEW then
                        SalesInvCountPrinted.RUN("Sales Invoice Header");
                end;

                trigger OnPreDataItem();
                begin
                    NoOfLoops := ABS(NoOfCopies) + Cust."Invoice Copies" + 1;
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

                if RespCenter.GET("Responsibility Center") then begin
                    FormatAddr.RespCenter(CompanyAddr, RespCenter);
                    CompanyInfo."Phone No." := RespCenter."Phone No.";
                    CompanyInfo."Fax No." := RespCenter."Fax No.";
                end else begin
                    FormatAddr.Company(CompanyAddr, CompanyInfo);
                end;

                DimSetEntry1.SETRANGE("Dimension Set ID", "Dimension Set ID");

                if "Order No." = '' then
                    OrderNoText := ''
                else
                    OrderNoText := FIELDCAPTION("Order No.");
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
                    TotalExclVATText := STRSUBSTNO(Text006, GLSetup."LCY Code");
                end else begin
                    TotalText := STRSUBSTNO(Text001, "Currency Code");
                    TotalInclVATText := STRSUBSTNO(Text002, "Currency Code");
                    TotalExclVATText := STRSUBSTNO(Text006, "Currency Code");
                    TotalInclVATTextLCY := STRSUBSTNO(Text002, GLSetup."LCY Code");
                    TotalExclVATTextLCY := STRSUBSTNO(Text006, GLSetup."LCY Code");
                end;
                FormatAddr.SalesInvBillTo(CustAddr, "Sales Invoice Header");
                if not Cust.GET("Bill-to Customer No.") then
                    CLEAR(Cust);

                if "Payment Terms Code" = '' then
                    PaymentTerms.INIT
                else begin
                    PaymentTerms.GET("Payment Terms Code");
                    PaymentTerms.TranslateDescription(PaymentTerms, "Language Code");
                end;
                if "Shipment Method Code" = '' then
                    ShipmentMethod.INIT
                else begin
                    ShipmentMethod.GET("Shipment Method Code");
                    ShipmentMethod.TranslateDescription(ShipmentMethod, "Language Code");
                end;
                FormatAddr.SalesInvShipTo(ShipToAddr, CustAddr, "Sales Invoice Header");
                ShowShippingAddr := "Sell-to Customer No." <> "Bill-to Customer No.";
                for i := 1 to ARRAYLEN(ShipToAddr) do
                    if ShipToAddr[i] <> CustAddr[i] then
                        ShowShippingAddr := true;

                CALCFIELDS(Amount);
                CALCFIELDS("Amount Including VAT");

                AmountLCY :=
                  ROUND(
                    CurrExchRate.ExchangeAmtFCYToLCY(
                      WORKDATE, "Currency Code", Amount, "Currency Factor"));
                AmountIncLCY :=
                  ROUND(
                    CurrExchRate.ExchangeAmtFCYToLCY(
                      WORKDATE, "Currency Code", "Amount Including VAT", "Currency Factor"));
                SalesLine.InitTextVariable;
                SalesLine.FormatNoText(AmountLangA, "Amount Including VAT", "Currency Code");
                if ShowTHFormatting then begin
                    SalesLine.InitTextVariableTH;
                    SalesLine.FormatNoTextTH(AmountLangB, "Amount Including VAT", "Sales Invoice Header"."Currency Code");
                end else begin
                    AmountLangB[1] := '';
                    AmountLangB[2] := '';
                end;

                if LogInteraction then
                    if not CurrReport.PREVIEW then begin
                        if "Bill-to Contact No." <> '' then
                            SegManagement.LogDocument(
                              4, "No.", 0, 0, DATABASE::Contact, "Bill-to Contact No.", "Salesperson Code",
                              "Campaign No.", "Posting Description", '')
                        else
                            SegManagement.LogDocument(
                              4, "No.", 0, 0, DATABASE::Customer, "Bill-to Customer No.", "Salesperson Code",
                              "Campaign No.", "Posting Description", '');
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
                    field(ShowTotalInWords; AmountInWords)
                    {
                        ApplicationArea = All;
                        CaptionML = ENU = 'Show Total In Words',
                                    ENA = 'Show Total In Words';
                    }
                    field(ShowLCYForFCY; CurrencyLCY)
                    {
                        ApplicationArea = All;
                        CaptionML = ENU = 'Show LCY for FCY',
                                    ENA = 'Show LCY for FCY';
                    }
                    field(ShowTHAmountInWords; ShowTHFormatting)
                    {
                        ApplicationArea = All;
                        CaptionML = ENU = 'Show TH Amount In Words',
                                    ENA = 'Show TH Amount In Words';
                    }
                    field(DisplayAsmInformation; DisplayAssemblyInformation)
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
        GLSetup.GET;
        CompanyInfo.GET;
        SalesSetup.GET;
        CompanyInfo.VerifyAndSetPaymentInfo;
        case SalesSetup."Logo Position on Documents" of
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
        Text001: TextConst ENU = 'Total %1', ENA = 'Total %1';
        Text002: TextConst ENU = 'Total %1 Incl. GST', ENA = 'Total %1 Incl. GST';
        Text003: TextConst ENU = 'COPY', ENA = 'COPY';
        Text004: TextConst ENU = 'Sales - Invoice %1', ENA = 'Sales - Invoice %1';
        PageCaptionCap: TextConst ENU = 'Page %1 of %2', ENA = 'Page %1 of %2';
        Text006: TextConst ENU = 'Total %1 Excl. GST', ENA = 'Total %1 Excl. GST';
        GLSetup: Record "General Ledger Setup";
        ShipmentMethod: Record "Shipment Method";
        PaymentTerms: Record "Payment Terms";
        SalesPurchPerson: Record "Salesperson/Purchaser";
        CompanyInfo: Record "Company Information";
        CompanyInfo1: Record "Company Information";
        CompanyInfo2: Record "Company Information";
        CompanyInfo3: Record "Company Information";
        SalesSetup: Record "Sales & Receivables Setup";
        Cust: Record Customer;
        VATAmountLine: Record "VAT Amount Line" temporary;
        DimSetEntry1: Record "Dimension Set Entry";
        DimSetEntry2: Record "Dimension Set Entry";
        RespCenter: Record "Responsibility Center";
        Language: Codeunit Language;
        CurrExchRate: Record "Currency Exchange Rate";
        TempPostedAsmLine: Record "Posted Assembly Line" temporary;
        SalesInvCountPrinted: Codeunit "Sales Inv.-Printed";
        FormatAddr: Codeunit "Format Address";
        SegManagement: Codeunit SegManagement;
        SalesShipmentBuffer: Record "Sales Shipment Buffer" temporary;
        PostedShipmentDate: Date;
        CustAddr: array[8] of Text[50];
        ShipToAddr: array[8] of Text[50];
        CompanyAddr: array[8] of Text[50];
        OrderNoText: Text[80];
        SalesPersonText: Text[30];
        VATNoText: Text[80];
        ReferenceText: Text[80];
        TotalText: Text[50];
        TotalExclVATText: Text[50];
        TotalInclVATText: Text[50];
        MoreLines: Boolean;
        NoOfCopies: Integer;
        NoOfLoops: Integer;
        CopyText: Text[30];
        ShowShippingAddr: Boolean;
        i: Integer;
        NextEntryNo: Integer;
        FirstValueEntryNo: Integer;
        DimText: Text[120];
        OldDimText: Text[75];
        ShowInternalInfo: Boolean;
        Continue: Boolean;
        LogInteraction: Boolean;
        VALVATBaseLCY: Decimal;
        VALVATAmountLCY: Decimal;
        VALSpecLCYHeader: Text[80];
        Text007: TextConst ENU = 'GST Amount Specification in ', ENA = 'GST Amount Specification in ';
        Text008: TextConst ENU = 'Local Currency', ENA = 'Local Currency';
        VALExchRate: Text[50];
        Text009: TextConst ENU = 'Exchange rate: %1/%2', ENA = 'Exchange rate: %1/%2';
        CalculatedExchRate: Decimal;
        Text010: TextConst ENU = 'Sales - Prepayment Invoice %1', ENA = 'Sales - Prepayment Invoice %1';
        OutputNo: Integer;
        TotalSubTotal: Decimal;
        TotalAmount: Decimal;
        TotalAmountInclVAT: Decimal;
        TotalAmountVAT: Decimal;
        TotalInvoiceDiscountAmount: Decimal;
        TotalPaymentDiscountOnVAT: Decimal;
        TotalInclVATTextLCY: Text[50];
        TotalExclVATTextLCY: Text[50];
        AmountLCY: Decimal;
        AmountIncLCY: Decimal;
        CurrencyLCY: Boolean;
        AmountInWords: Boolean;
        AmountLangA: array[2] of Text[80];
        AmountLangB: array[2] of Text[80];
        SalesLine: Record "Sales Line";
        ShowTHFormatting: Boolean;
        [InDataSet]
        LogInteractionEnable: Boolean;
        DisplayAssemblyInformation: Boolean;
        VATPercentCaptionLbl: TextConst ENU = 'GST %', ENA = 'GST %';
        VATBaseCaptionLbl: TextConst ENU = 'GST Base', ENA = 'GST Base';
        VATAmountCaptionLbl: TextConst ENU = 'GST Amount', ENA = 'GST Amount';
        VATAmountSpecificationCaptionLbl: TextConst ENU = 'GST Amount Specification', ENA = 'GST Amount Specification';
        VATIdentifierCaptionLbl: TextConst ENU = 'GST Identifier', ENA = 'GST Identifier';
        InvDiscBaseAmountCaptionLbl: TextConst ENU = 'Invoice Discount Base Amount', ENA = 'Invoice Discount Base Amount';
        LineAmountCaptionLbl: TextConst ENU = 'Line Amount', ENA = 'Line Amount';
        InvoiceDiscountAmountCaptionLbl: TextConst ENU = 'Invoice Discount Amount', ENA = 'Invoice Discount Amount';
        TotalCaptionLbl: TextConst ENU = 'Total', ENA = 'Total';
        DocumentDateCaptionLbl: TextConst ENU = 'Document Date', ENA = 'Document Date';
        PhoneNoCaptionLbl: TextConst ENU = 'Phone No.', ENA = 'Phone No.';
        VATRegNoCaptionLbl: TextConst ENU = 'GST Registration No.', ENA = 'Exemption Certificate No.';
        GiroNoCaptionLbl: TextConst ENU = 'Giro No.', ENA = 'Giro No.';
        BankNameCaptionLbl: TextConst ENU = 'Bank', ENA = 'Bank';
        BankAccountNoCaptionLbl: TextConst ENU = 'Account No.', ENA = 'Account No.';
        DueDateCaptionLbl: TextConst ENU = 'Due Date', ENA = 'Due Date';
        InvoiceNoCaptionLbl: TextConst ENU = 'Invoice No.', ENA = 'Invoice No.';
        PostingDateCaptionLbl: TextConst ENU = 'Posting Date', ENA = 'Posting Date';
        ABNCaptionLbl: TextConst ENU = 'ABN', ENA = 'ABN';
        DivisionPartNoCaptionLbl: TextConst ENU = 'Division Part No.', ENA = 'Division Part No.';
        PaymentTermsDescriptionCaptionLbl: TextConst ENU = 'Payment Terms', ENA = 'Payment Terms';
        ShipmentMethodDescriptionCaptionLbl: TextConst ENU = 'Shipment Method', ENA = 'Shipment Method';
        HomePageCaptionCap: TextConst ENU = 'Home Page', ENA = 'Home Page';
        EmailIdCaptionLbl: TextConst ENU = 'E-Mail', ENA = 'E-Mail';
        HeaderDimensionsCaptionLbl: TextConst ENU = 'Header Dimensions', ENA = 'Header Dimensions';
        UnitPriceCaptionLbl: TextConst ENU = 'Unit Price', ENA = 'Unit Price';
        DiscountPercentCaptionLbl: TextConst ENU = 'Discount%', ENA = 'Discount%';
        AmountCaptionLbl: TextConst ENU = 'Amount', ENA = 'Amount';
        PostedShipmentDateCaptionLbl: TextConst ENU = 'Posted Shipment Date', ENA = 'Posted Shipment Date';
        InvDiscountAmountCaptionLbl: TextConst ENU = 'Invoice Discount Amount', ENA = 'Invoice Discount Amount';
        SubtotalCaptionLbl: TextConst ENU = 'Subtotal', ENA = 'Subtotal';
        PaymentDiscountonVATCaptionLbl: TextConst ENU = 'Payment Discount on GST', ENA = 'Payment Discount on GST';
        ExchangeRateCaptionLbl: TextConst ENU = 'Exchange Rate', ENA = 'Exchange Rate';
        ShipmentCaptionLbl: TextConst ENU = 'Shipment', ENA = 'Shipment';
        LineDimensionsCaptionLbl: TextConst ENU = 'Line Dimensions', ENA = 'Line Dimensions';
        ShiptoAddressCaptionLbl: TextConst ENU = 'Ship-to Address', ENA = 'Ship-to Address';
        CompInfoLogo: Record "Company Information";

    procedure InitLogInteraction();
    begin
        LogInteraction := SegManagement.FindInteractTmplCode(4) <> '';
    end;

    procedure FindPostedShipmentDate(): Date;
    var
        SalesShipmentHeader: Record "Sales Shipment Header";
        SalesShipmentBuffer2: Record "Sales Shipment Buffer" temporary;
    begin
        NextEntryNo := 1;
        if "Sales Invoice Line"."Shipment No." <> '' then
            if SalesShipmentHeader.GET("Sales Invoice Line"."Shipment No.") then
                exit(SalesShipmentHeader."Posting Date");

        if "Sales Invoice Header"."Order No." = '' then
            exit("Sales Invoice Header"."Posting Date");

        case "Sales Invoice Line".Type of
            "Sales Invoice Line".Type::Item:
                GenerateBufferFromValueEntry("Sales Invoice Line");
            "Sales Invoice Line".Type::"G/L Account", "Sales Invoice Line".Type::Resource,
          "Sales Invoice Line".Type::"Charge (Item)", "Sales Invoice Line".Type::"Fixed Asset":
                GenerateBufferFromShipment("Sales Invoice Line");
            "Sales Invoice Line".Type::" ":
                exit(0D);
        end;

        SalesShipmentBuffer.RESET;
        SalesShipmentBuffer.SETRANGE("Document No.", "Sales Invoice Line"."Document No.");
        SalesShipmentBuffer.SETRANGE("Line No.", "Sales Invoice Line"."Line No.");
        if SalesShipmentBuffer.FIND('-') then begin
            SalesShipmentBuffer2 := SalesShipmentBuffer;
            if SalesShipmentBuffer.NEXT = 0 then begin
                SalesShipmentBuffer.GET(
                  SalesShipmentBuffer2."Document No.", SalesShipmentBuffer2."Line No.", SalesShipmentBuffer2."Entry No.");
                SalesShipmentBuffer.DELETE;
                exit(SalesShipmentBuffer2."Posting Date");
            end;
            SalesShipmentBuffer.CALCSUMS(Quantity);
            if SalesShipmentBuffer.Quantity <> "Sales Invoice Line".Quantity then begin
                SalesShipmentBuffer.DELETEALL;
                exit("Sales Invoice Header"."Posting Date");
            end;
        end else
            exit("Sales Invoice Header"."Posting Date");
    end;

    procedure GenerateBufferFromValueEntry(SalesInvoiceLine2: Record "Sales Invoice Line");
    var
        ValueEntry: Record "Value Entry";
        ItemLedgerEntry: Record "Item Ledger Entry";
        TotalQuantity: Decimal;
        Quantity: Decimal;
    begin
        TotalQuantity := SalesInvoiceLine2."Quantity (Base)";
        ValueEntry.SETCURRENTKEY("Document No.");
        ValueEntry.SETRANGE("Document No.", SalesInvoiceLine2."Document No.");
        ValueEntry.SETRANGE("Posting Date", "Sales Invoice Header"."Posting Date");
        ValueEntry.SETRANGE("Item Charge No.", '');
        ValueEntry.SETFILTER("Entry No.", '%1..', FirstValueEntryNo);
        if ValueEntry.FIND('-') then
            repeat
                if ItemLedgerEntry.GET(ValueEntry."Item Ledger Entry No.") then begin
                    if SalesInvoiceLine2."Qty. per Unit of Measure" <> 0 then
                        Quantity := ValueEntry."Invoiced Quantity" / SalesInvoiceLine2."Qty. per Unit of Measure"
                    else
                        Quantity := ValueEntry."Invoiced Quantity";
                    AddBufferEntry(
                      SalesInvoiceLine2,
                      -Quantity,
                      ItemLedgerEntry."Posting Date");
                    TotalQuantity := TotalQuantity + ValueEntry."Invoiced Quantity";
                end;
                FirstValueEntryNo := ValueEntry."Entry No." + 1;
            until (ValueEntry.NEXT = 0) or (TotalQuantity = 0);
    end;

    procedure GenerateBufferFromShipment(SalesInvoiceLine: Record "Sales Invoice Line");
    var
        SalesInvoiceHeader: Record "Sales Invoice Header";
        SalesInvoiceLine2: Record "Sales Invoice Line";
        SalesShipmentHeader: Record "Sales Shipment Header";
        SalesShipmentLine: Record "Sales Shipment Line";
        TotalQuantity: Decimal;
        Quantity: Decimal;
    begin
        TotalQuantity := 0;
        SalesInvoiceHeader.SETCURRENTKEY("Order No.");
        SalesInvoiceHeader.SETFILTER("No.", '..%1', "Sales Invoice Header"."No.");
        SalesInvoiceHeader.SETRANGE("Order No.", "Sales Invoice Header"."Order No.");
        if SalesInvoiceHeader.FIND('-') then
            repeat
                SalesInvoiceLine2.SETRANGE("Document No.", SalesInvoiceHeader."No.");
                SalesInvoiceLine2.SETRANGE("Line No.", SalesInvoiceLine."Line No.");
                SalesInvoiceLine2.SETRANGE(Type, SalesInvoiceLine.Type);
                SalesInvoiceLine2.SETRANGE("No.", SalesInvoiceLine."No.");
                SalesInvoiceLine2.SETRANGE("Unit of Measure Code", SalesInvoiceLine."Unit of Measure Code");
                if SalesInvoiceLine2.FIND('-') then
                    repeat
                        TotalQuantity := TotalQuantity + SalesInvoiceLine2.Quantity;
                    until SalesInvoiceLine2.NEXT = 0;
            until SalesInvoiceHeader.NEXT = 0;

        SalesShipmentLine.SETCURRENTKEY("Order No.", "Order Line No.");
        SalesShipmentLine.SETRANGE("Order No.", "Sales Invoice Header"."Order No.");
        SalesShipmentLine.SETRANGE("Order Line No.", SalesInvoiceLine."Line No.");
        SalesShipmentLine.SETRANGE("Line No.", SalesInvoiceLine."Line No.");
        SalesShipmentLine.SETRANGE(Type, SalesInvoiceLine.Type);
        SalesShipmentLine.SETRANGE("No.", SalesInvoiceLine."No.");
        SalesShipmentLine.SETRANGE("Unit of Measure Code", SalesInvoiceLine."Unit of Measure Code");
        SalesShipmentLine.SETFILTER(Quantity, '<>%1', 0);

        if SalesShipmentLine.FIND('-') then
            repeat
                if "Sales Invoice Header"."Get Shipment Used" then
                    CorrectShipment(SalesShipmentLine);
                if ABS(SalesShipmentLine.Quantity) <= ABS(TotalQuantity - SalesInvoiceLine.Quantity) then
                    TotalQuantity := TotalQuantity - SalesShipmentLine.Quantity
                else begin
                    if ABS(SalesShipmentLine.Quantity) > ABS(TotalQuantity) then
                        SalesShipmentLine.Quantity := TotalQuantity;
                    Quantity :=
                      SalesShipmentLine.Quantity - (TotalQuantity - SalesInvoiceLine.Quantity);

                    TotalQuantity := TotalQuantity - SalesShipmentLine.Quantity;
                    SalesInvoiceLine.Quantity := SalesInvoiceLine.Quantity - Quantity;

                    if SalesShipmentHeader.GET(SalesShipmentLine."Document No.") then begin
                        AddBufferEntry(
                          SalesInvoiceLine,
                          Quantity,
                          SalesShipmentHeader."Posting Date");
                    end;
                end;
            until (SalesShipmentLine.NEXT = 0) or (TotalQuantity = 0);
    end;

    procedure CorrectShipment(var SalesShipmentLine: Record "Sales Shipment Line");
    var
        SalesInvoiceLine: Record "Sales Invoice Line";
    begin
        SalesInvoiceLine.SETCURRENTKEY("Shipment No.", "Shipment Line No.");
        SalesInvoiceLine.SETRANGE("Shipment No.", SalesShipmentLine."Document No.");
        SalesInvoiceLine.SETRANGE("Shipment Line No.", SalesShipmentLine."Line No.");
        if SalesInvoiceLine.FIND('-') then
            repeat
                SalesShipmentLine.Quantity := SalesShipmentLine.Quantity - SalesInvoiceLine.Quantity;
            until SalesInvoiceLine.NEXT = 0;
    end;

    procedure AddBufferEntry(SalesInvoiceLine: Record "Sales Invoice Line"; QtyOnShipment: Decimal; PostingDate: Date);
    begin
        SalesShipmentBuffer.SETRANGE("Document No.", SalesInvoiceLine."Document No.");
        SalesShipmentBuffer.SETRANGE("Line No.", SalesInvoiceLine."Line No.");
        SalesShipmentBuffer.SETRANGE("Posting Date", PostingDate);
        if SalesShipmentBuffer.FIND('-') then begin
            SalesShipmentBuffer.Quantity := SalesShipmentBuffer.Quantity + QtyOnShipment;
            SalesShipmentBuffer.MODIFY;
            exit;
        end;

        with SalesShipmentBuffer do begin
            "Document No." := SalesInvoiceLine."Document No.";
            "Line No." := SalesInvoiceLine."Line No.";
            "Entry No." := NextEntryNo;
            Type := SalesInvoiceLine.Type;
            "No." := SalesInvoiceLine."No.";
            Quantity := QtyOnShipment;
            "Posting Date" := PostingDate;
            INSERT;
            NextEntryNo := NextEntryNo + 1
        end;
    end;

    local procedure DocumentCaption(): Text[250];
    begin
        if "Sales Invoice Header"."Prepayment Invoice" then
            exit(Text010);
        exit(Text004);
    end;

    procedure InitializeRequest(NewNoOfCopies: Integer; NewShowInternalInfo: Boolean; NewLogInteraction: Boolean; NewAmountInWords: Boolean; NewCurrencyLCY: Boolean; NewShowTHFormatting: Boolean; NewDisplayAsmInfo: Boolean);
    begin
        NoOfCopies := NewNoOfCopies;
        ShowInternalInfo := NewShowInternalInfo;
        LogInteraction := NewLogInteraction;
        AmountInWords := NewAmountInWords;
        CurrencyLCY := NewCurrencyLCY;
        ShowTHFormatting := NewShowTHFormatting;
        DisplayAssemblyInformation := NewDisplayAsmInfo;
    end;

    procedure CollectAsmInformation();
    var
        ValueEntry: Record "Value Entry";
        ItemLedgerEntry: Record "Item Ledger Entry";
        PostedAsmHeader: Record "Posted Assembly Header";
        PostedAsmLine: Record "Posted Assembly Line";
        SalesShipmentLine: Record "Sales Shipment Line";
    begin
        TempPostedAsmLine.DELETEALL;
        if "Sales Invoice Line".Type <> "Sales Invoice Line".Type::Item then
            exit;
        with ValueEntry do begin
            SETCURRENTKEY("Document No.");
            SETRANGE("Document No.", "Sales Invoice Line"."Document No.");
            SETRANGE("Document Type", "Document Type"::"Sales Invoice");
            SETRANGE("Document Line No.", "Sales Invoice Line"."Line No.");
            SETRANGE(Adjustment, false);
            if not FINDSET then
                exit;
        end;
        repeat
            if ItemLedgerEntry.GET(ValueEntry."Item Ledger Entry No.") then begin
                if ItemLedgerEntry."Document Type" = ItemLedgerEntry."Document Type"::"Sales Shipment" then begin
                    SalesShipmentLine.GET(ItemLedgerEntry."Document No.", ItemLedgerEntry."Document Line No.");
                    if SalesShipmentLine.AsmToShipmentExists(PostedAsmHeader) then begin
                        PostedAsmLine.SETRANGE("Document No.", PostedAsmHeader."No.");
                        if PostedAsmLine.FINDSET then
                            repeat
                                TreatAsmLineBuffer(PostedAsmLine);
                            until PostedAsmLine.NEXT = 0;
                    end;
                end;
            end;
        until ValueEntry.NEXT = 0;
    end;

    procedure TreatAsmLineBuffer(PostedAsmLine: Record "Posted Assembly Line");
    begin
        CLEAR(TempPostedAsmLine);
        TempPostedAsmLine.SETRANGE(Type, PostedAsmLine.Type);
        TempPostedAsmLine.SETRANGE("No.", PostedAsmLine."No.");
        TempPostedAsmLine.SETRANGE("Variant Code", PostedAsmLine."Variant Code");
        TempPostedAsmLine.SETRANGE(Description, PostedAsmLine.Description);
        TempPostedAsmLine.SETRANGE("Unit of Measure Code", PostedAsmLine."Unit of Measure Code");
        if TempPostedAsmLine.FINDFIRST then begin
            TempPostedAsmLine.Quantity += PostedAsmLine.Quantity;
            TempPostedAsmLine.MODIFY;
        end else begin
            CLEAR(TempPostedAsmLine);
            TempPostedAsmLine := PostedAsmLine;
            TempPostedAsmLine.INSERT;
        end;
    end;

    procedure GetUOMText(UOMCode: Code[10]): Text[10];
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


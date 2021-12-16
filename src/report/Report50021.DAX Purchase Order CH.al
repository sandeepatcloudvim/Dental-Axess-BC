report 50021 "DAX Purchase Order CH"
{
    // version NAVW17.10.00.36078,NAVAPAC7.10.00.36078,EC1.00

    // ECCL
    // -----
    //   09-07-19  EC1.00
    //   Add logo
    DefaultLayout = RDLC;
    RDLCLayout = './DAX Purchase Order CH.rdl';

    CaptionML = ENU = 'Order',
                ENA = 'Order';

    dataset
    {
        dataitem("Purchase Header"; "Purchase Header")
        {
            DataItemTableView = SORTING("Document Type", "No.") WHERE("Document Type" = CONST(Order));
            RequestFilterFields = "No.", "Buy-from Vendor No.", "No. Printed";
            RequestFilterHeadingML = ENU = 'Purchase Order',
                                     ENA = 'Purchase Order';
            column(DocumentType_PurchHdr; "Document Type")
            {
            }
            column(No_PurchHdr; "No.")
            {
            }
            column(AmtCaption; AmtCaptionLbl)
            {
            }
            column(PaymentTermsCaption; PaymentTermsCaptionLbl)
            {
            }
            column(ShpMethodCaption; ShpMethodCaptionLbl)
            {
            }
            column(PrepmtPaymentTermsDescCaption; PrepmtPaymentTermsDescCaptionLbl)
            {
            }
            column(AllowInvDiscCaption; AllowInvDiscCaptionLbl)
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
                    column(OrderCopyText; STRSUBSTNO(Text004, CopyText))
                    {
                    }
                    column(CompanyAddr1; CompanyAddr[1])
                    {
                    }
                    column(CompanyAddr2; CompanyAddr[2])
                    {
                    }
                    column(CompanyAddr3; CompanyAddr[3])
                    {
                    }
                    column(CompanyAddr4; CompanyAddr[4])
                    {
                    }
                    column(CompanyInfoPhoneNo; CompanyInfo."Phone No.")
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
                    column(CompanyAddr5; CompanyAddr[5])
                    {
                    }
                    column(CompanyAddr6; CompanyAddr[6])
                    {
                    }
                    column(BuyFromAddr1; BuyFromAddr[1])
                    {
                    }
                    column(BuyFromAddr2; BuyFromAddr[2])
                    {
                    }
                    column(BuyFromAddr3; BuyFromAddr[3])
                    {
                    }
                    column(BuyFromAddr4; BuyFromAddr[4])
                    {
                    }
                    column(BuyFromAddr5; BuyFromAddr[5])
                    {
                    }
                    column(BuyFromAddr6; BuyFromAddr[6])
                    {
                    }
                    column(BuyFromAddr7; BuyFromAddr[7])
                    {
                    }
                    column(BuyFromAddr8; BuyFromAddr[8])
                    {
                    }
                    column(OutputNo; OutputNo)
                    {
                    }
                    column(VATBaseDisc_PurchHdr; "Purchase Header"."VAT Base Discount %")
                    {
                    }
                    column(PricesInclVATtxt; PricesInclVATtxt)
                    {
                    }
                    column(ShowInternalInfo; ShowInternalInfo)
                    {
                    }
                    column(CompanyInfoABNDivPartNo; CompanyInfo."ABN Division Part No.")
                    {
                    }
                    column(CompanyInfoABN; CompanyInfo.ABN)
                    {
                    }
                    column(VATNoText; VATNoText)
                    {
                    }
                    column(VATRegNo_PurchHdr; "Purchase Header"."VAT Registration No.")
                    {
                    }
                    column(BuyfromVendorNo_PurchHdr; "Purchase Header"."Buy-from Vendor No.")
                    {
                    }
                    column(PurchaserText; PurchaserText)
                    {
                    }
                    column(SalesPurchPersonName; SalesPurchPerson.Name)
                    {
                    }
                    column(RefText; ReferenceText)
                    {
                    }
                    column(YourRef_PurchHdr; "Purchase Header"."Your Reference")
                    {
                    }
                    column(DocDate_PurchHdr; FORMAT("Purchase Header"."Document Date", 0, 4))
                    {
                    }
                    column(PricesIncVAT_PurchHdr; "Purchase Header"."Prices Including VAT")
                    {
                    }
                    column(ABN_PurchHdr; "Purchase Header".ABN)
                    {
                    }
                    column(PaymentTermsDesc; PaymentTerms.Description)
                    {
                    }
                    column(ShipmentMethodDesc; ShipmentMethod.Description)
                    {
                    }
                    column(PrepmtPaymentTermsDesc; PrepmtPaymentTerms.Description)
                    {
                    }
                    column(ABNDivPartNo_PurchHdr; "Purchase Header"."ABN Division Part No.")
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
                    column(BankCaption; BankCaptionLbl)
                    {
                    }
                    column(BankAccNoCaption; BankAccNoCaptionLbl)
                    {
                    }
                    column(PageCaption; PageCaptionLbl)
                    {
                    }
                    column(ABNDivPartNoCaption; ABNDivPartNoCaptionLbl)
                    {
                    }
                    column(ABNCaption; ABNCaptionLbl)
                    {
                    }
                    column(OrderNoCaption; OrderNoCaptionLbl)
                    {
                    }
                    column(DocDateCaption; DocDateCaptionLbl)
                    {
                    }
                    column(HomePageCaption; HomePageCaptionLbl)
                    {
                    }
                    column(EmailCaption; EmailCaptionLbl)
                    {
                    }
                    column(BuyfromVendorNo_PurchHdrCaption; "Purchase Header".FIELDCAPTION("Buy-from Vendor No."))
                    {
                    }
                    column(PricesIncVAT_PurchHdrCaption; "Purchase Header".FIELDCAPTION("Prices Including VAT"))
                    {
                    }
                    column(VendorItemNo; PurchLine."Vendor Item No.")
                    {
                    }
                    dataitem(DimensionLoop1; "Integer")
                    {
                        DataItemLinkReference = "Purchase Header";
                        DataItemTableView = SORTING(Number) WHERE(Number = FILTER(1 ..));
                        column(DimText; DimText)
                        {
                        }
                        column(HdrDimsCaption; HdrDimsCaptionLbl)
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
                    dataitem("Purchase Line"; "Purchase Line")
                    {
                        DataItemLink = "Document Type" = FIELD("Document Type"), "Document No." = FIELD("No.");
                        DataItemLinkReference = "Purchase Header";
                        DataItemTableView = SORTING("Document Type", "Document No.", "Line No.");

                        trigger OnPreDataItem();
                        begin
                            CurrReport.BREAK;
                        end;
                    }
                    dataitem(RoundLoop; "Integer")
                    {
                        DataItemTableView = SORTING(Number);
                        column(PurchLineLineAmt; PurchLine."Line Amount")
                        {
                            AutoFormatExpression = "Purchase Line"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(Desc_PurchLine; "Purchase Line".Description)
                        {
                        }
                        column(LineNo_PurchLine; "Purchase Line"."Line No.")
                        {
                        }
                        column(AllowInvDisctxt; AllowInvDisctxt)
                        {
                        }
                        column(Type_PurchLine; FORMAT("Purchase Line".Type, 0, 2))
                        {
                        }
                        column(No_PurchLine; "Purchase Line"."No.")
                        {
                        }
                        column(Quantity_PurchLine; "Purchase Line".Quantity)
                        {
                        }
                        column(UnitofMeasure_PurchLine; "Purchase Line"."Unit of Measure")
                        {
                        }
                        column(DirectUnitCost_PurchLine; "Purchase Line"."Direct Unit Cost")
                        {
                            AutoFormatExpression = "Purchase Header"."Currency Code";
                            AutoFormatType = 2;
                        }
                        column(LineDisc_PurchLine; "Purchase Line"."Line Discount %")
                        {
                        }
                        column(LineAmt_PurchLine; "Purchase Line"."Line Amount")
                        {
                            AutoFormatExpression = "Purchase Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(AllowInvoiceDisc_PurchLine; "Purchase Line"."Allow Invoice Disc.")
                        {
                        }
                        column(VATIdentifier_PurchLine; "Purchase Line"."VAT Identifier")
                        {
                        }
                        column(PurchLineInvDiscAmt; -PurchLine."Inv. Discount Amount")
                        {
                            AutoFormatExpression = "Purchase Line"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(TotalText; TotalText)
                        {
                        }
                        column(PurchLineLineAmtInvDiscAmt; PurchLine."Line Amount" - PurchLine."Inv. Discount Amount")
                        {
                            AutoFormatExpression = "Purchase Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(TotalInclVATText; TotalInclVATText)
                        {
                        }
                        column(VATAmtLineVATAmtText; VATAmountLine.VATAmountText)
                        {
                        }
                        column(VATAmt; VATAmount)
                        {
                            AutoFormatExpression = "Purchase Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(TotalExclVATText; TotalExclVATText)
                        {
                        }
                        column(VATDiscAmt; -VATDiscountAmount)
                        {
                            AutoFormatExpression = "Purchase Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATBaseAmt; VATBaseAmount)
                        {
                            AutoFormatExpression = "Purchase Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(TotalAmtInclVAT; TotalAmountInclVAT)
                        {
                            AutoFormatExpression = "Purchase Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(TotalSubTotal; TotalSubTotal)
                        {
                            AutoFormatExpression = "Purchase Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(TotalInvoiceDiscAmt; TotalInvoiceDiscountAmount)
                        {
                            AutoFormatExpression = "Purchase Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(TotalAmt; TotalAmount)
                        {
                            AutoFormatExpression = "Purchase Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(DirectUnitCostCaption; DirectUnitCostCaptionLbl)
                        {
                        }
                        column(DiscountPercentCaption; DiscountPercentCaptionLbl)
                        {
                        }
                        column(InvDiscAmtCaption; InvDiscAmtCaptionLbl)
                        {
                        }
                        column(SubtotalCaption; SubtotalCaptionLbl)
                        {
                        }
                        column(VATDiscAmtCaption; VATDiscAmtCaptionLbl)
                        {
                        }
                        column(Desc_PurchLineCaption; "Purchase Line".FIELDCAPTION(Description))
                        {
                        }
                        column(No_PurchLineCaption; "Purchase Line".FIELDCAPTION("No."))
                        {
                        }
                        column(Quantity_PurchLineCaption; "Purchase Line".FIELDCAPTION(Quantity))
                        {
                        }
                        column(UnitofMeasure_PurchLineCaption; "Purchase Line".FIELDCAPTION("Unit of Measure"))
                        {
                        }
                        column(AllowInvoiceDisc_PurchLineCaption; "Purchase Line".FIELDCAPTION("Allow Invoice Disc."))
                        {
                        }
                        column(VATIdentifier_PurchLineCaption; "Purchase Line".FIELDCAPTION("VAT Identifier"))
                        {
                        }
                        dataitem(DimensionLoop2; "Integer")
                        {
                            DataItemTableView = SORTING(Number) WHERE(Number = FILTER(1 ..));
                            column(DimText1; DimText)
                            {
                            }
                            column(LineDimsCaption; LineDimsCaptionLbl)
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

                                DimSetEntry2.SETRANGE("Dimension Set ID", "Purchase Line"."Dimension Set ID");
                            end;
                        }

                        trigger OnAfterGetRecord();
                        begin
                            if Number = 1 then
                                PurchLine.FIND('-')
                            else
                                PurchLine.NEXT;
                            "Purchase Line" := PurchLine;

                            if not "Purchase Header"."Prices Including VAT" and
                               (PurchLine."VAT Calculation Type" = PurchLine."VAT Calculation Type"::"Full VAT")
                            then
                                PurchLine."Line Amount" := 0;

                            if (PurchLine.Type = PurchLine.Type::"G/L Account") and (not ShowInternalInfo) then
                                "Purchase Line"."No." := '';
                            AllowInvDisctxt := FORMAT("Purchase Line"."Allow Invoice Disc.");
                            TotalSubTotal += "Purchase Line"."Line Amount";
                            TotalInvoiceDiscountAmount -= "Purchase Line"."Inv. Discount Amount";
                            TotalAmount += "Purchase Line".Amount;
                        end;

                        trigger OnPostDataItem();
                        begin
                            PurchLine.DELETEALL;
                        end;

                        trigger OnPreDataItem();
                        begin
                            MoreLines := PurchLine.FIND('+');
                            while MoreLines and (PurchLine.Description = '') and (PurchLine."Description 2" = '') and
                                  (PurchLine."No." = '') and (PurchLine.Quantity = 0) and
                                  (PurchLine.Amount = 0) do
                                MoreLines := PurchLine.NEXT(-1) <> 0;
                            if not MoreLines then
                                CurrReport.BREAK;
                            PurchLine.SETRANGE("Line No.", 0, PurchLine."Line No.");
                            SETRANGE(Number, 1, PurchLine.COUNT);
                            // CurrReport.CREATETOTALS(PurchLine."Line Amount", PurchLine."Inv. Discount Amount");
                        end;
                    }
                    dataitem(VATCounter; "Integer")
                    {
                        DataItemTableView = SORTING(Number);
                        column(VATAmtLineVATBase; VATAmountLine."VAT Base")
                        {
                            AutoFormatExpression = "Purchase Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATAmtLineVATAmt; VATAmountLine."VAT Amount")
                        {
                            AutoFormatExpression = "Purchase Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATAmtLineLineAmt; VATAmountLine."Line Amount")
                        {
                            AutoFormatExpression = "Purchase Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATAmtLineInvDiscBaseAmt; VATAmountLine."Inv. Disc. Base Amount")
                        {
                            AutoFormatExpression = "Purchase Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATAmtLineInvoiceDiscAmt; VATAmountLine."Invoice Discount Amount")
                        {
                            AutoFormatExpression = "Purchase Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATAmtLineVAT; VATAmountLine."VAT %")
                        {
                            DecimalPlaces = 0 : 5;
                        }
                        column(VATAmtLineVATIdentifier; VATAmountLine."VAT Identifier")
                        {
                        }
                        column(VATPercentCaption; VATPercentCaptionLbl)
                        {
                        }
                        column(VATBaseCaption; VATBaseCaptionLbl)
                        {
                        }
                        column(VATAmtCaption; VATAmtCaptionLbl)
                        {
                        }
                        column(VATAmtSpecCaption; VATAmtSpecCaptionLbl)
                        {
                        }
                        column(VATIdentCaption; VATIdentCaptionLbl)
                        {
                        }
                        column(InvDiscBaseAmtCaption; InvDiscBaseAmtCaptionLbl)
                        {
                        }
                        column(LineAmtCaption; LineAmtCaptionLbl)
                        {
                        }
                        column(InvDiscAmt1Caption; InvDiscAmt1CaptionLbl)
                        {
                        }
                        column(TotalCaption; TotalCaptionLbl)
                        {
                        }

                        trigger OnAfterGetRecord();
                        begin
                            VATAmountLine.GetLine(Number);
                        end;

                        trigger OnPreDataItem();
                        begin
                            if VATAmount = 0 then
                                CurrReport.BREAK;
                            SETRANGE(Number, 1, VATAmountLine.COUNT);
                            // CurrReport.CREATETOTALS(
                            // VATAmountLine."Line Amount", VATAmountLine."Inv. Disc. Base Amount",
                            //VATAmountLine."Invoice Discount Amount", VATAmountLine."VAT Base", VATAmountLine."VAT Amount");
                        end;
                    }
                    dataitem(VATCounterLCY; "Integer")
                    {
                        DataItemTableView = SORTING(Number);
                        column(VALExchRate; VALExchRate)
                        {
                        }
                        column(VALSpecLCYHeader; VALSpecLCYHeader)
                        {
                        }
                        column(VALVATAmtLCY; VALVATAmountLCY)
                        {
                            AutoFormatType = 1;
                        }
                        column(VALVATBaseLCY; VALVATBaseLCY)
                        {
                            AutoFormatType = 1;
                        }
                        column(VATAmtLineVAT1; VATAmountLine."VAT %")
                        {
                            DecimalPlaces = 0 : 5;
                        }
                        column(VATAmtLineVATIdentifier1; VATAmountLine."VAT Identifier")
                        {
                        }

                        trigger OnAfterGetRecord();
                        begin
                            VATAmountLine.GetLine(Number);
                            VALVATBaseLCY :=
                              VATAmountLine.GetBaseLCY(
                                "Purchase Header"."Posting Date", "Purchase Header"."Currency Code", "Purchase Header"."Currency Factor");
                            VALVATAmountLCY :=
                              VATAmountLine.GetAmountLCY(
                                "Purchase Header"."Posting Date", "Purchase Header"."Currency Code", "Purchase Header"."Currency Factor");
                        end;

                        trigger OnPreDataItem();
                        begin
                            if (not GLSetup."Print VAT specification in LCY") or
                               ("Purchase Header"."Currency Code" = '') or
                               (VATAmountLine.GetTotalVATAmount = 0) then
                                CurrReport.BREAK;

                            SETRANGE(Number, 1, VATAmountLine.COUNT);
                            //  CurrReport.CREATETOTALS(VALVATBaseLCY, VALVATAmountLCY);

                            if GLSetup."LCY Code" = '' then
                                VALSpecLCYHeader := Text007 + Text008
                            else
                                VALSpecLCYHeader := Text007 + FORMAT(GLSetup."LCY Code");

                            CurrExchRate.FindCurrency("Purchase Header"."Posting Date", "Purchase Header"."Currency Code", 1);
                            VALExchRate := STRSUBSTNO(Text009, CurrExchRate."Relational Exch. Rate Amount", CurrExchRate."Exchange Rate Amount");
                        end;
                    }
                    dataitem(Total; "Integer")
                    {
                        DataItemTableView = SORTING(Number) WHERE(Number = CONST(1));
                    }
                    dataitem(Total2; "Integer")
                    {
                        DataItemTableView = SORTING(Number) WHERE(Number = CONST(1));
                        column(PaytoVendNo_PurchHdr; "Purchase Header"."Pay-to Vendor No.")
                        {
                        }
                        column(VendAddr8; VendAddr[8])
                        {
                        }
                        column(VendAddr7; VendAddr[7])
                        {
                        }
                        column(VendAddr6; VendAddr[6])
                        {
                        }
                        column(VendAddr5; VendAddr[5])
                        {
                        }
                        column(VendAddr4; VendAddr[4])
                        {
                        }
                        column(VendAddr3; VendAddr[3])
                        {
                        }
                        column(VendAddr2; VendAddr[2])
                        {
                        }
                        column(VendAddr1; VendAddr[1])
                        {
                        }
                        column(PaymentDetailsCaption; PaymentDetailsCaptionLbl)
                        {
                        }
                        column(VendNoCaption; VendNoCaptionLbl)
                        {
                        }

                        trigger OnPreDataItem();
                        begin
                            if "Purchase Header"."Buy-from Vendor No." = "Purchase Header"."Pay-to Vendor No." then
                                CurrReport.BREAK;
                        end;
                    }
                    dataitem(Total3; "Integer")
                    {
                        DataItemTableView = SORTING(Number) WHERE(Number = CONST(1));
                        column(SelltoCustNo_PurchHdr; "Purchase Header"."Sell-to Customer No.")
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
                        column(ShiptoAddCaption; ShiptoAddCaptionLbl)
                        {
                        }
                        column(SelltoCustNo_PurchHdrCaption; "Purchase Header".FIELDCAPTION("Sell-to Customer No."))
                        {
                        }

                        trigger OnPreDataItem();
                        begin
                            if ("Purchase Header"."Sell-to Customer No." = '') and (ShipToAddr[1] = '') then
                                CurrReport.BREAK;
                        end;
                    }
                    dataitem(PrepmtLoop; "Integer")
                    {
                        DataItemTableView = SORTING(Number) WHERE(Number = FILTER(1 ..));
                        column(PrepmtLineAmt; PrepmtLineAmount)
                        {
                            AutoFormatExpression = "Purchase Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(PrepmtInvBufGLAccNo; PrepmtInvBuf."G/L Account No.")
                        {
                        }
                        column(PrepmtInvBufDesc; PrepmtInvBuf.Description)
                        {
                        }
                        column(TotalExclVATText1; TotalExclVATText)
                        {
                        }
                        column(PrepmtVATAmtLineVATAmtText; PrepmtVATAmountLine.VATAmountText)
                        {
                        }
                        column(PrepmtVATAmt; PrepmtVATAmount)
                        {
                            AutoFormatExpression = "Purchase Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(TotalInclVATText1; TotalInclVATText)
                        {
                        }
                        column(PrepmtInvBufAmtPrepmtVATAmt; PrepmtInvBuf.Amount + PrepmtVATAmount)
                        {
                            AutoFormatExpression = "Purchase Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(PrepmtTotalAmtInclVAT; PrepmtTotalAmountInclVAT)
                        {
                            AutoFormatExpression = "Purchase Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(Number_IntegerLine; Number)
                        {
                        }
                        column(DescCaption; DescCaptionLbl)
                        {
                        }
                        column(GLAccNoCaption; GLAccNoCaptionLbl)
                        {
                        }
                        column(PrepmtSpecCaption; PrepmtSpecCaptionLbl)
                        {
                        }
                        dataitem(PrepmtDimLoop; "Integer")
                        {
                            DataItemTableView = SORTING(Number) WHERE(Number = FILTER(1 ..));
                            column(DimText2; DimText)
                            {
                            }

                            trigger OnAfterGetRecord();
                            begin
                                if Number = 1 then begin
                                    if not PrepmtDimSetEntry.FINDSET then
                                        CurrReport.BREAK;
                                end else
                                    if not Continue then
                                        CurrReport.BREAK;

                                CLEAR(DimText);
                                Continue := false;
                                repeat
                                    OldDimText := DimText;
                                    if DimText = '' then
                                        DimText := STRSUBSTNO('%1 %2', PrepmtDimSetEntry."Dimension Code", PrepmtDimSetEntry."Dimension Value Code")
                                    else
                                        DimText :=
                                          STRSUBSTNO(
                                            '%1, %2 %3', DimText,
                                            PrepmtDimSetEntry."Dimension Code", PrepmtDimSetEntry."Dimension Value Code");
                                    if STRLEN(DimText) > MAXSTRLEN(OldDimText) then begin
                                        DimText := OldDimText;
                                        Continue := true;
                                        exit;
                                    end;
                                until PrepmtDimSetEntry.NEXT = 0;
                            end;
                        }

                        trigger OnAfterGetRecord();
                        begin
                            if Number = 1 then begin
                                if not PrepmtInvBuf.FIND('-') then
                                    CurrReport.BREAK;
                            end else
                                if PrepmtInvBuf.NEXT = 0 then
                                    CurrReport.BREAK;

                            if ShowInternalInfo then
                                PrepmtDimSetEntry.SETRANGE("Dimension Set ID", PrepmtInvBuf."Dimension Set ID");

                            if "Purchase Header"."Prices Including VAT" then
                                PrepmtLineAmount := PrepmtInvBuf."Amount Incl. VAT"
                            else
                                PrepmtLineAmount := PrepmtInvBuf.Amount;
                        end;

                        trigger OnPreDataItem();
                        begin
                            //    CurrReport.CREATETOTALS(
                            //    PrepmtInvBuf.Amount, PrepmtInvBuf."Amount Incl. VAT",
                            //  PrepmtVATAmountLine."Line Amount", PrepmtVATAmountLine."VAT Base",
                            //PrepmtVATAmountLine."VAT Amount",
                            //PrepmtLineAmount);
                        end;
                    }
                    dataitem(PrepmtVATCounter; "Integer")
                    {
                        DataItemTableView = SORTING(Number);
                        column(PrepmtVATAmtLineVATAmt; PrepmtVATAmountLine."VAT Amount")
                        {
                            AutoFormatExpression = "Purchase Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(PrepmtVATAmtLineVATBase; PrepmtVATAmountLine."VAT Base")
                        {
                            AutoFormatExpression = "Purchase Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(PrepmtVATAmtLineLineAmt; PrepmtVATAmountLine."Line Amount")
                        {
                            AutoFormatExpression = "Purchase Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(PrepmtVATAmtLineVAT; PrepmtVATAmountLine."VAT %")
                        {
                            DecimalPlaces = 0 : 5;
                        }
                        column(PrepmtVATAmtLineVATIdentifier; PrepmtVATAmountLine."VAT Identifier")
                        {
                        }
                        column(PrepmtVATAmtSpecCaption; PrepmtVATAmtSpecCaptionLbl)
                        {
                        }

                        trigger OnAfterGetRecord();
                        begin
                            PrepmtVATAmountLine.GetLine(Number);
                        end;

                        trigger OnPreDataItem();
                        begin
                            SETRANGE(Number, 1, PrepmtVATAmountLine.COUNT);
                        end;
                    }
                    dataitem(PrepmtTotal; "Integer")
                    {
                        DataItemTableView = SORTING(Number) WHERE(Number = CONST(1));

                        trigger OnPreDataItem();
                        begin
                            if not PrepmtInvBuf.FIND('-') then
                                CurrReport.BREAK;
                        end;
                    }
                }

                trigger OnAfterGetRecord();
                var
                    PrepmtPurchLine: Record "Purchase Line" temporary;
                    TempPurchLine: Record "Purchase Line" temporary;
                begin
                    CLEAR(PurchLine);
                    CLEAR(PurchPost);
                    PurchLine.DELETEALL;
                    VATAmountLine.DELETEALL;
                    PurchPost.GetPurchLines("Purchase Header", PurchLine, 0);
                    PurchLine.CalcVATAmountLines(0, "Purchase Header", PurchLine, VATAmountLine);
                    PurchLine.UpdateVATOnLines(0, "Purchase Header", PurchLine, VATAmountLine);
                    VATAmount := VATAmountLine.GetTotalVATAmount;
                    VATBaseAmount := VATAmountLine.GetTotalVATBase;
                    VATDiscountAmount :=
                      VATAmountLine.GetTotalVATDiscount("Purchase Header"."Currency Code", "Purchase Header"."Prices Including VAT");
                    TotalAmountInclVAT := VATAmountLine.GetTotalAmountInclVAT;

                    PrepmtInvBuf.DELETEALL;
                    PurchPostPrepmt.GetPurchLines("Purchase Header", 0, PrepmtPurchLine);
                    if (not PrepmtPurchLine.ISEMPTY) then begin
                        PurchPostPrepmt.GetPurchLinesToDeduct("Purchase Header", TempPurchLine);
                        if not TempPurchLine.ISEMPTY then
                            PurchPostPrepmt.CalcVATAmountLines("Purchase Header", TempPurchLine, PrePmtVATAmountLineDeduct, 1);
                    end;
                    PurchPostPrepmt.CalcVATAmountLines("Purchase Header", PrepmtPurchLine, PrepmtVATAmountLine, 0);
                    if PrepmtVATAmountLine.FINDSET then
                        repeat
                            PrePmtVATAmountLineDeduct := PrepmtVATAmountLine;
                            if PrePmtVATAmountLineDeduct.FIND then begin
                                PrepmtVATAmountLine."VAT Base" := PrepmtVATAmountLine."VAT Base" - PrePmtVATAmountLineDeduct."VAT Base";
                                PrepmtVATAmountLine."VAT Amount" := PrepmtVATAmountLine."VAT Amount" - PrePmtVATAmountLineDeduct."VAT Amount";
                                PrepmtVATAmountLine."Amount Including VAT" := PrepmtVATAmountLine."Amount Including VAT" -
                                  PrePmtVATAmountLineDeduct."Amount Including VAT";
                                PrepmtVATAmountLine."Line Amount" := PrepmtVATAmountLine."Line Amount" - PrePmtVATAmountLineDeduct."Line Amount";
                                PrepmtVATAmountLine."Inv. Disc. Base Amount" := PrepmtVATAmountLine."Inv. Disc. Base Amount" -
                                  PrePmtVATAmountLineDeduct."Inv. Disc. Base Amount";
                                PrepmtVATAmountLine."Invoice Discount Amount" := PrepmtVATAmountLine."Invoice Discount Amount" -
                                  PrePmtVATAmountLineDeduct."Invoice Discount Amount";
                                PrepmtVATAmountLine."Calculated VAT Amount" := PrepmtVATAmountLine."Calculated VAT Amount" -
                                  PrePmtVATAmountLineDeduct."Calculated VAT Amount";
                                PrepmtVATAmountLine.MODIFY;
                            end;
                        until PrepmtVATAmountLine.NEXT = 0;
                    PurchPostPrepmt.UpdateVATOnLines("Purchase Header", PrepmtPurchLine, PrepmtVATAmountLine, 0);
                    //  PurchPostPrepmt.BuildInvLineBuffer2("Purchase Header",PrepmtPurchLine,0,PrepmtInvBuf);
                    PrepmtVATAmount := PrepmtVATAmountLine.GetTotalVATAmount;
                    PrepmtVATBaseAmount := PrepmtVATAmountLine.GetTotalVATBase;
                    PrepmtTotalAmountInclVAT := PrepmtVATAmountLine.GetTotalAmountInclVAT;

                    if Number > 1 then
                        CopyText := Text003;
                    CurrReport.PAGENO := 1;
                    OutputNo := OutputNo + 1;

                    TotalSubTotal := 0;
                    TotalAmount := 0;
                end;

                trigger OnPostDataItem();
                begin
                    if not CurrReport.PREVIEW then
                        PurchCountPrinted.RUN("Purchase Header");
                end;

                trigger OnPreDataItem();
                begin
                    NoOfLoops := ABS(NoOfCopies) + 1;
                    CopyText := '';
                    SETRANGE(Number, 1, NoOfLoops);
                    OutputNo := 0;
                end;
            }

            trigger OnAfterGetRecord();
            begin
                IF "Language Code" <> '' then
                    CurrReport.LANGUAGE := Language.GetLanguageID("Language Code");

                CompanyInfo.GET;

                if RespCenter.GET("Responsibility Center") then begin
                    FormatAddr.RespCenter(CompanyAddr, RespCenter);
                    CompanyInfo."Phone No." := RespCenter."Phone No.";
                    CompanyInfo."Fax No." := RespCenter."Fax No.";
                end else
                    FormatAddr.Company(CompanyAddr, CompanyInfo);

                DimSetEntry1.SETRANGE("Dimension Set ID", "Dimension Set ID");

                if "Purchaser Code" = '' then begin
                    SalesPurchPerson.INIT;
                    PurchaserText := '';
                end else begin
                    SalesPurchPerson.GET("Purchaser Code");
                    PurchaserText := Text000
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
                end;

                FormatAddr.PurchHeaderBuyFrom(BuyFromAddr, "Purchase Header");
                if "Buy-from Vendor No." <> "Pay-to Vendor No." then
                    FormatAddr.PurchHeaderPayTo(VendAddr, "Purchase Header");
                if "Payment Terms Code" = '' then
                    PaymentTerms.INIT
                else begin
                    PaymentTerms.GET("Payment Terms Code");
                    PaymentTerms.TranslateDescription(PaymentTerms, "Language Code");
                end;
                if "Prepmt. Payment Terms Code" = '' then
                    PrepmtPaymentTerms.INIT
                else begin
                    PrepmtPaymentTerms.GET("Prepmt. Payment Terms Code");
                    PrepmtPaymentTerms.TranslateDescription(PrepmtPaymentTerms, "Language Code");
                end;
                if "Shipment Method Code" = '' then
                    ShipmentMethod.INIT
                else begin
                    ShipmentMethod.GET("Shipment Method Code");
                    ShipmentMethod.TranslateDescription(ShipmentMethod, "Language Code");
                end;


                FormatAddr.PurchHeaderShipTo(ShipToAddr, "Purchase Header");

                if not CurrReport.PREVIEW then begin
                    if ArchiveDocument then
                        ArchiveManagement.StorePurchDocument("Purchase Header", LogInteraction);

                    if LogInteraction then begin
                        CALCFIELDS("No. of Archived Versions");
                        SegManagement.LogDocument(
                          13, "No.", "Doc. No. Occurrence", "No. of Archived Versions", DATABASE::Vendor, "Buy-from Vendor No.",
                          "Purchaser Code", '', "Posting Description", '');
                    end;
                end;

                PricesInclVATtxt := FORMAT("Prices Including VAT");
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
                    field(NoofCopies; NoOfCopies)
                    {
                        ApplicationArea = All;
                        CaptionML = ENU = 'No. of Copies',
                                    ENA = 'No. of Copies';
                    }
                    field(ShowInternalInformation; ShowInternalInfo)
                    {
                        ApplicationArea = All;
                        CaptionML = ENU = 'Show Internal Information',
                                    ENA = 'Show Internal Information';
                    }
                    field(ArchiveDocument; ArchiveDocument)
                    {
                        ApplicationArea = All;
                        CaptionML = ENU = 'Archive Document',
                                    ENA = 'Archive Document';

                        trigger OnValidate();
                        begin
                            if not ArchiveDocument then
                                LogInteraction := false;
                        end;
                    }
                    field(LogInteraction; LogInteraction)
                    {
                        ApplicationArea = All;
                        CaptionML = ENU = 'Log Interaction',
                                    ENA = 'Log Interaction';
                        Enabled = LogInteractionEnable;

                        trigger OnValidate();
                        begin
                            if LogInteraction then
                                ArchiveDocument := ArchiveDocumentEnable;
                        end;
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
            //    ArchiveDocument := PurchSetup."Archive Quotes and Orders";
            LogInteraction := SegManagement.FindInteractTmplCode(13) <> '';

            LogInteractionEnable := LogInteraction;
        end;
    }

    labels
    {
    }

    trigger OnInitReport();
    begin
        GLSetup.GET;
        PurchSetup.GET;
        // >>EC1.00
        CompInfoLogo.GET;
        CompInfoLogo.CALCFIELDS(Picture);
        // <<EC1.00
    end;

    var
        Text000: TextConst ENU = 'Purchaser', ENA = 'Purchaser';
        Text001: TextConst ENU = 'Total %1', ENA = 'Total %1';
        Text002: TextConst ENU = 'Total %1 Incl. VAT', ENA = 'Total %1 Incl. GST';
        Text003: TextConst ENU = ' COPY', ENA = ' COPY';
        Text004: TextConst ENU = 'Order %1', ENA = 'Order %1';
        Text005: TextConst ENU = 'Page%1', ENA = 'Page%1';
        Text006: TextConst ENU = 'Total %1 Excl. VAT', ENA = 'Total %1 Excl. GST';
        GLSetup: Record "General Ledger Setup";
        CompanyInfo: Record "Company Information";
        ShipmentMethod: Record "Shipment Method";
        PaymentTerms: Record "Payment Terms";
        PrepmtPaymentTerms: Record "Payment Terms";
        SalesPurchPerson: Record "Salesperson/Purchaser";
        VATAmountLine: Record "VAT Amount Line" temporary;
        PrepmtVATAmountLine: Record "VAT Amount Line" temporary;
        PrePmtVATAmountLineDeduct: Record "VAT Amount Line" temporary;
        PurchLine: Record "Purchase Line" temporary;
        DimSetEntry1: Record "Dimension Set Entry";
        DimSetEntry2: Record "Dimension Set Entry";
        PrepmtDimSetEntry: Record "Dimension Set Entry";
        PrepmtInvBuf: Record "Prepayment Inv. Line Buffer" temporary;
        RespCenter: Record "Responsibility Center";
        Language: Codeunit Language;
        CurrExchRate: Record "Currency Exchange Rate";
        PurchSetup: Record "Purchases & Payables Setup";
        PurchCountPrinted: Codeunit "Purch.Header-Printed";
        FormatAddr: Codeunit "Format Address";
        PurchPost: Codeunit "Purch.-Post";
        ArchiveManagement: Codeunit ArchiveManagement;
        SegManagement: Codeunit SegManagement;
        PurchPostPrepmt: Codeunit "Purchase-Post Prepayments";
        VendAddr: array[8] of Text[50];
        ShipToAddr: array[8] of Text[50];
        CompanyAddr: array[8] of Text[50];
        BuyFromAddr: array[8] of Text[50];
        PurchaserText: Text[30];
        VATNoText: Text[80];
        ReferenceText: Text[80];
        TotalText: Text[50];
        TotalInclVATText: Text[50];
        TotalExclVATText: Text[50];
        MoreLines: Boolean;
        NoOfCopies: Integer;
        NoOfLoops: Integer;
        CopyText: Text[30];
        OutputNo: Integer;
        DimText: Text[120];
        OldDimText: Text[75];
        ShowInternalInfo: Boolean;
        Continue: Boolean;
        ArchiveDocument: Boolean;
        LogInteraction: Boolean;
        VATAmount: Decimal;
        VATBaseAmount: Decimal;
        VATDiscountAmount: Decimal;
        TotalAmountInclVAT: Decimal;
        VALVATBaseLCY: Decimal;
        VALVATAmountLCY: Decimal;
        VALSpecLCYHeader: Text[80];
        VALExchRate: Text[50];
        Text007: TextConst ENU = 'VAT Amount Specification in ', ENA = 'GST Amount Specification in ';
        Text008: TextConst ENU = 'Local Currency', ENA = 'Local Currency';
        Text009: TextConst ENU = 'Exchange rate: %1/%2', ENA = 'Exchange rate: %1/%2';
        PrepmtVATAmount: Decimal;
        PrepmtVATBaseAmount: Decimal;
        PrepmtAmountInclVAT: Decimal;
        PrepmtTotalAmountInclVAT: Decimal;
        PrepmtLineAmount: Decimal;
        PricesInclVATtxt: Text[30];
        AllowInvDisctxt: Text[30];
        [InDataSet]
        ArchiveDocumentEnable: Boolean;
        [InDataSet]
        LogInteractionEnable: Boolean;
        TotalSubTotal: Decimal;
        TotalAmount: Decimal;
        TotalInvoiceDiscountAmount: Decimal;
        PhoneNoCaptionLbl: TextConst ENU = 'Phone No.', ENA = 'Phone No.';
        VATRegNoCaptionLbl: TextConst ENU = 'VAT Registration No.', ENA = 'Exemption Certificate No.';
        GiroNoCaptionLbl: TextConst ENU = 'Giro No.', ENA = 'Giro No.';
        BankCaptionLbl: TextConst ENU = 'Bank', ENA = 'Bank';
        BankAccNoCaptionLbl: TextConst ENU = 'Account No.', ENA = 'Account No.';
        PageCaptionLbl: TextConst ENU = 'Page', ENA = 'Page';
        ABNDivPartNoCaptionLbl: TextConst ENU = 'Division Part No.', ENA = 'Division Part No.';
        ABNCaptionLbl: TextConst ENU = 'ABN', ENA = 'ABN';
        OrderNoCaptionLbl: TextConst ENU = 'Order No.', ENA = 'Order No.';
        DocDateCaptionLbl: TextConst ENU = 'Document Date', ENA = 'Document Date';
        HomePageCaptionLbl: TextConst ENU = 'Home Page', ENA = 'Home Page';
        EmailCaptionLbl: TextConst ENU = 'E-Mail', ENA = 'E-Mail';
        HdrDimsCaptionLbl: TextConst ENU = 'Header Dimensions', ENA = 'Header Dimensions';
        DirectUnitCostCaptionLbl: TextConst ENU = 'Direct Unit Cost', ENA = 'Direct Unit Cost';
        DiscountPercentCaptionLbl: TextConst ENU = 'Discount %', ENA = 'Discount %';
        InvDiscAmtCaptionLbl: TextConst ENU = 'Invoice Discount Amount', ENA = 'Invoice Discount Amount';
        SubtotalCaptionLbl: TextConst ENU = 'Subtotal', ENA = 'Subtotal';
        VATDiscAmtCaptionLbl: TextConst ENU = 'Payment Discount on VAT', ENA = 'Payment Discount on GST';
        LineDimsCaptionLbl: TextConst ENU = 'Line Dimensions', ENA = 'Line Dimensions';
        VATPercentCaptionLbl: TextConst ENU = 'VAT %', ENA = 'GST %';
        VATBaseCaptionLbl: TextConst ENU = 'VAT Base', ENA = 'GST Base';
        VATAmtCaptionLbl: TextConst ENU = 'VAT Amount', ENA = 'GST Amount';
        VATAmtSpecCaptionLbl: TextConst ENU = 'VAT Amount Specification', ENA = 'GST Amount Specification';
        VATIdentCaptionLbl: TextConst ENU = 'VAT Identifier', ENA = 'GST Identifier';
        InvDiscBaseAmtCaptionLbl: TextConst ENU = 'Invoice Discount Base Amount', ENA = 'Invoice Discount Base Amount';
        LineAmtCaptionLbl: TextConst ENU = 'Line Amount', ENA = 'Line Amount';
        InvDiscAmt1CaptionLbl: TextConst ENU = 'Invoice Discount Amount', ENA = 'Invoice Discount Amount';
        TotalCaptionLbl: TextConst ENU = 'Total', ENA = 'Total';
        PaymentDetailsCaptionLbl: TextConst ENU = 'Payment Details', ENA = 'Payment Details';
        VendNoCaptionLbl: TextConst ENU = 'Vendor No.', ENA = 'Vendor No.';
        ShiptoAddCaptionLbl: TextConst ENU = 'Ship-to Address', ENA = 'Ship-to Address';
        DescCaptionLbl: TextConst ENU = 'Description', ENA = 'Description';
        GLAccNoCaptionLbl: TextConst ENU = 'G/L Account No.', ENA = 'G/L Account No.';
        PrepmtSpecCaptionLbl: TextConst ENU = 'Prepayment Specification', ENA = 'Prepayment Specification';
        PrepmtVATAmtSpecCaptionLbl: TextConst ENU = 'Prepayment VAT Amount Specification', ENA = 'Prepayment GST Amount Specification';
        AmtCaptionLbl: TextConst ENU = 'Amount', ENA = 'Amount';
        PaymentTermsCaptionLbl: TextConst ENU = 'Payment Terms', ENA = 'Payment Terms';
        ShpMethodCaptionLbl: TextConst ENU = 'Shipment Method', ENA = 'Shipment Method';
        PrepmtPaymentTermsDescCaptionLbl: TextConst ENU = 'Prepayment Payment Terms', ENA = 'Prepayment Payment Terms';
        AllowInvDiscCaptionLbl: TextConst ENU = 'Allow Invoice Discount', ENA = 'Allow Invoice Discount';
        CompInfoLogo: Record "Company Information";

    procedure InitializeRequest(NewNoOfCopies: Integer; NewShowInternalInfo: Boolean; NewArchiveDocument: Boolean; NewLogInteraction: Boolean);
    begin
        NoOfCopies := NewNoOfCopies;
        ShowInternalInfo := NewShowInternalInfo;
        ArchiveDocument := NewArchiveDocument;
        LogInteraction := NewLogInteraction;
    end;
}


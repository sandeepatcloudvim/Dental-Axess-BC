report 50026 "Sales - Quote - Virgin"
{
    // version NAVW17.10.00.36897,NAVDACH7.10.00.36897,NAVCH7.10.00.36897,PDF02.00,DANE0004

    // PDF02.00 01.07.13/DANE/MW - OnAfterGetRecord("First Item"): Insert Temp Log Entry if not preview
    //                           - Condition Added for Logo print from CompanyInfo when Report Selection says printing with notepaper
    //                           - Added Global Variables: rfRecRef, rcPDFDocument, cuPDFFunctions,rcReportSelection
    // 
    // DANE
    // 0001/06.06.13/KV - Adjust layout
    // 0002/28.11.13/MW - Property PreviewMode changed to "PrintLayout"
    // 0003/18.02.14/PM - Add New Pages (Report 204)
    //                  - Print Logo. (Code in Req. Pages!), Delete Var CompanyInfo1,CompanyInfo2,CompanyInfo3
    // 0004/26.06.14/PM - New Layout and RDLC
    //                    - Change BlankZero to Hidden=[Field].Value=0
    //                    - New Header New Footer
    //                    - Transfooter
    //                    - New Total
    //                    - Tel,Fax,email
    //                    - Currency
    //                    - Ident-Description
    //                    - Print Qty for Variant
    // 
    // 00005/19.10.18/SF -
    DefaultLayout = RDLC;
    RDLCLayout = './Sales - Quote - Virgin.rdl';

    CaptionML = ENU = 'Sales - Quote',
                DES = 'Verkauf - Offerte',
                ITS = 'Vendite - Offerta',
                FRS = 'Ventes : Devis';
    PreviewMode = PrintLayout;

    dataset
    {
        dataitem(Header; "Sales Header")
        {
            DataItemTableView = SORTING("Document Type", "No.") WHERE("Document Type" = CONST(Quote));
            RequestFilterFields = "No.", "Sell-to Customer No.", "No. Printed";
            RequestFilterHeadingML = ENU = 'Sales Quote',
                                     DES = 'Verkaufsofferte',
                                     ITS = 'Offerta vendita',
                                     FRS = 'Devis';
            column(DocType_Header; "Document Type")
            {
            }
            column(No_Header; "No.")
            {
            }
            column(BilltoCustNo_Header; "Bill-to Customer No.")
            {
            }
            column(VATRegNo_Header; "VAT Registration No.")
            {
            }
            column(PricesIncludingVAT_Header; "Prices Including VAT")
            {
            }
            column(RequestedDeliveryDate_Header; "Requested Delivery Date")
            {
            }
            column(YourReference_Header; "Your Reference")
            {
            }
            column(VATBaseDiscPerc_Header; "VAT Base Discount %")
            {
            }
            column(CurrencyCode_Header; cdCurrCode)
            {
            }
            column(DateCaption; DateCaptionLbl)
            {
            }
            column(CustomerNoCaption; CustomerNoCaptionLbl)
            {
            }
            column(HeaderInfoLabel1; txHeaderInfoLabel[1])
            {
            }
            column(HeaderInfoTxt1; txHeaderInfoTxT[1])
            {
            }
            column(HeaderInfoLabel2; txHeaderInfoLabel[2])
            {
            }
            column(HeaderInfoTxt2; txHeaderInfoTxT[2])
            {
            }
            column(HeaderInfoLabel3; txHeaderInfoLabel[3])
            {
            }
            column(HeaderInfoTxt3; txHeaderInfoTxT[3])
            {
            }
            column(HeaderInfoLabel4; txHeaderInfoLabel[4])
            {
            }
            column(HeaderInfoTxt4; txHeaderInfoTxT[4])
            {
            }
            column(HeaderInfoLabel5; txHeaderInfoLabel[5])
            {
            }
            column(HeaderInfoTxt5; txHeaderInfoTxT[5])
            {
            }
            column(HeaderInfoLabel6; txHeaderInfoLabel[6])
            {
            }
            column(HeaderInfoTxt6; txHeaderInfoTxT[6])
            {
            }
            column(HeaderInfoLabel7; txHeaderInfoLabel[7])
            {
            }
            column(HeaderInfoTxt7; txHeaderInfoTxT[7])
            {
            }
            column(HeaderInfoLabel8; txHeaderInfoLabel[8])
            {
            }
            column(HeaderInfoTxt8; txHeaderInfoTxT[8])
            {
            }
            column(HeaderInfoLabel9; txHeaderInfoLabel[9])
            {
            }
            column(HeaderInfoTxt9; txHeaderInfoTxT[9])
            {
            }
            column(HeaderInfoLabel10; txHeaderInfoLabel[10])
            {
            }
            column(HeaderInfoTxt10; txHeaderInfoTxT[10])
            {
            }
            column(ML_SUBTOTAL; ML_SUBTOTAL)
            {
            }
            column(ML_TOTAL_ExcVAT; ML_TOTAL_ExcVAT)
            {
            }
            column(ML_TOTAL_VAT; ML_TOTAL_VAT)
            {
            }
            column(ML_TOTAL_IncVAT; ML_TOTAL_IncVAT)
            {
            }
            column(ML_TOTAL_Discount; ML_TOTAL_Discount + txRabPrz)
            {
            }
            column(dcTotal_ExclVAT; dcTotal_ExclVAT)
            {
            }
            column(dcTotal_VAT; dcTotal_VAT)
            {
            }
            column(dcTotal_IncVAT; dcTotal_IncVAT)
            {
            }
            column(dcTotal_Discount; dcTotal_Discount)
            {
            }
            column(ML_FOOT_VAT; ML_FOOT_VAT)
            {
            }
            column(ML_FOOT_VATBASIS; ML_FOOT_VATBASIS)
            {
            }
            column(ML_FOOT_VATValue; ML_FOOT_VATValue)
            {
            }
            column(ML_TransferLabel; ML_TransferLabel)
            {
            }
            column(FOOT_VAT_1; dcarFOOT_VAT[1])
            {
            }
            column(FOOT_VAT_2; dcarFOOT_VAT[2])
            {
            }
            column(FOOT_VAT_3; dcarFOOT_VAT[3])
            {
            }
            column(FOOT_VATID_1; txarFOOT_VATID[1])
            {
            }
            column(FOOT_VATID_2; txarFOOT_VATID[2])
            {
            }
            column(FOOT_VATID_3; txarFOOT_VATID[3])
            {
            }
            column(FOOT_VATBASIS_1; dcarFOOT_VATBASIS[1])
            {
            }
            column(FOOT_VATBASIS_2; dcarFOOT_VATBASIS[2])
            {
            }
            column(FOOT_VATBASIS_3; dcarFOOT_VATBASIS[3])
            {
            }
            column(FOOT_VATValue_1; dcarFOOT_VATValue[1])
            {
            }
            column(FOOT_VATValue_2; dcarFOOT_VATValue[2])
            {
            }
            column(FOOT_VATValue_3; dcarFOOT_VATValue[3])
            {
            }
            column(HasNoVat; not boHasVat)
            {
            }
            column(SalesPerson_EMail; SalesPurchPerson."E-Mail")
            {
            }
            dataitem(CopyLoop; "Integer")
            {
                DataItemTableView = SORTING(Number);
                column(CompanyInfo_Picture; CompanyInfo.Picture)
                {
                }
                column(CompanyInfo_PhoneNo; CompanyInfo."Phone No.")
                {
                }
                column(CompanyInfo_FaxNo; CompanyInfo."Fax No.")
                {
                }
                column(CompanyInfo_Email; CompanyInfo."E-Mail")
                {
                }
                column(CompanyInfo_HomePage; CompanyInfo."Home Page")
                {
                }
                column(CompanyInfo_VATRegNo; CompanyInfo."VAT Registration No.")
                {
                }
                column(CompanyInfo_RegNo; CompanyInfo."Registration No.")
                {
                }
                column(CompanyInfo_GiroNo; CompanyInfo."Giro No.")
                {
                }
                column(CompanyInfo_BankName; CompanyInfo."Bank Name")
                {
                }
                column(CompanyInfo_BankAccNo; CompanyInfo."Bank Account No.")
                {
                }
                column(CompanyInfoPhoneNoCaption; CompanyInfoPhoneNoCaptionLbl)
                {
                }
                column(CompanyInfoFaxNoCaption; CompanyInfoFaxNoCaptionLbl)
                {
                }
                column(CompanyInfoEmailCaption; CompanyInfoEmailCaptionLbl)
                {
                }
                column(CompanyInfoHomePageCaption; CompanyInfoHomePageCaptionLbl)
                {
                }
                column(CompanyInfoVATRegNoCaption; CompanyInfoVATRegNoCaptionLbl)
                {
                }
                column(CompanyInfoRegNoCaption; CompanyInfoRegNoCaptionLbl)
                {
                }
                dataitem(PageLoop; "Integer")
                {
                    DataItemTableView = SORTING(Number) WHERE(Number = CONST(1));
                    column(DocumentTitle_Copy_No; STRSUBSTNO(Text004, CopyText) + '  ' + Header."No.")
                    {
                    }
                    column(PageCaption; STRSUBSTNO(Text005, ''))
                    {
                    }
                    column(OutputNo; OutputNo)
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
                    column(CompanyAddr5; CompanyAddr[5])
                    {
                    }
                    column(CompanyAddr6; CompanyAddr[6])
                    {
                    }
                    column(HeaderLabel1; HeaderLabel[1])
                    {
                    }
                    column(HeaderLabel2; HeaderLabel[2])
                    {
                    }
                    column(HeaderLabel3; HeaderLabel[3])
                    {
                    }
                    column(HeaderLabel4; HeaderLabel[4])
                    {
                    }
                    column(HeaderTxt1; HeaderTxt[1])
                    {
                    }
                    column(HeaderTxt2; HeaderTxt[2])
                    {
                    }
                    column(HeaderTxt3; HeaderTxt[3])
                    {
                    }
                    column(HeaderTxt4; HeaderTxt[4])
                    {
                    }
                    column(FooterLabel1; FooterLabel[1])
                    {
                    }
                    column(FooterLabel2; FooterLabel[2])
                    {
                    }
                    column(FooterLabel3; FooterLabel[3])
                    {
                    }
                    column(FooterLabel4; FooterLabel[4])
                    {
                    }
                    column(FooterLabel5; FooterLabel[5])
                    {
                    }
                    column(FooterLabel6; FooterLabel[6])
                    {
                    }
                    column(FooterLabel7; FooterLabel[7])
                    {
                    }
                    column(FooterLabel8; FooterLabel[8])
                    {
                    }
                    column(FooterTxt1; FooterTxt[1])
                    {
                    }
                    column(FooterTxt2; FooterTxt[2])
                    {
                    }
                    column(FooterTxt3; FooterTxt[3])
                    {
                    }
                    column(FooterTxt4; FooterTxt[4])
                    {
                    }
                    column(FooterTxt5; FooterTxt[5])
                    {
                    }
                    column(FooterTxt6; FooterTxt[6])
                    {
                    }
                    column(FooterTxt7; FooterTxt[7])
                    {
                    }
                    column(FooterTxt8; FooterTxt[8])
                    {
                    }
                    dataitem(DimensionLoop1; "Integer")
                    {
                        DataItemLinkReference = Header;
                        DataItemTableView = SORTING(Number) WHERE(Number = FILTER(1 ..));
                        column(DimText1; DimText)
                        {
                        }
                        column(DimensionLoopNumber1; Number)
                        {
                        }
                        column(HeaderDimensionsCaption1; HeaderDimensionsCaptionLbl)
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
                                        '%1, %2 %3', DimText, DimSetEntry1."Dimension Code", DimSetEntry1."Dimension Value Code");
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
                    dataitem(Line; "Sales Line")
                    {
                        DataItemLink = "Document Type" = FIELD("Document Type"), "Document No." = FIELD("No.");
                        DataItemLinkReference = Header;
                        DataItemTableView = SORTING("Document Type", "Document No.", "Line No.");

                        trigger OnPreDataItem();
                        begin
                            CurrReport.BREAK;
                        end;
                    }
                    dataitem(RoundLoop; "Integer")
                    {
                        DataItemTableView = SORTING(Number);
                        column(LineNo_Line; Line."Line No.")
                        {
                        }
                        column(No_Line; Line."No.")
                        {
                        }
                        column(Desc_Line; Line.Description)
                        {
                        }
                        column(Quantity_Line; Line.Quantity)
                        {
                        }
                        column(UnitofMeasure_Line; Line."Unit of Measure")
                        {
                        }
                        column(LineAmout_Line; Line."Line Amount")
                        {
                            AutoFormatExpression = Header."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(UnitPrice_Line; Line."Unit Price")
                        {
                            AutoFormatExpression = Header."Currency Code";
                            AutoFormatType = 2;
                        }
                        column(LineDiscount_Line; Line."Line Discount %")
                        {
                        }
                        column(AllowInvoiceDisc_Line; Line."Allow Invoice Disc.")
                        {
                        }
                        column(VATPercentage_Line; Line."VAT %")
                        {
                        }
                        column(VATIdentifier_Line; Line."VAT Identifier")
                        {
                        }
                        column(SubtotalNet_Line; SalesLine.Amount)
                        {
                        }
                        column(InvDiscountAmount_Line; -Line."Inv. Discount Amount")
                        {
                            AutoFormatExpression = Header."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(DiscountAmt_Line; Line."Line Amount" - SalesLine."Inv. Discount Amount")
                        {
                            AutoFormatExpression = Header."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(Type_Line; FORMAT(Line.Type))
                        {
                        }
                        column(AllowInvoiceDisYesNo_Line; FORMAT(Line."Allow Invoice Disc."))
                        {
                        }
                        column(SalesLineLineDiscCaption; SalesLineLineDiscCaptionLbl)
                        {
                        }
                        column(SalesLineInvDiscAmtCaption; SalesLineInvDiscAmtCaptionLbl)
                        {
                        }
                        column(TotalText; TotalText)
                        {
                        }
                        column(TotalExclVATText; TotalExclVATText)
                        {
                        }
                        column(TotalInclVATText; TotalInclVATText)
                        {
                        }
                        column(TotalAmountInclVAT; TotalAmountInclVAT)
                        {
                            AutoFormatExpression = Header."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(UnitPriceCaption; UnitPriceCaptionLbl)
                        {
                        }
                        column(AmountCaption; AmountCaptionLbl)
                        {
                        }
                        column(SubtotalCaption; SubtotalCaptionLbl)
                        {
                        }
                        column(No_LineCaption; Line.FIELDCAPTION("No."))
                        {
                        }
                        column(Desc_sLineCaption; Line.FIELDCAPTION(Description))
                        {
                        }
                        column(Quantity_LineCaption; Line.FIELDCAPTION(Quantity))
                        {
                        }
                        column(UnitofMeasure_LineCaption; Line.FIELDCAPTION("Unit of Measure"))
                        {
                        }
                        column(VATPercentageCaption; VATAmountLineVATCaptionLbl)
                        {
                        }
                        column(IsVariant; IsVariant)
                        {
                        }
                        column(NewPageGroupNo; NewPageGroupNo)
                        {
                        }
                        column(NewPageLine; NewPageLine)
                        {
                        }
                        column(fcIdentLine; fcIdentLine)
                        {
                        }
                        column(NoTitleType_Line; fcSectionLine_title)
                        {
                        }
                        column(NoTextType_Line; fcSectionLine_text)
                        {
                        }
                        column(NoDefaultType_Line; fcSectionLine_default)
                        {
                        }
                        column(NoVariantType_Line; fcSectionLine_variant)
                        {
                        }
                        dataitem(DimensionLoop2; "Integer")
                        {
                            DataItemTableView = SORTING(Number) WHERE(Number = FILTER(1 ..));
                            column(DimText_DimnLoop2; DimText)
                            {
                            }
                            column(LineDimensionsCaption2; LineDimensionsCaptionLbl)
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

                                DimSetEntry2.SETRANGE("Dimension Set ID", Line."Dimension Set ID");
                            end;
                        }

                        trigger OnAfterGetRecord();
                        begin
                            if Number = 1 then begin
                                SalesLine.FIND('-');
                                Line.FINDFIRST;
                            end else begin
                                SalesLine.NEXT;
                                Line.NEXT;
                            end;

                            //IF Line."Quote Variant" = Line."Quote Variant"::"1" THEN
                            // CurrReport.SKIP;

                            if not Header."Prices Including VAT" and
                               (SalesLine."VAT Calculation Type" = SalesLine."VAT Calculation Type"::"Full VAT")
                            then
                                SalesLine."Line Amount" := 0;

                            if (SalesLine.Type = SalesLine.Type::"G/L Account") and (not ShowInternalInfo) then
                                Line."No." := '';

                            //IsVariant := Line."Quote Variant" = Line."Quote Variant"::"2";

                            //-0003
                            NewPageLine := Line.Type = Line.Type::Item;
                            if NewPageLine then
                                NewPageGroupNo += 1;
                            //+0003
                        end;

                        trigger OnPostDataItem();
                        begin
                            SalesLine.DELETEALL;
                        end;

                        trigger OnPreDataItem();
                        begin
                            MoreLines := SalesLine.FIND('+');
                            while MoreLines and (SalesLine.Description = '') and (SalesLine."Description 2" = '') and
                                  (SalesLine."No." = '') and (SalesLine.Quantity = 0) and
                                  (SalesLine.Amount = 0)
                            do
                                MoreLines := SalesLine.NEXT(-1) <> 0;
                            if not MoreLines then
                                CurrReport.BREAK;
                            SalesLine.SETRANGE("Line No.", 0, SalesLine."Line No.");
                            SETRANGE(Number, 1, SalesLine.COUNT);
                            // CurrReport.CREATETOTALS(SalesLine."Line Amount", SalesLine."Inv. Discount Amount");
                        end;
                    }
                    dataitem(VATCounter; "Integer")
                    {
                        DataItemTableView = SORTING(Number);
                        column(VATBase_VATAmtLine; VATAmountLine."VAT Base")
                        {
                            AutoFormatExpression = Header."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATAmt_VATAmtLine; VATAmountLine."VAT Amount")
                        {
                            AutoFormatExpression = Header."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(LineAmount_VATAmtLine; VATAmountLine."Line Amount")
                        {
                            AutoFormatExpression = Header."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(InvDiscBaseAmt_VATAmtLine; VATAmountLine."Inv. Disc. Base Amount")
                        {
                            AutoFormatExpression = Header."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(InvoiceDiscAmt_VATAmtLine; VATAmountLine."Invoice Discount Amount")
                        {
                            AutoFormatExpression = Header."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATPercentage_VATAmtLine; VATAmountLine."VAT %")
                        {
                            DecimalPlaces = 0 : 5;
                        }
                        column(VATIdentifier_VATAmtLine; VATAmountLine."VAT Identifier")
                        {
                        }
                        column(VATAmountLineVATCaption; VATAmountLineVATCaptionLbl)
                        {
                        }
                        column(VATBaseCaption; VATBaseCaptionLbl)
                        {
                        }
                        column(VATAmtCaption; VATAmtCaptionLbl)
                        {
                        }
                        column(VATAmountSpecificationCaption; VATAmountSpecificationCaptionLbl)
                        {
                        }
                        column(LineAmtCaption; LineAmtCaptionLbl)
                        {
                        }
                        column(InvoiceDiscBaseAmtCaption; InvoiceDiscBaseAmtCaptionLbl)
                        {
                        }
                        column(InvoiceDiscAmtCaption; InvoiceDiscAmtCaptionLbl)
                        {
                        }
                        column(TotalCaption; TotalCaptionLbl)
                        {
                        }
                        column(PrintVatSpec; boPrintVatSpec)
                        {
                        }

                        trigger OnAfterGetRecord();
                        begin
                            VATAmountLine.GetLine(Number);

                            //-0004
                            if Number < 4 then begin
                                dcarFOOT_VAT[Number] := VATAmountLine."VAT %";
                                txarFOOT_VATID[Number] := VATAmountLine."VAT Identifier";
                                dcarFOOT_VATBASIS[Number] := VATAmountLine."VAT Base";
                                dcarFOOT_VATValue[Number] := VATAmountLine."Amount Including VAT" - VATAmountLine."VAT Base";
                                boPrintVatSpec := Number > 1;
                                boHasVat := true;
                            end;
                            //+0004
                        end;

                        trigger OnPreDataItem();
                        begin
                            //-0004
                            CLEAR(dcarFOOT_VAT);
                            CLEAR(txarFOOT_VATID);
                            CLEAR(dcarFOOT_VATBASIS);
                            CLEAR(dcarFOOT_VATValue);
                            CLEAR(boPrintVatSpec);
                            CLEAR(boHasVat);
                            //+0004

                            if VATAmount = 0 then
                                CurrReport.BREAK;
                            SETRANGE(Number, 1, VATAmountLine.COUNT);
                            //  CurrReport.CREATETOTALS(
                            //  VATAmountLine."Line Amount", VATAmountLine."Inv. Disc. Base Amount",
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
                        column(VALVATBaseLCY; VALVATBaseLCY)
                        {
                            AutoFormatType = 1;
                        }
                        column(VALVATAmountLCY; VALVATAmountLCY)
                        {
                            AutoFormatType = 1;
                        }
                        column(VALPercentage_VATAmtLine; VATAmountLine."VAT %")
                        {
                            DecimalPlaces = 0 : 5;
                        }
                        column(VALIdentifier_VATAmtLine; VATAmountLine."VAT Identifier")
                        {
                        }

                        trigger OnAfterGetRecord();
                        begin
                            VATAmountLine.GetLine(Number);
                            VALVATBaseLCY :=
                              VATAmountLine.GetBaseLCY(
                                Header."Posting Date", Header."Currency Code", Header."Currency Factor");
                            VALVATAmountLCY :=
                              VATAmountLine.GetAmountLCY(
                                Header."Posting Date", Header."Currency Code", Header."Currency Factor");
                        end;

                        trigger OnPreDataItem();
                        begin
                            if (not GLSetup."Print VAT specification in LCY") or
                               (Header."Currency Code" = '') or
                               (VATAmountLine.GetTotalVATAmount = 0)
                            then
                                CurrReport.BREAK;

                            SETRANGE(Number, 1, VATAmountLine.COUNT);
                            //  CurrReport.CREATETOTALS(VALVATBaseLCY, VALVATAmountLCY);

                            if GLSetup."LCY Code" = '' then
                                VALSpecLCYHeader := Text008 + Text009
                            else
                                VALSpecLCYHeader := Text008 + FORMAT(GLSetup."LCY Code");

                            CurrExchRate.FindCurrency(Header."Order Date", Header."Currency Code", 1);
                            VALExchRate := STRSUBSTNO(Text010, CurrExchRate."Relational Exch. Rate Amount", CurrExchRate."Exchange Rate Amount");
                        end;
                    }
                    dataitem(Total; "Integer")
                    {
                        DataItemTableView = SORTING(Number) WHERE(Number = CONST(1));
                    }
                    dataitem(Total2; "Integer")
                    {
                        DataItemTableView = SORTING(Number) WHERE(Number = CONST(1));
                        column(SelltoCustNo_Header; Header."Sell-to Customer No.")
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
                        column(SelltoCustNo_HeaderCaption; Header.FIELDCAPTION("Sell-to Customer No."))
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
                var
                    SalesPost: Codeunit "Sales-Post";
                begin
                    CLEAR(SalesLine);
                    CLEAR(SalesPost);
                    SalesLine.DELETEALL;
                    VATAmountLine.DELETEALL;
                    SalesPost.GetSalesLines(Header, SalesLine, 0);
                    SalesLine.CalcVATAmountLines(0, Header, SalesLine, VATAmountLine);
                    SalesLine.UpdateVATOnLines(0, Header, SalesLine, VATAmountLine);
                    VATAmount := VATAmountLine.GetTotalVATAmount;
                    VATBaseAmount := VATAmountLine.GetTotalVATBase;
                    VATDiscountAmount :=
                      VATAmountLine.GetTotalVATDiscount(Header."Currency Code", Header."Prices Including VAT");
                    TotalAmountInclVAT := VATAmountLine.GetTotalAmountInclVAT;

                    //-0004
                    dcTotal_IncVAT := TotalAmountInclVAT;
                    dcTotal_VAT := VATAmount;
                    dcTotal_ExclVAT := VATBaseAmount;
                    dcTotal_Discount := VATAmountLine.GetTotalInvDiscAmount;
                    if Header."Invoice Discount Calculation" = Header."Invoice Discount Calculation"::"%" then
                        txRabPrz := ' (' + FORMAT(Header."Invoice Discount Value") + '%)'
                    else
                        txRabPrz := '';
                    //+0004

                    if Number > 1 then begin
                        CopyText := Text003;
                        OutputNo += 1;
                    end;
                    // CurrReport.PAGENO := 1;
                end;

                trigger OnPostDataItem();
                begin
                    if Print then
                        SalesCountPrinted.RUN(Header);
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
            var
                "Sell-to Country": Text[50];
            begin
                IF "Language Code" <> '' then
                    CurrReport.LANGUAGE := Language.GetLanguageID("Language Code");

                PrepareHeader;
                PrepareFooter;

                //-PDF02.00
                //IF NOT CurrReport.PREVIEW THEN
                //  IF rcPDFDocument.READPERMISSION THEN BEGIN
                //   rfRecRef.GETTABLE(Header);
                //   cuPDFFunctions.fcCreateTempLogEntry(rfRecRef.NUMBER,"Document Type","No.",CurrReport.OBJECTID(FALSE));
                // END;
                //+PDF02.00

                //-0001
                fcPrepareHeaderInfo;
                //+0001

                if RespCenter.GET("Responsibility Center") then begin
                    FormatAddr.RespCenter(CompanyAddr, RespCenter);
                    CompanyInfo."Phone No." := RespCenter."Phone No.";
                    CompanyInfo."Fax No." := RespCenter."Fax No.";
                end else
                    FormatAddr.Company(CompanyAddr, CompanyInfo);

                DimSetEntry1.SETRANGE("Dimension Set ID", "Dimension Set ID");

                if "Salesperson Code" = '' then begin
                    SalesPurchPerson.INIT;
                    SalesPersonText := '';
                end else begin
                    if SalesPurchPerson.GET("Salesperson Code") then;
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
                    //-0004
                    cdCurrCode := GLSetup."LCY Code";
                    //+0004
                end else begin
                    TotalText := STRSUBSTNO(Text001, "Currency Code");
                    TotalInclVATText := STRSUBSTNO(Text002, "Currency Code");
                    TotalExclVATText := STRSUBSTNO(Text006, "Currency Code");
                    //-0004
                    cdCurrCode := "Currency Code";
                    //+0004

                end;
                //-0004
                //FormatAddr.SalesHeaderBillTo(CustAddr,Header);
                FormatAddr.SalesHeaderSellTo(CustAddr, Header);
                //+0004
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

                if Country.GET("Sell-to Country/Region Code") then
                    "Sell-to Country" := Country.Name;
                FormatAddr.SalesHeaderShipTo(ShipToAddr, CustAddr, Header);
                ShowShippingAddr := "Sell-to Customer No." <> "Bill-to Customer No.";
                for i := 1 to ARRAYLEN(ShipToAddr) do
                    if (ShipToAddr[i] <> CustAddr[i]) and (ShipToAddr[i] <> '') and (ShipToAddr[i] <> "Sell-to Country") then
                        ShowShippingAddr := true;

                if Print then begin
                    if ArchiveDocument then
                        ArchiveManagement.StoreSalesDocument(Header, LogInteraction);

                    if LogInteraction then begin
                        CALCFIELDS("No. of Archived Versions");
                        if "Bill-to Contact No." <> '' then
                            SegManagement.LogDocument(
                              1, "No.", "Doc. No. Occurrence",
                              "No. of Archived Versions", DATABASE::Contact, "Bill-to Contact No.",
                              "Salesperson Code", "Campaign No.", "Posting Description", "Opportunity No.")
                        else
                            SegManagement.LogDocument(
                              1, "No.", "Doc. No. Occurrence",
                              "No. of Archived Versions", DATABASE::Customer, "Bill-to Customer No.",
                              "Salesperson Code", "Campaign No.", "Posting Description", "Opportunity No.");
                    end;
                end;
                MARK(true);
            end;

            trigger OnPostDataItem();
            var
                ToDo: Record "To-do";
                FileManagement: Codeunit "File Management";
            begin
                MARKEDONLY := true;
                COMMIT;
                CurrReport.LANGUAGE := GLOBALLANGUAGE;
                // if not FileManagement.IsWebClient then
                if FIND('-') and ToDo.WRITEPERMISSION then
                    if Print and (NoOfRecords = 1) then
                        if CONFIRM(Text007) then;
                //     CreateTodo;
            end;

            trigger OnPreDataItem();
            begin
                NoOfRecords := COUNT;
                Print := Print or not CurrReport.PREVIEW;
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
                                DES = 'Optionen',
                                ITS = 'Opzioni',
                                FRS = 'Options';
                    field(NoOfCopies; NoOfCopies)
                    {
                        ApplicationArea = All;
                        CaptionML = ENU = 'No. of Copies',
                                    DES = 'Anzahl Kopien',
                                    ITS = 'Nr. di copie',
                                    FRS = 'Nombre de copies';
                    }
                    field(ShowInternalInfo; ShowInternalInfo)
                    {
                        ApplicationArea = All;
                        CaptionML = ENU = 'Show Internal Information',
                                    DES = 'Interne Informationen anzeigen',
                                    ITS = 'Mostra informazioni interne',
                                    FRS = 'Afficher info. internes';
                    }
                    field(ArchiveDocument; ArchiveDocument)
                    {
                        ApplicationArea = All;
                        CaptionML = ENU = 'Archive Document',
                                    DES = 'Beleg archivieren',
                                    ITS = 'Archivia documento',
                                    FRS = 'Archiver document';

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
                                    DES = 'Aktivität protokollieren',
                                    ITS = 'Log interazione',
                                    FRS = 'Journal interaction';
                        Enabled = LogInteractionEnable;

                        trigger OnValidate();
                        begin
                            if LogInteraction then
                                ArchiveDocument := ArchiveDocumentEnable;
                        end;
                    }
                    field("Print Logo"; boPrintLogoReqPage)
                    {
                        ApplicationArea = All;
                        CaptionML = ENU = 'Print Logo',
                                    DES = 'Logo drucken';
                    }
                }
            }
        }

        actions
        {
        }

        trigger OnClosePage();
        begin
            //-0003
            boPrintLogo := boPrintLogoReqPage;
            //+0003
        end;

        trigger OnInit();
        begin
            LogInteractionEnable := true;
        end;

        trigger OnOpenPage();
        begin
            // ArchiveDocument := SalesSetup."Archive Quotes and Orders";
            LogInteraction := SegManagement.FindInteractTmplCode(1) <> '';

            LogInteractionEnable := LogInteraction;

            //-0003
            boPrintLogoReqPage := boPrintLogo;
            //+0003
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

        //-PDF02.00
        //-0004
        //rcReportSelection.SETFILTER(rcReportSelection."Report ID", COPYSTR(CurrReport.OBJECTID(FALSE),STRPOS(CurrReport.OBJECTID(FALSE), ' ') + 1));
        //+0004
        //IF NOT (rcReportSelection.FINDFIRST AND rcReportSelection."Printing with Notepaper") THEN BEGIN
        //+PDF02.00
        //-0003
        //  boPrintLogo := TRUE;
        //+0003
        //-PDF02.00
        //END;
        //+PDF02.00
    end;

    trigger OnPreReport();
    begin
        //-0003
        if boPrintLogo or CurrReport.PREVIEW then
            CompanyInfo.CALCFIELDS(Picture);
        //+0003
        NewPageGroupNo := 0;
    end;

    var
        Text000: TextConst ENU = 'Salesperson', DES = 'Verkäufer', ITS = 'Agente', FRS = 'Vendeur';
        Text001: TextConst ENU = 'Total %1', DES = 'Total %1', ITS = 'Totale %1', FRS = 'Total %1';
        Text002: TextConst ENU = 'Total %1 Incl. VAT', DES = 'Total %1 inkl. MWST', ITS = 'Totale %1 IVA incl.', FRS = 'Total %1 TTC';
        Text003: TextConst ENU = 'COPY', DES = 'KOPIE', ITS = 'COPIA', FRS = 'COPIE';
        Text004: TextConst ENU = 'Sales - Quote %1', DES = 'Verkauf - Offerte %1', ITS = 'Vendite - Offerta %1', FRS = 'Ventes : Devis %1';
        Text005: TextConst ENU = 'Page %1', DES = 'Seite %1', ITS = 'Pagina %1', FRS = 'Page %1';
        Text006: TextConst ENU = 'Total %1 Excl. VAT', DES = 'Total %1 ohne MWST', ITS = 'Totale %1 IVA escl.', FRS = 'Total %1 HT';
        GLSetup: Record "General Ledger Setup";
        ShipmentMethod: Record "Shipment Method";
        PaymentTerms: Record "Payment Terms";
        SalesPurchPerson: Record "Salesperson/Purchaser";
        CompanyInfo: Record "Company Information";
        SalesSetup: Record "Sales & Receivables Setup";
        VATAmountLine: Record "VAT Amount Line" temporary;
        SalesLine: Record "Sales Line" temporary;
        DimSetEntry1: Record "Dimension Set Entry";
        DimSetEntry2: Record "Dimension Set Entry";
        RespCenter: Record "Responsibility Center";
        Language: Codeunit Language;
        Country: Record "Country/Region";
        CurrExchRate: Record "Currency Exchange Rate";
        SalesCountPrinted: Codeunit "Sales-Printed";
        FormatAddr: Codeunit "Format Address";
        SegManagement: Codeunit SegManagement;
        ArchiveManagement: Codeunit ArchiveManagement;
        CustAddr: array[8] of Text[50];
        ShipToAddr: array[8] of Text[50];
        CompanyAddr: array[8] of Text[50];
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
        Text007: TextConst ENU = 'Do you want to create a follow-up to-do?', DES = 'Möchten Sie eine Nachfassaufgabe erstellen?', ITS = 'Creare cose da fare di follow-up?', FRS = 'Voulez-vous créer une action de suivi ?';
        NoOfRecords: Integer;
        VALVATBaseLCY: Decimal;
        VALVATAmountLCY: Decimal;
        VALSpecLCYHeader: Text[80];
        VALExchRate: Text[50];
        Text008: TextConst ENU = 'VAT Amount Specification in ', DES = 'MWST-Betrag Spezifikation in ', ITS = 'Specifica importo IVA in ', FRS = 'Détail TVA dans ';
        Text009: TextConst ENU = 'Local Currency', DES = 'Landeswährung', ITS = 'Valuta locale', FRS = 'Devise société';
        Text010: TextConst ENU = 'Exchange rate: %1/%2', DES = 'Wechselkurs: %1/%2', ITS = 'Tasso di cambio: %1/%2', FRS = 'Taux de change : %1/%2';
        OutputNo: Integer;
        Print: Boolean;
        [InDataSet]
        ArchiveDocumentEnable: Boolean;
        [InDataSet]
        LogInteractionEnable: Boolean;
        CompanyInfoPhoneNoCaptionLbl: TextConst ENU = 'Phone', DES = 'Telefon', ITS = 'Nr. di telefono', FRS = 'N° téléphone';
        CompanyInfoFaxNoCaptionLbl: TextConst ENU = 'Fax', DES = 'Fax', ITS = 'Fax', FRS = 'Fax';
        CompanyInfoVATRegNoCaptionLbl: TextConst ENU = 'VAT Registration No.', DES = 'MWST Nr.', ITS = 'Partita IVA', FRS = 'N° identif. intracomm.';
        CompanyInfoGiroNoCaptionLbl: TextConst ENU = 'Giro No.', DES = 'Postgirokontonr.', ITS = 'Nr. giro', FRS = 'N° CCP';
        CompanyInfoBankNameCaptionLbl: TextConst ENU = 'Bank', DES = 'Bankkonto', ITS = 'Banca', FRS = 'Banque';
        CompanyInfoBankAccountNoCaptionLbl: TextConst ENU = 'Account No.', DES = 'Kontonr.', ITS = 'Nr. conto', FRS = 'N° compte';
        CompanyInfoHomePageCaptionLbl: TextConst ENU = 'Home Page', DES = 'Homepage', ITS = 'Home page', FRS = 'Page d''accueil';
        CompanyInfoEmailCaptionLbl: TextConst ENU = 'E-Mail', DES = 'E-Mail', ITS = 'E-mail', FRS = 'E-mail';
        CompanyInfoRegNoCaptionLbl: TextConst ENU = 'Reg. No.', DES = 'Reg-Nr.', ITS = 'Nr. Reg.', FRS = 'N° enreg.';
        DateCaptionLbl: TextConst ENU = 'Date', DES = 'Datum', ITS = 'Data', FRS = 'Date';
        CustomerNoCaptionLbl: TextConst ENU = 'Customer No.', DES = 'Debitorennr.', ITS = 'Nr. cliente', FRS = 'N° client';
        SalesHeaderShipmentDateCaptionLbl: TextConst ENU = 'Shipment Date', DES = 'Warenausg.-Datum', ITS = 'Data spedizione', FRS = 'Date d''expédition';
        SalesHeaderNoCaptionLbl: TextConst ENU = 'Quote No.', DES = 'Offertennr.', ITS = 'Nr. offerta', FRS = 'N° devis';
        PaymentTermsDescriptionCaptionLbl: TextConst ENU = 'Payment Terms', DES = 'Zahlungsbedingungen', ITS = 'Condizioni pagamento', FRS = 'Conditions de paiement';
        ShipmentMethodDescriptionCaptionLbl: TextConst ENU = 'Shipment Method', DES = 'Lieferbedingung', ITS = 'Metodo di spedizione', FRS = 'Conditions de livraison';
        HeaderDimensionsCaptionLbl: TextConst ENU = 'Header Dimensions', DES = 'Kopfdimensionen', ITS = 'Dimensioni testata', FRS = 'Analytique en-tête';
        UnitPriceCaptionLbl: TextConst ENU = 'Unit Price', DES = 'VK-Preis', ITS = 'Prezzo unitario', FRS = 'Prix unitaire';
        AmountCaptionLbl: TextConst ENU = 'Amount', DES = 'Betrag', ITS = 'Importo', FRS = 'Montant';
        SubtotalCaptionLbl: TextConst ENU = 'Subtotal', DES = 'Zw.summe', ITS = 'Subtotale', FRS = 'Sous-total';
        SalesLineInvDiscAmtCaptionLbl: TextConst ENU = 'Invoice Discount Amount', DES = 'Rechnungsrab.-Betrag', ITS = 'Importo sconto fattura', FRS = 'Montant remise facture';
        VATDiscountAmountCaptionLbl: TextConst ENU = 'Payment Discount on VAT', DES = 'Skonto auf MWST', ITS = 'Sconto pagamento su IVA', FRS = 'Escompte sur TVA';
        VATAmountLineVATCaptionLbl: TextConst ENU = 'VAT', DES = 'MWST', ITS = 'IVA', FRS = 'TVA';
        VATBaseCaptionLbl: TextConst ENU = 'VAT Base', DES = 'MWST Basis', ITS = 'Imponibile IVA', FRS = 'Base TVA';
        VATAmtCaptionLbl: TextConst ENU = 'VAT Amount', DES = 'MWST-Betrag', ITS = 'Importo IVA', FRS = 'Montant TVA';
        VATAmountSpecificationCaptionLbl: TextConst ENU = 'VAT Amount Specification', DES = 'MWST-Betrag - Spezifikation', ITS = 'Specifica importo IVA', FRS = 'Détail montant TVA';
        LineAmtCaptionLbl: TextConst ENU = 'Line Amount', DES = 'Zeilenbetrag', ITS = 'Importo riga', FRS = 'Montant ligne';
        InvoiceDiscBaseAmtCaptionLbl: TextConst ENU = 'Invoice Discount Base Amount', DES = 'Rechnungsrab.-Bem.grundlage', ITS = 'Importo imponibile sconto fattura', FRS = 'Montant base remise facture';
        InvoiceDiscAmtCaptionLbl: TextConst ENU = 'Invoice Discount Amount', DES = 'Rechnungsrab.-Betrag', ITS = 'Importo sconto fattura', FRS = 'Montant remise facture';
        TotalCaptionLbl: TextConst ENU = 'Total', DES = 'Gesamt', ITS = 'Totale', FRS = 'Total';
        ShiptoAddressCaptionLbl: TextConst ENU = 'Ship-to Address', DES = 'Lief. an Adresse', ITS = 'Spedire a - Indirizzo', FRS = 'Adresse destinataire';
        SalesLineVATIdentifierCaptionLbl: TextConst ENU = 'VAT Identifier', DES = 'MWST ID', ITS = 'Codice IVA', FRS = 'Identifiant TVA';
        HeaderLabel: array[20] of Text[30];
        HeaderTxt: array[20] of Text[120];
        FooterLabel: array[20] of Text[30];
        FooterTxt: array[20] of Text[120];
        SalesLineLineDiscCaptionLbl: TextConst ENU = '%', DES = '%', ITS = '%', FRS = '%';
        SalesLineAllowInvoiceDiscCaptionLbl: TextConst ENU = 'Allow Invoice Discount', DES = 'Rechnungsrabatt zulassen', ITS = 'Consenti sconto fattura', FRS = 'Autoriser remise facture';
        LineDimensionsCaptionLbl: TextConst ENU = 'Line Dimensions', DES = 'Zeilendimensionen', ITS = 'Dimensioni riga', FRS = 'Analytique ligne';
        ML_SalesPerson: TextConst ENU = 'Salesperson', DES = 'Verkäufer', ITS = 'Agente', FRS = 'Vendeur';
        ML_Reference: TextConst ENU = 'Reference', DES = 'Referenz', ITS = 'Riferimento', FRS = 'Référence';
        ML_PmtTerms: TextConst ENU = 'Payment Terms', DES = 'Zahlungsbedingungen', ITS = 'Condizioni pagamento', FRS = 'Conditions de paiement';
        ML_ApplyToDoc: TextConst ENU = 'Refers to Document', DES = 'Ausgleich mit Beleg', ITS = 'Collega con doc.', FRS = 'Lettrage avec document';
        ML_ShipCond: TextConst ENU = 'Shipping Conditions', DES = 'Lieferbedingungen', ITS = 'Metodi di spedizione', FRS = 'Conditions livraison';
        ML_ShipAdr: TextConst ENU = 'Shipping Address', DES = 'Lieferadresse', ITS = 'Spedire a - Indirizzo', FRS = 'Adresse destinataire';
        ML_InvAdr: TextConst ENU = 'Invoice Address', DES = 'Rechnungsadresse', ITS = 'Indirizzo fattura', FRS = 'Adresse de facture';
        ML_OrderAdr: TextConst ENU = 'Order Address', DES = 'Bestelladresse', ITS = 'Indirizzi ordini', FRS = 'Adresse commande';
        ML_ShipDate: TextConst ENU = 'Shipping Date', DES = 'Lieferdatum', ITS = 'Data spedizione', FRS = 'Date expédition';
        ML_Bank: TextConst ENU = 'Bank Information', DES = 'Bankinformationen', ITS = 'Informazioni banca', FRS = 'Information banque';
        ML_AccNo: TextConst ENU = 'Account', DES = 'Konto', ITS = 'Conto', FRS = 'Compte';
        ML_Continued: TextConst ENU = 'Continued', DES = 'Fortsetzung', ITS = 'Continua', FRS = 'Suite';
        IsVariant: Boolean;
        NewPageGroupNo: Integer;
        NewPageLine: Boolean;
        txHeaderInfoTxT: array[12] of Text[120];
        txHeaderInfoLabel: array[12] of Text[30];
        boPrintVatSpec: Boolean;
        itI: Integer;
        ML_IBAN: TextConst ENU = 'IBAN', DES = 'IBAN', ITS = 'IBAN', FRS = 'IBAN';
        ML_UID: TextConst ENU = 'UID Number', DES = 'UID Nummer', ITS = 'Numero RIS', FRS = 'IDE N° ';
        ML_SWIFT: TextConst ENU = 'SWIFT Code', DES = 'SWIFT-Code', ITS = 'Codice SWIFT', FRS = 'Code SWIFT';
        txSWIFT: Text[20];
        txIBAN: Text[50];
        rfRecRef: RecordRef;
        rcReportSelection: Record "Report Selections";
        boPrintLogo: Boolean;
        boPrintLogoReqPage: Boolean;
        dcarFOOT_VAT: array[3] of Decimal;
        txarFOOT_VATID: array[3] of Text;
        dcarFOOT_VATBASIS: array[3] of Decimal;
        dcarFOOT_VATValue: array[3] of Decimal;
        ML_FOOT_VAT: TextConst ENU = 'VAT', DES = 'MWST', ITS = 'IVA', FRS = 'TVA';
        ML_FOOT_VATBASIS: TextConst ENU = 'VAT Base', DES = 'MWST Basis', ITS = 'Imponibile IVA', FRS = 'Base TVA';
        ML_FOOT_VATValue: TextConst ENU = 'VAT Amount', DES = 'MWST-Betrag', ITS = 'Importo IVA', FRS = 'Montant TVA';
        ML_TOTAL_Discount: TextConst ENU = 'Invoice Discount Amount', DES = 'Rechnungsrabatt', ITS = 'Importo sconto fattura', FRS = 'Montant remise facture';
        ML_TOTAL_ExcVAT: TextConst ENU = 'Total Excl. VAT', DES = 'Total exkl. MWST', ITS = 'Totale IVA escl.', FRS = 'Total HT';
        ML_TOTAL_VAT: TextConst ENU = 'Total VAT', DES = 'Total MWST', ITS = 'Totale IVA', FRS = 'Total TVA';
        ML_TOTAL_IncVAT: TextConst ENU = 'Total Incl. VAT', DES = 'Total inkl. MWST', ITS = 'Totale IVA incl.', FRS = 'Total TTC';
        dcTotal_Discount: Decimal;
        dcTotal_ExclVAT: Decimal;
        dcTotal_VAT: Decimal;
        dcTotal_IncVAT: Decimal;
        dcTotalLineAmount: Decimal;
        ML_TransferLabel: TextConst ENU = 'Carry Forward', DES = 'Übertrag', ITS = 'Riporto', FRS = 'Report';
        boHasVat: Boolean;
        ML_SUBTOTAL: TextConst ENU = 'Subtotal', DES = 'Zwischensumme', ITS = 'Subtotale', FRS = 'Sous-total';
        cdCurrCode: Code[10];
        txRabPrz: Text;

    procedure InitializeRequest(NoOfCopiesFrom: Integer; ShowInternalInfoFrom: Boolean; ArchiveDocumentFrom: Boolean; LogInteractionFrom: Boolean; PrintFrom: Boolean);
    begin
        NoOfCopies := NoOfCopiesFrom;
        ShowInternalInfo := ShowInternalInfoFrom;
        ArchiveDocument := ArchiveDocumentFrom;
        LogInteraction := LogInteractionFrom;
        Print := PrintFrom;
    end;

    procedure PrepareHeader();
    begin
        CLEAR(HeaderLabel);
        CLEAR(HeaderTxt);

        with Header do begin
            FormatAddr.SalesHeaderSellTo(CustAddr, Header);

            if SalesPurchPerson.GET("Salesperson Code") then begin
                HeaderLabel[2] := ML_SalesPerson;
                HeaderTxt[2] := SalesPurchPerson.Name;
            end;

            if "Your Reference" <> '' then begin
                HeaderLabel[3] := ML_Reference;
                HeaderTxt[3] := "Your Reference";
            end;

            COMPRESSARRAY(HeaderLabel);
            COMPRESSARRAY(HeaderTxt);
        end;
    end;

    procedure PrepareFooter();
    var
        itlPos: Integer;
    begin
        CLEAR(FooterLabel);
        CLEAR(FooterTxt);

        with Header do begin
            /*
              //-0004
              itlPos := 1;
              IF "Quote valid until" <> '' THEN BEGIN
                FooterLabel[itlPos] := FIELDCAPTION("Quote valid until");
                FooterTxt[itlPos] := "Quote valid until";
              END;
            */
            itlPos += 1;
            if ShipmentMethod.GET("Shipment Method Code") then begin
                FooterLabel[itlPos] := ML_ShipCond;
                ShipmentMethod.TranslateDescription(ShipmentMethod, "Language Code");
                FooterTxt[itlPos] := ShipmentMethod.Description;
            end;

            itlPos += 1;
            if ("Shipment Date" <> "Document Date") and ("Shipment Date" <> 0D) then begin
                FooterLabel[itlPos] := ML_ShipDate;
                FooterTxt[itlPos] := FORMAT("Shipment Date", 0, 4);
            end;

            itlPos += 1;
            if "Ship-to Code" <> '' then begin
                FooterLabel[itlPos] := ML_ShipAdr;
                FooterTxt[itlPos] := "Ship-to Name" + ', ' + "Ship-to Address" + ', ' + "Ship-to Post Code" + ' ' + "Ship-to City";
            end;

            itlPos += 1;
            if "Sell-to Customer No." <> "Bill-to Customer No." then begin
                FooterLabel[itlPos] := ML_InvAdr;
                FooterTxt[itlPos] := "Bill-to Name" + ', ' + "Bill-to Address" + ', ' + "Bill-to Post Code" + ' ' + "Bill-to City";
            end;

            itlPos += 1;
            if Header."Applies-to Doc. Type" <> Header."Applies-to Doc. Type"::" " then begin
                FooterTxt[itlPos] := FORMAT("Applies-to Doc. Type") + ' ' + "Applies-to Doc. No.";
                if FooterTxt[itlPos] <> '' then
                    FooterLabel[itlPos] := ML_ApplyToDoc;
            end else begin
                if PaymentTerms.GET("Payment Terms Code") then begin
                    PaymentTerms.TranslateDescription(PaymentTerms, "Language Code");
                    FooterTxt[itlPos] := PaymentTerms.Description;
                    if FooterTxt[itlPos] <> '' then
                        FooterLabel[itlPos] := ML_PmtTerms;
                end;
            end;

            itlPos += 1;
            CompanyInfo.TESTFIELD("Bank Name");
            //-0001
            if CompanyInfo."SWIFT Code" <> '' then
                txSWIFT := ML_SWIFT
            else
                txSWIFT := '';
            if CompanyInfo.IBAN <> '' then
                txIBAN := ML_IBAN
            else
                txIBAN := '';
            FooterTxt[itlPos] := CompanyInfo."Bank Name" + ', ' + txIBAN + ' ' + CompanyInfo.IBAN + ', ' + txSWIFT + ' ' + CompanyInfo."SWIFT Code";
            FooterTxt[itlPos] := DELCHR(FooterTxt[7], '>', ' ,');
            if FooterTxt[itlPos] <> '' then
                FooterLabel[itlPos] := ML_Bank;
            //+0001

            // Blank first line if empty
            FooterTxt[1] += ' ';
            FooterLabel[1] += ' ';
            //+0004
            COMPRESSARRAY(FooterLabel);
            COMPRESSARRAY(FooterTxt);
        end;

    end;

    procedure fcPrepareHeaderInfo();
    var
        itlPos: Integer;
    begin
        //-0001
        //-0004
        CLEAR(txHeaderInfoLabel);
        CLEAR(txHeaderInfoTxT);
        //+0004

        //itlPos := 1;
        //IF CompanyInfo."VAT Registration No." <> '' THEN BEGIN
        //  txHeaderInfoLabel[itlPos] := CompanyInfo.FIELDCAPTION("VAT Registration No.");
        //  txHeaderInfoTxT[itlPos] := CompanyInfo."VAT Registration No.";
        //END;

        itlPos := 1;
        if Header."Document Date" <> 0D then begin
            txHeaderInfoLabel[itlPos] := DateCaptionLbl;
            txHeaderInfoTxT[itlPos] := FORMAT(Header."Document Date", 0, '<Day,2>.<Month,2>.<Year4>');
        end;

        itlPos += 1;
        if Header."Bill-to Customer No." <> '' then begin
            txHeaderInfoLabel[itlPos] := CustomerNoCaptionLbl;
            txHeaderInfoTxT[itlPos] := Header."Bill-to Customer No.";
        end;

        itlPos += 1;
        if SalesPurchPerson.GET(Header."Salesperson Code") then begin
            txHeaderInfoLabel[itlPos] := ML_SalesPerson;
            txHeaderInfoTxT[itlPos] := SalesPurchPerson.Name;
        end;

        itlPos += 1;
        if Header."Your Reference" <> '' then begin
            txHeaderInfoLabel[itlPos] := Header.FIELDCAPTION("Your Reference");
            txHeaderInfoTxT[itlPos] := Header."Your Reference";
        end;

        itlPos += 1;
        if Header."External Document No." <> '' then begin
            txHeaderInfoLabel[itlPos] := Header.FIELDCAPTION("External Document No.");
            txHeaderInfoTxT[itlPos] := Header."External Document No.";
        end;

        itlPos += 1;
        if CompanyInfo."VAT Registration No." <> '' then begin
            txHeaderInfoLabel[itlPos] := ML_UID;
            txHeaderInfoTxT[itlPos] := CompanyInfo."VAT Registration No.";
        end;

        itlPos += 1;
        if Header."Requested Delivery Date" <> 0D then begin
            txHeaderInfoLabel[itlPos] := Header.FIELDCAPTION("Requested Delivery Date");
            txHeaderInfoTxT[itlPos] := FORMAT(Header."Requested Delivery Date", 0, '<Day,2>.<Month,2>.<Year4>');
        end;

        COMPRESSARRAY(txHeaderInfoLabel);
        COMPRESSARRAY(txHeaderInfoTxT);

        if (FooterTxt[7] = '') then begin
            for itlPos := 7 downto 2 do begin
                FooterTxt[itlPos] := FooterTxt[itlPos - 1];
                FooterLabel[itlPos] := FooterLabel[itlPos - 1];
            end;
            FooterTxt[1] := '';
            FooterLabel[1] := '';
        end;

        //+0001
    end;

    procedure fcSectionLine_title() boShowOutput: Boolean;
    begin

        //  boShowOutput := SalesLine.Type >= SalesLine.Type::"6";

        // True = Hidden
        //exit(not (boShowOutput));
    end;

    procedure fcSectionLine_text() boShowOutput: Boolean;
    begin

        boShowOutput := SalesLine.Type = SalesLine.Type::" ";

        // True = Hidden
        exit(not (boShowOutput));
    end;

    procedure fcSectionLine_default() boShowOutput: Boolean;
    begin

        // boShowOutput := not (IsVariant) and (SalesLine.Type > SalesLine.Type::" ") and (SalesLine.Type < SalesLine.Type::"6");

        // True = Hidden
        //exit(not (boShowOutput));
    end;

    procedure fcSectionLine_variant() boShowOutput: Boolean;
    begin

        //boShowOutput := IsVariant and (SalesLine.Type > SalesLine.Type::" ") and (SalesLine.Type < SalesLine.Type::"6");
        // True = Hidden
        // exit(not (boShowOutput));
    end;

    procedure fcIdentLine() itReturn: Text;
    begin
        //IF SalesLine.Level < 1 THEN
        //  EXIT;
        //EXIT(FORMAT((SalesLine.Level - 1) * 4) + 'pt');
    end;
}


tableextension 60001 Extend_T352_DefaultDimension extends "Default Dimension"
{
    fields
    {

        // Add changes to table fields here

        //  DAX003 - 10/05/2017 - Added code into UpdateCustGLobalDimCode(),UpdateItemGLobalDimCode() functions
        //            - Added code into OnInsert(),OnModify(),OnDelete() triggers



    }

    Var
        GLSetup: Record "General Ledger Setup";


    trigger OnInsert()
    var
        myInt: Integer;
    begin
        // >> DAX003
        IF "Dimension Code" = GLSetup."Shortcut Dimension 4 Code" THEN
            UpdateGlobalDimCode1(4, "Table ID", "No.", "Dimension Value Code");

        IF "Dimension Code" = GLSetup."Shortcut Dimension 5 Code" THEN
            UpdateGlobalDimCode1(5, "Table ID", "No.", "Dimension Value Code");

        IF "Dimension Code" = GLSetup."Shortcut Dimension 6 Code" THEN
            UpdateGlobalDimCode1(6, "Table ID", "No.", "Dimension Value Code");
        // << DAX003

    end;

    trigger OnModify()
    var
        myInt: Integer;
    begin

        // >> DAX003
        IF "Dimension Code" = GLSetup."Shortcut Dimension 4 Code" THEN
            UpdateGlobalDimCode1(4, "Table ID", "No.", "Dimension Value Code");

        IF "Dimension Code" = GLSetup."Shortcut Dimension 5 Code" THEN
            UpdateGlobalDimCode1(5, "Table ID", "No.", "Dimension Value Code");

        IF "Dimension Code" = GLSetup."Shortcut Dimension 6 Code" THEN
            UpdateGlobalDimCode1(6, "Table ID", "No.", "Dimension Value Code");
        // << DAX002

    end;

    trigger Ondelete()
    var
        myInt: Integer;
    begin
        // >> DAX003
        if "Dimension Code" = GLSetup."Shortcut Dimension 4 Code" then
            UpdateGlobalDimCode1(4, "Table ID", "No.", '');

        if "Dimension Code" = GLSetup."Shortcut Dimension 5 Code" then
            UpdateGlobalDimCode1(5, "Table ID", "No.", '');

        if "Dimension Code" = GLSetup."Shortcut Dimension 6 Code" then
            UpdateGlobalDimCode1(6, "Table ID", "No.", '');
        // << DAX003

    end;

    local procedure UpdateGlobalDimCode1(GlobalDimCodeNo: Integer; TableID: Integer; AccNo: Code[20]; NewDimValue: Code[20])
    var
        IsHandled: Boolean;
    begin


        case TableID of
            DATABASE::"G/L Account":
                UpdateGLAccGlobalDimCode1(GlobalDimCodeNo, AccNo, NewDimValue);
            DATABASE::Customer:
                UpdateCustGlobalDimCode1(GlobalDimCodeNo, AccNo, NewDimValue);
            DATABASE::Vendor:
                UpdateVendGlobalDimCode1(GlobalDimCodeNo, AccNo, NewDimValue);
            DATABASE::Item:
                UpdateItemGlobalDimCode1(GlobalDimCodeNo, AccNo, NewDimValue);
            DATABASE::"Resource Group":
                UpdateResGrGlobalDimCode1(GlobalDimCodeNo, AccNo, NewDimValue);
            DATABASE::Resource:
                UpdateResGlobalDimCode1(GlobalDimCodeNo, AccNo, NewDimValue);
            DATABASE::Job:
                UpdateJobGlobalDimCode1(GlobalDimCodeNo, AccNo, NewDimValue);
            DATABASE::"Bank Account":
                UpdateBankGlobalDimCode1(GlobalDimCodeNo, AccNo, NewDimValue);
            DATABASE::Employee:
                UpdateEmpoyeeGlobalDimCode1(GlobalDimCodeNo, AccNo, NewDimValue);
            DATABASE::"Fixed Asset":
                UpdateFAGlobalDimCode1(GlobalDimCodeNo, AccNo, NewDimValue);
            DATABASE::Insurance:
                UpdateInsuranceGlobalDimCode1(GlobalDimCodeNo, AccNo, NewDimValue);
            DATABASE::"Responsibility Center":
                UpdateRespCenterGlobalDimCode1(GlobalDimCodeNo, AccNo, NewDimValue);
            DATABASE::"Work Center":
                UpdateWorkCenterGlobalDimCode1(GlobalDimCodeNo, AccNo, NewDimValue);
            DATABASE::"Salesperson/Purchaser":
                UpdateSalesPurchGlobalDimCode1(GlobalDimCodeNo, AccNo, NewDimValue);
            DATABASE::Campaign:
                UpdateCampaignGlobalDimCode1(GlobalDimCodeNo, AccNo, NewDimValue);
#if not CLEAN18
            DATABASE::"Customer Template":
                UpdateCustTempGlobalDimCode1(GlobalDimCodeNo, AccNo, NewDimValue);
#endif
            DATABASE::"Cash Flow Manual Expense":
                UpdateNeutrPayGlobalDimCode1(GlobalDimCodeNo, AccNo, NewDimValue);
            DATABASE::"Cash Flow Manual Revenue":
                UpdateNeutrRevGlobalDimCode1(GlobalDimCodeNo, AccNo, NewDimValue);

            else
                OnAfterUpdateGlobalDimCode1(GlobalDimCodeNo, TableID, AccNo, NewDimValue);
        end;
    end;

    [IntegrationEvent(false, false)]
    local procedure OnAfterUpdateGlobalDimCode1(GlobalDimCodeNo: Integer; TableID: Integer; AccNo: Code[20]; NewDimValue: Code[20])
    begin
    end;


    local procedure UpdateGLAccGlobalDimCode1(GlobalDimCodeNo: Integer; GLAccNo: Code[20]; NewDimValue: Code[20])
    var
        GLAcc: Record "G/L Account";
    begin
        if GLAcc.Get(GLAccNo) then begin
            case GlobalDimCodeNo of
                1:
                    GLAcc."Global Dimension 1 Code" := NewDimValue;
                2:
                    GLAcc."Global Dimension 2 Code" := NewDimValue;

            end;
            GLAcc.Modify(true);
        end;
    end;

    local procedure UpdateCustGlobalDimCode1(GlobalDimCodeNo: Integer; CustNo: Code[20]; NewDimValue: Code[20])
    var
        Cust: Record Customer;
    begin
        if Cust.Get(CustNo) then begin
            case GlobalDimCodeNo of
                1:
                    Cust."Global Dimension 1 Code" := NewDimValue;
                2:
                    Cust."Global Dimension 2 Code" := NewDimValue;

                // >> DAX003
                4:
                    Cust."Shortcut Dimension 4 Code" := NewDimValue;
                6:
                    Cust."Shortcut Dimension 6 Code" := NewDimValue;
            // << DAX003
            end;
            Cust.Modify(true);
        end;
    end;

    local procedure UpdateVendGlobalDimCode1(GlobalDimCodeNo: Integer; VendNo: Code[20]; NewDimValue: Code[20])
    var
        Vend: Record Vendor;
    begin
        if Vend.Get(VendNo) then begin
            case GlobalDimCodeNo of
                1:
                    Vend."Global Dimension 1 Code" := NewDimValue;
                2:
                    Vend."Global Dimension 2 Code" := NewDimValue;
            end;
            Vend.Modify(true);
        end;
    end;

    local procedure UpdateItemGlobalDimCode1(GlobalDimCodeNo: Integer; ItemNo: Code[20]; NewDimValue: Code[20])
    var
        Item: Record Item;
    begin
        if Item.Get(ItemNo) then begin
            case GlobalDimCodeNo of
                1:
                    Item."Global Dimension 1 Code" := NewDimValue;
                2:
                    Item."Global Dimension 2 Code" := NewDimValue;
                // >> DAX003
                5:
                    Item."Shortcut Dimension 5 Code" := NewDimValue;
            // << DAX003


            end;
            Item.Modify(true);
        end;
    end;

    local procedure UpdateResGrGlobalDimCode1(GlobalDimCodeNo: Integer; ResGrNo: Code[20]; NewDimValue: Code[20])
    var
        ResGr: Record "Resource Group";
    begin
        if ResGr.Get(ResGrNo) then begin
            case GlobalDimCodeNo of
                1:
                    ResGr."Global Dimension 1 Code" := NewDimValue;
                2:
                    ResGr."Global Dimension 2 Code" := NewDimValue;

            end;
            ResGr.Modify(true);
        end;
    end;

    local procedure UpdateResGlobalDimCode1(GlobalDimCodeNo: Integer; ResNo: Code[20]; NewDimValue: Code[20])
    var
        Res: Record Resource;
    begin
        if Res.Get(ResNo) then begin
            case GlobalDimCodeNo of
                1:
                    Res."Global Dimension 1 Code" := NewDimValue;
                2:
                    Res."Global Dimension 2 Code" := NewDimValue;
            end;
            Res.Modify(true);
        end;
    end;

    local procedure UpdateJobGlobalDimCode1(GlobalDimCodeNo: Integer; JobNo: Code[20]; NewDimValue: Code[20])
    var
        Job: Record Job;
    begin
        if Job.Get(JobNo) then begin
            case GlobalDimCodeNo of
                1:
                    Job."Global Dimension 1 Code" := NewDimValue;
                2:
                    Job."Global Dimension 2 Code" := NewDimValue;

            end;
            Job.Modify(true);
        end;
    end;

    local procedure UpdateBankGlobalDimCode1(GlobalDimCodeNo: Integer; BankAccNo: Code[20]; NewDimValue: Code[20])
    var
        BankAcc: Record "Bank Account";
    begin
        if BankAcc.Get(BankAccNo) then begin
            case GlobalDimCodeNo of
                1:
                    BankAcc."Global Dimension 1 Code" := NewDimValue;
                2:
                    BankAcc."Global Dimension 2 Code" := NewDimValue;
            end;
            BankAcc.Modify(true);
        end;
    end;

    local procedure UpdateEmpoyeeGlobalDimCode1(GlobalDimCodeNo: Integer; EmployeeNo: Code[20]; NewDimValue: Code[20])
    var
        Employee: Record Employee;
    begin
        if Employee.Get(EmployeeNo) then begin
            case GlobalDimCodeNo of
                1:
                    Employee."Global Dimension 1 Code" := NewDimValue;
                2:
                    Employee."Global Dimension 2 Code" := NewDimValue;
            end;
            Employee.Modify(true);
        end;
    end;

    local procedure UpdateFAGlobalDimCode1(GlobalDimCodeNo: Integer; FANo: Code[20]; NewDimValue: Code[20])
    var
        FA: Record "Fixed Asset";
    begin
        if FA.Get(FANo) then begin
            case GlobalDimCodeNo of
                1:
                    FA."Global Dimension 1 Code" := NewDimValue;
                2:
                    FA."Global Dimension 2 Code" := NewDimValue;
            end;
            FA.Modify(true);
        end;
    end;

    local procedure UpdateInsuranceGlobalDimCode1(GlobalDimCodeNo: Integer; InsuranceNo: Code[20]; NewDimValue: Code[20])
    var
        Insurance: Record Insurance;
    begin
        if Insurance.Get(InsuranceNo) then begin
            case GlobalDimCodeNo of
                1:
                    Insurance."Global Dimension 1 Code" := NewDimValue;
                2:
                    Insurance."Global Dimension 2 Code" := NewDimValue;
            end;
            Insurance.Modify(true);
        end;
    end;

    local procedure UpdateRespCenterGlobalDimCode1(GlobalDimCodeNo: Integer; RespCenterNo: Code[20]; NewDimValue: Code[20])
    var
        RespCenter: Record "Responsibility Center";
    begin
        if RespCenter.Get(RespCenterNo) then begin
            case GlobalDimCodeNo of
                1:
                    RespCenter."Global Dimension 1 Code" := NewDimValue;
                2:
                    RespCenter."Global Dimension 2 Code" := NewDimValue;
            end;
            RespCenter.Modify(true);
        end;
    end;

    local procedure UpdateWorkCenterGlobalDimCode1(GlobalDimCodeNo: Integer; WorkCenterNo: Code[20]; NewDimValue: Code[20])
    var
        WorkCenter: Record "Work Center";
    begin
        if WorkCenter.Get(WorkCenterNo) then begin
            case GlobalDimCodeNo of
                1:
                    WorkCenter."Global Dimension 1 Code" := NewDimValue;
                2:
                    WorkCenter."Global Dimension 2 Code" := NewDimValue;
            end;
            WorkCenter.Modify(true);
        end;
    end;

    local procedure UpdateSalesPurchGlobalDimCode1(GlobalDimCodeNo: Integer; SalespersonPurchaserNo: Code[20]; NewDimValue: Code[20])
    var
        SalespersonPurchaser: Record "Salesperson/Purchaser";
    begin
        if SalespersonPurchaser.Get(SalespersonPurchaserNo) then begin
            case GlobalDimCodeNo of
                1:
                    SalespersonPurchaser."Global Dimension 1 Code" := NewDimValue;
                2:
                    SalespersonPurchaser."Global Dimension 2 Code" := NewDimValue;
            end;
            SalespersonPurchaser.Modify(true);
        end;
    end;

    local procedure UpdateCampaignGlobalDimCode1(GlobalDimCodeNo: Integer; CampaignNo: Code[20]; NewDimValue: Code[20])
    var
        Campaign: Record Campaign;
    begin
        if Campaign.Get(CampaignNo) then begin
            case GlobalDimCodeNo of
                1:
                    Campaign."Global Dimension 1 Code" := NewDimValue;
                2:
                    Campaign."Global Dimension 2 Code" := NewDimValue;
            end;
            Campaign.Modify(true);
        end;
    end;

#if not CLEAN18
    local procedure UpdateCustTempGlobalDimCode1(GlobalDimCodeNo: Integer; CustTemplateNo: Code[20]; NewDimValue: Code[20])
    var
        CustTemplate: Record "Customer Template";
    begin
        if CustTemplate.Get(CustTemplateNo) then begin
            case GlobalDimCodeNo of
                1:
                    CustTemplate."Global Dimension 1 Code" := NewDimValue;
                2:
                    CustTemplate."Global Dimension 2 Code" := NewDimValue;
            end;
            CustTemplate.Modify(true);
        end;
    end;
#endif

    local procedure UpdateNeutrPayGlobalDimCode1(GlobalDimCodeNo: Integer; CFManualExpenseNo: Code[20]; NewDimValue: Code[20])
    var
        CFManualExpense: Record "Cash Flow Manual Expense";
    begin
        if CFManualExpense.Get(CFManualExpenseNo) then begin
            case GlobalDimCodeNo of
                1:
                    CFManualExpense."Global Dimension 1 Code" := NewDimValue;
                2:
                    CFManualExpense."Global Dimension 2 Code" := NewDimValue;
            end;
            CFManualExpense.Modify(true);
        end;
    end;

    local procedure UpdateNeutrRevGlobalDimCode1(GlobalDimCodeNo: Integer; CFManualRevenueNo: Code[20]; NewDimValue: Code[20])
    var
        CFManualRevenue: Record "Cash Flow Manual Revenue";
    begin
        if CFManualRevenue.Get(CFManualRevenueNo) then begin
            case GlobalDimCodeNo of
                1:
                    CFManualRevenue."Global Dimension 1 Code" := NewDimValue;
                2:
                    CFManualRevenue."Global Dimension 2 Code" := NewDimValue;
            end;
            CFManualRevenue.Modify(true);
        end;
    end;


































    var
        myInt: Integer;
}
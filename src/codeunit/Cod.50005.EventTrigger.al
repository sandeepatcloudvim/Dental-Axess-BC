codeunit 50005 "Event Trigger"
{
    trigger OnRun()
    begin

    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::ReportManagement, 'OnAfterSubstituteReport', '', false, false)]
    local procedure OnSubstituteReport(ReportId: Integer; var NewReportId: Integer)
    begin
        if ReportId = Report::"AU/NZ Statement" then
            NewReportId := Report::"DAX AU/NZ Statement";
    end;
}
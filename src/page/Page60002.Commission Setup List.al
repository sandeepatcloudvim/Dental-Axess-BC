page 60002 "Commission Setup List"
{
    // version DAX002

    DelayedInsert = true;
    PageType = List;
    SourceTable = "Commission Setup";
    SourceTableView = SORTING("Salesperson Code")
                      ORDER(Ascending);

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Salesperson Code"; Rec."Salesperson Code")
                {
                    ApplicationArea = All;
                }
                field("Salesperson Name"; Rec."Salesperson Name")
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field("Commission %"; Rec."Commission %")
                {
                    ApplicationArea = All;
                }
                field("Item No."; Rec."Item No.")
                {
                    ApplicationArea = All;
                }
                field("Item Description"; Rec."Item Description")
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field("Area Code"; Rec."Area Code")
                {
                    ApplicationArea = All;
                }
                field("Area Name"; Rec."Area Name")
                {
                    ApplicationArea = All;
                    Editable = false;
                }
            }
        }
    }

    actions
    {
    }
}


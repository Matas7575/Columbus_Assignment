page 50110 AutoRentDamage
{
    PageType = ListPart;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = AutoRentDamage;
    AutoSplitKey = true;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(DocumentNum; Rec.DocumentNum)
                {

                }
                field(LineNum; Rec.LineNum)
                {

                }
                field(Date; Rec.Date)
                {

                }
                field(Description; Rec.Description)
                {

                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction();
                begin

                end;
            }
        }
    }
}
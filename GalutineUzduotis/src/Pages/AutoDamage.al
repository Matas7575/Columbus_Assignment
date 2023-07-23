page 50106 AutoDamage
{
    Caption = 'Auto Damage';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = AutoDamage;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(CarNum; Rec.CarNum)
                {

                }
                field(LineNum; Rec.LineNum)
                {

                }
                field(DateOfDamage; Rec.DateOfDamage)
                {

                }
                field(Description; Rec.Description)
                {

                }
                field(Status; Rec.Status)
                {

                }
            }
        }
        area(Factboxes)
        {

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
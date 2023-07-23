page 50102 AutoMark
{
    Caption = 'Auto Mark';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = AutoMark;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Car code"; Rec.CarCode)
                {
                    Caption = 'Mark Code';
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

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        carCode: Integer;
        description: Text;
}
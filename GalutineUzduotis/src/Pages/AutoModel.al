page 50103 AutoModel
{
    Caption = 'Auto Model';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = AutoModel;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Make code"; Rec.MarkCode)
                {

                }
                field("Car code"; Rec.ModelCode)
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

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        MakeCode: Integer;
        CarCode: Integer;
        Description: Text;
}
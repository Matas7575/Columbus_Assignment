page 50112 FinishedAutoRentLine
{
    Caption = 'Finished Auto Rent Line';
    PageType = ListPart;
    UsageCategory = Lists;
    ApplicationArea = All;
    SourceTable = FinishedAutoRentLine;
    AutoSplitKey = true;

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field(DocumentNum; Rec.DocumentNum)
                {
                    Editable = false;
                }
                field(LineNum; Rec.LineNum)
                {
                    Editable = false;
                }
                field(TypeOf; Rec.TypeOf)
                {
                    Editable = false;
                }
                field(Num; Rec.Num)
                {
                    Editable = false;
                }
                field(Description; Rec.Description)
                {
                    Editable = false;
                }
                field(Amount; Rec.Amount)
                {
                    Editable = false;
                }
                field(Price; Rec.Price)
                {
                    Editable = false;
                }
                field(PriceSum; Rec.PriceSum)
                {
                    Editable = false;
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
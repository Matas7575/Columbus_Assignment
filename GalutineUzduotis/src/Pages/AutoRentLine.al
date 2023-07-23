page 50109 AutoRentLine
{
    Caption = 'Auto Rent Line';
    PageType = ListPart;
    UsageCategory = Lists;
    ApplicationArea = All;
    SourceTable = AutoRentLine;
    AutoSplitKey = true;

    layout
    {
        area(Content)
        {
            repeater(LineParts)
            {
                field(DocumentNum; Rec.DocumentNum)
                {

                }
                field(LineNum; Rec.LineNum)
                {

                }
                field(TypeOf; Rec.TypeOf)
                {

                }
                field(Num; Rec.Num)
                {

                }
                field(Description; Rec.Description)
                {

                }
                field(Amount; Rec.Amount)
                {

                }
                field(Price; Rec.Price)
                {

                }
                field(PriceSum; Rec.PriceSum)
                {
                    // trigger OnValidate()
                    // var
                    // begin
                    //     Rec.PriceSum := Rec.Price * Rec.Amount;
                    // end;

                }

            }
        }
        // area(Factboxes)
        // {

        // }
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
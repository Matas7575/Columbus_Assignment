page 50105 AutoReservation
{
    Caption = 'Auto Reservation';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = AutoReservation;

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
                field(ClientNum; Rec.ClientNum)
                {

                }
                field(BookedFrom; Rec.BookedFrom)
                {
                    trigger OnValidate()
                    var
                        ReservationRec: Record AutoReservation;
                        CollidingRecordRexists: Boolean;
                    begin
                        ReservationRec := Rec;
                        CollidingRecordRexists := false;

                        if ReservationRec.FindSet then begin
                            repeat
                                if (ReservationRec.CarNum = Rec.CarNum) and
                                (Rec.BookedFrom < ReservationRec.BookedUntil) then begin
                                    CollidingRecordRexists := true;
                                    break;
                                end;
                            Until ReservationRec.Next = 0;
                        end;

                        if CollidingRecordRexists then begin
                            Error('that car is aleady booked for that date.');
                            CollidingRecordRexists := false;
                        end;
                        // or (rec.BookedUntil < ReservationRec.BookedFrom)
                        // if (((ReservationRec.Get(Rec.CarNum))) AND
                        // not ((Rec.BookedFrom > ReservationRec.BookedUntil)
                        // OR (Rec.BookedUntil < ReservationRec.BookedFrom))) then begin
                        //     Error('That car is aleady booked for that date.');
                        // end;
                    end;

                }
                field(BookedUntil; Rec.BookedUntil)
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
    trigger OnOpenPage();
    begin

    end;

    var
        namesource: Integer;
        IsPermissionToView: Boolean;
}
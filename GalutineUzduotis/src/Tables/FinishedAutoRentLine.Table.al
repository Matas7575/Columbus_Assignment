table 50112 FinishedAutoRentLine
{
    Caption = 'Finished Auto Rent Line';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; DocumentNum; Integer)
        {
            Editable = false;
        }
        field(2; LineNum; Integer)
        {
            Editable = false;
        }
        field(3; TypeOf; Option)
        {
            OptionMembers = Item,Resource;
            Editable = false;
        }
        field(4; Num; text[20])
        {
            TableRelation = if (TypeOf = const(Item)) Item."No."
            else
            if (TypeOf = const(Resource)) Resource."No.";
            Editable = false;
        }
        field(5; Description; text[20])
        {
            TableRelation = if (TypeOf = const(Item)) Item.Description
            else
            if (TypeOf = const(Resource)) Resource.Comment;
            Editable = false;
        }
        field(6; Amount; Integer)
        {
            Editable = false;
        }
        field(7; Price; Integer)
        {
            TableRelation = if (TypeOf = const(Item)) Item."Unit Price"
            else
            if (TypeOf = const(Resource)) Resource."Unit Price";
            Editable = false;
        }
        field(8; PriceSum; Integer)
        {
            Editable = false;
            trigger OnValidate()
            var
            begin
                PriceSum := Price * Amount;
            end;

        }
    }

    keys
    {
        key(PrimaryKey; DocumentNum)
        {
            Clustered = true;
        }
        key(Key1; LineNum)
        {

        }
    }

    var
        temp: text;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}
table 50108 AutoRentLine
{
    Caption = 'Auto Rent Line';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; DocumentNum; Integer)
        {

        }
        field(2; LineNum; Integer)
        {

        }
        field(3; TypeOf; Option)
        {
            OptionMembers = Item,Resource;
        }
        field(4; Num; text[20])
        {
            TableRelation = if (TypeOf = const(Item)) Item."No."
            else
            if (TypeOf = const(Resource)) Resource."No.";
        }
        field(5; Description; text[20])
        {
            TableRelation = if (TypeOf = const(Item)) Item.Description
            else
            if (TypeOf = const(Resource)) Resource.Comment;
        }
        field(6; Amount; Integer)
        {
            trigger OnValidate()
            var
            begin
                PriceSum := Price * Amount;
            end;
        }
        field(7; Price; Integer)
        {
            // TableRelation = if (TypeOf = const(Item)) Item."Unit Price"
            // else
            // if (TypeOf = const(Resource)) Resource."Unit Price";
            trigger OnValidate()
            var
            begin
                PriceSum := Price * Amount;
            end;

        }
        field(8; PriceSum; Integer)
        {
            Editable = false;
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
        temp: Integer;

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
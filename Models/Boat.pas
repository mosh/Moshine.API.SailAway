namespace Moshine.Api.SailAway.Models;

type
  Boat = public class
  private
  protected
  public
    property HeelDegrees:Integer;
    property SpeedOverGround:Integer;
    property ActualWindSpeed:Double;
    property ActualWindAngle:Double;
    property CourseOverGround:Double;
    property DiveDegrees:Double;
    property Sails:List<Sail> := new List<Sail>;
    property Longitude:Double;
    property Backstay:Double;
    property Voyage:String;
    property TrueWindDirection:Double;
    property BoatType:String;
    property FoilLeft:Integer;
    property FoilRight:Integer;
    property Speed:Integer;
    property KeelAngle:Integer;
    property Latitude:Double;
    property Heading:Double;
    property TrueWindAngle:Double;
    property TrueWindSpeed:Double;
    property ubtnr:String;
    property WeatherHealm:Double;
    property RaceOrChallenge:String;
    property Drift:Integer;
    property WaterBallast:Integer;
    property Name:String;

  end;

end.
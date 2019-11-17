namespace Moshine.Api.SailAway;

uses
  Foundation,
  Moshine.Api.SailAway.Models;

type
  SailAwayApi = public class
  private
    property Proxy:ISailAwayProxy;
  public
    constructor(ProxyImpl:ISailAwayProxy);
    begin
      Proxy := ProxyImpl;
    end;

    method BoatInfo(userId:Integer): List<Boat>;
    begin
      var boats := new List<Boat>;
      var data := Proxy.BoatInfo(userId);

      for each boatData in data do
      begin
        var boat := new Boat;
        boat.HeelDegrees := boatData['heeldegrees'];
        boat.SpeedOverGround := boatData['sog'];
        boat.ActualWindSpeed := boatData['aws'];
        boat.ActualWindAngle := boatData['awa'];
        boat.CourseOverGround := boatData['cog'];
        boat.DiveDegrees := boatData['divedegrees'];
        boat.Longitude := boatData['longitude'];
        boat.Backstay := boatData['backstay'];
        boat.Voyage := boatData['voyage'];
        boat.TrueWindDirection := boatData['twd'];
        boat.BoatType := boatData['boattype'];
        boat.FoilLeft := boatData['foilleft'];
        boat.FoilRight := boatData['foilright'];
        boat.Speed := boatData['spd'];
        boat.KeelAngle := boatData['keelangle'];
        boat.Latitude := boatData['latitude'];
        boat.Heading := boatData['hdg'];
        boat.TrueWindAngle := boatData['twa'];
        boat.TrueWindSpeed := boatData['tws'];
        boat.ubtnr := boatData['ubtnr'];
        boat.WeatherHealm := boatData['weatherhelm'];
        boat.RaceOrChallenge := boatData['raceorchallenge'];
        boat.Drift := boatData['drift'];
        boat.WaterBallast := boatData['waterballast'];
        boat.Name := boatData['boatname'];

        var sails := boatData['sails'] as NSArray<NSDictionary>;

        for each sailData in sails do
        begin
          var newSail := new Sail;

          newSail.TravelerorLeadcar := sailData['travelerorleadcar'];
          newSail.Reef3 := sailData['reef3'];
          newSail.Sail := sailData['sail'];
          newSail.Outhaul := sailData['outhaul'];
          newSail.BarberHaulerDown := sailData['barberhaulerdown'];
          newSail.Vang := sailData['vang'];
          newSail.Reef2 := sailData['reef2'];
          newSail.Reef1 := sailData['reef1'];
          newSail.BarberHaulerIn := sailData['barberhaulerin'];
          newSail.Furled := sailData['furled'];
          newSail.Downhaul := sailData['downhaul'];
          newSail.Sheet := sailData['sheet'];
          newSail.Halyard := sailData['halyard'];
          boat.Sails.Add(newSail);
        end;

        boats.Add(boat);
      end;
      exit boats;
    end;

  end;

end.
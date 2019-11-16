namespace Moshine.Api.SailAway;

uses
  Foundation,
  Moshine.Foundation.Web;

type
  SailAwayProxy = public class(WebProxy)
  private
    property Key:String;
  public
    constructor(keyValue:String);
    begin
      Key := keyValue;
    end;

    method BoatInfo:NSArray<NSDictionary>;
    begin
      var url := $'http://srv.sailaway.world/cgi-bin/sailaway/APIBoatInfo.pl?usrnr=2130&key={Key}';
      exit WebRequest<NSArray<NSDictionary>>('GET',url,false);
    end;
  end;

end.
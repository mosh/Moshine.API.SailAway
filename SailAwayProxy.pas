namespace Moshine.Api.SailAway;

uses
  Foundation,
  Moshine.Foundation.Web;

type

  SailAwayProxy = public class(WebProxy,ISailAwayProxy)
  private
    property Key:String;
  public
    constructor(keyValue:String);
    begin
      Key := keyValue;
    end;

    method BoatInfo(userId:Integer):NSArray<NSDictionary>;
    begin
      var url := $'https://srv.sailaway.world/cgi-bin/sailaway/APIBoatInfo.pl?usrnr={userId}&key={Key}';
      exit WebRequestAs<NSArray<NSDictionary>>('GET',url,false);
    end;
  end;

end.
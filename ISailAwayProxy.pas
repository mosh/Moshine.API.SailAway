namespace Moshine.Api.SailAway;

uses
  Foundation;

type
  ISailAwayProxy = public interface
    method BoatInfo(userId:Integer):NSArray<NSDictionary>;
  end;

end.
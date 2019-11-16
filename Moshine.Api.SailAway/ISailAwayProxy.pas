namespace Moshine.Api.SailAway;

uses
  Foundation;

type
  ISailAwayProxy = public interface
    method BoatInfo:NSArray<NSDictionary>;
  end;

end.
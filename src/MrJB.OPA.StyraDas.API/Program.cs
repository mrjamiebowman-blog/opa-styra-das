using MrJB.OPA.StyraDas.API;

var builder = WebApplication.CreateSlimBuilder(args);

var app = builder.Build();

var securityApi = app.MapGroup("/api/security/grid");
securityApi.MapGet("/", () => Results.Ok("Access Granted Security Grid!"));

var systemApi = app.MapGroup("api/system/test");
systemApi.MapGet("/", () => Results.Ok("Access Granted to System Test!"));

app.Run();

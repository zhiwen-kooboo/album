$settings = get-content "src/api/Doublelives.Api/appsettings.json" | convertfrom-json;
$settings.TencentCos.AppId = $env:AppId;
$settings.TencentCos.SecretId = $env:SecretId;
$settings.TencentCos.SecretKey = $env:SecretKey;
$settings.TencentCos.Bucket = $env:Bucket;
$settings.TencentCos.Region = $env:Region;
$settings.TencentCos.DurationSecond = $env:DurationSecond;
$settings.TencentCos.BaseUrl = $env:BaseUrl;
$settings.SentryClientKey = $env:SentryClientKey;
$settings.ConnectionStrings.Album = $env:Album;
$settings.Jwt.Key = $env:JwtKey;
$settings.Jwt.Issuer = $env:Issuer;
$settings.Jwt.Audience = $env:Audience;
$settings.Jwt.ExpireMinutes = $env:ExpireMinutes;
set-content "src/api/Doublelives.Api/appsettings.json" ($settings | convertto-json);
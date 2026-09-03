.class public Lcom/zte/mifavor/weather/sdk/WeatherIWT;
.super Ljava/lang/Object;
.source "WeatherIWT.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WeatherIWT"

.field private static weatherIWT:Lcom/zte/mifavor/weather/sdk/WeatherIWT;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static attachSDK(Landroid/content/Context;Lcom/zte/mifavor/weather/sdk/logger/LibLog;)Lcom/zte/mifavor/weather/sdk/WeatherIWT;
    .locals 1

    .line 35
    invoke-static {}, Lcom/zte/mifavor/weather/sdk/WeatherIWT;->self()Lcom/zte/mifavor/weather/sdk/WeatherIWT;

    move-result-object v0

    .line 36
    sput-object p1, Lcom/zte/mifavor/weather/sdk/logger/LibLogger;->logger:Lcom/zte/mifavor/weather/sdk/logger/LibLog;

    .line 37
    invoke-direct {v0, p0}, Lcom/zte/mifavor/weather/sdk/WeatherIWT;->logStartupInformation(Landroid/content/Context;)V

    return-object v0
.end method

.method public static detachSDK()V
    .locals 1

    const/4 v0, 0x0

    .line 42
    sput-object v0, Lcom/zte/mifavor/weather/sdk/logger/LibLogger;->logger:Lcom/zte/mifavor/weather/sdk/logger/LibLog;

    return-void
.end method

.method private logStartupInformation(Landroid/content/Context;)V
    .locals 1

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    invoke-direct {p0, p1, v0}, Lcom/zte/mifavor/weather/sdk/WeatherIWT;->logStartupInformation(Landroid/content/Context;Ljava/lang/StringBuilder;)V

    .line 48
    sget-object p0, Lcom/zte/mifavor/weather/sdk/WeatherIWT;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/zte/mifavor/weather/sdk/logger/LibLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string p1, ""

    invoke-static {p0, p1}, Lcom/zte/mifavor/weather/sdk/logger/LibLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private logStartupInformation(Landroid/content/Context;Ljava/lang/StringBuilder;)V
    .locals 12

    if-nez p2, :cond_0

    .line 74
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 80
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 81
    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    if-eqz p1, :cond_1

    .line 83
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 86
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    const-string v1, "\n \nPackage Name : %s\nVersion Name : %s\nDevice Info  : %s-%s\nScreen Info  : %d x %d, %d dpi (x%.1f)\nOS Info      : Android %s (API %d)\n \n"

    iget-object v2, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iget p0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget p0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget p0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget p0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    sget-object v10, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    filled-new-array/range {v2 .. v11}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, v1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 88
    sget-object p1, Lcom/zte/mifavor/weather/sdk/WeatherIWT;->TAG:Ljava/lang/String;

    const-string p2, "... "

    invoke-static {p1, p2, p0}, Lcom/zte/mifavor/weather/sdk/logger/LibLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static declared-synchronized self()Lcom/zte/mifavor/weather/sdk/WeatherIWT;
    .locals 2

    const-class v0, Lcom/zte/mifavor/weather/sdk/WeatherIWT;

    monitor-enter v0

    .line 27
    :try_start_0
    sget-object v1, Lcom/zte/mifavor/weather/sdk/WeatherIWT;->weatherIWT:Lcom/zte/mifavor/weather/sdk/WeatherIWT;

    if-nez v1, :cond_0

    .line 28
    new-instance v1, Lcom/zte/mifavor/weather/sdk/WeatherIWT;

    invoke-direct {v1}, Lcom/zte/mifavor/weather/sdk/WeatherIWT;-><init>()V

    sput-object v1, Lcom/zte/mifavor/weather/sdk/WeatherIWT;->weatherIWT:Lcom/zte/mifavor/weather/sdk/WeatherIWT;

    .line 31
    :cond_0
    sget-object v1, Lcom/zte/mifavor/weather/sdk/WeatherIWT;->weatherIWT:Lcom/zte/mifavor/weather/sdk/WeatherIWT;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public logStartupInformation(Landroid/content/Context;Ljava/io/OutputStreamWriter;)V
    .locals 4

    if-eqz p2, :cond_0

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    const-string v1, "\n----------------------------------------\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss \'GMT\'ZZZZZ"

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 58
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    const-string v1, "\n----------------------------------------"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-direct {p0, p1, v0}, Lcom/zte/mifavor/weather/sdk/WeatherIWT;->logStartupInformation(Landroid/content/Context;Ljava/lang/StringBuilder;)V

    .line 61
    const-string p0, "----------------------------------------\n\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 66
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.class Lcom/zte/weather/sdk/model/api/WeatherManager$1;
.super Ljava/lang/Object;
.source "WeatherManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/weather/sdk/model/api/WeatherManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/weather/sdk/model/api/WeatherManager;


# direct methods
.method constructor <init>(Lcom/zte/weather/sdk/model/api/WeatherManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 29
    iput-object p1, p0, Lcom/zte/weather/sdk/model/api/WeatherManager$1;->this$0:Lcom/zte/weather/sdk/model/api/WeatherManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 32
    :try_start_0
    const-string p1, "WeatherManager"

    const-string v0, "onServiceConnected"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    iget-object p1, p0, Lcom/zte/weather/sdk/model/api/WeatherManager$1;->this$0:Lcom/zte/weather/sdk/model/api/WeatherManager;

    invoke-static {p2}, Lcom/zte/weather/sdk/model/api/IWeather$Stub;->asInterface(Landroid/os/IBinder;)Lcom/zte/weather/sdk/model/api/IWeather;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/zte/weather/sdk/model/api/WeatherManager;->access$000(Lcom/zte/weather/sdk/model/api/WeatherManager;Lcom/zte/weather/sdk/model/api/IWeather;)V

    .line 34
    iget-object p1, p0, Lcom/zte/weather/sdk/model/api/WeatherManager$1;->this$0:Lcom/zte/weather/sdk/model/api/WeatherManager;

    invoke-static {p1}, Lcom/zte/weather/sdk/model/api/WeatherManager;->access$100(Lcom/zte/weather/sdk/model/api/WeatherManager;)V

    .line 35
    iget-object p1, p0, Lcom/zte/weather/sdk/model/api/WeatherManager$1;->this$0:Lcom/zte/weather/sdk/model/api/WeatherManager;

    invoke-static {p1}, Lcom/zte/weather/sdk/model/api/WeatherManager;->access$200(Lcom/zte/weather/sdk/model/api/WeatherManager;)Lcom/zte/weather/sdk/model/api/WeatherManager$ServiceListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 36
    iget-object p1, p0, Lcom/zte/weather/sdk/model/api/WeatherManager$1;->this$0:Lcom/zte/weather/sdk/model/api/WeatherManager;

    invoke-static {p1}, Lcom/zte/weather/sdk/model/api/WeatherManager;->access$200(Lcom/zte/weather/sdk/model/api/WeatherManager;)Lcom/zte/weather/sdk/model/api/WeatherManager$ServiceListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/zte/weather/sdk/model/api/WeatherManager$ServiceListener;->onServiceConnected()V

    .line 39
    :cond_0
    iget-object p0, p0, Lcom/zte/weather/sdk/model/api/WeatherManager$1;->this$0:Lcom/zte/weather/sdk/model/api/WeatherManager;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/zte/weather/sdk/model/api/WeatherManager;->access$302(Lcom/zte/weather/sdk/model/api/WeatherManager;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 41
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    .line 47
    const-string p1, "onServiceDisconnected"

    const-string v0, "WeatherManager"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget-object p1, p0, Lcom/zte/weather/sdk/model/api/WeatherManager$1;->this$0:Lcom/zte/weather/sdk/model/api/WeatherManager;

    invoke-static {p1}, Lcom/zte/weather/sdk/model/api/WeatherManager;->access$200(Lcom/zte/weather/sdk/model/api/WeatherManager;)Lcom/zte/weather/sdk/model/api/WeatherManager$ServiceListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 49
    iget-object p1, p0, Lcom/zte/weather/sdk/model/api/WeatherManager$1;->this$0:Lcom/zte/weather/sdk/model/api/WeatherManager;

    invoke-static {p1}, Lcom/zte/weather/sdk/model/api/WeatherManager;->access$200(Lcom/zte/weather/sdk/model/api/WeatherManager;)Lcom/zte/weather/sdk/model/api/WeatherManager$ServiceListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/zte/weather/sdk/model/api/WeatherManager$ServiceListener;->onServiceConnected()V

    .line 52
    :cond_0
    iget-object p1, p0, Lcom/zte/weather/sdk/model/api/WeatherManager$1;->this$0:Lcom/zte/weather/sdk/model/api/WeatherManager;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/zte/weather/sdk/model/api/WeatherManager;->access$000(Lcom/zte/weather/sdk/model/api/WeatherManager;Lcom/zte/weather/sdk/model/api/IWeather;)V

    .line 53
    iget-object p1, p0, Lcom/zte/weather/sdk/model/api/WeatherManager$1;->this$0:Lcom/zte/weather/sdk/model/api/WeatherManager;

    invoke-static {p1}, Lcom/zte/weather/sdk/model/api/WeatherManager;->access$300(Lcom/zte/weather/sdk/model/api/WeatherManager;)I

    move-result p1

    const/4 v2, 0x3

    if-le p1, v2, :cond_1

    .line 54
    const-string p1, "service api disconnect service"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget-object p1, p0, Lcom/zte/weather/sdk/model/api/WeatherManager$1;->this$0:Lcom/zte/weather/sdk/model/api/WeatherManager;

    invoke-static {p1, v1}, Lcom/zte/weather/sdk/model/api/WeatherManager;->access$000(Lcom/zte/weather/sdk/model/api/WeatherManager;Lcom/zte/weather/sdk/model/api/IWeather;)V

    .line 56
    iget-object p0, p0, Lcom/zte/weather/sdk/model/api/WeatherManager$1;->this$0:Lcom/zte/weather/sdk/model/api/WeatherManager;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/zte/weather/sdk/model/api/WeatherManager;->access$302(Lcom/zte/weather/sdk/model/api/WeatherManager;I)I

    goto :goto_0

    .line 58
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "illegal call api disconnect service :"

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/zte/weather/sdk/model/api/WeatherManager$1;->this$0:Lcom/zte/weather/sdk/model/api/WeatherManager;

    invoke-static {v2}, Lcom/zte/weather/sdk/model/api/WeatherManager;->access$300(Lcom/zte/weather/sdk/model/api/WeatherManager;)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object p1, p0, Lcom/zte/weather/sdk/model/api/WeatherManager$1;->this$0:Lcom/zte/weather/sdk/model/api/WeatherManager;

    invoke-virtual {p1}, Lcom/zte/weather/sdk/model/api/WeatherManager;->connect()V

    .line 60
    iget-object p1, p0, Lcom/zte/weather/sdk/model/api/WeatherManager$1;->this$0:Lcom/zte/weather/sdk/model/api/WeatherManager;

    invoke-virtual {p1}, Lcom/zte/weather/sdk/model/api/WeatherManager;->isBinded()Z

    move-result p1

    if-nez p1, :cond_2

    .line 61
    iget-object p1, p0, Lcom/zte/weather/sdk/model/api/WeatherManager$1;->this$0:Lcom/zte/weather/sdk/model/api/WeatherManager;

    invoke-static {p1, v1}, Lcom/zte/weather/sdk/model/api/WeatherManager;->access$000(Lcom/zte/weather/sdk/model/api/WeatherManager;Lcom/zte/weather/sdk/model/api/IWeather;)V

    .line 64
    :cond_2
    iget-object p0, p0, Lcom/zte/weather/sdk/model/api/WeatherManager$1;->this$0:Lcom/zte/weather/sdk/model/api/WeatherManager;

    invoke-static {p0}, Lcom/zte/weather/sdk/model/api/WeatherManager;->access$308(Lcom/zte/weather/sdk/model/api/WeatherManager;)I

    :goto_0
    return-void
.end method

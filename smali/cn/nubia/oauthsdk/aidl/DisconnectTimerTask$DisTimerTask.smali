.class Lcn/nubia/oauthsdk/aidl/DisconnectTimerTask$DisTimerTask;
.super Ljava/util/TimerTask;
.source "DisconnectTimerTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/oauthsdk/aidl/DisconnectTimerTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/oauthsdk/aidl/DisconnectTimerTask;


# direct methods
.method private constructor <init>(Lcn/nubia/oauthsdk/aidl/DisconnectTimerTask;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcn/nubia/oauthsdk/aidl/DisconnectTimerTask$DisTimerTask;->this$0:Lcn/nubia/oauthsdk/aidl/DisconnectTimerTask;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/oauthsdk/aidl/DisconnectTimerTask;Lcn/nubia/oauthsdk/aidl/DisconnectTimerTask$1;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcn/nubia/oauthsdk/aidl/DisconnectTimerTask$DisTimerTask;-><init>(Lcn/nubia/oauthsdk/aidl/DisconnectTimerTask;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 41
    const-string v0, "timer-run"

    const-string v1, "DisconnectTimerTask"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iget-object v0, p0, Lcn/nubia/oauthsdk/aidl/DisconnectTimerTask$DisTimerTask;->this$0:Lcn/nubia/oauthsdk/aidl/DisconnectTimerTask;

    invoke-static {v0}, Lcn/nubia/oauthsdk/aidl/DisconnectTimerTask;->access$100(Lcn/nubia/oauthsdk/aidl/DisconnectTimerTask;)Lcn/nubia/oauthsdk/aidl/DisconnectHandler;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/oauthsdk/aidl/DisconnectHandler;->isConnectionFree()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    const-string v0, "disconnect--service"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget-object v0, p0, Lcn/nubia/oauthsdk/aidl/DisconnectTimerTask$DisTimerTask;->this$0:Lcn/nubia/oauthsdk/aidl/DisconnectTimerTask;

    invoke-static {v0}, Lcn/nubia/oauthsdk/aidl/DisconnectTimerTask;->access$100(Lcn/nubia/oauthsdk/aidl/DisconnectTimerTask;)Lcn/nubia/oauthsdk/aidl/DisconnectHandler;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/oauthsdk/aidl/DisconnectHandler;->disconnect()V

    .line 48
    invoke-virtual {p0}, Lcn/nubia/oauthsdk/aidl/DisconnectTimerTask$DisTimerTask;->cancel()Z

    :cond_0
    return-void
.end method

.class Lcn/nubia/oauthsdk/aidl/DisconnectTimerTask;
.super Ljava/lang/Object;
.source "DisconnectTimerTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/oauthsdk/aidl/DisconnectTimerTask$DisTimerTask;
    }
.end annotation


# instance fields
.field private mHandler:Lcn/nubia/oauthsdk/aidl/DisconnectHandler;

.field private mTimer:Ljava/util/Timer;

.field private mTimerTask:Ljava/util/TimerTask;


# direct methods
.method public constructor <init>(Lcn/nubia/oauthsdk/aidl/DisconnectHandler;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcn/nubia/oauthsdk/aidl/DisconnectTimerTask;->mHandler:Lcn/nubia/oauthsdk/aidl/DisconnectHandler;

    .line 16
    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    iput-object p1, p0, Lcn/nubia/oauthsdk/aidl/DisconnectTimerTask;->mTimer:Ljava/util/Timer;

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/oauthsdk/aidl/DisconnectTimerTask;)Lcn/nubia/oauthsdk/aidl/DisconnectHandler;
    .locals 0

    .line 8
    iget-object p0, p0, Lcn/nubia/oauthsdk/aidl/DisconnectTimerTask;->mHandler:Lcn/nubia/oauthsdk/aidl/DisconnectHandler;

    return-object p0
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .line 30
    iget-object p0, p0, Lcn/nubia/oauthsdk/aidl/DisconnectTimerTask;->mTimerTask:Ljava/util/TimerTask;

    if-eqz p0, :cond_0

    .line 31
    invoke-virtual {p0}, Ljava/util/TimerTask;->cancel()Z

    :cond_0
    return-void
.end method

.method public start()V
    .locals 6

    .line 20
    invoke-virtual {p0}, Lcn/nubia/oauthsdk/aidl/DisconnectTimerTask;->cancel()V

    .line 21
    new-instance v1, Lcn/nubia/oauthsdk/aidl/DisconnectTimerTask$DisTimerTask;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcn/nubia/oauthsdk/aidl/DisconnectTimerTask$DisTimerTask;-><init>(Lcn/nubia/oauthsdk/aidl/DisconnectTimerTask;Lcn/nubia/oauthsdk/aidl/DisconnectTimerTask$1;)V

    iput-object v1, p0, Lcn/nubia/oauthsdk/aidl/DisconnectTimerTask;->mTimerTask:Ljava/util/TimerTask;

    .line 22
    iget-object v0, p0, Lcn/nubia/oauthsdk/aidl/DisconnectTimerTask;->mTimer:Ljava/util/Timer;

    const-wide/16 v2, 0x1388

    const-wide/16 v4, 0x1388

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 26
    const-string p0, "DisconnectTimerTask"

    const-string v0, "start--timer"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

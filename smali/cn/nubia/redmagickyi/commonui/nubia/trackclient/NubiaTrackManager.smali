.class public Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;
.super Ljava/lang/Object;
.source "NubiaTrackManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager$SingleInstance;,
        Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager$TrackHandler;,
        Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager$OnEventCallback;
    }
.end annotation


# static fields
.field public static final PKG_ANDROID_SETTINGS:Ljava/lang/String; = "com.android.settings"

.field public static final PKG_GAMES_LAUNCHER:Ljava/lang/String; = "cn.nubia.gamelauncher"

.field public static final PKG_NUBIA_LAUNCHER:Ljava/lang/String; = "cn.nubia.launcher"

.field public static final PKG_SETUP_WIZARD:Ljava/lang/String; = "cn.nubia.setupwizard"

.field private static final TAG:Ljava/lang/String; = "NubiaTrackManager"

.field private static final TIEMOUT:J = 0xbb8L

.field static sTrackHandler:Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager$TrackHandler;

.field static sTrackThread:Landroid/os/HandlerThread;


# instance fields
.field public isBind:Z

.field private isConn:Z

.field private mConn:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mService:Landroid/os/Messenger;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager$1;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager$1;-><init>(Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->mConn:Landroid/content/ServiceConnection;

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager$1;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;)Landroid/os/Messenger;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->mService:Landroid/os/Messenger;

    return-object p0
.end method

.method static synthetic access$102(Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0

    .line 25
    iput-object p1, p0, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->mService:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;)Z
    .locals 0

    .line 25
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->isConn:Z

    return p0
.end method

.method static synthetic access$202(Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;Z)Z
    .locals 0

    .line 25
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->isConn:Z

    return p1
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->bindServiceInvoked()V

    return-void
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;)Landroid/content/Context;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;)Landroid/content/ServiceConnection;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->mConn:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method private bindServiceInvoked()V
    .locals 4

    .line 138
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 139
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isMyOSRom()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isNebulaOSRom()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 143
    :cond_0
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "cn.nubia.owlsystem"

    const-string v3, "cn.nubia.applearning.datacollection.DataCollectionService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_1

    .line 140
    :cond_1
    :goto_0
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.zte.analytics"

    const-string v3, "com.zte.analytics.datacollection.DataCollectionService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 146
    :goto_1
    iget-object v1, p0, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_2

    .line 147
    iget-object p0, p0, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->mConn:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_2
    return-void
.end method

.method public static getInstance()Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;
    .locals 1

    .line 46
    sget-object v0, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager$SingleInstance;->instance:Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;

    return-object v0
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 2

    .line 158
    iput-object p1, p0, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->mContext:Landroid/content/Context;

    .line 159
    sget-object p1, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->sTrackHandler:Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager$TrackHandler;

    if-nez p1, :cond_0

    .line 160
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "NubiaTrackEvent"

    const/16 v1, 0xa

    invoke-direct {p1, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object p1, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->sTrackThread:Landroid/os/HandlerThread;

    .line 162
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 163
    new-instance p1, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager$TrackHandler;

    sget-object v0, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->sTrackThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager$TrackHandler;-><init>(Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;Landroid/os/Looper;)V

    sput-object p1, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->sTrackHandler:Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager$TrackHandler;

    :cond_0
    return-void
.end method

.method public sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5

    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "send Event "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "event_name"

    if-eqz p2, :cond_0

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "NubiaTrackManager"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    sget-object v0, Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;->DEFAULT_PKG_NAME:Ljava/lang/String;

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    sget-object v0, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->sTrackHandler:Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager$TrackHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager$TrackHandler;->removeMessages(I)V

    .line 337
    sget-object v0, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->sTrackHandler:Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager$TrackHandler;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager$TrackHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 338
    invoke-virtual {v0, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 339
    sget-object v3, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->sTrackHandler:Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager$TrackHandler;

    invoke-virtual {v3, v0}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager$TrackHandler;->sendMessage(Landroid/os/Message;)Z

    .line 340
    sget-object v0, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->sTrackHandler:Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager$TrackHandler;

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager$TrackHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0xbb8

    invoke-virtual {v0, v2, v3, v4}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager$TrackHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 343
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 344
    invoke-virtual {p2}, Landroid/os/Bundle;->deepCopy()Landroid/os/Bundle;

    move-result-object p1

    .line 345
    sget-object p2, Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;->REPORT_PKG_NAME:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "_1"

    if-eqz p2, :cond_1

    .line 347
    sget-object p2, Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;->REPORT_PKG_NAME:Ljava/lang/String;

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, p2, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 351
    :cond_1
    sget-object p2, Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;->DEFAULT_EVENT_NAME:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;->DEFAULT_EVENT_NAME:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    :goto_1
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_2

    .line 355
    :cond_2
    invoke-static {}, Lcn/nubia/redmagickyi/util/GoogleAnalyticsTrackManager;->getInstance()Lcn/nubia/redmagickyi/util/GoogleAnalyticsTrackManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcn/nubia/redmagickyi/util/GoogleAnalyticsTrackManager;->sendEvent(Landroid/os/Bundle;)V

    :goto_2
    return-void
.end method

.method public sendEvent(Ljava/lang/String;Landroid/os/Bundle;Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager$OnEventCallback;)V
    .locals 4

    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "send Event "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "event_name"

    if-eqz p2, :cond_0

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "NubiaTrackManager"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    sget-object v0, Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;->DEFAULT_PKG_NAME:Ljava/lang/String;

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    sget-object v0, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->sTrackHandler:Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager$TrackHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager$TrackHandler;->removeMessages(I)V

    .line 363
    sget-object v0, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->sTrackHandler:Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager$TrackHandler;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager$TrackHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 364
    invoke-virtual {v0, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 365
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 366
    sget-object p3, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->sTrackHandler:Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager$TrackHandler;

    invoke-virtual {p3, v0}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager$TrackHandler;->sendMessage(Landroid/os/Message;)Z

    .line 367
    sget-object p3, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->sTrackHandler:Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager$TrackHandler;

    invoke-virtual {p3, v2}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager$TrackHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v2, 0xbb8

    invoke-virtual {p3, v0, v2, v3}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager$TrackHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 370
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 371
    invoke-virtual {p2}, Landroid/os/Bundle;->deepCopy()Landroid/os/Bundle;

    move-result-object p1

    .line 372
    sget-object p2, Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;->REPORT_PKG_NAME:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "_1"

    if-eqz p2, :cond_1

    .line 374
    sget-object p2, Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;->REPORT_PKG_NAME:Ljava/lang/String;

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 378
    :cond_1
    sget-object p2, Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;->DEFAULT_EVENT_NAME:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;->DEFAULT_EVENT_NAME:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    :goto_1
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_2

    .line 382
    :cond_2
    invoke-static {}, Lcn/nubia/redmagickyi/util/GoogleAnalyticsTrackManager;->getInstance()Lcn/nubia/redmagickyi/util/GoogleAnalyticsTrackManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcn/nubia/redmagickyi/util/GoogleAnalyticsTrackManager;->sendEvent(Landroid/os/Bundle;)V

    :goto_2
    return-void
.end method

.method public sendEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 196
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 197
    sget-object v1, Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;->DEFAULT_PKG_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    sget-object v1, Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;->DEFAULT_EVENT_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    sget-object v1, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->sTrackHandler:Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager$TrackHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager$TrackHandler;->removeMessages(I)V

    .line 200
    sget-object v1, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->sTrackHandler:Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager$TrackHandler;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager$TrackHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 201
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 202
    sget-object v0, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->sTrackHandler:Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager$TrackHandler;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager$TrackHandler;->sendMessage(Landroid/os/Message;)Z

    .line 203
    sget-object v0, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->sTrackHandler:Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager$TrackHandler;

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager$TrackHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager$TrackHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 206
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 207
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "_1"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->sendEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 209
    :cond_0
    invoke-static {}, Lcn/nubia/redmagickyi/util/GoogleAnalyticsTrackManager;->getInstance()Lcn/nubia/redmagickyi/util/GoogleAnalyticsTrackManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcn/nubia/redmagickyi/util/GoogleAnalyticsTrackManager;->sendEvent(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "send Event "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NubiaTrackManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 309
    sget-object v1, Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;->DEFAULT_PKG_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    sget-object v1, Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;->DEFAULT_EVENT_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    invoke-virtual {v0, p3, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 312
    sget-object v1, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->sTrackHandler:Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager$TrackHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager$TrackHandler;->removeMessages(I)V

    .line 313
    sget-object v1, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->sTrackHandler:Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager$TrackHandler;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager$TrackHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 314
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 315
    sget-object v0, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->sTrackHandler:Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager$TrackHandler;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager$TrackHandler;->sendMessage(Landroid/os/Message;)Z

    .line 316
    sget-object v0, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->sTrackHandler:Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager$TrackHandler;

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager$TrackHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager$TrackHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 319
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 320
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "_1"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3, p4}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 322
    :cond_0
    invoke-static {}, Lcn/nubia/redmagickyi/util/GoogleAnalyticsTrackManager;->getInstance()Lcn/nubia/redmagickyi/util/GoogleAnalyticsTrackManager;

    move-result-object p0

    invoke-virtual {p0, p2, p3, p4}, Lcn/nubia/redmagickyi/util/GoogleAnalyticsTrackManager;->sendEvent(Ljava/lang/String;Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 223
    sget-object v0, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->sTrackHandler:Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager$TrackHandler;

    if-nez v0, :cond_0

    return-void

    .line 226
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "send Event "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NubiaTrackManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 228
    sget-object v1, Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;->DEFAULT_PKG_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    sget-object v1, Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;->DEFAULT_EVENT_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-virtual {v0, p3, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    sget-object v1, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->sTrackHandler:Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager$TrackHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager$TrackHandler;->removeMessages(I)V

    .line 232
    sget-object v1, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->sTrackHandler:Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager$TrackHandler;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager$TrackHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 233
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 234
    sget-object v0, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->sTrackHandler:Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager$TrackHandler;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager$TrackHandler;->sendMessage(Landroid/os/Message;)Z

    .line 235
    sget-object v0, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->sTrackHandler:Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager$TrackHandler;

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager$TrackHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager$TrackHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 238
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 239
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "_1"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3, p4}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 241
    :cond_1
    invoke-static {}, Lcn/nubia/redmagickyi/util/GoogleAnalyticsTrackManager;->getInstance()Lcn/nubia/redmagickyi/util/GoogleAnalyticsTrackManager;

    move-result-object p0

    invoke-virtual {p0, p2, p3, p4}, Lcn/nubia/redmagickyi/util/GoogleAnalyticsTrackManager;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager$OnEventCallback;)V
    .locals 6

    .line 246
    sget-object v0, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->sTrackHandler:Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager$TrackHandler;

    if-nez v0, :cond_0

    return-void

    .line 249
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "send Event "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NubiaTrackManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 251
    sget-object v1, Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;->DEFAULT_PKG_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    sget-object v1, Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;->DEFAULT_EVENT_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    invoke-virtual {v0, p3, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    sget-object v1, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->sTrackHandler:Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager$TrackHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager$TrackHandler;->removeMessages(I)V

    .line 255
    sget-object v1, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->sTrackHandler:Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager$TrackHandler;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager$TrackHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 256
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 257
    iput-object p5, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 258
    sget-object v0, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->sTrackHandler:Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager$TrackHandler;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager$TrackHandler;->sendMessage(Landroid/os/Message;)Z

    .line 259
    sget-object v0, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->sTrackHandler:Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager$TrackHandler;

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager$TrackHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager$TrackHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 261
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 262
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "_1"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager$OnEventCallback;)V

    goto :goto_0

    .line 264
    :cond_1
    invoke-static {}, Lcn/nubia/redmagickyi/util/GoogleAnalyticsTrackManager;->getInstance()Lcn/nubia/redmagickyi/util/GoogleAnalyticsTrackManager;

    move-result-object p0

    invoke-virtual {p0, p2, p3, p4}, Lcn/nubia/redmagickyi/util/GoogleAnalyticsTrackManager;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "send Event "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NubiaTrackManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 280
    sget-object v1, Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;->DEFAULT_PKG_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    sget-object v1, Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;->DEFAULT_EVENT_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    invoke-virtual {v0, p3, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 283
    sget-object v1, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->sTrackHandler:Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager$TrackHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager$TrackHandler;->removeMessages(I)V

    .line 284
    sget-object v1, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->sTrackHandler:Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager$TrackHandler;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager$TrackHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 285
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 286
    sget-object v0, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->sTrackHandler:Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager$TrackHandler;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager$TrackHandler;->sendMessage(Landroid/os/Message;)Z

    .line 287
    sget-object v0, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->sTrackHandler:Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager$TrackHandler;

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager$TrackHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager$TrackHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 290
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 291
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "_1"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3, p4}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 293
    :cond_0
    invoke-static {}, Lcn/nubia/redmagickyi/util/GoogleAnalyticsTrackManager;->getInstance()Lcn/nubia/redmagickyi/util/GoogleAnalyticsTrackManager;

    move-result-object p0

    invoke-virtual {p0, p2, p3, p4}, Lcn/nubia/redmagickyi/util/GoogleAnalyticsTrackManager;->sendEvent(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public unbindServiceInvoked()V
    .locals 4

    .line 174
    sget-object v0, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->sTrackThread:Landroid/os/HandlerThread;

    monitor-enter v0

    .line 175
    :try_start_0
    iget-boolean v1, p0, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->isConn:Z

    if-nez v1, :cond_0

    .line 176
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 178
    iput-object v1, p0, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->mService:Landroid/os/Messenger;

    const/4 v2, 0x0

    .line 179
    iput-boolean v2, p0, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->isConn:Z

    .line 180
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    iget-object v0, p0, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 182
    iget-object v3, p0, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->mConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 183
    iput-boolean v2, p0, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->isBind:Z

    .line 184
    iput-object v1, p0, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->mContext:Landroid/content/Context;

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    .line 180
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

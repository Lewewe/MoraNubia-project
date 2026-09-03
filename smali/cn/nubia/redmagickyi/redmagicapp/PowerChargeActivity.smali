.class public Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;
.super Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;
.source "PowerChargeActivity.java"

# interfaces
.implements Lcom/unity3d/player/IUnityPlayerLifecycleEvents;
.implements Lcom/nubia/androidforunity/UnityToAndroidCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity$PowerChargeHandler;,
        Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity$AlarmClockFiringStateChangedObserver;
    }
.end annotation


# static fields
.field private static final MSG_UPDATE_BATTERY_LEVEL:I = 0x1

.field private static final MSG_UPDATE_CHARGE_TYPE:I = 0x0

.field private static final MSG_UPDATE_TIME:I = 0x2

.field private static final TAG:Ljava/lang/String; = "PowerChargeActivity"


# instance fields
.field private alarmClockFiringStateChangedObserver:Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity$AlarmClockFiringStateChangedObserver;

.field private alphaAnimation:Landroid/view/animation/Animation;

.field private chargeStyleBean:Lcn/nubia/redmagickyi/powercharge/bean/ChargeStyleBean;

.field private chargeStyleManager:Lcn/nubia/redmagickyi/powercharge/util/ChargeStyleManager;

.field private isFinishing:Z

.field private isLifeCyclerOnStop:Z

.field private isModelLoaded:Z

.field private isPerformFinish:Z

.field private isSceneLoaded:Z

.field private isWindowFocused:Ljava/lang/Boolean;

.field private kyiClient:Lcn/nubia/lockscreen/charge/aidl/IKYIClientInterface;

.field private kyiService:Lcn/nubia/lockscreen/charge/aidl/IKYIServiceInterface;

.field private final lock:Ljava/lang/Object;

.field private mChargeType:I

.field private mMainHandler:Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity$PowerChargeHandler;

.field private mObserver:Lcn/nubia/redmagickyi/powercharge/observer/battery/BatteryCapacityObserverManager;

.field private mPowerBootView:Landroid/view/View;

.field private mRootView:Landroid/view/ViewGroup;

.field private mStopReceiver:Landroid/content/BroadcastReceiver;

.field private mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

.field private startKyiIndex:Ljava/lang/Integer;

.field private unityView:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 72
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;-><init>()V

    const/4 v0, -0x1

    .line 82
    iput v0, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->mChargeType:I

    .line 99
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->lock:Ljava/lang/Object;

    .line 648
    new-instance v0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity$6;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity$6;-><init>(Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->mStopReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;)I
    .locals 0

    .line 72
    iget p0, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->mChargeType:I

    return p0
.end method

.method static synthetic access$002(Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;I)I
    .locals 0

    .line 72
    iput p1, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->mChargeType:I

    return p1
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;)Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity$PowerChargeHandler;
    .locals 0

    .line 72
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->mMainHandler:Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity$PowerChargeHandler;

    return-object p0
.end method

.method static synthetic access$1000(Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;)Z
    .locals 0

    .line 72
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->isFinishing:Z

    return p0
.end method

.method static synthetic access$1100(Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;)Lcn/nubia/redmagickyi/powercharge/observer/battery/BatteryCapacityObserverManager;
    .locals 0

    .line 72
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->mObserver:Lcn/nubia/redmagickyi/powercharge/observer/battery/BatteryCapacityObserverManager;

    return-object p0
.end method

.method static synthetic access$1200(Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;)Ljava/lang/Integer;
    .locals 0

    .line 72
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->startKyiIndex:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$1300(Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;)Z
    .locals 0

    .line 72
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->checkAlarmClockFiringNow()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1400(Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;)Ljava/lang/Object;
    .locals 0

    .line 72
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->lock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1500(Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;)Z
    .locals 0

    .line 72
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->isLifeCyclerOnStop:Z

    return p0
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;)Z
    .locals 0

    .line 72
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->isPerformFinish:Z

    return p0
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;)Lcom/unity3d/player/UnityPlayer;
    .locals 0

    .line 72
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    return-object p0
.end method

.method static synthetic access$302(Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;Lcom/unity3d/player/UnityPlayer;)Lcom/unity3d/player/UnityPlayer;
    .locals 0

    .line 72
    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    return-object p1
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;)Landroid/view/ViewGroup;
    .locals 0

    .line 72
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->unityView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$402(Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 0

    .line 72
    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->unityView:Landroid/view/ViewGroup;

    return-object p1
.end method

.method static synthetic access$500(Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;)Ljava/lang/Boolean;
    .locals 0

    .line 72
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->isWindowFocused:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$600(Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;)Landroid/view/View;
    .locals 0

    .line 72
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->mPowerBootView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$700(Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->updateChargeType()V

    return-void
.end method

.method static synthetic access$802(Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;Z)Z
    .locals 0

    .line 72
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->isModelLoaded:Z

    return p1
.end method

.method static synthetic access$900(Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;)Lcn/nubia/redmagickyi/powercharge/bean/ChargeStyleBean;
    .locals 0

    .line 72
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->chargeStyleBean:Lcn/nubia/redmagickyi/powercharge/bean/ChargeStyleBean;

    return-object p0
.end method

.method private checkAlarmClockFiringNow()Z
    .locals 3

    .line 679
    const-string v0, "fullscreen_firing_state"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcn/nubia/redmagickyi/util/SettingsProviderUtils;->getSecureSettingsInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-eqz v1, :cond_1

    .line 681
    const-string v0, "PowerChargeActivity"

    const-string v2, "firingNow"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->mRootView:Landroid/view/ViewGroup;

    new-instance v2, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity$7;

    invoke-direct {v2, p0}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity$7;-><init>(Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return v1
.end method

.method private initAidlClient()V
    .locals 2

    .line 728
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 729
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "index"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 730
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->startKyiIndex:Ljava/lang/Integer;

    .line 732
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "client"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 734
    invoke-static {v0}, Lcn/nubia/lockscreen/charge/aidl/IKYIClientInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcn/nubia/lockscreen/charge/aidl/IKYIClientInterface;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->kyiClient:Lcn/nubia/lockscreen/charge/aidl/IKYIClientInterface;

    .line 737
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getAidlClient = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->kyiClient:Lcn/nubia/lockscreen/charge/aidl/IKYIClientInterface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", startKyiIndex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->startKyiIndex:Ljava/lang/Integer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PowerChargeActivity"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private initAidlService()V
    .locals 2

    .line 741
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->kyiService:Lcn/nubia/lockscreen/charge/aidl/IKYIServiceInterface;

    if-nez v0, :cond_0

    .line 742
    new-instance v0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity$8;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity$8;-><init>(Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->kyiService:Lcn/nubia/lockscreen/charge/aidl/IKYIServiceInterface;

    .line 760
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "createAidlService = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->kyiService:Lcn/nubia/lockscreen/charge/aidl/IKYIServiceInterface;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PowerChargeActivity"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private initView()V
    .locals 2

    .line 388
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->layout_root:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->mRootView:Landroid/view/ViewGroup;

    .line 390
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->chargeStyleBean:Lcn/nubia/redmagickyi/powercharge/bean/ChargeStyleBean;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/powercharge/bean/ChargeStyleBean;->getStyleView()Lcn/nubia/redmagickyi/powercharge/view/BaseChargeStyleView;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/powercharge/view/BaseChargeStyleView;->initView(Landroid/view/ViewGroup;)V

    .line 391
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->chargeStyleBean:Lcn/nubia/redmagickyi/powercharge/bean/ChargeStyleBean;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/powercharge/bean/ChargeStyleBean;->getStyleView()Lcn/nubia/redmagickyi/powercharge/view/BaseChargeStyleView;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/powercharge/view/BaseChargeStyleView;->initOrientationn(Landroid/content/res/Configuration;)V

    return-void
.end method

.method private onSceneLoaded()V
    .locals 1

    .line 549
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->mObserver:Lcn/nubia/redmagickyi/powercharge/observer/battery/BatteryCapacityObserverManager;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/BatteryCapacityObserverManager;->stopObserver()V

    .line 550
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->mObserver:Lcn/nubia/redmagickyi/powercharge/observer/battery/BatteryCapacityObserverManager;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/BatteryCapacityObserverManager;->startObserver()V

    .line 551
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->updateChargeType()V

    return-void
.end method

.method private parseMessage(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 519
    new-instance v0, Landroid/util/JsonReader;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 520
    invoke-virtual {v0}, Landroid/util/JsonReader;->beginObject()V

    .line 521
    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 522
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object p1

    .line 523
    const-string v1, "msgID"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 524
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextInt()I

    move-result p1

    const/16 v1, 0x7d0

    if-ne p1, v1, :cond_1

    const/4 p1, 0x1

    .line 526
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->isSceneLoaded:Z

    .line 527
    iget-boolean p1, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->isPerformFinish:Z

    if-nez p1, :cond_0

    .line 528
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->switchScene()V

    goto :goto_0

    :cond_1
    const/16 v1, 0x7d7

    if-ne p1, v1, :cond_0

    .line 530
    iget-boolean p1, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->isPerformFinish:Z

    if-nez p1, :cond_0

    .line 532
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->chargeStyleManager:Lcn/nubia/redmagickyi/powercharge/util/ChargeStyleManager;

    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->chargeStyleBean:Lcn/nubia/redmagickyi/powercharge/bean/ChargeStyleBean;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcn/nubia/redmagickyi/powercharge/util/ChargeStyleManager;->setChargeStyle(Lcn/nubia/redmagickyi/powercharge/bean/ChargeStyleBean;Z)V

    .line 533
    new-instance p1, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity$5;

    invoke-direct {p1, p0}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity$5;-><init>(Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;)V

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 543
    :cond_2
    invoke-virtual {v0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 546
    :cond_3
    invoke-virtual {v0}, Landroid/util/JsonReader;->endObject()V

    return-void
.end method

.method private registContentObserver()V
    .locals 3

    .line 698
    new-instance v0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity$AlarmClockFiringStateChangedObserver;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity$AlarmClockFiringStateChangedObserver;-><init>(Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->alarmClockFiringStateChangedObserver:Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity$AlarmClockFiringStateChangedObserver;

    .line 699
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->alarmClockFiringStateChangedObserver:Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity$AlarmClockFiringStateChangedObserver;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private switchScene()V
    .locals 1

    .line 381
    new-instance p0, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeScene;

    invoke-direct {p0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeScene;-><init>()V

    const/16 v0, 0x3f2

    .line 382
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeScene;->setMsgID(I)V

    .line 383
    const-string v0, "powercharge"

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeScene;->setSceneName(Ljava/lang/String;)V

    .line 384
    invoke-static {p0}, Lcn/nubia/redmagickyi/unity/UnitySDK;->sendToUnity(Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;)V

    return-void
.end method

.method private unregistContentObserver()V
    .locals 2

    .line 703
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->alarmClockFiringStateChangedObserver:Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity$AlarmClockFiringStateChangedObserver;

    if-eqz v0, :cond_0

    .line 704
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->alarmClockFiringStateChangedObserver:Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity$AlarmClockFiringStateChangedObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 705
    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->alarmClockFiringStateChangedObserver:Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity$AlarmClockFiringStateChangedObserver;

    :cond_0
    return-void
.end method

.method private updateChargeType()V
    .locals 2

    .line 554
    new-instance v0, Lcn/nubia/redmagickyi/unity/messages/UAMessageChargeType;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageChargeType;-><init>()V

    const/16 v1, 0x3ed

    .line 555
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/unity/messages/UAMessageChargeType;->setMsgID(I)V

    .line 556
    iget p0, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->mChargeType:I

    const/4 v1, 0x1

    if-eq p0, v1, :cond_1

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 559
    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageChargeType;->setType(I)V

    goto :goto_1

    .line 557
    :cond_1
    :goto_0
    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageChargeType;->setType(I)V

    .line 561
    :goto_1
    invoke-static {v0}, Lcn/nubia/redmagickyi/unity/UnitySDK;->sendToUnity(Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;)V

    return-void
.end method


# virtual methods
.method public OnUnityMessage(Ljava/lang/String;)V
    .locals 2

    .line 460
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OnUnityMessage: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerChargeActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    :try_start_0
    invoke-static {p1}, Lcn/nubia/redmagickyi/unity/UAMessagePreParser;->parseMessageFromUnity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->parseMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 464
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 346
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    if-eqz v0, :cond_0

    .line 347
    invoke-virtual {v0, p1}, Lcom/unity3d/player/UnityPlayer;->injectEvent(Landroid/view/InputEvent;)Z

    move-result p0

    return p0

    .line 349
    :cond_0
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 354
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->isFinishing:Z

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->isPerformFinish:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 357
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 358
    const-string p1, "PowerChargeActivity"

    const-string v0, "touch to finish"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->finish()V

    return v1

    .line 362
    :cond_1
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method public fadeOut(Landroid/view/View;JJ)V
    .locals 1

    .line 469
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    .line 496
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 497
    invoke-virtual {v0, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 498
    invoke-virtual {v0, p4, p5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 499
    new-instance p2, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity$4;

    invoke-direct {p2, p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity$4;-><init>(Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;Landroid/view/View;)V

    invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 516
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public finish()V
    .locals 6

    .line 396
    const-string v0, "finish do finally"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "finish begin, isFinishing = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->isFinishing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PowerChargeActivity"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    .line 397
    iput-boolean v1, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->isPerformFinish:Z

    .line 398
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isMyOSRom()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_5

    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isNebulaOSRom()Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_5

    .line 418
    :cond_0
    iget-boolean v3, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->isFinishing:Z

    if-eqz v3, :cond_1

    return-void

    .line 421
    :cond_1
    iput-boolean v1, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->isFinishing:Z

    .line 423
    :try_start_0
    iget-object v3, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->mPowerBootView:Landroid/view/View;

    if-eqz v3, :cond_2

    .line 424
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 426
    :cond_2
    invoke-virtual {p0, v4, v4}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->overridePendingTransition(II)V

    .line 427
    invoke-virtual {p0, v1}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->moveTaskToBack(Z)Z

    .line 428
    iget-object v3, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->mMainHandler:Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity$PowerChargeHandler;

    const/4 v5, 0x0

    if-eqz v3, :cond_3

    .line 429
    invoke-virtual {v3, v5}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity$PowerChargeHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 432
    :cond_3
    :try_start_1
    iget-object v3, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->mStopReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 436
    :goto_0
    :try_start_2
    iput-object v5, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->mStopReceiver:Landroid/content/BroadcastReceiver;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception v3

    goto :goto_2

    .line 434
    :catch_0
    :try_start_3
    const-string v3, "failed to unregist stopReceiver"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 438
    :goto_1
    :try_start_4
    iget-object v3, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->mObserver:Lcn/nubia/redmagickyi/powercharge/observer/battery/BatteryCapacityObserverManager;

    if-eqz v3, :cond_4

    .line 439
    invoke-virtual {v3}, Lcn/nubia/redmagickyi/powercharge/observer/battery/BatteryCapacityObserverManager;->stopObserver()V

    .line 440
    iget-object v3, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->mObserver:Lcn/nubia/redmagickyi/powercharge/observer/battery/BatteryCapacityObserverManager;

    invoke-virtual {v3, v4}, Lcn/nubia/redmagickyi/powercharge/observer/battery/BatteryCapacityObserverManager;->setShowChargeView(Z)V

    .line 441
    iget-object v3, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->mObserver:Lcn/nubia/redmagickyi/powercharge/observer/battery/BatteryCapacityObserverManager;

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/powercharge/observer/battery/BatteryCapacityObserverManager;->release()V

    .line 443
    :cond_4
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->unregistContentObserver()V

    .line 444
    invoke-virtual {p0, v4}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->setShowWhenLocked(Z)V

    goto :goto_3

    .line 436
    :goto_2
    iput-object v5, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->mStopReceiver:Landroid/content/BroadcastReceiver;

    .line 437
    throw v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v3

    goto :goto_4

    .line 446
    :catch_1
    :try_start_5
    const-string v3, "finish exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 448
    :goto_3
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    iput-boolean v1, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->isLifeCyclerOnStop:Z

    .line 450
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->onAidlHide()V

    .line 451
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->onAidlDestroy()V

    .line 453
    const-string p0, "finish end"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/ApplicationContext;->killProcess(I)V

    goto :goto_6

    .line 448
    :goto_4
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    iput-boolean v1, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->isLifeCyclerOnStop:Z

    .line 450
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->onAidlHide()V

    .line 451
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->onAidlDestroy()V

    .line 452
    throw v3

    .line 399
    :cond_5
    :goto_5
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/AppExecutors;->mainThread()Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    move-result-object v0

    new-instance v2, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity$3;

    invoke-direct {v2, p0}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity$3;-><init>(Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;)V

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->removeExecute(Ljava/lang/Runnable;)V

    .line 410
    invoke-virtual {p0, v4, v4}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->overridePendingTransition(II)V

    .line 411
    invoke-virtual {p0, v1}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->moveTaskToBack(Z)Z

    .line 412
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->finish()V

    :goto_6
    return-void
.end method

.method public getFilesDir()Ljava/io/File;
    .locals 0

    .line 377
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    .locals 0

    .line 372
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public hideBottomUIMenu()V
    .locals 2

    .line 669
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 670
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x1006

    .line 673
    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method public onAidlCreate()V
    .locals 2

    .line 764
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "kyiClient:onCreate, startKyiIndex = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->startKyiIndex:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerChargeActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->kyiClient:Lcn/nubia/lockscreen/charge/aidl/IKYIClientInterface;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->kyiService:Lcn/nubia/lockscreen/charge/aidl/IKYIServiceInterface;

    if-eqz p0, :cond_0

    .line 767
    :try_start_0
    invoke-interface {v0, p0}, Lcn/nubia/lockscreen/charge/aidl/IKYIClientInterface;->onCreate(Lcn/nubia/lockscreen/charge/aidl/IKYIServiceInterface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 769
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onAidlDestroy()V
    .locals 2

    .line 797
    const-string v0, "PowerChargeActivity"

    const-string v1, "kyiClient:onDistroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->kyiClient:Lcn/nubia/lockscreen/charge/aidl/IKYIClientInterface;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->kyiService:Lcn/nubia/lockscreen/charge/aidl/IKYIServiceInterface;

    if-eqz p0, :cond_0

    .line 800
    :try_start_0
    invoke-interface {v0}, Lcn/nubia/lockscreen/charge/aidl/IKYIClientInterface;->onDistroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 802
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onAidlHide()V
    .locals 2

    .line 786
    const-string v0, "PowerChargeActivity"

    const-string v1, "kyiClient:onHide"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->kyiClient:Lcn/nubia/lockscreen/charge/aidl/IKYIClientInterface;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->kyiService:Lcn/nubia/lockscreen/charge/aidl/IKYIServiceInterface;

    if-eqz p0, :cond_0

    .line 789
    :try_start_0
    invoke-interface {v0}, Lcn/nubia/lockscreen/charge/aidl/IKYIClientInterface;->onHide()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 791
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onAidlShow()V
    .locals 2

    .line 775
    const-string v0, "PowerChargeActivity"

    const-string v1, "kyiClient:onShow"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->kyiClient:Lcn/nubia/lockscreen/charge/aidl/IKYIClientInterface;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->kyiService:Lcn/nubia/lockscreen/charge/aidl/IKYIServiceInterface;

    if-eqz p0, :cond_0

    .line 778
    :try_start_0
    invoke-interface {v0}, Lcn/nubia/lockscreen/charge/aidl/IKYIClientInterface;->onShow()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 780
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 367
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onBackPressed()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 318
    const-string v0, "PowerChargeActivity"

    const-string v1, "onConfiguraChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 320
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    if-eqz v0, :cond_0

    .line 321
    invoke-virtual {v0, p1}, Lcom/unity3d/player/UnityPlayer;->configurationChanged(Landroid/content/res/Configuration;)V

    .line 323
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->chargeStyleBean:Lcn/nubia/redmagickyi/powercharge/bean/ChargeStyleBean;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/powercharge/bean/ChargeStyleBean;->getStyleView()Lcn/nubia/redmagickyi/powercharge/view/BaseChargeStyleView;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/powercharge/view/BaseChargeStyleView;->initOrientationn(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 104
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onCreate(Landroid/os/Bundle;)V

    .line 105
    const-string p1, "PowerChargeActivity"

    const-string v0, "onCreate"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->registContentObserver()V

    .line 109
    sget p1, Lcn/nubia/redmagickyi/main/R$layout;->layout_power_charge:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->setContentView(I)V

    .line 110
    new-instance p1, Lcn/nubia/redmagickyi/powercharge/util/ChargeStyleManager;

    invoke-direct {p1}, Lcn/nubia/redmagickyi/powercharge/util/ChargeStyleManager;-><init>()V

    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->chargeStyleManager:Lcn/nubia/redmagickyi/powercharge/util/ChargeStyleManager;

    .line 111
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/powercharge/util/ChargeStyleManager;->getChargeStyle()Lcn/nubia/redmagickyi/powercharge/bean/ChargeStyleBean;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->chargeStyleBean:Lcn/nubia/redmagickyi/powercharge/bean/ChargeStyleBean;

    .line 113
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->initView()V

    .line 115
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->initAidlClient()V

    .line 116
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->initAidlService()V

    .line 117
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->onAidlCreate()V

    .line 119
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->power_boot_foreground:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->mPowerBootView:Landroid/view/View;

    .line 120
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isMyOSRom()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isNebulaOSRom()Z

    move-result p1

    if-nez p1, :cond_0

    .line 121
    new-instance p1, Lcn/nubia/redmagickyi/unity/ProxyUnityPlayer;

    sget-object v0, Lcom/unity3d/player/IPlayer$Type;->TextureView:Lcom/unity3d/player/IPlayer$Type;

    invoke-direct {p1, p0, v0, p0}, Lcn/nubia/redmagickyi/unity/ProxyUnityPlayer;-><init>(Landroid/content/Context;Lcom/unity3d/player/IPlayer$Type;Lcom/unity3d/player/IUnityPlayerLifecycleEvents;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    .line 122
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->unityview:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->unityView:Landroid/view/ViewGroup;

    .line 123
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 124
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    if-eqz p1, :cond_0

    .line 125
    invoke-virtual {p1}, Lcom/unity3d/player/UnityPlayer;->requestFocus()Z

    .line 129
    :cond_0
    new-instance p1, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity$PowerChargeHandler;

    invoke-direct {p1, p0}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity$PowerChargeHandler;-><init>(Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->mMainHandler:Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity$PowerChargeHandler;

    .line 130
    new-instance p1, Lcn/nubia/redmagickyi/powercharge/observer/battery/BatteryCapacityObserverManager;

    new-instance v0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity$1;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity$1;-><init>(Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;)V

    invoke-direct {p1, p0, v0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/BatteryCapacityObserverManager;-><init>(Landroid/content/Context;Lcn/nubia/redmagickyi/powercharge/observer/battery/IChargeObserver$Callback;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->mObserver:Lcn/nubia/redmagickyi/powercharge/observer/battery/BatteryCapacityObserverManager;

    .line 143
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->onSceneLoaded()V

    .line 145
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->mStopReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "intent.action.redmagickyi.power.stop"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-virtual {p0, p1, v0, v1}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 146
    invoke-static {p0}, Lcn/nubia/redmagickyi/unity/UnitySDK;->setUnityToAndroidListen(Lcom/nubia/androidforunity/UnityToAndroidCallback;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 181
    const-string v0, "onDestroy begin"

    const-string v1, "PowerChargeActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->isFinishing:Z

    if-eqz v0, :cond_0

    .line 183
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onDestroy()V

    goto :goto_2

    .line 185
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->mMainHandler:Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity$PowerChargeHandler;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 186
    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity$PowerChargeHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 188
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->mObserver:Lcn/nubia/redmagickyi/powercharge/observer/battery/BatteryCapacityObserverManager;

    if-eqz v0, :cond_2

    .line 189
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/BatteryCapacityObserverManager;->release()V

    .line 192
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->mStopReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    :goto_0
    iput-object v2, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->mStopReceiver:Landroid/content/BroadcastReceiver;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 194
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 198
    :goto_1
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->unregistContentObserver()V

    .line 199
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->onAidlDestroy()V

    .line 200
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    if-eqz v0, :cond_3

    .line 201
    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->destroy()V

    .line 203
    :cond_3
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onDestroy()V

    .line 205
    :goto_2
    const-string p0, "onDestroy end"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 196
    :goto_3
    iput-object v2, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->mStopReceiver:Landroid/content/BroadcastReceiver;

    .line 197
    throw v0
.end method

.method public onLowMemory()V
    .locals 2

    .line 297
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onLowMemory()V

    .line 298
    const-string v0, "PowerChargeActivity"

    const-string v1, "onLowMemory"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    if-eqz p0, :cond_0

    .line 300
    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->lowMemory()V

    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .line 160
    const-string v0, "PowerChargeActivity"

    const-string v1, "onNewIntent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 165
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->setShowWhenLocked(Z)V

    .line 166
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->setIntent(Landroid/content/Intent;)V

    .line 167
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->initAidlClient()V

    .line 168
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->initAidlService()V

    .line 169
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->onAidlCreate()V

    .line 170
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {v0, p1}, Lcom/unity3d/player/UnityPlayer;->newIntent(Landroid/content/Intent;)V

    .line 173
    :cond_0
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->switchScene()V

    .line 174
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->chargeStyleBean:Lcn/nubia/redmagickyi/powercharge/bean/ChargeStyleBean;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/powercharge/bean/ChargeStyleBean;->getStyleView()Lcn/nubia/redmagickyi/powercharge/view/BaseChargeStyleView;

    move-result-object p1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p1, p0}, Lcn/nubia/redmagickyi/powercharge/view/BaseChargeStyleView;->initSceneOrientation(I)V

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 232
    const-string v0, "PowerChargeActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->isFinishing:Z

    if-eqz v0, :cond_0

    .line 234
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onPause()V

    goto :goto_0

    .line 236
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    if-eqz v0, :cond_1

    .line 237
    invoke-static {v0}, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->pause(Lcom/unity3d/player/UnityPlayer;)Z

    .line 239
    :cond_1
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onPause()V

    .line 240
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->onAidlHide()V

    .line 241
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->mMainHandler:Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity$PowerChargeHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity$PowerChargeHandler;->removeMessages(I)V

    .line 242
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->mMainHandler:Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity$PowerChargeHandler;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity$PowerChargeHandler;->removeMessages(I)V

    :goto_0
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 265
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 266
    const-string p1, "PowerChargeActivity"

    const-string v0, "onPostCreate"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-boolean p1, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->isPerformFinish:Z

    if-nez p1, :cond_2

    .line 268
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isMyOSRom()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isNebulaOSRom()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 269
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->mMainHandler:Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity$PowerChargeHandler;

    new-instance v0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity$2;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity$2;-><init>(Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity$PowerChargeHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 287
    :cond_1
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->switchScene()V

    .line 289
    :cond_2
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->checkAlarmClockFiringNow()Z

    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 249
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onResume()V

    .line 251
    const-string v0, "PowerChargeActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    if-eqz v0, :cond_0

    .line 253
    invoke-static {v0}, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->resume(Lcom/unity3d/player/UnityPlayer;)Z

    .line 255
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->onAidlShow()V

    .line 256
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    .line 257
    iput v1, v0, Landroid/os/Message;->what:I

    .line 258
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 259
    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->mMainHandler:Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity$PowerChargeHandler;

    invoke-virtual {v1, v0}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity$PowerChargeHandler;->sendMessage(Landroid/os/Message;)Z

    .line 260
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->mMainHandler:Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity$PowerChargeHandler;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity$PowerChargeHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 809
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 811
    const-string p0, "android:support:fragments"

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 812
    const-string v1, "android:fragments"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 815
    const-string v0, "androidx.lifecycle.BundlableSavedStateRegistry.key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 817
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 223
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onStart()V

    .line 224
    const-string v0, "PowerChargeActivity"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 225
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->isLifeCyclerOnStop:Z

    .line 226
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->mObserver:Lcn/nubia/redmagickyi/powercharge/observer/battery/BatteryCapacityObserverManager;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/BatteryCapacityObserverManager;->setShowChargeView(Z)V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 210
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->isFinishing:Z

    if-eqz v0, :cond_0

    .line 211
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onStop()V

    goto :goto_0

    .line 213
    :cond_0
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onStop()V

    const/4 v0, 0x1

    .line 214
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->isLifeCyclerOnStop:Z

    .line 215
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->mObserver:Lcn/nubia/redmagickyi/powercharge/observer/battery/BatteryCapacityObserverManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/BatteryCapacityObserverManager;->setShowChargeView(Z)V

    .line 218
    :goto_0
    const-string p0, "PowerChargeActivity"

    const-string v0, "onStop"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 2

    .line 307
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onTrimMemory(I)V

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onTrimMemory "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerChargeActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xf

    if-ne p1, v0, :cond_0

    .line 309
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    if-eqz p0, :cond_0

    .line 311
    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->lowMemory()V

    :cond_0
    return-void
.end method

.method public onUnityPlayerQuitted()V
    .locals 0

    return-void
.end method

.method public onUnityPlayerUnloaded()V
    .locals 1

    const/4 v0, 0x1

    .line 151
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->moveTaskToBack(Z)Z

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    .line 330
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->isWindowFocused:Ljava/lang/Boolean;

    .line 331
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onWindowFocusChanged(Z)V

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onWindowFocusChanged focus = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerChargeActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    if-eqz p0, :cond_0

    .line 338
    invoke-virtual {p0, p1}, Lcom/unity3d/player/UnityPlayer;->windowFocusChanged(Z)V

    :cond_0
    return-void
.end method

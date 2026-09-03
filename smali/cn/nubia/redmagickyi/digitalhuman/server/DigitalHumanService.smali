.class public Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;
.super Landroid/app/Service;
.source "DigitalHumanService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# static fields
.field private static final TAG:Ljava/lang/String; = "DigitalHumanService"


# instance fields
.field private audioCallback:Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$OnAudioCallback;

.field private final binder:Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanService$Stub;

.field private final callbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/digitalhuman/utils/ProxyDigitalHumanClientCallback;",
            ">;"
        }
    .end annotation
.end field

.field private clientSDKVersionCode:Ljava/util/concurrent/atomic/AtomicInteger;

.field private deathWatchDog:Lcn/nubia/redmagickyi/digitalhuman/utils/BinderDeathWatchDog;

.field private modelBackgroundManager:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcn/nubia/redmagickyi/digitalhuman/utils/ModelBackgroundManager;",
            ">;"
        }
    .end annotation
.end field

.field private serverIdelWatchDog:Lcn/nubia/redmagickyi/digitalhuman/ServerIdelWatchDog;

.field private thumbnailDisplayingCaller:Lcn/nubia/redmagickyi/digitalhuman/utils/CallerManager;

.field private thumbnailPreview:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcn/nubia/redmagickyi/digitalhuman/ui/ThumbnailPreview;",
            ">;"
        }
    .end annotation
.end field

.field private unityDisplayingCaller:Lcn/nubia/redmagickyi/digitalhuman/utils/CallerManager;

.field private unityPreview:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;",
            ">;"
        }
    .end annotation
.end field

.field private voiceAssistantContentObserver:Lcn/nubia/redmagickyi/digitalhuman/utils/AIAssistantSettingsManager$AIAssistantContentObserver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 57
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->callbacks:Ljava/util/List;

    .line 59
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->modelBackgroundManager:Ljava/util/concurrent/atomic/AtomicReference;

    .line 60
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->unityPreview:Ljava/util/concurrent/atomic/AtomicReference;

    .line 61
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->thumbnailPreview:Ljava/util/concurrent/atomic/AtomicReference;

    .line 62
    new-instance v0, Lcn/nubia/redmagickyi/digitalhuman/utils/BinderDeathWatchDog;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/digitalhuman/utils/BinderDeathWatchDog;-><init>(Landroid/os/IBinder$DeathRecipient;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->deathWatchDog:Lcn/nubia/redmagickyi/digitalhuman/utils/BinderDeathWatchDog;

    .line 65
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->clientSDKVersionCode:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 67
    new-instance v0, Lcn/nubia/redmagickyi/digitalhuman/utils/CallerManager;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/digitalhuman/utils/CallerManager;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->unityDisplayingCaller:Lcn/nubia/redmagickyi/digitalhuman/utils/CallerManager;

    .line 68
    new-instance v0, Lcn/nubia/redmagickyi/digitalhuman/utils/CallerManager;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/digitalhuman/utils/CallerManager;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->thumbnailDisplayingCaller:Lcn/nubia/redmagickyi/digitalhuman/utils/CallerManager;

    .line 70
    new-instance v0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$1;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$1;-><init>(Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->binder:Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanService$Stub;

    .line 426
    new-instance v0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$2;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$2;-><init>(Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->voiceAssistantContentObserver:Lcn/nubia/redmagickyi/digitalhuman/utils/AIAssistantSettingsManager$AIAssistantContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;)Ljava/util/List;
    .locals 0

    .line 54
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->callbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    .line 54
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->unityPreview:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    .line 54
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->thumbnailPreview:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;)Lcn/nubia/redmagickyi/digitalhuman/ServerIdelWatchDog;
    .locals 0

    .line 54
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->serverIdelWatchDog:Lcn/nubia/redmagickyi/digitalhuman/ServerIdelWatchDog;

    return-object p0
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;)Lcn/nubia/redmagickyi/digitalhuman/utils/CallerManager;
    .locals 0

    .line 54
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->unityDisplayingCaller:Lcn/nubia/redmagickyi/digitalhuman/utils/CallerManager;

    return-object p0
.end method

.method static synthetic access$500(Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;)Lcn/nubia/redmagickyi/digitalhuman/utils/CallerManager;
    .locals 0

    .line 54
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->thumbnailDisplayingCaller:Lcn/nubia/redmagickyi/digitalhuman/utils/CallerManager;

    return-object p0
.end method

.method static synthetic access$600(Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 54
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->clientSDKVersionCode:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static synthetic access$700(Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;)Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanService$Stub;
    .locals 0

    .line 54
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->binder:Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanService$Stub;

    return-object p0
.end method

.method static synthetic access$800(Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    .line 54
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->modelBackgroundManager:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method static synthetic access$900(Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->release()V

    return-void
.end method

.method private release()V
    .locals 1

    .line 743
    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/receiver/DigitalHumanMainReceiver;->unregisterReceiver()V

    .line 744
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->voiceAssistantContentObserver:Lcn/nubia/redmagickyi/digitalhuman/utils/AIAssistantSettingsManager$AIAssistantContentObserver;

    invoke-static {v0}, Lcn/nubia/redmagickyi/digitalhuman/utils/AIAssistantSettingsManager;->unregisterContentObserver(Lcn/nubia/redmagickyi/digitalhuman/utils/AIAssistantSettingsManager$AIAssistantContentObserver;)V

    .line 745
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->serverIdelWatchDog:Lcn/nubia/redmagickyi/digitalhuman/ServerIdelWatchDog;

    if-eqz v0, :cond_0

    .line 746
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/digitalhuman/ServerIdelWatchDog;->stopIdelCountdown()V

    .line 748
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->audioCallback:Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$OnAudioCallback;

    if-eqz v0, :cond_1

    .line 749
    invoke-static {v0}, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->unregistAudioCallback(Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$OnAudioCallback;)V

    .line 751
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->modelBackgroundManager:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 752
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->modelBackgroundManager:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/digitalhuman/utils/ModelBackgroundManager;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/digitalhuman/utils/ModelBackgroundManager;->release()V

    .line 754
    :cond_2
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->unityPreview:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 755
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->unityPreview:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->release()V

    :cond_3
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 477
    const-string v0, "Client binder died"

    const-string v1, "DigitalHumanService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->deathWatchDog:Lcn/nubia/redmagickyi/digitalhuman/utils/BinderDeathWatchDog;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/digitalhuman/utils/BinderDeathWatchDog;->isAllClientsDisconnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 479
    const-string v0, "All clients disconnected (including crashed ones)"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->stopSelf()V

    :cond_0
    return-void
.end method

.method public getFilesDir()Ljava/io/File;
    .locals 0

    .line 444
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    .locals 0

    .line 439
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 4

    .line 450
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->deathWatchDog:Lcn/nubia/redmagickyi/digitalhuman/utils/BinderDeathWatchDog;

    iget-object v1, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->binder:Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanService$Stub;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/digitalhuman/utils/BinderDeathWatchDog;->onBind(Landroid/os/IBinder;)I

    move-result v0

    if-eqz p1, :cond_0

    .line 454
    const-string v1, "ServerId"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/digitalhuman/utils/ServerIdCreator;

    .line 455
    const-string v2, "Caller"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    move-object p1, v1

    .line 457
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Client bound, count: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", serverId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", caller: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DigitalHumanService"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->binder:Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanService$Stub;

    return-object p0
.end method

.method public onCreate()V
    .locals 4

    .line 493
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 494
    const-string v0, "onCreate"

    const-string v1, "DigitalHumanService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcn/nubia/redmagickyi/digitalhuman/client/DigitalHumanPresistClient;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 496
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->modelBackgroundManager:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v2, "Try to init ThumbnailPreview."

    if-nez v0, :cond_0

    .line 497
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->modelBackgroundManager:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v3, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$3;

    invoke-direct {v3, p0}, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$3;-><init>(Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;)V

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 509
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->unityPreview:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 510
    const-string v0, "Try to init UnityPreview."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->unityPreview:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v3, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$4;

    invoke-direct {v3, p0, p0}, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$4;-><init>(Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 569
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->unityPreview:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;

    new-instance v3, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$5;

    invoke-direct {v3, p0}, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$5;-><init>(Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;)V

    invoke-virtual {v0, v3}, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->setOnModelMotionListener(Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer$OnModelMotionListener;)V

    .line 653
    new-instance v0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$6;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$6;-><init>(Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->audioCallback:Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$OnAudioCallback;

    invoke-static {v0}, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->registAudioCallback(Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$OnAudioCallback;)V

    .line 698
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->thumbnailPreview:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 699
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->thumbnailPreview:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$7;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$7;-><init>(Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 711
    :cond_2
    new-instance v0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$8;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$8;-><init>(Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;)V

    invoke-static {v0}, Lcn/nubia/redmagickyi/digitalhuman/receiver/DigitalHumanMainReceiver;->registerReceiver(Lcn/nubia/redmagickyi/digitalhuman/receiver/DigitalHumanMainReceiver$Listener;)V

    .line 723
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->voiceAssistantContentObserver:Lcn/nubia/redmagickyi/digitalhuman/utils/AIAssistantSettingsManager$AIAssistantContentObserver;

    invoke-static {v0}, Lcn/nubia/redmagickyi/digitalhuman/utils/AIAssistantSettingsManager;->registerContentObserver(Lcn/nubia/redmagickyi/digitalhuman/utils/AIAssistantSettingsManager$AIAssistantContentObserver;)V

    .line 724
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->serverIdelWatchDog:Lcn/nubia/redmagickyi/digitalhuman/ServerIdelWatchDog;

    if-nez v0, :cond_3

    .line 725
    new-instance v0, Lcn/nubia/redmagickyi/digitalhuman/ServerIdelWatchDog;

    new-instance v1, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$9;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$9;-><init>(Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;)V

    invoke-direct {v0, v1}, Lcn/nubia/redmagickyi/digitalhuman/ServerIdelWatchDog;-><init>(Lcn/nubia/redmagickyi/digitalhuman/ServerIdelWatchDog$Callback;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->serverIdelWatchDog:Lcn/nubia/redmagickyi/digitalhuman/ServerIdelWatchDog;

    :cond_3
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 737
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 738
    const-string v0, "DigitalHumanService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    invoke-direct {p0}, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->release()V

    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 3

    .line 470
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->deathWatchDog:Lcn/nubia/redmagickyi/digitalhuman/utils/BinderDeathWatchDog;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/digitalhuman/utils/BinderDeathWatchDog;->onRebind()I

    move-result v0

    .line 471
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Client rebound, count: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DigitalHumanService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    invoke-super {p0, p1}, Landroid/app/Service;->onRebind(Landroid/content/Intent;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 487
    const-string p0, "DigitalHumanService"

    const-string p1, "onStartCommand"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x2

    return p0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1

    .line 463
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->deathWatchDog:Lcn/nubia/redmagickyi/digitalhuman/utils/BinderDeathWatchDog;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/digitalhuman/utils/BinderDeathWatchDog;->onUnbind()I

    move-result p0

    .line 464
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Client unbound, count: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DigitalHumanService"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

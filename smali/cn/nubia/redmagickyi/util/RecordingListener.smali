.class public Lcn/nubia/redmagickyi/util/RecordingListener;
.super Ljava/lang/Object;
.source "RecordingListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/util/RecordingListener$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RecordingListener"

.field private static sInstance:Lcn/nubia/redmagickyi/util/RecordingListener;


# instance fields
.field private context:Landroid/content/Context;

.field private isMicBusy:Ljava/lang/Boolean;

.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/util/RecordingListener$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioRecordingCallback:Landroid/media/AudioManager$AudioRecordingCallback;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/util/RecordingListener;->listeners:Ljava/util/List;

    .line 124
    new-instance v0, Lcn/nubia/redmagickyi/util/RecordingListener$1;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/util/RecordingListener$1;-><init>(Lcn/nubia/redmagickyi/util/RecordingListener;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/util/RecordingListener;->mAudioRecordingCallback:Landroid/media/AudioManager$AudioRecordingCallback;

    return-void
.end method

.method static synthetic access$002(Lcn/nubia/redmagickyi/util/RecordingListener;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 15
    iput-object p1, p0, Lcn/nubia/redmagickyi/util/RecordingListener;->isMicBusy:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/util/RecordingListener;Ljava/util/List;)Z
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/util/RecordingListener;->isRecordingInProgress(Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/util/RecordingListener;)Ljava/util/List;
    .locals 0

    .line 15
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/RecordingListener;->listeners:Ljava/util/List;

    return-object p0
.end method

.method public static declared-synchronized getInstance()Lcn/nubia/redmagickyi/util/RecordingListener;
    .locals 2

    const-class v0, Lcn/nubia/redmagickyi/util/RecordingListener;

    monitor-enter v0

    .line 25
    :try_start_0
    sget-object v1, Lcn/nubia/redmagickyi/util/RecordingListener;->sInstance:Lcn/nubia/redmagickyi/util/RecordingListener;

    if-nez v1, :cond_0

    .line 26
    new-instance v1, Lcn/nubia/redmagickyi/util/RecordingListener;

    invoke-direct {v1}, Lcn/nubia/redmagickyi/util/RecordingListener;-><init>()V

    sput-object v1, Lcn/nubia/redmagickyi/util/RecordingListener;->sInstance:Lcn/nubia/redmagickyi/util/RecordingListener;

    .line 28
    :cond_0
    sget-object v1, Lcn/nubia/redmagickyi/util/RecordingListener;->sInstance:Lcn/nubia/redmagickyi/util/RecordingListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getRecordingPackageName(Landroid/media/AudioRecordingConfiguration;)Ljava/lang/String;
    .locals 5

    .line 108
    const-string p0, "RecordingListener"

    .line 0
    const-string v0, "getRecordingPackageName:"

    .line 108
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 109
    const-string v2, ""

    .line 112
    :try_start_0
    const-string v3, "getClientPackageName"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v3, 0x0

    .line 113
    move-object v4, v3

    check-cast v4, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 116
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v2, p1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 118
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 119
    const-string p1, "getRecordingPackageName Exception"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object p1, v2

    :goto_1
    return-object p1
.end method

.method private isMicBusy(Landroid/content/Context;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 80
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    .line 81
    invoke-virtual {p1}, Landroid/media/AudioManager;->getActiveRecordingConfigurations()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/util/RecordingListener;->isRecordingInProgress(Ljava/util/List;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 83
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "isMicBusy:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RecordingListener"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method private isRecordingInProgress(Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/AudioRecordingConfiguration;",
            ">;)Z"
        }
    .end annotation

    .line 103
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public addListener(Lcn/nubia/redmagickyi/util/RecordingListener$Listener;)V
    .locals 1

    .line 55
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/RecordingListener;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/RecordingListener;->listeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public isMicBusy()Z
    .locals 1

    .line 68
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/RecordingListener;->isMicBusy:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 69
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/RecordingListener;->context:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/util/RecordingListener;->isMicBusy(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/util/RecordingListener;->isMicBusy:Ljava/lang/Boolean;

    .line 71
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/RecordingListener;->isMicBusy:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public registerRecordingState(Landroid/content/Context;)V
    .locals 2

    .line 37
    :try_start_0
    iput-object p1, p0, Lcn/nubia/redmagickyi/util/RecordingListener;->context:Landroid/content/Context;

    .line 38
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    .line 39
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/RecordingListener;->mAudioRecordingCallback:Landroid/media/AudioManager$AudioRecordingCallback;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {p1, p0, v0}, Landroid/media/AudioManager;->registerAudioRecordingCallback(Landroid/media/AudioManager$AudioRecordingCallback;Landroid/os/Handler;)V
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

.method public removeListener(Lcn/nubia/redmagickyi/util/RecordingListener$Listener;)V
    .locals 0

    .line 61
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/RecordingListener;->listeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterRecordingState(Landroid/content/Context;)V
    .locals 1

    .line 47
    :try_start_0
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    .line 48
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/RecordingListener;->mAudioRecordingCallback:Landroid/media/AudioManager$AudioRecordingCallback;

    invoke-virtual {p1, p0}, Landroid/media/AudioManager;->unregisterAudioRecordingCallback(Landroid/media/AudioManager$AudioRecordingCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 50
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

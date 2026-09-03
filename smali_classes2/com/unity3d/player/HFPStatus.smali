.class public Lcom/unity3d/player/HFPStatus;
.super Ljava/lang/Object;
.source "HFPStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/player/HFPStatus$a1;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/content/BroadcastReceiver;

.field private c:Landroid/content/Intent;

.field private d:Z

.field private e:Landroid/media/AudioManager;

.field private f:Lcom/unity3d/player/HFPStatus$a1;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/unity3d/player/HFPStatus;->b:Landroid/content/BroadcastReceiver;

    .line 17
    iput-object v0, p0, Lcom/unity3d/player/HFPStatus;->c:Landroid/content/Intent;

    const/4 v1, 0x0

    .line 18
    iput-boolean v1, p0, Lcom/unity3d/player/HFPStatus;->d:Z

    .line 19
    iput-object v0, p0, Lcom/unity3d/player/HFPStatus;->e:Landroid/media/AudioManager;

    .line 27
    sget-object v0, Lcom/unity3d/player/HFPStatus$a1;->a:Lcom/unity3d/player/HFPStatus$a1;

    iput-object v0, p0, Lcom/unity3d/player/HFPStatus;->f:Lcom/unity3d/player/HFPStatus$a1;

    .line 28
    iput-object p1, p0, Lcom/unity3d/player/HFPStatus;->a:Landroid/content/Context;

    .line 29
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/unity3d/player/HFPStatus;->e:Landroid/media/AudioManager;

    .line 30
    invoke-direct {p0}, Lcom/unity3d/player/HFPStatus;->initHFPStatusJni()V

    return-void
.end method

.method static synthetic access$000(Lcom/unity3d/player/HFPStatus;)Z
    .locals 0

    .line 14
    iget-boolean p0, p0, Lcom/unity3d/player/HFPStatus;->d:Z

    return p0
.end method

.method static synthetic access$002(Lcom/unity3d/player/HFPStatus;Z)Z
    .locals 0

    .line 14
    iput-boolean p1, p0, Lcom/unity3d/player/HFPStatus;->d:Z

    return p1
.end method

.method static synthetic access$100(Lcom/unity3d/player/HFPStatus;)Landroid/media/AudioManager;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/unity3d/player/HFPStatus;->e:Landroid/media/AudioManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/unity3d/player/HFPStatus;)Lcom/unity3d/player/HFPStatus$a1;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/unity3d/player/HFPStatus;->f:Lcom/unity3d/player/HFPStatus$a1;

    return-object p0
.end method

.method static synthetic access$202(Lcom/unity3d/player/HFPStatus;Lcom/unity3d/player/HFPStatus$a1;)Lcom/unity3d/player/HFPStatus$a1;
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/unity3d/player/HFPStatus;->f:Lcom/unity3d/player/HFPStatus$a1;

    return-object p1
.end method

.method private final native deinitHFPStatusJni()V
.end method

.method private final native initHFPStatusJni()V
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/unity3d/player/HFPStatus;->deinitHFPStatusJni()V

    return-void
.end method

.method protected getHFPStat()Z
    .locals 1

    .line 82
    iget-object p0, p0, Lcom/unity3d/player/HFPStatus;->f:Lcom/unity3d/player/HFPStatus$a1;

    sget-object v0, Lcom/unity3d/player/HFPStatus$a1;->b:Lcom/unity3d/player/HFPStatus$a1;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected requestHFPStat()V
    .locals 1

    .line 38
    new-instance v0, Lcom/unity3d/player/HFPStatus$1;

    invoke-direct {v0, p0}, Lcom/unity3d/player/HFPStatus$1;-><init>(Lcom/unity3d/player/HFPStatus;)V

    iput-object v0, p0, Lcom/unity3d/player/HFPStatus;->b:Landroid/content/BroadcastReceiver;

    return-void
.end method

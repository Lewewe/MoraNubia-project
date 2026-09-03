.class public Lcom/zte/aivoice/asr/util/BluetoothScoManager;
.super Ljava/lang/Object;
.source "BluetoothScoManager.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mAudioManager:Landroid/media/AudioManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-string p1, "BluetoothStatusRec"

    iput-object p1, p0, Lcom/zte/aivoice/asr/util/BluetoothScoManager;->TAG:Ljava/lang/String;

    .line 13
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/zte/aivoice/asr/util/BluetoothScoManager;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method


# virtual methods
.method public closeSco()V
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/zte/aivoice/asr/util/BluetoothScoManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/zte/aivoice/asr/util/BluetoothScoManager;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 39
    iget-object v0, p0, Lcom/zte/aivoice/asr/util/BluetoothScoManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->stopBluetoothSco()V

    .line 41
    :cond_0
    iget-object p0, p0, Lcom/zte/aivoice/asr/util/BluetoothScoManager;->TAG:Ljava/lang/String;

    const-string v0, "closeSco."

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public openSco()V
    .locals 2

    .line 21
    iget-object v0, p0, Lcom/zte/aivoice/asr/util/BluetoothScoManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoAvailableOffCall()Z

    move-result v0

    if-nez v0, :cond_0

    .line 22
    iget-object p0, p0, Lcom/zte/aivoice/asr/util/BluetoothScoManager;->TAG:Ljava/lang/String;

    const-string v0, "unSupported."

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/zte/aivoice/asr/util/BluetoothScoManager;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 26
    iget-object v0, p0, Lcom/zte/aivoice/asr/util/BluetoothScoManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->startBluetoothSco()V

    .line 27
    iget-object p0, p0, Lcom/zte/aivoice/asr/util/BluetoothScoManager;->TAG:Ljava/lang/String;

    const-string v0, "openSco."

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

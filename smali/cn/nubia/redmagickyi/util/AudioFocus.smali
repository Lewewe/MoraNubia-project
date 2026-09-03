.class public Lcn/nubia/redmagickyi/util/AudioFocus;
.super Ljava/lang/Object;
.source "AudioFocus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/util/AudioFocus$Listener;
    }
.end annotation


# static fields
.field private static final SUPPORTED_MIN_VOLUME:I = 0x3

.field private static final VOLUME_CHANGED_ACTION:Ljava/lang/String; = "android.media.VOLUME_CHANGED_ACTION"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioFocusRequest:Landroid/media/AudioFocusRequest;

.field private mAudioManagerFocus:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mCurrentVolume:I

.field private mHoldOnFocus:Z

.field private mIsVolumeReceiverRegisted:Z

.field private mIslossFocus:Z

.field private mIslossFocusTransient:Z

.field private mIslossFocusduck:Z

.field private mListener:Lcn/nubia/redmagickyi/util/AudioFocus$Listener;

.field private mVolumeReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/nubia/redmagickyi/util/AudioFocus$Listener;)V
    .locals 1

    const/4 v0, 0x1

    .line 37
    invoke-direct {p0, p1, v0, p2}, Lcn/nubia/redmagickyi/util/AudioFocus;-><init>(Landroid/content/Context;ZLcn/nubia/redmagickyi/util/AudioFocus$Listener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLcn/nubia/redmagickyi/util/AudioFocus$Listener;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, "AudioFocus"

    iput-object v0, p0, Lcn/nubia/redmagickyi/util/AudioFocus;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/util/AudioFocus;->mHoldOnFocus:Z

    const/4 v0, 0x5

    .line 24
    iput v0, p0, Lcn/nubia/redmagickyi/util/AudioFocus;->mCurrentVolume:I

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/util/AudioFocus;->mIslossFocusduck:Z

    .line 26
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/util/AudioFocus;->mIslossFocus:Z

    .line 27
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/util/AudioFocus;->mIslossFocusTransient:Z

    .line 28
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/util/AudioFocus;->mIsVolumeReceiverRegisted:Z

    .line 87
    new-instance v0, Lcn/nubia/redmagickyi/util/AudioFocus$1;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/util/AudioFocus$1;-><init>(Lcn/nubia/redmagickyi/util/AudioFocus;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/util/AudioFocus;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 160
    new-instance v0, Lcn/nubia/redmagickyi/util/AudioFocus$2;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/util/AudioFocus$2;-><init>(Lcn/nubia/redmagickyi/util/AudioFocus;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/util/AudioFocus;->mVolumeReceiver:Landroid/content/BroadcastReceiver;

    .line 41
    iput-object p1, p0, Lcn/nubia/redmagickyi/util/AudioFocus;->mContext:Landroid/content/Context;

    .line 42
    iput-boolean p2, p0, Lcn/nubia/redmagickyi/util/AudioFocus;->mHoldOnFocus:Z

    .line 43
    iput-object p3, p0, Lcn/nubia/redmagickyi/util/AudioFocus;->mListener:Lcn/nubia/redmagickyi/util/AudioFocus$Listener;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/util/AudioFocus;)Z
    .locals 0

    .line 15
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/util/AudioFocus;->mIslossFocus:Z

    return p0
.end method

.method static synthetic access$002(Lcn/nubia/redmagickyi/util/AudioFocus;Z)Z
    .locals 0

    .line 15
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/util/AudioFocus;->mIslossFocus:Z

    return p1
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/util/AudioFocus;)Lcn/nubia/redmagickyi/util/AudioFocus$Listener;
    .locals 0

    .line 15
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/AudioFocus;->mListener:Lcn/nubia/redmagickyi/util/AudioFocus$Listener;

    return-object p0
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/util/AudioFocus;)Z
    .locals 0

    .line 15
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/util/AudioFocus;->mIslossFocusTransient:Z

    return p0
.end method

.method static synthetic access$202(Lcn/nubia/redmagickyi/util/AudioFocus;Z)Z
    .locals 0

    .line 15
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/util/AudioFocus;->mIslossFocusTransient:Z

    return p1
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/util/AudioFocus;)Z
    .locals 0

    .line 15
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/util/AudioFocus;->mIslossFocusduck:Z

    return p0
.end method

.method static synthetic access$302(Lcn/nubia/redmagickyi/util/AudioFocus;Z)Z
    .locals 0

    .line 15
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/util/AudioFocus;->mIslossFocusduck:Z

    return p1
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/util/AudioFocus;)I
    .locals 0

    .line 15
    iget p0, p0, Lcn/nubia/redmagickyi/util/AudioFocus;->mCurrentVolume:I

    return p0
.end method

.method static synthetic access$402(Lcn/nubia/redmagickyi/util/AudioFocus;I)I
    .locals 0

    .line 15
    iput p1, p0, Lcn/nubia/redmagickyi/util/AudioFocus;->mCurrentVolume:I

    return p1
.end method

.method static synthetic access$500(Lcn/nubia/redmagickyi/util/AudioFocus;)Landroid/media/AudioManager;
    .locals 0

    .line 15
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/AudioFocus;->mAudioManagerFocus:Landroid/media/AudioManager;

    return-object p0
.end method

.method static synthetic access$600(Lcn/nubia/redmagickyi/util/AudioFocus;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcn/nubia/redmagickyi/util/AudioFocus;->registVolumeReceiver()V

    return-void
.end method

.method static synthetic access$700(Lcn/nubia/redmagickyi/util/AudioFocus;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcn/nubia/redmagickyi/util/AudioFocus;->unregistVolumeReceiver()V

    return-void
.end method

.method private registVolumeReceiver()V
    .locals 4

    .line 146
    invoke-direct {p0}, Lcn/nubia/redmagickyi/util/AudioFocus;->unregistVolumeReceiver()V

    .line 147
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 148
    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 149
    iget-object v1, p0, Lcn/nubia/redmagickyi/util/AudioFocus;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/redmagickyi/util/AudioFocus;->mVolumeReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 150
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/util/AudioFocus;->mIsVolumeReceiverRegisted:Z

    return-void
.end method

.method private unregistVolumeReceiver()V
    .locals 1

    .line 154
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/util/AudioFocus;->mIsVolumeReceiverRegisted:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 155
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/util/AudioFocus;->mIsVolumeReceiverRegisted:Z

    .line 156
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/AudioFocus;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcn/nubia/redmagickyi/util/AudioFocus;->mVolumeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getSupportMinVolumeRate()F
    .locals 1

    .line 171
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/AudioFocus;->mAudioManagerFocus:Landroid/media/AudioManager;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p0

    int-to-float p0, p0

    const/high16 v0, 0x40400000    # 3.0f

    div-float/2addr v0, p0

    return v0
.end method

.method public islossFocus()Z
    .locals 0

    .line 179
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/util/AudioFocus;->mIslossFocus:Z

    return p0
.end method

.method public islossFocusTransient()Z
    .locals 0

    .line 183
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/util/AudioFocus;->mIslossFocusTransient:Z

    return p0
.end method

.method public islossFocusduck()Z
    .locals 0

    .line 175
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/util/AudioFocus;->mIslossFocusduck:Z

    return p0
.end method

.method public registAudioFocus()V
    .locals 3

    .line 54
    const-string v0, "AudioFocus"

    const-string v1, "registAudioFocus"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/AudioFocus;->mAudioManagerFocus:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 56
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcn/nubia/redmagickyi/util/AudioFocus;->mAudioManagerFocus:Landroid/media/AudioManager;

    .line 61
    :cond_0
    new-instance v0, Landroid/media/AudioFocusRequest$Builder;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    iget-object v1, p0, Lcn/nubia/redmagickyi/util/AudioFocus;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 62
    invoke-virtual {v0, v1}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v2, 0x3

    .line 63
    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    .line 64
    invoke-virtual {v0, v2}, Landroid/media/AudioFocusRequest$Builder;->setAcceptsDelayedFocusGain(Z)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    .line 65
    invoke-virtual {v0, v2}, Landroid/media/AudioFocusRequest$Builder;->setWillPauseWhenDucked(Z)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/util/AudioFocus;->mAudioFocusRequest:Landroid/media/AudioFocusRequest;

    .line 67
    iget-object v1, p0, Lcn/nubia/redmagickyi/util/AudioFocus;->mAudioManagerFocus:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    .line 69
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/util/AudioFocus;->mHoldOnFocus:Z

    if-nez v0, :cond_1

    .line 70
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/AudioFocus;->unregistAudioFocus()V

    :cond_1
    return-void
.end method

.method public setListener(Lcn/nubia/redmagickyi/util/AudioFocus$Listener;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcn/nubia/redmagickyi/util/AudioFocus;->mListener:Lcn/nubia/redmagickyi/util/AudioFocus$Listener;

    return-void
.end method

.method public unregistAudioFocus()V
    .locals 4

    .line 75
    const-string v0, "AudioFocus"

    const-string v1, "unregistAudioFocus"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-direct {p0}, Lcn/nubia/redmagickyi/util/AudioFocus;->unregistVolumeReceiver()V

    .line 77
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/util/AudioFocus;->mIslossFocusduck:Z

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/AudioFocus;->mAudioManagerFocus:Landroid/media/AudioManager;

    const/4 v1, 0x3

    iget v2, p0, Lcn/nubia/redmagickyi/util/AudioFocus;->mCurrentVolume:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 79
    iput-boolean v3, p0, Lcn/nubia/redmagickyi/util/AudioFocus;->mIslossFocusduck:Z

    .line 81
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/AudioFocus;->mAudioManagerFocus:Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    .line 82
    iget-object v1, p0, Lcn/nubia/redmagickyi/util/AudioFocus;->mAudioFocusRequest:Landroid/media/AudioFocusRequest;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocusRequest(Landroid/media/AudioFocusRequest;)I

    const/4 v0, 0x0

    .line 83
    iput-object v0, p0, Lcn/nubia/redmagickyi/util/AudioFocus;->mAudioManagerFocus:Landroid/media/AudioManager;

    :cond_1
    return-void
.end method

.class public Lcn/nubia/redmagickyi/crop/AudioFocus;
.super Ljava/lang/Object;
.source "AudioFocus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/crop/AudioFocus$Listener;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManagerFocus:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mCurrentVolume:I

.field private mIslossFocusduck:Z

.field private mListener:Lcn/nubia/redmagickyi/crop/AudioFocus$Listener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/nubia/redmagickyi/crop/AudioFocus$Listener;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, "AudioFocus"

    iput-object v0, p0, Lcn/nubia/redmagickyi/crop/AudioFocus;->TAG:Ljava/lang/String;

    const/4 v0, 0x5

    .line 16
    iput v0, p0, Lcn/nubia/redmagickyi/crop/AudioFocus;->mCurrentVolume:I

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/crop/AudioFocus;->mIslossFocusduck:Z

    .line 48
    new-instance v0, Lcn/nubia/redmagickyi/crop/AudioFocus$1;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/crop/AudioFocus$1;-><init>(Lcn/nubia/redmagickyi/crop/AudioFocus;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/crop/AudioFocus;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 24
    iput-object p1, p0, Lcn/nubia/redmagickyi/crop/AudioFocus;->mContext:Landroid/content/Context;

    .line 25
    iput-object p2, p0, Lcn/nubia/redmagickyi/crop/AudioFocus;->mListener:Lcn/nubia/redmagickyi/crop/AudioFocus$Listener;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/crop/AudioFocus;)Lcn/nubia/redmagickyi/crop/AudioFocus$Listener;
    .locals 0

    .line 10
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/AudioFocus;->mListener:Lcn/nubia/redmagickyi/crop/AudioFocus$Listener;

    return-object p0
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/crop/AudioFocus;)Z
    .locals 0

    .line 10
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/crop/AudioFocus;->mIslossFocusduck:Z

    return p0
.end method

.method static synthetic access$102(Lcn/nubia/redmagickyi/crop/AudioFocus;Z)Z
    .locals 0

    .line 10
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/crop/AudioFocus;->mIslossFocusduck:Z

    return p1
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/crop/AudioFocus;)I
    .locals 0

    .line 10
    iget p0, p0, Lcn/nubia/redmagickyi/crop/AudioFocus;->mCurrentVolume:I

    return p0
.end method

.method static synthetic access$202(Lcn/nubia/redmagickyi/crop/AudioFocus;I)I
    .locals 0

    .line 10
    iput p1, p0, Lcn/nubia/redmagickyi/crop/AudioFocus;->mCurrentVolume:I

    return p1
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/crop/AudioFocus;)Landroid/media/AudioManager;
    .locals 0

    .line 10
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/AudioFocus;->mAudioManagerFocus:Landroid/media/AudioManager;

    return-object p0
.end method


# virtual methods
.method public registAudioFocus()V
    .locals 3

    .line 29
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/AudioFocus;->mAudioManagerFocus:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 30
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcn/nubia/redmagickyi/crop/AudioFocus;->mAudioManagerFocus:Landroid/media/AudioManager;

    .line 32
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/AudioFocus;->mAudioManagerFocus:Landroid/media/AudioManager;

    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/AudioFocus;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    return-void
.end method

.method public unregistAudioFocus()V
    .locals 4

    .line 37
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/crop/AudioFocus;->mIslossFocusduck:Z

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/AudioFocus;->mAudioManagerFocus:Landroid/media/AudioManager;

    const/4 v1, 0x3

    iget v2, p0, Lcn/nubia/redmagickyi/crop/AudioFocus;->mCurrentVolume:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 39
    iput-boolean v3, p0, Lcn/nubia/redmagickyi/crop/AudioFocus;->mIslossFocusduck:Z

    .line 41
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/AudioFocus;->mAudioManagerFocus:Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    .line 42
    iget-object v1, p0, Lcn/nubia/redmagickyi/crop/AudioFocus;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcn/nubia/redmagickyi/crop/AudioFocus;->mAudioManagerFocus:Landroid/media/AudioManager;

    :cond_1
    return-void
.end method

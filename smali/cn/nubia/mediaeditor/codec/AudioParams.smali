.class public Lcn/nubia/mediaeditor/codec/AudioParams;
.super Ljava/lang/Object;
.source "AudioParams.java"


# static fields
.field private static final DEFAULT_AUDIO_MIME_TYPE:Ljava/lang/String; = "audio/mp4a-latm"

.field private static final MAX_INPUT_SIZE:I = 0x4800


# instance fields
.field private mAudioFormat:I

.field private mBitRate:I

.field private mChannelCount:I

.field private mChannelLayout:I

.field private mMimeType:Ljava/lang/String;

.field private mSampleRate:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-direct {p0}, Lcn/nubia/mediaeditor/codec/AudioParams;->initDefault()V

    return-void
.end method

.method private initDefault()V
    .locals 1

    .line 25
    const-string v0, "audio/mp4a-latm"

    iput-object v0, p0, Lcn/nubia/mediaeditor/codec/AudioParams;->mMimeType:Ljava/lang/String;

    const/4 v0, 0x2

    .line 26
    iput v0, p0, Lcn/nubia/mediaeditor/codec/AudioParams;->mAudioFormat:I

    const v0, 0x1f400

    .line 27
    iput v0, p0, Lcn/nubia/mediaeditor/codec/AudioParams;->mBitRate:I

    const v0, 0xac44

    .line 28
    iput v0, p0, Lcn/nubia/mediaeditor/codec/AudioParams;->mSampleRate:I

    const/16 v0, 0x10

    .line 29
    iput v0, p0, Lcn/nubia/mediaeditor/codec/AudioParams;->mChannelLayout:I

    const/4 v0, 0x1

    .line 30
    iput v0, p0, Lcn/nubia/mediaeditor/codec/AudioParams;->mChannelCount:I

    return-void
.end method


# virtual methods
.method public getMediaFormat()Landroid/media/MediaFormat;
    .locals 3

    .line 53
    new-instance v0, Landroid/media/MediaFormat;

    invoke-direct {v0}, Landroid/media/MediaFormat;-><init>()V

    .line 54
    const-string v1, "mime"

    iget-object v2, p0, Lcn/nubia/mediaeditor/codec/AudioParams;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object v1, p0, Lcn/nubia/mediaeditor/codec/AudioParams;->mMimeType:Ljava/lang/String;

    const-string v2, "audio/mp4a-latm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    const-string v1, "aac-profile"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 59
    :cond_0
    const-string v1, "bitrate"

    iget v2, p0, Lcn/nubia/mediaeditor/codec/AudioParams;->mBitRate:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 60
    const-string v1, "sample-rate"

    iget v2, p0, Lcn/nubia/mediaeditor/codec/AudioParams;->mSampleRate:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 61
    const-string v1, "channel-count"

    iget p0, p0, Lcn/nubia/mediaeditor/codec/AudioParams;->mChannelCount:I

    invoke-virtual {v0, v1, p0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 62
    const-string p0, "max-input-size"

    const/16 v1, 0x4800

    invoke-virtual {v0, p0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 0

    .line 45
    iget-object p0, p0, Lcn/nubia/mediaeditor/codec/AudioParams;->mMimeType:Ljava/lang/String;

    return-object p0
.end method

.method public getSampleRate()I
    .locals 0

    .line 49
    iget p0, p0, Lcn/nubia/mediaeditor/codec/AudioParams;->mSampleRate:I

    return p0
.end method

.method public setChannelCount(I)V
    .locals 0

    .line 41
    iput p1, p0, Lcn/nubia/mediaeditor/codec/AudioParams;->mChannelCount:I

    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcn/nubia/mediaeditor/codec/AudioParams;->mMimeType:Ljava/lang/String;

    return-void
.end method

.method public setaudioSampleRate(I)V
    .locals 0

    .line 37
    iput p1, p0, Lcn/nubia/mediaeditor/codec/AudioParams;->mSampleRate:I

    return-void
.end method

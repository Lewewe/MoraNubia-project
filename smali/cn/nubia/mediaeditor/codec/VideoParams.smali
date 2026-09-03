.class public Lcn/nubia/mediaeditor/codec/VideoParams;
.super Ljava/lang/Object;
.source "VideoParams.java"


# static fields
.field public static final MIME_TYPE_AVC:Ljava/lang/String; = "video/avc"


# instance fields
.field private mBitRate:I

.field private mColorFormat:I

.field private mFps:I

.field private mHeight:I

.field private mIFrameInter:I

.field private mIsMtkHigh:Z

.field private mIsMtkSlow:Z

.field private mIsSlomo:Z

.field private mMimeType:Ljava/lang/String;

.field private mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-direct {p0}, Lcn/nubia/mediaeditor/codec/VideoParams;->initDefault()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcn/nubia/mediaeditor/codec/VideoParams;->mMimeType:Ljava/lang/String;

    .line 30
    iput p2, p0, Lcn/nubia/mediaeditor/codec/VideoParams;->mBitRate:I

    .line 31
    iput p3, p0, Lcn/nubia/mediaeditor/codec/VideoParams;->mColorFormat:I

    return-void
.end method

.method private initDefault()V
    .locals 1

    .line 36
    const-string v0, "video/avc"

    iput-object v0, p0, Lcn/nubia/mediaeditor/codec/VideoParams;->mMimeType:Ljava/lang/String;

    const v0, 0x7f000789

    .line 37
    iput v0, p0, Lcn/nubia/mediaeditor/codec/VideoParams;->mColorFormat:I

    const/16 v0, 0x280

    .line 38
    iput v0, p0, Lcn/nubia/mediaeditor/codec/VideoParams;->mWidth:I

    const/16 v0, 0x1e0

    .line 39
    iput v0, p0, Lcn/nubia/mediaeditor/codec/VideoParams;->mHeight:I

    const/high16 v0, 0xf00000

    .line 40
    iput v0, p0, Lcn/nubia/mediaeditor/codec/VideoParams;->mBitRate:I

    const/4 v0, 0x5

    .line 41
    iput v0, p0, Lcn/nubia/mediaeditor/codec/VideoParams;->mFps:I

    const/4 v0, 0x1

    .line 42
    iput v0, p0, Lcn/nubia/mediaeditor/codec/VideoParams;->mIFrameInter:I

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcn/nubia/mediaeditor/codec/VideoParams;->mIsMtkHigh:Z

    .line 44
    iput-boolean v0, p0, Lcn/nubia/mediaeditor/codec/VideoParams;->mIsMtkSlow:Z

    .line 45
    iput-boolean v0, p0, Lcn/nubia/mediaeditor/codec/VideoParams;->mIsSlomo:Z

    return-void
.end method


# virtual methods
.method public getBitRate()I
    .locals 0

    .line 81
    iget p0, p0, Lcn/nubia/mediaeditor/codec/VideoParams;->mBitRate:I

    return p0
.end method

.method public getColorFormat()I
    .locals 0

    .line 115
    iget p0, p0, Lcn/nubia/mediaeditor/codec/VideoParams;->mColorFormat:I

    return p0
.end method

.method public getFps()I
    .locals 0

    .line 69
    iget p0, p0, Lcn/nubia/mediaeditor/codec/VideoParams;->mFps:I

    return p0
.end method

.method public getHeight()I
    .locals 0

    .line 105
    iget p0, p0, Lcn/nubia/mediaeditor/codec/VideoParams;->mHeight:I

    return p0
.end method

.method public getIFrameInter()I
    .locals 0

    .line 85
    iget p0, p0, Lcn/nubia/mediaeditor/codec/VideoParams;->mIFrameInter:I

    return p0
.end method

.method public getMediaFormat()Landroid/media/MediaFormat;
    .locals 3

    .line 123
    new-instance v0, Landroid/media/MediaFormat;

    invoke-direct {v0}, Landroid/media/MediaFormat;-><init>()V

    .line 124
    const-string v1, "mime"

    iget-object v2, p0, Lcn/nubia/mediaeditor/codec/VideoParams;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-string/jumbo v1, "width"

    iget v2, p0, Lcn/nubia/mediaeditor/codec/VideoParams;->mWidth:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 126
    const-string v1, "stride"

    iget v2, p0, Lcn/nubia/mediaeditor/codec/VideoParams;->mWidth:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 127
    const-string v1, "height"

    iget v2, p0, Lcn/nubia/mediaeditor/codec/VideoParams;->mHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 128
    const-string v1, "slice-height"

    iget v2, p0, Lcn/nubia/mediaeditor/codec/VideoParams;->mHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getMediaFormat   mWidth: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcn/nubia/mediaeditor/codec/VideoParams;->mWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mHeight: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/nubia/mediaeditor/codec/VideoParams;->mHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " colorFormat: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/nubia/mediaeditor/codec/VideoParams;->mColorFormat:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "woo"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const-string v1, "bitrate"

    iget v2, p0, Lcn/nubia/mediaeditor/codec/VideoParams;->mBitRate:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 132
    const-string v1, "frame-rate"

    iget v2, p0, Lcn/nubia/mediaeditor/codec/VideoParams;->mFps:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 133
    const-string v1, "color-format"

    iget v2, p0, Lcn/nubia/mediaeditor/codec/VideoParams;->mColorFormat:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 134
    const-string v1, "i-frame-interval"

    iget v2, p0, Lcn/nubia/mediaeditor/codec/VideoParams;->mIFrameInter:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 135
    iget-boolean p0, p0, Lcn/nubia/mediaeditor/codec/VideoParams;->mIsSlomo:Z

    if-eqz p0, :cond_0

    .line 136
    const-string p0, "video-qp-p-max"

    const/16 v1, 0x14

    invoke-virtual {v0, p0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 137
    const-string p0, "video-qp-p-min"

    const/16 v2, 0xa

    invoke-virtual {v0, p0, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 138
    const-string p0, "video-qp-i-max"

    invoke-virtual {v0, p0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 139
    const-string p0, "video-qp-i-min"

    invoke-virtual {v0, p0, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 140
    const-string p0, "video-qp-b-max"

    invoke-virtual {v0, p0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 141
    const-string p0, "video-qp-b-min"

    invoke-virtual {v0, p0, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_0
    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 0

    .line 97
    iget-object p0, p0, Lcn/nubia/mediaeditor/codec/VideoParams;->mMimeType:Ljava/lang/String;

    return-object p0
.end method

.method public getMtkHighFlag()Z
    .locals 0

    .line 57
    iget-boolean p0, p0, Lcn/nubia/mediaeditor/codec/VideoParams;->mIsMtkHigh:Z

    return p0
.end method

.method public getMtkSlowFlag()Z
    .locals 0

    .line 61
    iget-boolean p0, p0, Lcn/nubia/mediaeditor/codec/VideoParams;->mIsMtkSlow:Z

    return p0
.end method

.method public getWidth()I
    .locals 0

    .line 101
    iget p0, p0, Lcn/nubia/mediaeditor/codec/VideoParams;->mWidth:I

    return p0
.end method

.method public setBitRate(I)V
    .locals 0

    .line 73
    iput p1, p0, Lcn/nubia/mediaeditor/codec/VideoParams;->mBitRate:I

    return-void
.end method

.method public setColorFormat(I)V
    .locals 0

    .line 119
    iput p1, p0, Lcn/nubia/mediaeditor/codec/VideoParams;->mColorFormat:I

    return-void
.end method

.method public setFps(I)V
    .locals 0

    .line 65
    iput p1, p0, Lcn/nubia/mediaeditor/codec/VideoParams;->mFps:I

    return-void
.end method

.method public setIFrameInter(I)V
    .locals 0

    .line 89
    iput p1, p0, Lcn/nubia/mediaeditor/codec/VideoParams;->mIFrameInter:I

    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcn/nubia/mediaeditor/codec/VideoParams;->mMimeType:Ljava/lang/String;

    return-void
.end method

.method public setMtkHighFlag(Z)V
    .locals 0

    .line 49
    iput-boolean p1, p0, Lcn/nubia/mediaeditor/codec/VideoParams;->mIsMtkHigh:Z

    return-void
.end method

.method public setMtkSlowFlag(Z)V
    .locals 0

    .line 53
    iput-boolean p1, p0, Lcn/nubia/mediaeditor/codec/VideoParams;->mIsMtkSlow:Z

    return-void
.end method

.method public setSize(II)V
    .locals 2

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setSize width: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "woo"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iput p1, p0, Lcn/nubia/mediaeditor/codec/VideoParams;->mWidth:I

    .line 111
    iput p2, p0, Lcn/nubia/mediaeditor/codec/VideoParams;->mHeight:I

    return-void
.end method

.method public setSlomo(Z)V
    .locals 0

    .line 77
    iput-boolean p1, p0, Lcn/nubia/mediaeditor/codec/VideoParams;->mIsSlomo:Z

    return-void
.end method

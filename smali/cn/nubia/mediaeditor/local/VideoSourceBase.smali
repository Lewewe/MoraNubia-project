.class public abstract Lcn/nubia/mediaeditor/local/VideoSourceBase;
.super Ljava/lang/Object;
.source "VideoSourceBase.java"


# static fields
.field protected static final TRIM_MODE_INNER:I = 0x0

.field protected static final TRIM_MODE_OUTER:I = 0x1


# instance fields
.field protected IFramePts:J

.field protected mCodecListener:Lcn/nubia/mediaeditor/editor/common/CodecListener;

.field protected mDecoderDataListener:Lcn/nubia/mediaeditor/editor/common/DecoderDataListener;

.field protected mEndMs:J

.field protected mExistVideoHead:Z

.field protected mExistVideoTail:Z

.field protected mExtractor:Landroid/media/MediaExtractor;

.field protected mFormat:Landroid/media/MediaFormat;

.field protected mFps:I

.field protected mIsReading:Z

.field protected mListener:Lcn/nubia/mediaeditor/editor/common/OutputListener;

.field protected mMimetype:Ljava/lang/String;

.field protected mPath:Ljava/lang/String;

.field protected mPreciseTrim:Z

.field protected mStartMs:J

.field protected mTrimType:I

.field protected mVideoDuration:J

.field protected mVideoPts:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lcn/nubia/mediaeditor/local/VideoSourceBase;->mIsReading:Z

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcn/nubia/mediaeditor/local/VideoSourceBase;->mExistVideoTail:Z

    .line 22
    iput-boolean v0, p0, Lcn/nubia/mediaeditor/local/VideoSourceBase;->mExistVideoHead:Z

    .line 23
    iput-boolean v0, p0, Lcn/nubia/mediaeditor/local/VideoSourceBase;->mPreciseTrim:Z

    const-wide/16 v1, -0x1

    .line 25
    iput-wide v1, p0, Lcn/nubia/mediaeditor/local/VideoSourceBase;->mStartMs:J

    .line 26
    iput-wide v1, p0, Lcn/nubia/mediaeditor/local/VideoSourceBase;->mEndMs:J

    const-wide/16 v1, 0x0

    .line 27
    iput-wide v1, p0, Lcn/nubia/mediaeditor/local/VideoSourceBase;->mVideoDuration:J

    .line 28
    iput-wide v1, p0, Lcn/nubia/mediaeditor/local/VideoSourceBase;->mVideoPts:J

    .line 29
    iput v0, p0, Lcn/nubia/mediaeditor/local/VideoSourceBase;->mFps:I

    .line 30
    iput v0, p0, Lcn/nubia/mediaeditor/local/VideoSourceBase;->mTrimType:I

    .line 31
    iput-wide v1, p0, Lcn/nubia/mediaeditor/local/VideoSourceBase;->IFramePts:J

    return-void
.end method


# virtual methods
.method public getFormat()Landroid/media/MediaFormat;
    .locals 0

    .line 44
    iget-object p0, p0, Lcn/nubia/mediaeditor/local/VideoSourceBase;->mFormat:Landroid/media/MediaFormat;

    return-object p0
.end method

.method public setDataListener(Lcn/nubia/mediaeditor/editor/common/DecoderDataListener;Lcn/nubia/mediaeditor/editor/common/OutputListener;Lcn/nubia/mediaeditor/editor/common/CodecListener;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcn/nubia/mediaeditor/local/VideoSourceBase;->mDecoderDataListener:Lcn/nubia/mediaeditor/editor/common/DecoderDataListener;

    .line 39
    iput-object p2, p0, Lcn/nubia/mediaeditor/local/VideoSourceBase;->mListener:Lcn/nubia/mediaeditor/editor/common/OutputListener;

    .line 40
    iput-object p3, p0, Lcn/nubia/mediaeditor/local/VideoSourceBase;->mCodecListener:Lcn/nubia/mediaeditor/editor/common/CodecListener;

    return-void
.end method

.method public setFirstPts(J)V
    .locals 0

    .line 48
    iput-wide p1, p0, Lcn/nubia/mediaeditor/local/VideoSourceBase;->mVideoPts:J

    return-void
.end method

.method public setFps(I)V
    .locals 0

    .line 52
    iput p1, p0, Lcn/nubia/mediaeditor/local/VideoSourceBase;->mFps:I

    return-void
.end method

.method public setPreciseTrim(Z)V
    .locals 0

    .line 56
    iput-boolean p1, p0, Lcn/nubia/mediaeditor/local/VideoSourceBase;->mPreciseTrim:Z

    return-void
.end method

.method public setTrimType(I)V
    .locals 0

    .line 60
    iput p1, p0, Lcn/nubia/mediaeditor/local/VideoSourceBase;->mTrimType:I

    return-void
.end method

.method public setVideoHeadFlag(Z)V
    .locals 0

    .line 71
    iput-boolean p1, p0, Lcn/nubia/mediaeditor/local/VideoSourceBase;->mExistVideoHead:Z

    return-void
.end method

.method public setVideoTailFlag(Z)V
    .locals 0

    .line 76
    iput-boolean p1, p0, Lcn/nubia/mediaeditor/local/VideoSourceBase;->mExistVideoTail:Z

    return-void
.end method

.method public setVideoTrimParmas(JJJ)V
    .locals 2

    const-wide/16 v0, 0x3e8

    mul-long/2addr p1, v0

    .line 64
    iput-wide p1, p0, Lcn/nubia/mediaeditor/local/VideoSourceBase;->mStartMs:J

    mul-long/2addr p3, v0

    .line 65
    iput-wide p3, p0, Lcn/nubia/mediaeditor/local/VideoSourceBase;->mEndMs:J

    mul-long/2addr p5, v0

    .line 66
    iput-wide p5, p0, Lcn/nubia/mediaeditor/local/VideoSourceBase;->mVideoDuration:J

    return-void
.end method

.method public abstract start()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract stop()V
.end method

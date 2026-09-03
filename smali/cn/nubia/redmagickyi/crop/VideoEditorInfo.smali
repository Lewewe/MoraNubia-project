.class public Lcn/nubia/redmagickyi/crop/VideoEditorInfo;
.super Ljava/lang/Object;
.source "VideoEditorInfo.java"


# static fields
.field public static final ROTATION_270:I = 0x10e

.field public static final ROTATION_90:I = 0x5a


# instance fields
.field public isAreaCrop:Z

.field public isSlomoVideo:Z

.field public mAdjustRotation:I

.field public mAudioMode:I

.field public mAudioPath:Ljava/lang/String;

.field public mCurrentCropArea:Landroid/graphics/RectF;

.field public mDuration:I

.field public mEndClip:J

.field public mEndSpeedChange:J

.field public mFilterMode:Ljava/lang/String;

.field public mFrameInterval:J

.field public mFrameRate:I

.field public mImageHeadDuration:I

.field public mImageTailDuration:I

.field public mMime:Ljava/lang/String;

.field public mRecordTime:I

.field public mRotation:I

.field public mSampleRate:I

.field public mSpeedx:F

.field public mStartClip:J

.field public mStartSpeedChange:J

.field public mTextFilterPoint:Landroid/graphics/PointF;

.field public mTrimMode:I

.field public mVideoHeight:I

.field public mVideoWidth:I


# direct methods
.method public constructor <init>()V
    .locals 9

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->isSlomoVideo:Z

    .line 13
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->isAreaCrop:Z

    const/4 v1, 0x0

    .line 14
    iput-object v1, p0, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mAudioPath:Ljava/lang/String;

    .line 15
    iput-object v1, p0, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mFilterMode:Ljava/lang/String;

    const/4 v2, -0x1

    .line 28
    iput v2, p0, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mRecordTime:I

    .line 29
    iput v0, p0, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mVideoWidth:I

    .line 30
    iput v0, p0, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mVideoHeight:I

    const-wide/16 v3, -0x1

    .line 31
    iput-wide v3, p0, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mFrameInterval:J

    const/4 v5, 0x0

    .line 32
    iput v5, p0, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mSpeedx:F

    .line 33
    iput-object v1, p0, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mTextFilterPoint:Landroid/graphics/PointF;

    .line 34
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    iput-object v6, p0, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mCurrentCropArea:Landroid/graphics/RectF;

    const-wide/16 v6, 0x0

    .line 36
    iput-wide v6, p0, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mStartClip:J

    .line 37
    iput-wide v6, p0, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mEndClip:J

    .line 38
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->isSlomoVideo:Z

    .line 39
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->isAreaCrop:Z

    .line 40
    iput-object v1, p0, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mAudioPath:Ljava/lang/String;

    .line 41
    iput-object v1, p0, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mFilterMode:Ljava/lang/String;

    const/16 v8, 0x1e

    .line 42
    iput v8, p0, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mFrameRate:I

    .line 43
    iput-wide v6, p0, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mStartSpeedChange:J

    .line 44
    iput-wide v6, p0, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mEndSpeedChange:J

    .line 45
    iput v0, p0, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mRotation:I

    .line 46
    iput v0, p0, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mAdjustRotation:I

    const v6, 0xac44

    .line 47
    iput v6, p0, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mSampleRate:I

    .line 48
    iput v0, p0, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mDuration:I

    .line 49
    iput v0, p0, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mTrimMode:I

    .line 50
    iput v0, p0, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mAudioMode:I

    const/4 v6, 0x3

    .line 51
    iput v6, p0, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mImageHeadDuration:I

    .line 52
    iput v6, p0, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mImageTailDuration:I

    .line 53
    iput-object v1, p0, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mMime:Ljava/lang/String;

    .line 54
    iput v2, p0, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mRecordTime:I

    .line 55
    iput v0, p0, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mVideoWidth:I

    .line 56
    iput v0, p0, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mVideoHeight:I

    .line 57
    iput-wide v3, p0, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mFrameInterval:J

    .line 58
    iput v5, p0, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mSpeedx:F

    .line 59
    iput-object v1, p0, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mTextFilterPoint:Landroid/graphics/PointF;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VideoEditorInfo [mStartClip="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mStartClip:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mEndClip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mEndClip:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isSlomoVideo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->isSlomoVideo:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAudioPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mAudioPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFrameRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mFrameRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mStartSpeedChange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mStartSpeedChange:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mEndSpeedChange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mEndSpeedChange:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mRotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mDuration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTrimMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mTrimMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAudioMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mAudioMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mImageHeadDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mImageHeadDuration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mImageTailDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mImageTailDuration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMimeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mMime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRecordTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mRecordTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mVideoWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mVideoWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mVideoHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mVideoHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFilterMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mFilterMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isAreaCrop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->isAreaCrop:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCurrentCropArea="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mCurrentCropArea:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAdjustRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mAdjustRotation:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

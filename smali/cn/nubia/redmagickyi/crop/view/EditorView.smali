.class public Lcn/nubia/redmagickyi/crop/view/EditorView;
.super Lcn/nubia/redmagickyi/crop/base/BaseView;
.source "EditorView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/crop/view/EditorView$WarnDialog;,
        Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;
    }
.end annotation


# instance fields
.field private mDuration:I

.field private mHandler:Landroid/os/Handler;

.field private mIsClip:Z

.field private mIsPlaySpeedEdit:Z

.field private mIsTrimVideo:Z

.field private mListener:Lcn/nubia/redmagickyi/crop/base/BaseController$EditorPlayerListener;

.field private final mProgressChecker:Ljava/lang/Runnable;

.field private mSeekTime:I

.field private mSliderBarEndTime:I

.field private mSliderBarStartTime:I

.field private mVideoPath:Ljava/lang/String;

.field private mViewHolder:Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;

.field private mWarnDialog:Lcn/nubia/redmagickyi/crop/view/EditorView$WarnDialog;

.field private mhasNextItem:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Landroid/view/View;Lcn/nubia/redmagickyi/crop/base/BaseController$EditorPlayerListener;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Lcn/nubia/redmagickyi/crop/base/BaseView;-><init>()V

    .line 32
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x0

    .line 33
    iput p2, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mDuration:I

    const/4 v0, -0x1

    .line 36
    iput v0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mSliderBarStartTime:I

    .line 37
    iput v0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mSliderBarEndTime:I

    .line 38
    iput v0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mSeekTime:I

    .line 39
    iput-boolean p2, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mIsClip:Z

    .line 40
    iput-boolean p2, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mIsPlaySpeedEdit:Z

    const/4 v0, 0x1

    .line 41
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mhasNextItem:Z

    .line 43
    iput-boolean p2, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mIsTrimVideo:Z

    .line 539
    new-instance p2, Lcn/nubia/redmagickyi/crop/view/EditorView$8;

    invoke-direct {p2, p0}, Lcn/nubia/redmagickyi/crop/view/EditorView$8;-><init>(Lcn/nubia/redmagickyi/crop/view/EditorView;)V

    iput-object p2, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mProgressChecker:Ljava/lang/Runnable;

    .line 47
    iput-object p1, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mContext:Landroid/content/Context;

    .line 48
    iput-object p4, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mListener:Lcn/nubia/redmagickyi/crop/base/BaseController$EditorPlayerListener;

    .line 49
    new-instance p1, Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;

    invoke-direct {p1, p0, p3}, Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;-><init>(Lcn/nubia/redmagickyi/crop/view/EditorView;Landroid/view/View;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mViewHolder:Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;

    .line 50
    invoke-direct {p0}, Lcn/nubia/redmagickyi/crop/view/EditorView;->areaTrim()V

    .line 51
    invoke-direct {p0}, Lcn/nubia/redmagickyi/crop/view/EditorView;->setListener()V

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/crop/view/EditorView;)Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;
    .locals 0

    .line 30
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mViewHolder:Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;

    return-object p0
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/crop/view/EditorView;)Lcn/nubia/redmagickyi/crop/base/BaseController$EditorPlayerListener;
    .locals 0

    .line 30
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mListener:Lcn/nubia/redmagickyi/crop/base/BaseController$EditorPlayerListener;

    return-object p0
.end method

.method static synthetic access$1000(Lcn/nubia/redmagickyi/crop/view/EditorView;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcn/nubia/redmagickyi/crop/view/EditorView;->setProgress()V

    return-void
.end method

.method static synthetic access$1100(Lcn/nubia/redmagickyi/crop/view/EditorView;)Lcn/nubia/redmagickyi/crop/view/VideoEditorView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mVideoEditorView:Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    return-object p0
.end method

.method static synthetic access$1200(Lcn/nubia/redmagickyi/crop/view/EditorView;)Lcn/nubia/redmagickyi/crop/view/VideoEditorView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mVideoEditorView:Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    return-object p0
.end method

.method static synthetic access$1300(Lcn/nubia/redmagickyi/crop/view/EditorView;)Lcn/nubia/redmagickyi/crop/view/VideoEditorView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mVideoEditorView:Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    return-object p0
.end method

.method static synthetic access$1400(Lcn/nubia/redmagickyi/crop/view/EditorView;)Lcn/nubia/redmagickyi/crop/view/VideoEditorView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mVideoEditorView:Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    return-object p0
.end method

.method static synthetic access$1500(Lcn/nubia/redmagickyi/crop/view/EditorView;Landroid/widget/TextView;I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/crop/view/EditorView;->setText(Landroid/widget/TextView;I)V

    return-void
.end method

.method static synthetic access$1600(Lcn/nubia/redmagickyi/crop/view/EditorView;)Lcn/nubia/redmagickyi/crop/view/VideoEditorView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mVideoEditorView:Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    return-object p0
.end method

.method static synthetic access$1700(Lcn/nubia/redmagickyi/crop/view/EditorView;)Lcn/nubia/redmagickyi/crop/view/VideoEditorView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mVideoEditorView:Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    return-object p0
.end method

.method static synthetic access$1800(Lcn/nubia/redmagickyi/crop/view/EditorView;)Lcn/nubia/redmagickyi/crop/view/VideoEditorView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mVideoEditorView:Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    return-object p0
.end method

.method static synthetic access$1900(Lcn/nubia/redmagickyi/crop/view/EditorView;)Lcn/nubia/redmagickyi/crop/view/VideoEditorView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mVideoEditorView:Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    return-object p0
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/crop/view/EditorView;)Lcn/nubia/redmagickyi/crop/view/CropView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mCropView:Lcn/nubia/redmagickyi/crop/view/CropView;

    return-object p0
.end method

.method static synthetic access$2000(Lcn/nubia/redmagickyi/crop/view/EditorView;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcn/nubia/redmagickyi/crop/view/EditorView;->keepShow()V

    return-void
.end method

.method static synthetic access$2100(Lcn/nubia/redmagickyi/crop/view/EditorView;)Lcn/nubia/redmagickyi/crop/view/VideoEditorView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mVideoEditorView:Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    return-object p0
.end method

.method static synthetic access$2200(Lcn/nubia/redmagickyi/crop/view/EditorView;)Lcn/nubia/redmagickyi/crop/view/VideoEditorView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mVideoEditorView:Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    return-object p0
.end method

.method static synthetic access$2302(Lcn/nubia/redmagickyi/crop/view/EditorView;Z)Z
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mIsClip:Z

    return p1
.end method

.method static synthetic access$2400(Lcn/nubia/redmagickyi/crop/view/EditorView;)Lcn/nubia/redmagickyi/crop/view/VideoEditorView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mVideoEditorView:Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    return-object p0
.end method

.method static synthetic access$2500(Lcn/nubia/redmagickyi/crop/view/EditorView;)Lcn/nubia/redmagickyi/crop/view/VideoEditorView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mVideoEditorView:Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    return-object p0
.end method

.method static synthetic access$2600(Lcn/nubia/redmagickyi/crop/view/EditorView;)Lcn/nubia/redmagickyi/crop/view/VideoEditorView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mVideoEditorView:Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    return-object p0
.end method

.method static synthetic access$2700(Lcn/nubia/redmagickyi/crop/view/EditorView;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mIsTrimVideo:Z

    return p0
.end method

.method static synthetic access$2800(Lcn/nubia/redmagickyi/crop/view/EditorView;)I
    .locals 0

    .line 30
    iget p0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mDuration:I

    return p0
.end method

.method static synthetic access$2902(Lcn/nubia/redmagickyi/crop/view/EditorView;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 30
    iput-object p1, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mRoot:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/crop/view/EditorView;)Lcn/nubia/redmagickyi/crop/view/CropView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mCropView:Lcn/nubia/redmagickyi/crop/view/CropView;

    return-object p0
.end method

.method static synthetic access$3002(Lcn/nubia/redmagickyi/crop/view/EditorView;Lcn/nubia/redmagickyi/crop/view/VideoEditorView;)Lcn/nubia/redmagickyi/crop/view/VideoEditorView;
    .locals 0

    .line 30
    iput-object p1, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mVideoEditorView:Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    return-object p1
.end method

.method static synthetic access$3100(Lcn/nubia/redmagickyi/crop/view/EditorView;)Landroid/content/Context;
    .locals 0

    .line 30
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$3200(Lcn/nubia/redmagickyi/crop/view/EditorView;)Landroid/view/View;
    .locals 0

    .line 30
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mRoot:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$3302(Lcn/nubia/redmagickyi/crop/view/EditorView;Lcn/nubia/redmagickyi/crop/view/CropView;)Lcn/nubia/redmagickyi/crop/view/CropView;
    .locals 0

    .line 30
    iput-object p1, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mCropView:Lcn/nubia/redmagickyi/crop/view/CropView;

    return-object p1
.end method

.method static synthetic access$3400(Lcn/nubia/redmagickyi/crop/view/EditorView;)Landroid/content/Context;
    .locals 0

    .line 30
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$3500(Lcn/nubia/redmagickyi/crop/view/EditorView;)Lcn/nubia/redmagickyi/crop/view/EditorView$WarnDialog;
    .locals 0

    .line 30
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mWarnDialog:Lcn/nubia/redmagickyi/crop/view/EditorView$WarnDialog;

    return-object p0
.end method

.method static synthetic access$3600(Lcn/nubia/redmagickyi/crop/view/EditorView;)Ljava/lang/Runnable;
    .locals 0

    .line 30
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mProgressChecker:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$3700(Lcn/nubia/redmagickyi/crop/view/EditorView;)Lcn/nubia/redmagickyi/crop/view/VideoEditorView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mVideoEditorView:Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    return-object p0
.end method

.method static synthetic access$3800(Lcn/nubia/redmagickyi/crop/view/EditorView;)Landroid/os/Handler;
    .locals 0

    .line 30
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/crop/view/EditorView;I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/crop/view/EditorView;->showWarnDialog(I)V

    return-void
.end method

.method static synthetic access$500(Lcn/nubia/redmagickyi/crop/view/EditorView;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mIsPlaySpeedEdit:Z

    return p0
.end method

.method static synthetic access$502(Lcn/nubia/redmagickyi/crop/view/EditorView;Z)Z
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mIsPlaySpeedEdit:Z

    return p1
.end method

.method static synthetic access$600(Lcn/nubia/redmagickyi/crop/view/EditorView;)Landroid/content/Context;
    .locals 0

    .line 30
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$700(Lcn/nubia/redmagickyi/crop/view/EditorView;)I
    .locals 0

    .line 30
    iget p0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mSeekTime:I

    return p0
.end method

.method static synthetic access$702(Lcn/nubia/redmagickyi/crop/view/EditorView;I)I
    .locals 0

    .line 30
    iput p1, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mSeekTime:I

    return p1
.end method

.method static synthetic access$800(Lcn/nubia/redmagickyi/crop/view/EditorView;)Lcn/nubia/redmagickyi/crop/view/VideoEditorView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mVideoEditorView:Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    return-object p0
.end method

.method static synthetic access$900(Lcn/nubia/redmagickyi/crop/view/EditorView;)Lcn/nubia/redmagickyi/crop/view/VideoEditorView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mVideoEditorView:Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    return-object p0
.end method

.method private areaTrim()V
    .locals 2

    .line 477
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mListener:Lcn/nubia/redmagickyi/crop/base/BaseController$EditorPlayerListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcn/nubia/redmagickyi/crop/base/BaseController$EditorPlayerListener;->onSetAreaCrop(Z)V

    .line 478
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mCropView:Lcn/nubia/redmagickyi/crop/view/CropView;

    if-eqz v0, :cond_0

    .line 479
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mCropView:Lcn/nubia/redmagickyi/crop/view/CropView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/crop/view/CropView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private getDimensionValue(I)I
    .locals 0

    .line 433
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method private keepShow()V
    .locals 1

    const/4 v0, 0x0

    .line 356
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mIsHide:Z

    .line 357
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mViewHolder:Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;

    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;->mBottomView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private setListener()V
    .locals 2

    .line 56
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mViewHolder:Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;

    iget-object v0, v0, Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;->mTrimConfirm:Landroid/widget/TextView;

    new-instance v1, Lcn/nubia/redmagickyi/crop/view/EditorView$1;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/crop/view/EditorView$1;-><init>(Lcn/nubia/redmagickyi/crop/view/EditorView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mViewHolder:Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;

    iget-object v0, v0, Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;->mTrimCancel:Landroid/widget/TextView;

    new-instance v1, Lcn/nubia/redmagickyi/crop/view/EditorView$2;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/crop/view/EditorView$2;-><init>(Lcn/nubia/redmagickyi/crop/view/EditorView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mViewHolder:Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;

    iget-object v0, v0, Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;->mPlayPause:Landroid/widget/ImageButton;

    new-instance v1, Lcn/nubia/redmagickyi/crop/view/EditorView$3;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/crop/view/EditorView$3;-><init>(Lcn/nubia/redmagickyi/crop/view/EditorView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mViewHolder:Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;

    iget-object v0, v0, Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;->mSeekbar:Lcn/nubia/redmagickyi/crop/view/SeekBarView;

    new-instance v1, Lcn/nubia/redmagickyi/crop/view/EditorView$4;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/crop/view/EditorView$4;-><init>(Lcn/nubia/redmagickyi/crop/view/EditorView;)V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mViewHolder:Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;

    iget-object v0, v0, Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;->mSeekbar:Lcn/nubia/redmagickyi/crop/view/SeekBarView;

    new-instance v1, Lcn/nubia/redmagickyi/crop/view/EditorView$5;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/crop/view/EditorView$5;-><init>(Lcn/nubia/redmagickyi/crop/view/EditorView;)V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->setListener(Lcn/nubia/redmagickyi/crop/view/SeekBarView$Listener;)V

    .line 225
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mViewHolder:Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;

    iget-object v0, v0, Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;->mSliderBar:Lcn/nubia/redmagickyi/crop/view/SliderBar;

    new-instance v1, Lcn/nubia/redmagickyi/crop/view/EditorView$6;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/crop/view/EditorView$6;-><init>(Lcn/nubia/redmagickyi/crop/view/EditorView;)V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/crop/view/SliderBar;->setListener(Lcn/nubia/redmagickyi/crop/view/SliderBar$Listener;)V

    .line 262
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mCropView:Lcn/nubia/redmagickyi/crop/view/CropView;

    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mListener:Lcn/nubia/redmagickyi/crop/base/BaseController$EditorPlayerListener;

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/crop/view/CropView;->setListener(Lcn/nubia/redmagickyi/crop/base/BaseController$EditorPlayerListener;)V

    return-void
.end method

.method private setProgress()V
    .locals 2

    .line 283
    iget v0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mDuration:I

    if-nez v0, :cond_0

    .line 284
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mVideoEditorView:Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->getDuration()I

    move-result v0

    if-lez v0, :cond_0

    .line 286
    iput v0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mDuration:I

    .line 287
    iget-object v1, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mViewHolder:Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;

    iget-object v1, v1, Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;->mSeekbar:Lcn/nubia/redmagickyi/crop/view/SeekBarView;

    invoke-virtual {v1, v0}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->setMax(I)V

    .line 288
    invoke-direct {p0}, Lcn/nubia/redmagickyi/crop/view/EditorView;->setSliderTimes()V

    .line 291
    :cond_0
    iget v0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mDuration:I

    if-nez v0, :cond_1

    return-void

    .line 295
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mVideoEditorView:Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->getCurrentPosition()I

    move-result v0

    .line 296
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mViewHolder:Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;

    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;->mSeekbar:Lcn/nubia/redmagickyi/crop/view/SeekBarView;

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->setProgress(I)V

    return-void
.end method

.method private setSliderTimes()V
    .locals 4

    .line 301
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mVideoEditorView:Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->supportPlaySpeedShift()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 302
    iget v0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mSliderBarStartTime:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 303
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mVideoEditorView:Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->getPlaySpeedChangeStartTime()I

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mSliderBarStartTime:I

    goto :goto_0

    .line 305
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mViewHolder:Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;

    iget-object v0, v0, Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;->mSliderBar:Lcn/nubia/redmagickyi/crop/view/SliderBar;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/crop/view/SliderBar;->getStartTime()I

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mSliderBarStartTime:I

    .line 307
    :goto_0
    iget v0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mSliderBarEndTime:I

    if-ne v0, v1, :cond_1

    .line 308
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mVideoEditorView:Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->getPlaySpeedChangeEndTime()I

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mSliderBarEndTime:I

    goto :goto_1

    .line 310
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mViewHolder:Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;

    iget-object v0, v0, Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;->mSliderBar:Lcn/nubia/redmagickyi/crop/view/SliderBar;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/crop/view/SliderBar;->getEndTime()I

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mSliderBarEndTime:I

    .line 312
    :goto_1
    iget v0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mSliderBarStartTime:I

    if-ltz v0, :cond_2

    iget v1, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mSliderBarEndTime:I

    if-ltz v1, :cond_2

    .line 313
    iget v1, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mDuration:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mSliderBarStartTime:I

    .line 314
    iget v0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mSliderBarEndTime:I

    iget v1, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mDuration:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mSliderBarEndTime:I

    .line 315
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mViewHolder:Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;

    iget-object v0, v0, Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;->mSliderBar:Lcn/nubia/redmagickyi/crop/view/SliderBar;

    iget v1, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mSliderBarStartTime:I

    iget v2, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mSliderBarEndTime:I

    iget p0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mDuration:I

    invoke-virtual {v0, v1, v2, p0}, Lcn/nubia/redmagickyi/crop/view/SliderBar;->setTimes(III)V

    goto :goto_2

    .line 317
    :cond_2
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mViewHolder:Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;

    iget-object v0, v0, Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;->mSliderBar:Lcn/nubia/redmagickyi/crop/view/SliderBar;

    iget v1, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mDuration:I

    div-int/lit8 v2, v1, 0x4

    mul-int/lit8 v3, v1, 0x3

    div-int/lit8 v3, v3, 0x4

    invoke-virtual {v0, v2, v3, v1}, Lcn/nubia/redmagickyi/crop/view/SliderBar;->setTimes(III)V

    .line 318
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mViewHolder:Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;

    iget-object v0, v0, Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;->mSliderBar:Lcn/nubia/redmagickyi/crop/view/SliderBar;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/crop/view/SliderBar;->getStartTime()I

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mSliderBarStartTime:I

    .line 319
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mViewHolder:Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;

    iget-object v0, v0, Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;->mSliderBar:Lcn/nubia/redmagickyi/crop/view/SliderBar;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/crop/view/SliderBar;->getEndTime()I

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mSliderBarEndTime:I

    :cond_3
    :goto_2
    return-void
.end method

.method private setText(Landroid/widget/TextView;I)V
    .locals 4

    const/4 p0, -0x1

    if-eq p2, p0, :cond_2

    .line 267
    div-int/lit16 p2, p2, 0x3e8

    div-int/lit8 p0, p2, 0x3c

    .line 268
    rem-int/lit8 p2, p2, 0x3c

    .line 270
    const-string v0, "0"

    const/16 v1, 0xa

    if-ge p0, v1, :cond_0

    move-object v2, v0

    goto :goto_0

    :cond_0
    const-string v2, ""

    .line 273
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, ":"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    if-ge p2, v1, :cond_1

    .line 275
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 277
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 278
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method private showWarnDialog(I)V
    .locals 3

    .line 525
    new-instance v0, Lcn/nubia/redmagickyi/crop/view/EditorView$WarnDialog;

    iget-object v1, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcn/nubia/redmagickyi/crop/view/EditorView$WarnDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mWarnDialog:Lcn/nubia/redmagickyi/crop/view/EditorView$WarnDialog;

    .line 526
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/crop/view/EditorView$WarnDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/crop/view/EditorView$WarnDialog;->initView(Landroid/view/Window;)V

    .line 527
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mWarnDialog:Lcn/nubia/redmagickyi/crop/view/EditorView$WarnDialog;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/crop/view/EditorView$WarnDialog;->show()V

    .line 529
    new-instance p1, Lcn/nubia/redmagickyi/util/ZTETimer;

    invoke-direct {p1}, Lcn/nubia/redmagickyi/util/ZTETimer;-><init>()V

    new-instance v0, Lcn/nubia/redmagickyi/crop/view/EditorView$7;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/crop/view/EditorView$7;-><init>(Lcn/nubia/redmagickyi/crop/view/EditorView;)V

    const-wide/16 v1, 0x7d0

    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2, p0}, Lcn/nubia/redmagickyi/util/ZTETimer;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Future;

    return-void
.end method


# virtual methods
.method public getBottomRect()Landroid/graphics/Rect;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getTopRect()Landroid/graphics/Rect;
    .locals 0

    .line 372
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    return-object p0
.end method

.method public hide()V
    .locals 0

    return-void
.end method

.method public isHide()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isLock()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onFinish(Z)V
    .locals 2

    .line 325
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mProgressChecker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-nez p1, :cond_0

    .line 327
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mViewHolder:Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;

    iget-object p1, p1, Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;->mSeekbar:Lcn/nubia/redmagickyi/crop/view/SeekBarView;

    iget v0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mDuration:I

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->setProgress(I)V

    .line 328
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mViewHolder:Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;

    iget-object p1, p1, Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;->mSeekbar:Lcn/nubia/redmagickyi/crop/view/SeekBarView;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->getClipLeftTime()I

    move-result p1

    iput p1, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mSeekTime:I

    :cond_0
    return-void
.end method

.method public onPlaying()V
    .locals 3

    .line 451
    invoke-direct {p0}, Lcn/nubia/redmagickyi/crop/view/EditorView;->setProgress()V

    .line 452
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mProgressChecker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 453
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mProgressChecker:Ljava/lang/Runnable;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onPrepared()V
    .locals 3

    const/4 v0, 0x0

    .line 457
    iput v0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mDuration:I

    .line 458
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mViewHolder:Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;

    iget-object v0, v0, Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;->mPlayPause:Landroid/widget/ImageButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 460
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mContext:Landroid/content/Context;

    check-cast v1, Lcn/nubia/redmagickyi/crop/VideoEditorActivity;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/crop/VideoEditorActivity;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/mediaeditor/utils/Utils;->getAbsPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 462
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mContext:Landroid/content/Context;

    check-cast v0, Lcn/nubia/redmagickyi/crop/VideoEditorActivity;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/crop/VideoEditorActivity;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 464
    :cond_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mVideoPath:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 465
    :cond_1
    iput-object v0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mVideoPath:Ljava/lang/String;

    .line 466
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mViewHolder:Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;

    iget-object v0, v0, Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;->mSeekbar:Lcn/nubia/redmagickyi/crop/view/SeekBarView;

    iget-object v1, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mVideoPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->setMediaPath(Ljava/lang/String;)V

    .line 467
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mVideoPath:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 468
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 469
    const-string v1, "TRIM_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 470
    iput-boolean v2, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mIsTrimVideo:Z

    :cond_2
    return-void
.end method

.method public reLayout()V
    .locals 3

    .line 425
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mCropView:Lcn/nubia/redmagickyi/crop/view/CropView;

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mCropView:Lcn/nubia/redmagickyi/crop/view/CropView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/crop/view/CropView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 427
    iget-object v1, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mVideoEditorView:Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->getViewHeight()I

    move-result v1

    iget-object v2, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mVideoEditorView:Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->getSurfaceHeight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 428
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mCropView:Lcn/nubia/redmagickyi/crop/view/CropView;

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/crop/view/CropView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x1

    .line 333
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/crop/view/EditorView;->onFinish(Z)V

    return-void
.end method

.method public setDuration()V
    .locals 3

    .line 484
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mViewHolder:Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;

    iget-object v0, v0, Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;->mEndClip:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mVideoEditorView:Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->getDuration()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcn/nubia/redmagickyi/crop/view/EditorView;->setText(Landroid/widget/TextView;I)V

    .line 485
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mViewHolder:Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;

    iget-object v0, v0, Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;->mClipTimp:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mViewHolder:Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;

    iget-object v1, v1, Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;->mSeekbar:Lcn/nubia/redmagickyi/crop/view/SeekBarView;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->getClipRightTime()I

    move-result v1

    iget-object v2, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mViewHolder:Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;

    iget-object v2, v2, Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;->mSeekbar:Lcn/nubia/redmagickyi/crop/view/SeekBarView;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->getClipLeftTime()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lcn/nubia/redmagickyi/crop/view/EditorView;->setText(Landroid/widget/TextView;I)V

    return-void
.end method

.method public show()V
    .locals 2

    .line 349
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mRoot:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 350
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mRoot:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 351
    invoke-direct {p0}, Lcn/nubia/redmagickyi/crop/view/EditorView;->keepShow()V

    return-void
.end method

.method public startHide()V
    .locals 0

    return-void
.end method

.method public updatePlayPause()V
    .locals 3

    .line 438
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mViewHolder:Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;

    iget-object v0, v0, Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;->mPlayPause:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 439
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mVideoEditorView:Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 440
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mViewHolder:Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;

    iget-object v0, v0, Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;->mPlayPause:Landroid/widget/ImageButton;

    sget v1, Lcn/nubia/redmagickyi/main/R$mipmap;->player_pause:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 441
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mViewHolder:Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;

    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;->mSeekbar:Lcn/nubia/redmagickyi/crop/view/SeekBarView;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->setClipIsPlay(Z)V

    goto :goto_0

    .line 443
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mViewHolder:Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;

    iget-object v0, v0, Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;->mPlayPause:Landroid/widget/ImageButton;

    sget v2, Lcn/nubia/redmagickyi/main/R$mipmap;->player_play:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 444
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView;->mViewHolder:Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;

    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;->mSeekbar:Lcn/nubia/redmagickyi/crop/view/SeekBarView;

    invoke-virtual {p0, v1}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->setClipIsPlay(Z)V

    :goto_0
    return-void
.end method

.class public abstract Lcn/nubia/redmagickyi/crop/base/BaseView;
.super Ljava/lang/Object;
.source "BaseView.java"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mCropView:Lcn/nubia/redmagickyi/crop/view/CropView;

.field protected mGestureVolume:Landroid/widget/ImageView;

.field protected mGestureVolumeBG:Landroid/widget/ImageView;

.field protected mGestureVolumeLayout:Landroid/widget/RelativeLayout;

.field protected mIsGesturing:Z

.field protected mIsHide:Z

.field private mNeedResume:Z

.field protected mRoot:Landroid/view/View;

.field protected mVideoEditorView:Lcn/nubia/redmagickyi/crop/view/VideoEditorView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/crop/base/BaseView;->mIsHide:Z

    .line 22
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/crop/base/BaseView;->mIsGesturing:Z

    .line 27
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/crop/base/BaseView;->mNeedResume:Z

    return-void
.end method


# virtual methods
.method public abstract getBottomRect()Landroid/graphics/Rect;
.end method

.method public abstract getTopRect()Landroid/graphics/Rect;
.end method

.method public abstract hide()V
.end method

.method public abstract isHide()Z
.end method

.method public abstract isLock()Z
.end method

.method public onEndGestrue()V
    .locals 2

    .line 30
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/crop/base/BaseView;->mNeedResume:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 31
    iput-boolean v1, p0, Lcn/nubia/redmagickyi/crop/base/BaseView;->mNeedResume:Z

    .line 33
    :cond_0
    iput-boolean v1, p0, Lcn/nubia/redmagickyi/crop/base/BaseView;->mIsGesturing:Z

    return-void
.end method

.method public onGestrueVolumeChange(I)V
    .locals 3

    .line 37
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/base/BaseView;->mContext:Landroid/content/Context;

    instance-of v0, v0, Lcn/nubia/redmagickyi/crop/VideoEditorActivity;

    if-eqz v0, :cond_0

    return-void

    .line 40
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/base/BaseView;->mGestureVolumeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/base/BaseView;->mRoot:Landroid/view/View;

    .line 41
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/base/BaseView;->mRoot:Landroid/view/View;

    .line 42
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 43
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/base/BaseView;->mRoot:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 44
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/base/BaseView;->mRoot:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 45
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/base/BaseView;->mGestureVolumeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_2
    const/16 v0, 0xf

    if-ltz p1, :cond_3

    if-le p1, v0, :cond_4

    .line 48
    :cond_3
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 50
    :cond_4
    iget-object v1, p0, Lcn/nubia/redmagickyi/crop/base/BaseView;->mGestureVolume:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 51
    iget-object v2, p0, Lcn/nubia/redmagickyi/crop/base/BaseView;->mGestureVolumeBG:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 52
    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    mul-int/2addr p1, v2

    div-int/2addr p1, v0

    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 53
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/base/BaseView;->mGestureVolume:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/base/BaseView;->mGestureVolume:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    return-void
.end method

.method protected setOrientation(ZZ)V
    .locals 6

    const/4 v0, 0x6

    if-eqz p1, :cond_6

    .line 61
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/base/BaseView;->mContext:Landroid/content/Context;

    instance-of v1, p1, Lcn/nubia/redmagickyi/crop/VideoEditorActivity;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 62
    check-cast p1, Lcn/nubia/redmagickyi/crop/VideoEditorActivity;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/crop/VideoEditorActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    const/16 v1, 0x8

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-nez p2, :cond_3

    if-eqz p1, :cond_2

    if-eq p1, v5, :cond_5

    if-eq p1, v4, :cond_1

    if-eq p1, v3, :cond_4

    goto :goto_1

    :cond_1
    const/16 v0, 0x9

    goto :goto_1

    :cond_2
    move v0, v5

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_5

    if-eq p1, v5, :cond_5

    if-eq p1, v4, :cond_4

    if-eq p1, v3, :cond_4

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_1

    :cond_6
    if-nez p2, :cond_7

    const/4 v0, 0x4

    .line 104
    :cond_7
    :goto_1
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/base/BaseView;->mContext:Landroid/content/Context;

    instance-of p1, p0, Lcn/nubia/redmagickyi/crop/VideoEditorActivity;

    if-eqz p1, :cond_8

    .line 105
    check-cast p0, Lcn/nubia/redmagickyi/crop/VideoEditorActivity;

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/crop/VideoEditorActivity;->setRequestedOrientationFromAndroid(I)V

    :cond_8
    return-void
.end method

.method public abstract show()V
.end method

.method public abstract startHide()V
.end method

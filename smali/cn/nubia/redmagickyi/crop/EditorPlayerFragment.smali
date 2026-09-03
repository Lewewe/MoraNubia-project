.class public Lcn/nubia/redmagickyi/crop/EditorPlayerFragment;
.super Lcn/nubia/redmagickyi/crop/base/FragmentBase;
.source "EditorPlayerFragment.java"


# instance fields
.field private layout:Landroid/widget/RelativeLayout;

.field private mCropView:Lcn/nubia/redmagickyi/crop/view/CropView;

.field private mDrawView:Lcn/nubia/redmagickyi/crop/view/DrawView;

.field private mVideoEditorView:Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

.field params:Landroid/widget/RelativeLayout$LayoutParams;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcn/nubia/redmagickyi/crop/base/FragmentBase;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPress()V
    .locals 0

    .line 63
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/EditorPlayerFragment;->onFinish()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 56
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/EditorPlayerFragment;->mVideoEditorView:Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    iget-object v1, p0, Lcn/nubia/redmagickyi/crop/EditorPlayerFragment;->mContext:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 57
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    .line 56
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->setScreenOriention(I)V

    .line 58
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/crop/base/FragmentBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    .line 30
    sget p3, Lcn/nubia/redmagickyi/main/R$layout;->editorplayer_control:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 32
    sget-boolean p2, Lcn/nubia/mediaeditor/utils/Utils;->isFullScreen:Z

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 33
    sget p2, Lcn/nubia/redmagickyi/main/R$id;->video_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    iput-object p2, p0, Lcn/nubia/redmagickyi/crop/EditorPlayerFragment;->mVideoEditorView:Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    .line 34
    iget-object p2, p0, Lcn/nubia/redmagickyi/crop/EditorPlayerFragment;->mContext:Landroid/app/Activity;

    check-cast p2, Lcn/nubia/redmagickyi/crop/VideoEditorActivity;

    iget-object p3, p0, Lcn/nubia/redmagickyi/crop/EditorPlayerFragment;->mVideoEditorView:Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    invoke-virtual {p2, p3}, Lcn/nubia/redmagickyi/crop/VideoEditorActivity;->setVideoView(Lcn/nubia/redmagickyi/crop/view/VideoEditorView;)V

    .line 35
    iget-object p2, p0, Lcn/nubia/redmagickyi/crop/EditorPlayerFragment;->mVideoEditorView:Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    invoke-virtual {p2, v0}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->setVisibility(I)V

    .line 36
    iget-object p2, p0, Lcn/nubia/redmagickyi/crop/EditorPlayerFragment;->mVideoEditorView:Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    iget-object p3, p0, Lcn/nubia/redmagickyi/crop/EditorPlayerFragment;->mContext:Landroid/app/Activity;

    invoke-virtual {p3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    .line 37
    invoke-virtual {p3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p3

    iget p3, p3, Landroid/content/res/Configuration;->orientation:I

    .line 36
    invoke-virtual {p2, p3}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->setScreenOriention(I)V

    .line 38
    sget p2, Lcn/nubia/redmagickyi/main/R$id;->draw_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcn/nubia/redmagickyi/crop/view/DrawView;

    iput-object p2, p0, Lcn/nubia/redmagickyi/crop/EditorPlayerFragment;->mDrawView:Lcn/nubia/redmagickyi/crop/view/DrawView;

    .line 39
    iget-object p2, p0, Lcn/nubia/redmagickyi/crop/EditorPlayerFragment;->mContext:Landroid/app/Activity;

    check-cast p2, Lcn/nubia/redmagickyi/crop/VideoEditorActivity;

    iget-object p3, p0, Lcn/nubia/redmagickyi/crop/EditorPlayerFragment;->mDrawView:Lcn/nubia/redmagickyi/crop/view/DrawView;

    invoke-virtual {p2, p3}, Lcn/nubia/redmagickyi/crop/VideoEditorActivity;->setDrawView(Lcn/nubia/redmagickyi/crop/view/DrawView;)V

    .line 40
    sget p2, Lcn/nubia/redmagickyi/main/R$id;->crop_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcn/nubia/redmagickyi/crop/view/CropView;

    iput-object p2, p0, Lcn/nubia/redmagickyi/crop/EditorPlayerFragment;->mCropView:Lcn/nubia/redmagickyi/crop/view/CropView;

    .line 41
    iget-object p2, p0, Lcn/nubia/redmagickyi/crop/EditorPlayerFragment;->mContext:Landroid/app/Activity;

    check-cast p2, Lcn/nubia/redmagickyi/crop/VideoEditorActivity;

    iget-object p3, p0, Lcn/nubia/redmagickyi/crop/EditorPlayerFragment;->mCropView:Lcn/nubia/redmagickyi/crop/view/CropView;

    invoke-virtual {p2, p3}, Lcn/nubia/redmagickyi/crop/VideoEditorActivity;->setDrawView(Lcn/nubia/redmagickyi/crop/view/CropView;)V

    .line 42
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/EditorPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcn/nubia/redmagickyi/crop/VideoEditorActivity;

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/crop/VideoEditorActivity;->getUri()Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/redmagickyi/crop/EditorPlayerFragment;->mUri:Landroid/net/Uri;

    .line 43
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/EditorPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcn/nubia/redmagickyi/crop/VideoEditorActivity;

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/crop/VideoEditorActivity;->getVideoSaveUri()Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/redmagickyi/crop/EditorPlayerFragment;->mVideoSaveUri:Landroid/net/Uri;

    .line 44
    new-instance p2, Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;

    iget-object v2, p0, Lcn/nubia/redmagickyi/crop/EditorPlayerFragment;->mContext:Landroid/app/Activity;

    iget-object v4, p0, Lcn/nubia/redmagickyi/crop/EditorPlayerFragment;->mUri:Landroid/net/Uri;

    iget-object v5, p0, Lcn/nubia/redmagickyi/crop/EditorPlayerFragment;->mVideoSaveUri:Landroid/net/Uri;

    move-object v1, p2

    move-object v3, p1

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;-><init>(Landroid/app/Activity;Landroid/view/View;Landroid/net/Uri;Landroid/net/Uri;Lcn/nubia/redmagickyi/crop/base/FragmentListener;)V

    iput-object p2, p0, Lcn/nubia/redmagickyi/crop/EditorPlayerFragment;->mController:Lcn/nubia/redmagickyi/crop/base/BaseController;

    .line 46
    iget-object p2, p0, Lcn/nubia/redmagickyi/crop/EditorPlayerFragment;->mVideoEditorView:Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    new-instance p3, Lcn/nubia/redmagickyi/crop/player/OnTouchListener;

    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/EditorPlayerFragment;->mContext:Landroid/app/Activity;

    iget-object v1, p0, Lcn/nubia/redmagickyi/crop/EditorPlayerFragment;->mController:Lcn/nubia/redmagickyi/crop/base/BaseController;

    invoke-direct {p3, v0, v1}, Lcn/nubia/redmagickyi/crop/player/OnTouchListener;-><init>(Landroid/content/Context;Lcn/nubia/redmagickyi/crop/base/BaseController;)V

    invoke-virtual {p2, p3}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 48
    iget-object p2, p0, Lcn/nubia/redmagickyi/crop/EditorPlayerFragment;->mVideoEditorView:Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    new-instance p3, Lcn/nubia/redmagickyi/crop/player/OnTouchListener;

    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/EditorPlayerFragment;->mContext:Landroid/app/Activity;

    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/EditorPlayerFragment;->mController:Lcn/nubia/redmagickyi/crop/base/BaseController;

    invoke-direct {p3, v0, p0}, Lcn/nubia/redmagickyi/crop/player/OnTouchListener;-><init>(Landroid/content/Context;Lcn/nubia/redmagickyi/crop/base/BaseController;)V

    .line 49
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 69
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/EditorPlayerFragment;->mController:Lcn/nubia/redmagickyi/crop/base/BaseController;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/EditorPlayerFragment;->mController:Lcn/nubia/redmagickyi/crop/base/BaseController;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/crop/base/BaseController;->destory()V

    .line 72
    :cond_0
    invoke-super {p0}, Lcn/nubia/redmagickyi/crop/base/FragmentBase;->onDestroy()V

    return-void
.end method

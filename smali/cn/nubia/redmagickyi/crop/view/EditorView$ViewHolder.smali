.class Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;
.super Ljava/lang/Object;
.source "EditorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/crop/view/EditorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field public mBottomView:Landroid/view/View;

.field public mClipTimp:Landroid/widget/TextView;

.field public mCutTitle:Landroid/view/View;

.field public mEndClip:Landroid/widget/TextView;

.field public mHeadClip:Landroid/widget/TextView;

.field public mMore:Landroid/widget/ImageView;

.field public mPlayCtrl:Landroid/view/View;

.field public mPlayPause:Landroid/widget/ImageButton;

.field public mPlayTop:Landroid/view/View;

.field public mSeekbar:Lcn/nubia/redmagickyi/crop/view/SeekBarView;

.field public mSeekbarText:Landroid/widget/TextView;

.field public mSliderBar:Lcn/nubia/redmagickyi/crop/view/SliderBar;

.field public mTitle:Landroid/widget/TextView;

.field public mTop:Landroid/view/View;

.field public mTrimCancel:Landroid/widget/TextView;

.field public mTrimConfirm:Landroid/widget/TextView;

.field public mTrimCtrl:Landroid/view/View;

.field final synthetic this$0:Lcn/nubia/redmagickyi/crop/view/EditorView;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/crop/view/EditorView;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 401
    iput-object p1, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;->this$0:Lcn/nubia/redmagickyi/crop/view/EditorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 402
    invoke-static {p1, p2}, Lcn/nubia/redmagickyi/crop/view/EditorView;->access$2902(Lcn/nubia/redmagickyi/crop/view/EditorView;Landroid/view/View;)Landroid/view/View;

    .line 403
    invoke-static {p1}, Lcn/nubia/redmagickyi/crop/view/EditorView;->access$3100(Lcn/nubia/redmagickyi/crop/view/EditorView;)Landroid/content/Context;

    move-result-object p2

    check-cast p2, Lcn/nubia/redmagickyi/crop/VideoEditorActivity;

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/crop/VideoEditorActivity;->getVideoView()Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    move-result-object p2

    invoke-static {p1, p2}, Lcn/nubia/redmagickyi/crop/view/EditorView;->access$3002(Lcn/nubia/redmagickyi/crop/view/EditorView;Lcn/nubia/redmagickyi/crop/view/VideoEditorView;)Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    .line 404
    invoke-static {p1}, Lcn/nubia/redmagickyi/crop/view/EditorView;->access$3200(Lcn/nubia/redmagickyi/crop/view/EditorView;)Landroid/view/View;

    move-result-object p2

    sget v0, Lcn/nubia/redmagickyi/main/R$id;->layout_bottom:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;->mBottomView:Landroid/view/View;

    .line 405
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->cut_title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;->mCutTitle:Landroid/view/View;

    const/4 v0, 0x0

    .line 406
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 407
    iget-object p2, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;->mBottomView:Landroid/view/View;

    sget v0, Lcn/nubia/redmagickyi/main/R$id;->cut_clip_time:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;->mClipTimp:Landroid/widget/TextView;

    .line 408
    iget-object p2, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;->mBottomView:Landroid/view/View;

    sget v0, Lcn/nubia/redmagickyi/main/R$id;->play_pause:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;->mPlayPause:Landroid/widget/ImageButton;

    .line 409
    iget-object p2, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;->mBottomView:Landroid/view/View;

    sget v0, Lcn/nubia/redmagickyi/main/R$id;->cut_clip_head_time:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;->mHeadClip:Landroid/widget/TextView;

    .line 410
    iget-object p2, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;->mBottomView:Landroid/view/View;

    sget v0, Lcn/nubia/redmagickyi/main/R$id;->cut_clip_end_time:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;->mEndClip:Landroid/widget/TextView;

    .line 411
    invoke-static {p1}, Lcn/nubia/redmagickyi/crop/view/EditorView;->access$3400(Lcn/nubia/redmagickyi/crop/view/EditorView;)Landroid/content/Context;

    move-result-object p2

    check-cast p2, Lcn/nubia/redmagickyi/crop/VideoEditorActivity;

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/crop/VideoEditorActivity;->getCropView()Lcn/nubia/redmagickyi/crop/view/CropView;

    move-result-object p2

    invoke-static {p1, p2}, Lcn/nubia/redmagickyi/crop/view/EditorView;->access$3302(Lcn/nubia/redmagickyi/crop/view/EditorView;Lcn/nubia/redmagickyi/crop/view/CropView;)Lcn/nubia/redmagickyi/crop/view/CropView;

    .line 412
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;->mBottomView:Landroid/view/View;

    sget p2, Lcn/nubia/redmagickyi/main/R$id;->seekbar:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcn/nubia/redmagickyi/crop/view/SeekBarView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;->mSeekbar:Lcn/nubia/redmagickyi/crop/view/SeekBarView;

    const/4 p2, 0x1

    .line 413
    invoke-virtual {p1, p2}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->setWallpaper(Z)V

    .line 414
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;->mBottomView:Landroid/view/View;

    sget p2, Lcn/nubia/redmagickyi/main/R$id;->slider_bar:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcn/nubia/redmagickyi/crop/view/SliderBar;

    iput-object p1, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;->mSliderBar:Lcn/nubia/redmagickyi/crop/view/SliderBar;

    .line 415
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;->mBottomView:Landroid/view/View;

    sget p2, Lcn/nubia/redmagickyi/main/R$id;->trim_panel:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;->mTrimCtrl:Landroid/view/View;

    .line 416
    sget p2, Lcn/nubia/redmagickyi/main/R$id;->trim_confirm:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;->mTrimConfirm:Landroid/widget/TextView;

    .line 417
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;->mTrimCtrl:Landroid/view/View;

    sget p2, Lcn/nubia/redmagickyi/main/R$id;->trim_cancel:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;->mTrimCancel:Landroid/widget/TextView;

    return-void
.end method

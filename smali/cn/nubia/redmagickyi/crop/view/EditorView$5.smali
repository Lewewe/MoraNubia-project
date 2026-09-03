.class Lcn/nubia/redmagickyi/crop/view/EditorView$5;
.super Ljava/lang/Object;
.source "EditorView.java"

# interfaces
.implements Lcn/nubia/redmagickyi/crop/view/SeekBarView$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/crop/view/EditorView;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mIsUserChanged:Z

.field private mNeedResume:Z

.field private mProgress:I

.field private mSeekPos:I

.field private mTimeCounter:Lcn/nubia/redmagickyi/crop/util/TimeCounter;

.field final synthetic this$0:Lcn/nubia/redmagickyi/crop/view/EditorView;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/crop/view/EditorView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 114
    iput-object p1, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$5;->this$0:Lcn/nubia/redmagickyi/crop/view/EditorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 115
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$5;->mIsUserChanged:Z

    .line 116
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$5;->mNeedResume:Z

    .line 117
    iput p1, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$5;->mProgress:I

    const/4 p1, -0x1

    .line 118
    iput p1, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$5;->mSeekPos:I

    .line 119
    new-instance p1, Lcn/nubia/redmagickyi/crop/util/TimeCounter;

    invoke-direct {p1}, Lcn/nubia/redmagickyi/crop/util/TimeCounter;-><init>()V

    iput-object p1, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$5;->mTimeCounter:Lcn/nubia/redmagickyi/crop/util/TimeCounter;

    return-void
.end method


# virtual methods
.method public onClipChanged(ZI)V
    .locals 3

    .line 156
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$5;->this$0:Lcn/nubia/redmagickyi/crop/view/EditorView;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcn/nubia/redmagickyi/crop/view/EditorView;->access$702(Lcn/nubia/redmagickyi/crop/view/EditorView;I)I

    .line 157
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$5;->this$0:Lcn/nubia/redmagickyi/crop/view/EditorView;

    invoke-static {p1}, Lcn/nubia/redmagickyi/crop/view/EditorView;->access$1200(Lcn/nubia/redmagickyi/crop/view/EditorView;)Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 158
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$5;->this$0:Lcn/nubia/redmagickyi/crop/view/EditorView;

    invoke-static {p1}, Lcn/nubia/redmagickyi/crop/view/EditorView;->access$1300(Lcn/nubia/redmagickyi/crop/view/EditorView;)Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->pause()V

    .line 160
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$5;->mTimeCounter:Lcn/nubia/redmagickyi/crop/util/TimeCounter;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/crop/util/TimeCounter;->count100Ms()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 161
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$5;->this$0:Lcn/nubia/redmagickyi/crop/view/EditorView;

    invoke-static {p1}, Lcn/nubia/redmagickyi/crop/view/EditorView;->access$1400(Lcn/nubia/redmagickyi/crop/view/EditorView;)Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->seekTo(I)V

    .line 162
    iput p2, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$5;->mSeekPos:I

    .line 164
    :cond_1
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$5;->this$0:Lcn/nubia/redmagickyi/crop/view/EditorView;

    invoke-static {p1}, Lcn/nubia/redmagickyi/crop/view/EditorView;->access$000(Lcn/nubia/redmagickyi/crop/view/EditorView;)Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;

    move-result-object v0

    iget-object v0, v0, Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;->mHeadClip:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$5;->this$0:Lcn/nubia/redmagickyi/crop/view/EditorView;

    invoke-static {v1}, Lcn/nubia/redmagickyi/crop/view/EditorView;->access$000(Lcn/nubia/redmagickyi/crop/view/EditorView;)Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;

    move-result-object v1

    iget-object v1, v1, Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;->mSeekbar:Lcn/nubia/redmagickyi/crop/view/SeekBarView;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->getClipLeftTime()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcn/nubia/redmagickyi/crop/view/EditorView;->access$1500(Lcn/nubia/redmagickyi/crop/view/EditorView;Landroid/widget/TextView;I)V

    .line 165
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$5;->this$0:Lcn/nubia/redmagickyi/crop/view/EditorView;

    invoke-static {p1}, Lcn/nubia/redmagickyi/crop/view/EditorView;->access$000(Lcn/nubia/redmagickyi/crop/view/EditorView;)Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;

    move-result-object v0

    iget-object v0, v0, Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;->mEndClip:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$5;->this$0:Lcn/nubia/redmagickyi/crop/view/EditorView;

    invoke-static {v1}, Lcn/nubia/redmagickyi/crop/view/EditorView;->access$000(Lcn/nubia/redmagickyi/crop/view/EditorView;)Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;

    move-result-object v1

    iget-object v1, v1, Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;->mSeekbar:Lcn/nubia/redmagickyi/crop/view/SeekBarView;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->getClipRightTime()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcn/nubia/redmagickyi/crop/view/EditorView;->access$1500(Lcn/nubia/redmagickyi/crop/view/EditorView;Landroid/widget/TextView;I)V

    .line 166
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$5;->this$0:Lcn/nubia/redmagickyi/crop/view/EditorView;

    invoke-static {p1}, Lcn/nubia/redmagickyi/crop/view/EditorView;->access$000(Lcn/nubia/redmagickyi/crop/view/EditorView;)Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;

    move-result-object p1

    iget-object p1, p1, Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;->mSeekbar:Lcn/nubia/redmagickyi/crop/view/SeekBarView;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->getClipMove()Z

    move-result p1

    if-nez p1, :cond_3

    .line 167
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$5;->this$0:Lcn/nubia/redmagickyi/crop/view/EditorView;

    invoke-static {p1}, Lcn/nubia/redmagickyi/crop/view/EditorView;->access$000(Lcn/nubia/redmagickyi/crop/view/EditorView;)Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;

    move-result-object p1

    iget-object p1, p1, Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;->mSeekbar:Lcn/nubia/redmagickyi/crop/view/SeekBarView;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->getClipRightTime()I

    move-result p1

    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$5;->this$0:Lcn/nubia/redmagickyi/crop/view/EditorView;

    invoke-static {v0}, Lcn/nubia/redmagickyi/crop/view/EditorView;->access$000(Lcn/nubia/redmagickyi/crop/view/EditorView;)Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;

    move-result-object v0

    iget-object v0, v0, Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;->mSeekbar:Lcn/nubia/redmagickyi/crop/view/SeekBarView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->getClipLeftTime()I

    move-result v0

    sub-int/2addr p1, v0

    const/16 v0, 0x7404

    if-ne p1, v0, :cond_2

    .line 168
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$5;->this$0:Lcn/nubia/redmagickyi/crop/view/EditorView;

    invoke-static {p1}, Lcn/nubia/redmagickyi/crop/view/EditorView;->access$000(Lcn/nubia/redmagickyi/crop/view/EditorView;)Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;

    move-result-object v0

    iget-object v0, v0, Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;->mClipTimp:Landroid/widget/TextView;

    const/16 v1, 0x7530

    invoke-static {p1, v0, v1}, Lcn/nubia/redmagickyi/crop/view/EditorView;->access$1500(Lcn/nubia/redmagickyi/crop/view/EditorView;Landroid/widget/TextView;I)V

    .line 169
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$5;->this$0:Lcn/nubia/redmagickyi/crop/view/EditorView;

    invoke-static {p1}, Lcn/nubia/redmagickyi/crop/view/EditorView;->access$000(Lcn/nubia/redmagickyi/crop/view/EditorView;)Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;

    move-result-object v0

    iget-object v0, v0, Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;->mEndClip:Landroid/widget/TextView;

    invoke-static {p1, v0, v1}, Lcn/nubia/redmagickyi/crop/view/EditorView;->access$1500(Lcn/nubia/redmagickyi/crop/view/EditorView;Landroid/widget/TextView;I)V

    goto :goto_0

    .line 171
    :cond_2
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$5;->this$0:Lcn/nubia/redmagickyi/crop/view/EditorView;

    invoke-static {p1}, Lcn/nubia/redmagickyi/crop/view/EditorView;->access$000(Lcn/nubia/redmagickyi/crop/view/EditorView;)Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;

    move-result-object v0

    iget-object v0, v0, Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;->mClipTimp:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$5;->this$0:Lcn/nubia/redmagickyi/crop/view/EditorView;

    invoke-static {v1}, Lcn/nubia/redmagickyi/crop/view/EditorView;->access$000(Lcn/nubia/redmagickyi/crop/view/EditorView;)Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;

    move-result-object v1

    iget-object v1, v1, Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;->mSeekbar:Lcn/nubia/redmagickyi/crop/view/SeekBarView;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->getClipRightTime()I

    move-result v1

    iget-object v2, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$5;->this$0:Lcn/nubia/redmagickyi/crop/view/EditorView;

    invoke-static {v2}, Lcn/nubia/redmagickyi/crop/view/EditorView;->access$000(Lcn/nubia/redmagickyi/crop/view/EditorView;)Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;

    move-result-object v2

    iget-object v2, v2, Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;->mSeekbar:Lcn/nubia/redmagickyi/crop/view/SeekBarView;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->getClipLeftTime()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {p1, v0, v1}, Lcn/nubia/redmagickyi/crop/view/EditorView;->access$1500(Lcn/nubia/redmagickyi/crop/view/EditorView;Landroid/widget/TextView;I)V

    .line 174
    :cond_3
    :goto_0
    iput p2, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$5;->mProgress:I

    const/4 p1, 0x1

    .line 175
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$5;->mIsUserChanged:Z

    return-void
.end method

.method public onClipOver30s()V
    .locals 2

    .line 180
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$5;->this$0:Lcn/nubia/redmagickyi/crop/view/EditorView;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/crop/view/EditorView;->access$702(Lcn/nubia/redmagickyi/crop/view/EditorView;I)I

    .line 181
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$5;->this$0:Lcn/nubia/redmagickyi/crop/view/EditorView;

    invoke-static {v0}, Lcn/nubia/redmagickyi/crop/view/EditorView;->access$1600(Lcn/nubia/redmagickyi/crop/view/EditorView;)Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$5;->this$0:Lcn/nubia/redmagickyi/crop/view/EditorView;

    invoke-static {v0}, Lcn/nubia/redmagickyi/crop/view/EditorView;->access$1700(Lcn/nubia/redmagickyi/crop/view/EditorView;)Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->pause()V

    .line 184
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$5;->this$0:Lcn/nubia/redmagickyi/crop/view/EditorView;

    invoke-static {p0}, Lcn/nubia/redmagickyi/crop/view/EditorView;->access$000(Lcn/nubia/redmagickyi/crop/view/EditorView;)Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;

    move-result-object v0

    iget-object v0, v0, Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;->mClipTimp:Landroid/widget/TextView;

    const/16 v1, 0x7530

    invoke-static {p0, v0, v1}, Lcn/nubia/redmagickyi/crop/view/EditorView;->access$1500(Lcn/nubia/redmagickyi/crop/view/EditorView;Landroid/widget/TextView;I)V

    return-void
.end method

.method public onClipPlayEnd(I)V
    .locals 1

    .line 209
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$5;->this$0:Lcn/nubia/redmagickyi/crop/view/EditorView;

    invoke-static {v0}, Lcn/nubia/redmagickyi/crop/view/EditorView;->access$2200(Lcn/nubia/redmagickyi/crop/view/EditorView;)Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->pause()V

    .line 210
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$5;->this$0:Lcn/nubia/redmagickyi/crop/view/EditorView;

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/crop/view/EditorView;->access$702(Lcn/nubia/redmagickyi/crop/view/EditorView;I)I

    return-void
.end method

.method public onIsClip(Z)V
    .locals 2

    if-nez p1, :cond_0

    .line 217
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$5;->this$0:Lcn/nubia/redmagickyi/crop/view/EditorView;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/crop/view/EditorView;->access$702(Lcn/nubia/redmagickyi/crop/view/EditorView;I)I

    .line 219
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$5;->this$0:Lcn/nubia/redmagickyi/crop/view/EditorView;

    invoke-static {v0, p1}, Lcn/nubia/redmagickyi/crop/view/EditorView;->access$2302(Lcn/nubia/redmagickyi/crop/view/EditorView;Z)Z

    .line 221
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$5;->this$0:Lcn/nubia/redmagickyi/crop/view/EditorView;

    invoke-static {p0}, Lcn/nubia/redmagickyi/crop/view/EditorView;->access$000(Lcn/nubia/redmagickyi/crop/view/EditorView;)Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;

    move-result-object p0

    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;->mSliderBar:Lcn/nubia/redmagickyi/crop/view/SliderBar;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/crop/view/SliderBar;->enabled(Z)V

    return-void
.end method

.method public onLongPress(ZI)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 191
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$5;->this$0:Lcn/nubia/redmagickyi/crop/view/EditorView;

    invoke-static {p1}, Lcn/nubia/redmagickyi/crop/view/EditorView;->access$1800(Lcn/nubia/redmagickyi/crop/view/EditorView;)Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 192
    iput-boolean v1, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$5;->mNeedResume:Z

    .line 193
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$5;->this$0:Lcn/nubia/redmagickyi/crop/view/EditorView;

    invoke-static {p1}, Lcn/nubia/redmagickyi/crop/view/EditorView;->access$1900(Lcn/nubia/redmagickyi/crop/view/EditorView;)Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->pause()V

    .line 195
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$5;->this$0:Lcn/nubia/redmagickyi/crop/view/EditorView;

    invoke-static {p1}, Lcn/nubia/redmagickyi/crop/view/EditorView;->access$2000(Lcn/nubia/redmagickyi/crop/view/EditorView;)V

    .line 196
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$5;->this$0:Lcn/nubia/redmagickyi/crop/view/EditorView;

    invoke-static {p0}, Lcn/nubia/redmagickyi/crop/view/EditorView;->access$000(Lcn/nubia/redmagickyi/crop/view/EditorView;)Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;

    move-result-object p0

    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;->mSliderBar:Lcn/nubia/redmagickyi/crop/view/SliderBar;

    invoke-virtual {p0, v0, p2}, Lcn/nubia/redmagickyi/crop/view/SliderBar;->setLongPress(II)V

    goto :goto_0

    .line 198
    :cond_1
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$5;->this$0:Lcn/nubia/redmagickyi/crop/view/EditorView;

    invoke-static {p1}, Lcn/nubia/redmagickyi/crop/view/EditorView;->access$000(Lcn/nubia/redmagickyi/crop/view/EditorView;)Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;

    move-result-object p1

    iget-object p1, p1, Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;->mSliderBar:Lcn/nubia/redmagickyi/crop/view/SliderBar;

    invoke-virtual {p1, v1, p2}, Lcn/nubia/redmagickyi/crop/view/SliderBar;->setLongPress(II)V

    .line 199
    iget-boolean p1, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$5;->mNeedResume:Z

    if-eqz p1, :cond_2

    .line 200
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$5;->this$0:Lcn/nubia/redmagickyi/crop/view/EditorView;

    invoke-static {p1}, Lcn/nubia/redmagickyi/crop/view/EditorView;->access$2100(Lcn/nubia/redmagickyi/crop/view/EditorView;)Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->resume()V

    .line 201
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$5;->mNeedResume:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public onProgressChanged(IZ)V
    .locals 0

    if-eqz p2, :cond_1

    .line 144
    iget-object p2, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$5;->mTimeCounter:Lcn/nubia/redmagickyi/crop/util/TimeCounter;

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/crop/util/TimeCounter;->count100Ms()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 145
    iget-object p2, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$5;->this$0:Lcn/nubia/redmagickyi/crop/view/EditorView;

    invoke-static {p2}, Lcn/nubia/redmagickyi/crop/view/EditorView;->access$1100(Lcn/nubia/redmagickyi/crop/view/EditorView;)Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->seekTo(I)V

    .line 146
    iput p1, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$5;->mSeekPos:I

    :cond_0
    const/4 p2, 0x1

    .line 148
    iput-boolean p2, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$5;->mIsUserChanged:Z

    .line 149
    iput p1, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$5;->mProgress:I

    :cond_1
    return-void
.end method

.method public onStartTrackingTouch(I)V
    .locals 1

    .line 134
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$5;->this$0:Lcn/nubia/redmagickyi/crop/view/EditorView;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcn/nubia/redmagickyi/crop/view/EditorView;->access$702(Lcn/nubia/redmagickyi/crop/view/EditorView;I)I

    .line 135
    iput v0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$5;->mSeekPos:I

    const/4 p1, 0x0

    .line 136
    iput p1, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$5;->mProgress:I

    .line 137
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$5;->mIsUserChanged:Z

    return-void
.end method

.method public onStopTrackingTouch(I)V
    .locals 2

    .line 123
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$5;->mIsUserChanged:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$5;->mProgress:I

    iget v1, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$5;->mSeekPos:I

    if-eq v0, v1, :cond_0

    .line 124
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$5;->this$0:Lcn/nubia/redmagickyi/crop/view/EditorView;

    invoke-static {v0}, Lcn/nubia/redmagickyi/crop/view/EditorView;->access$900(Lcn/nubia/redmagickyi/crop/view/EditorView;)Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->seekTo(I)V

    const/4 p1, 0x0

    .line 125
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$5;->mIsUserChanged:Z

    .line 126
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$5;->this$0:Lcn/nubia/redmagickyi/crop/view/EditorView;

    invoke-static {p1}, Lcn/nubia/redmagickyi/crop/view/EditorView;->access$1000(Lcn/nubia/redmagickyi/crop/view/EditorView;)V

    :cond_0
    const/4 p1, -0x1

    .line 128
    iput p1, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$5;->mSeekPos:I

    return-void
.end method

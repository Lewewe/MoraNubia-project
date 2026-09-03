.class Lcn/nubia/redmagickyi/crop/view/EditorView$6;
.super Ljava/lang/Object;
.source "EditorView.java"

# interfaces
.implements Lcn/nubia/redmagickyi/crop/view/SliderBar$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/crop/view/EditorView;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
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

    .line 225
    iput-object p1, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$6;->this$0:Lcn/nubia/redmagickyi/crop/view/EditorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    new-instance p1, Lcn/nubia/redmagickyi/crop/util/TimeCounter;

    invoke-direct {p1}, Lcn/nubia/redmagickyi/crop/util/TimeCounter;-><init>()V

    iput-object p1, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$6;->mTimeCounter:Lcn/nubia/redmagickyi/crop/util/TimeCounter;

    return-void
.end method

.method private pauseAndSeek(I)V
    .locals 1

    .line 229
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$6;->this$0:Lcn/nubia/redmagickyi/crop/view/EditorView;

    invoke-static {v0}, Lcn/nubia/redmagickyi/crop/view/EditorView;->access$2400(Lcn/nubia/redmagickyi/crop/view/EditorView;)Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$6;->this$0:Lcn/nubia/redmagickyi/crop/view/EditorView;

    invoke-static {v0}, Lcn/nubia/redmagickyi/crop/view/EditorView;->access$2500(Lcn/nubia/redmagickyi/crop/view/EditorView;)Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->pause()V

    .line 232
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$6;->mTimeCounter:Lcn/nubia/redmagickyi/crop/util/TimeCounter;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/crop/util/TimeCounter;->count100Ms()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 233
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$6;->this$0:Lcn/nubia/redmagickyi/crop/view/EditorView;

    invoke-static {v0}, Lcn/nubia/redmagickyi/crop/view/EditorView;->access$2600(Lcn/nubia/redmagickyi/crop/view/EditorView;)Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->seekTo(I)V

    .line 234
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$6;->this$0:Lcn/nubia/redmagickyi/crop/view/EditorView;

    invoke-static {p0}, Lcn/nubia/redmagickyi/crop/view/EditorView;->access$1000(Lcn/nubia/redmagickyi/crop/view/EditorView;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onLongPress(II)V
    .locals 0

    return-void
.end method

.method public onMove(I)V
    .locals 1

    .line 241
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/crop/view/EditorView$6;->pauseAndSeek(I)V

    .line 242
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$6;->this$0:Lcn/nubia/redmagickyi/crop/view/EditorView;

    invoke-static {p1}, Lcn/nubia/redmagickyi/crop/view/EditorView;->access$2700(Lcn/nubia/redmagickyi/crop/view/EditorView;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$6;->this$0:Lcn/nubia/redmagickyi/crop/view/EditorView;

    invoke-static {p1}, Lcn/nubia/redmagickyi/crop/view/EditorView;->access$000(Lcn/nubia/redmagickyi/crop/view/EditorView;)Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;

    move-result-object p1

    iget-object p1, p1, Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;->mSliderBar:Lcn/nubia/redmagickyi/crop/view/SliderBar;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/crop/view/SliderBar;->getStartTime()I

    move-result p1

    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$6;->this$0:Lcn/nubia/redmagickyi/crop/view/EditorView;

    invoke-static {v0}, Lcn/nubia/redmagickyi/crop/view/EditorView;->access$2800(Lcn/nubia/redmagickyi/crop/view/EditorView;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    div-int/lit8 v0, v0, 0xa

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$6;->this$0:Lcn/nubia/redmagickyi/crop/view/EditorView;

    invoke-static {p1}, Lcn/nubia/redmagickyi/crop/view/EditorView;->access$000(Lcn/nubia/redmagickyi/crop/view/EditorView;)Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;

    move-result-object p1

    iget-object p1, p1, Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;->mSliderBar:Lcn/nubia/redmagickyi/crop/view/SliderBar;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/crop/view/SliderBar;->getEndTime()I

    move-result p1

    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$6;->this$0:Lcn/nubia/redmagickyi/crop/view/EditorView;

    invoke-static {v0}, Lcn/nubia/redmagickyi/crop/view/EditorView;->access$2800(Lcn/nubia/redmagickyi/crop/view/EditorView;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x9

    div-int/lit8 v0, v0, 0xa

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$6;->this$0:Lcn/nubia/redmagickyi/crop/view/EditorView;

    .line 243
    invoke-static {p1}, Lcn/nubia/redmagickyi/crop/view/EditorView;->access$2700(Lcn/nubia/redmagickyi/crop/view/EditorView;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$6;->this$0:Lcn/nubia/redmagickyi/crop/view/EditorView;

    invoke-static {p1}, Lcn/nubia/redmagickyi/crop/view/EditorView;->access$000(Lcn/nubia/redmagickyi/crop/view/EditorView;)Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;

    move-result-object p1

    iget-object p1, p1, Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;->mSliderBar:Lcn/nubia/redmagickyi/crop/view/SliderBar;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/crop/view/SliderBar;->getStartTime()I

    move-result p1

    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$6;->this$0:Lcn/nubia/redmagickyi/crop/view/EditorView;

    invoke-static {v0}, Lcn/nubia/redmagickyi/crop/view/EditorView;->access$2800(Lcn/nubia/redmagickyi/crop/view/EditorView;)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$6;->this$0:Lcn/nubia/redmagickyi/crop/view/EditorView;

    invoke-static {p1}, Lcn/nubia/redmagickyi/crop/view/EditorView;->access$000(Lcn/nubia/redmagickyi/crop/view/EditorView;)Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;

    move-result-object p1

    iget-object p1, p1, Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;->mSliderBar:Lcn/nubia/redmagickyi/crop/view/SliderBar;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/crop/view/SliderBar;->getEndTime()I

    move-result p1

    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$6;->this$0:Lcn/nubia/redmagickyi/crop/view/EditorView;

    invoke-static {v0}, Lcn/nubia/redmagickyi/crop/view/EditorView;->access$2800(Lcn/nubia/redmagickyi/crop/view/EditorView;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    if-eq p1, v0, :cond_2

    .line 244
    :cond_1
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$6;->this$0:Lcn/nubia/redmagickyi/crop/view/EditorView;

    invoke-static {p1}, Lcn/nubia/redmagickyi/crop/view/EditorView;->access$500(Lcn/nubia/redmagickyi/crop/view/EditorView;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 245
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$6;->this$0:Lcn/nubia/redmagickyi/crop/view/EditorView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcn/nubia/redmagickyi/crop/view/EditorView;->access$502(Lcn/nubia/redmagickyi/crop/view/EditorView;Z)Z

    goto :goto_0

    .line 249
    :cond_2
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$6;->this$0:Lcn/nubia/redmagickyi/crop/view/EditorView;

    invoke-static {p1}, Lcn/nubia/redmagickyi/crop/view/EditorView;->access$500(Lcn/nubia/redmagickyi/crop/view/EditorView;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 250
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$6;->this$0:Lcn/nubia/redmagickyi/crop/view/EditorView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcn/nubia/redmagickyi/crop/view/EditorView;->access$502(Lcn/nubia/redmagickyi/crop/view/EditorView;Z)Z

    .line 254
    :cond_3
    :goto_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$6;->this$0:Lcn/nubia/redmagickyi/crop/view/EditorView;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/EditorView;->show()V

    return-void
.end method

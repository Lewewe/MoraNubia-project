.class Lcn/nubia/redmagickyi/crop/view/VideoEditorView$1;
.super Ljava/lang/Object;
.source "VideoEditorView.java"

# interfaces
.implements Lcn/nubia/redmagickyi/crop/editor/common/IMediaPlayer$OnVideoSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/crop/view/VideoEditorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/crop/view/VideoEditorView;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/crop/view/VideoEditorView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 241
    iput-object p1, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView$1;->this$0:Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Lcn/nubia/redmagickyi/crop/editor/common/IMediaPlayer;II)V
    .locals 0

    .line 243
    iget-object p2, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView$1;->this$0:Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    invoke-interface {p1}, Lcn/nubia/redmagickyi/crop/editor/common/IMediaPlayer;->getVideoWidth()I

    move-result p3

    invoke-static {p2, p3}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->access$002(Lcn/nubia/redmagickyi/crop/view/VideoEditorView;I)I

    .line 244
    iget-object p2, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView$1;->this$0:Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    invoke-interface {p1}, Lcn/nubia/redmagickyi/crop/editor/common/IMediaPlayer;->getVideoHeight()I

    move-result p1

    invoke-static {p2, p1}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->access$102(Lcn/nubia/redmagickyi/crop/view/VideoEditorView;I)I

    .line 245
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView$1;->this$0:Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    invoke-static {p1}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->access$000(Lcn/nubia/redmagickyi/crop/view/VideoEditorView;)I

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView$1;->this$0:Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    invoke-static {p1}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->access$100(Lcn/nubia/redmagickyi/crop/view/VideoEditorView;)I

    move-result p1

    if-eqz p1, :cond_0

    .line 247
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView$1;->this$0:Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->requestLayout()V

    :cond_0
    return-void
.end method

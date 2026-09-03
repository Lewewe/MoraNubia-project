.class Lcn/nubia/redmagickyi/crop/view/VideoEditorView$2;
.super Ljava/lang/Object;
.source "VideoEditorView.java"

# interfaces
.implements Lcn/nubia/redmagickyi/crop/editor/common/IMediaPlayer$OnPreparedListener;


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

    .line 252
    iput-object p1, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView$2;->this$0:Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Lcn/nubia/redmagickyi/crop/editor/common/IMediaPlayer;)V
    .locals 2

    .line 254
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView$2;->this$0:Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->access$202(Lcn/nubia/redmagickyi/crop/view/VideoEditorView;I)I

    .line 255
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView$2;->this$0:Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    invoke-static {v0}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->access$300(Lcn/nubia/redmagickyi/crop/view/VideoEditorView;)Lcn/nubia/redmagickyi/crop/view/MediaState$OnNotifyMediaStateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView$2;->this$0:Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    invoke-static {v0}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->access$300(Lcn/nubia/redmagickyi/crop/view/VideoEditorView;)Lcn/nubia/redmagickyi/crop/view/MediaState$OnNotifyMediaStateListener;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView$2;->this$0:Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    invoke-static {v1}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->access$200(Lcn/nubia/redmagickyi/crop/view/VideoEditorView;)I

    move-result v1

    invoke-interface {v0, v1}, Lcn/nubia/redmagickyi/crop/view/MediaState$OnNotifyMediaStateListener;->onNotifyMediaState(I)V

    .line 258
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView$2;->this$0:Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    invoke-interface {p1}, Lcn/nubia/redmagickyi/crop/editor/common/IMediaPlayer;->getDuration()I

    move-result v1

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->access$402(Lcn/nubia/redmagickyi/crop/view/VideoEditorView;I)I

    .line 259
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView$2;->this$0:Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    invoke-interface {p1}, Lcn/nubia/redmagickyi/crop/editor/common/IMediaPlayer;->getVideoWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->access$002(Lcn/nubia/redmagickyi/crop/view/VideoEditorView;I)I

    .line 260
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView$2;->this$0:Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    invoke-interface {p1}, Lcn/nubia/redmagickyi/crop/editor/common/IMediaPlayer;->getVideoHeight()I

    move-result p1

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->access$102(Lcn/nubia/redmagickyi/crop/view/VideoEditorView;I)I

    return-void
.end method

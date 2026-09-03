.class Lcn/nubia/redmagickyi/crop/view/VideoEditorView$3;
.super Ljava/lang/Object;
.source "VideoEditorView.java"

# interfaces
.implements Lcn/nubia/redmagickyi/crop/editor/common/IMediaPlayer$OnCompletionListener;


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

    .line 264
    iput-object p1, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView$3;->this$0:Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Lcn/nubia/redmagickyi/crop/editor/common/IMediaPlayer;)V
    .locals 1

    .line 266
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView$3;->this$0:Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    invoke-static {p1}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->access$500(Lcn/nubia/redmagickyi/crop/view/VideoEditorView;)I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 267
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView$3;->this$0:Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->setPauseState(Z)V

    .line 268
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView$3;->this$0:Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    const/4 v0, 0x5

    invoke-static {p1, v0}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->access$202(Lcn/nubia/redmagickyi/crop/view/VideoEditorView;I)I

    .line 269
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView$3;->this$0:Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    invoke-static {p1}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->access$300(Lcn/nubia/redmagickyi/crop/view/VideoEditorView;)Lcn/nubia/redmagickyi/crop/view/MediaState$OnNotifyMediaStateListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 270
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView$3;->this$0:Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    invoke-static {p1}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->access$300(Lcn/nubia/redmagickyi/crop/view/VideoEditorView;)Lcn/nubia/redmagickyi/crop/view/MediaState$OnNotifyMediaStateListener;

    move-result-object p1

    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView$3;->this$0:Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    invoke-static {p0}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->access$200(Lcn/nubia/redmagickyi/crop/view/VideoEditorView;)I

    move-result p0

    invoke-interface {p1, p0}, Lcn/nubia/redmagickyi/crop/view/MediaState$OnNotifyMediaStateListener;->onNotifyMediaState(I)V

    :cond_0
    return-void
.end method

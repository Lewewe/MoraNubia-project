.class Lcn/nubia/redmagickyi/crop/view/VideoEditorView$5;
.super Ljava/lang/Object;
.source "VideoEditorView.java"

# interfaces
.implements Lcn/nubia/redmagickyi/crop/editor/common/IMediaPlayer$OnErrorListener;


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

    .line 282
    iput-object p1, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView$5;->this$0:Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcn/nubia/redmagickyi/crop/editor/common/IMediaPlayer;II)Z
    .locals 2

    .line 284
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView$5;->this$0:Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    invoke-static {p1}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->access$500(Lcn/nubia/redmagickyi/crop/view/VideoEditorView;)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 287
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView$5;->this$0:Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    invoke-static {p1}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->access$600(Lcn/nubia/redmagickyi/crop/view/VideoEditorView;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView$5;->this$0:Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    invoke-static {p3}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->access$500(Lcn/nubia/redmagickyi/crop/view/VideoEditorView;)I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView$5;->this$0:Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    invoke-static {p0}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->access$508(Lcn/nubia/redmagickyi/crop/view/VideoEditorView;)I

    const/4 p0, 0x1

    return p0
.end method

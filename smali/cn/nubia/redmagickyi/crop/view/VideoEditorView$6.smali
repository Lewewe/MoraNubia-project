.class Lcn/nubia/redmagickyi/crop/view/VideoEditorView$6;
.super Ljava/lang/Object;
.source "VideoEditorView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


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

    .line 299
    iput-object p1, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView$6;->this$0:Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 301
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView$6;->this$0:Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    invoke-static {p1, p3}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->access$702(Lcn/nubia/redmagickyi/crop/view/VideoEditorView;I)I

    .line 302
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView$6;->this$0:Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    invoke-static {p0, p4}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->access$802(Lcn/nubia/redmagickyi/crop/view/VideoEditorView;I)I

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 307
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView$6;->this$0:Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    invoke-static {v0, p1}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->access$902(Lcn/nubia/redmagickyi/crop/view/VideoEditorView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 308
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView$6;->this$0:Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    invoke-static {p0}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->access$1000(Lcn/nubia/redmagickyi/crop/view/VideoEditorView;)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 313
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView$6;->this$0:Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->access$902(Lcn/nubia/redmagickyi/crop/view/VideoEditorView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 314
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView$6;->this$0:Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    iget-boolean p1, p1, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mPlayerActivityIsPaused:Z

    if-eqz p1, :cond_0

    .line 315
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView$6;->this$0:Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    invoke-static {p1}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->access$1100(Lcn/nubia/redmagickyi/crop/view/VideoEditorView;)V

    .line 316
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView$6;->this$0:Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mPlayerActivityIsPaused:Z

    goto :goto_1

    .line 318
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView$6;->this$0:Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->getCurrentPosition()I

    move-result p1

    add-int/lit16 p1, p1, 0x3e8

    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView$6;->this$0:Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->getDuration()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 319
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView$6;->this$0:Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->getCurrentPosition()I

    move-result v0

    add-int/lit16 v0, v0, -0x320

    invoke-static {p1, v0}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->access$1202(Lcn/nubia/redmagickyi/crop/view/VideoEditorView;I)I

    goto :goto_0

    .line 321
    :cond_1
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView$6;->this$0:Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->getCurrentPosition()I

    move-result v0

    invoke-static {p1, v0}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->access$1202(Lcn/nubia/redmagickyi/crop/view/VideoEditorView;I)I

    .line 323
    :goto_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView$6;->this$0:Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    invoke-static {p0}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->access$1100(Lcn/nubia/redmagickyi/crop/view/VideoEditorView;)V

    :goto_1
    return-void
.end method

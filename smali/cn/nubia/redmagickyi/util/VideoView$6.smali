.class Lcn/nubia/redmagickyi/util/VideoView$6;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/util/VideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private isPlayComplete:Z

.field private performPause:Z

.field private position:I

.field final synthetic this$0:Lcn/nubia/redmagickyi/util/VideoView;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/util/VideoView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 228
    iput-object p1, p0, Lcn/nubia/redmagickyi/util/VideoView$6;->this$0:Lcn/nubia/redmagickyi/util/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1

    .line 247
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/VideoView$6;->this$0:Lcn/nubia/redmagickyi/util/VideoView;

    invoke-static {v0, p3}, Lcn/nubia/redmagickyi/util/VideoView;->access$1102(Lcn/nubia/redmagickyi/util/VideoView;I)I

    .line 248
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/VideoView$6;->this$0:Lcn/nubia/redmagickyi/util/VideoView;

    invoke-static {v0, p4}, Lcn/nubia/redmagickyi/util/VideoView;->access$1202(Lcn/nubia/redmagickyi/util/VideoView;I)I

    .line 249
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/VideoView$6;->this$0:Lcn/nubia/redmagickyi/util/VideoView;

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/VideoView;->access$1000(Lcn/nubia/redmagickyi/util/VideoView;)Lcn/nubia/redmagickyi/util/VideoView$SurfaceCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 250
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/VideoView$6;->this$0:Lcn/nubia/redmagickyi/util/VideoView;

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/VideoView;->access$1000(Lcn/nubia/redmagickyi/util/VideoView;)Lcn/nubia/redmagickyi/util/VideoView$SurfaceCallback;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcn/nubia/redmagickyi/util/VideoView$SurfaceCallback;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 4

    .line 234
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/VideoView$6;->this$0:Lcn/nubia/redmagickyi/util/VideoView;

    invoke-static {v0, p1}, Lcn/nubia/redmagickyi/util/VideoView;->access$802(Lcn/nubia/redmagickyi/util/VideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 235
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/util/VideoView$6;->isPlayComplete:Z

    if-nez v0, :cond_0

    .line 236
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/VideoView$6;->this$0:Lcn/nubia/redmagickyi/util/VideoView;

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/VideoView;->access$900(Lcn/nubia/redmagickyi/util/VideoView;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcn/nubia/redmagickyi/util/VideoView$6;->position:I

    iget-boolean v3, p0, Lcn/nubia/redmagickyi/util/VideoView$6;->performPause:Z

    invoke-virtual {v0, v1, v2, v3}, Lcn/nubia/redmagickyi/util/VideoView;->openVideo(Ljava/lang/String;IZ)V

    :cond_0
    const/4 v0, 0x0

    .line 238
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/util/VideoView$6;->performPause:Z

    .line 239
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/util/VideoView$6;->isPlayComplete:Z

    .line 240
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/VideoView$6;->this$0:Lcn/nubia/redmagickyi/util/VideoView;

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/VideoView;->access$1000(Lcn/nubia/redmagickyi/util/VideoView;)Lcn/nubia/redmagickyi/util/VideoView$SurfaceCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 241
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/VideoView$6;->this$0:Lcn/nubia/redmagickyi/util/VideoView;

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/VideoView;->access$1000(Lcn/nubia/redmagickyi/util/VideoView;)Lcn/nubia/redmagickyi/util/VideoView$SurfaceCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcn/nubia/redmagickyi/util/VideoView$SurfaceCallback;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    :cond_1
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    const/4 v0, 0x0

    .line 256
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/util/VideoView$6;->performPause:Z

    .line 257
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/util/VideoView$6;->isPlayComplete:Z

    .line 258
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/VideoView$6;->this$0:Lcn/nubia/redmagickyi/util/VideoView;

    iget-object v0, v0, Lcn/nubia/redmagickyi/util/VideoView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 259
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/VideoView$6;->this$0:Lcn/nubia/redmagickyi/util/VideoView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/VideoView;->isPause()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 260
    iput-boolean v1, p0, Lcn/nubia/redmagickyi/util/VideoView$6;->performPause:Z

    goto :goto_0

    .line 261
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/VideoView$6;->this$0:Lcn/nubia/redmagickyi/util/VideoView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/VideoView;->isPlayComplete()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 262
    iput-boolean v1, p0, Lcn/nubia/redmagickyi/util/VideoView$6;->isPlayComplete:Z

    .line 265
    :cond_1
    :goto_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/VideoView$6;->this$0:Lcn/nubia/redmagickyi/util/VideoView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/VideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/util/VideoView$6;->position:I

    .line 266
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/VideoView$6;->this$0:Lcn/nubia/redmagickyi/util/VideoView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/util/VideoView;->access$802(Lcn/nubia/redmagickyi/util/VideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 267
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/VideoView$6;->this$0:Lcn/nubia/redmagickyi/util/VideoView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/VideoView;->release()V

    .line 268
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/VideoView$6;->this$0:Lcn/nubia/redmagickyi/util/VideoView;

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/VideoView;->access$1000(Lcn/nubia/redmagickyi/util/VideoView;)Lcn/nubia/redmagickyi/util/VideoView$SurfaceCallback;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 269
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/VideoView$6;->this$0:Lcn/nubia/redmagickyi/util/VideoView;

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/VideoView;->access$1000(Lcn/nubia/redmagickyi/util/VideoView;)Lcn/nubia/redmagickyi/util/VideoView$SurfaceCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcn/nubia/redmagickyi/util/VideoView$SurfaceCallback;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    :cond_2
    return-void
.end method

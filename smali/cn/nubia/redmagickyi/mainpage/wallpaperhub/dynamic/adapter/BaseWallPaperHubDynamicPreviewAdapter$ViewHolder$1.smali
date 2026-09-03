.class Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder$1;
.super Ljava/lang/Object;
.source "BaseWallPaperHubDynamicPreviewAdapter.java"

# interfaces
.implements Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$OnStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;->resetPlayer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 156
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder$1;->this$1:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBuffering()V
    .locals 1

    .line 166
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder$1;->this$1:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;->access$800(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder$1;->this$1:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;

    invoke-static {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;->access$200(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/MediaController;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/MediaController;->onBuffering()V

    :cond_0
    return-void
.end method

.method public onComplete()V
    .locals 2

    .line 201
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder$1;->this$1:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;->access$900(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;)I

    move-result v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder$1;->this$1:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;

    invoke-static {v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;->access$400(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 202
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder$1;->this$1:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;

    invoke-static {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;->access$200(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/MediaController;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/MediaController;->onComplete()V

    :cond_0
    return-void
.end method

.method public onError()V
    .locals 2

    .line 208
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder$1;->this$1:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;->access$900(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;)I

    move-result v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder$1;->this$1:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;

    invoke-static {v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;->access$400(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 209
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder$1;->this$1:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;->access$200(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/MediaController;->onError()V

    .line 213
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder$1;->this$1:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;->access$402(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;I)I

    .line 215
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder$1;->this$1:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;->access$1000(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/factory/VideoPlayerDynamic;

    move-result-object v0

    invoke-static {}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/factory/VideoPlayerDynamic;->findCurrent()Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/factory/VideoPlayerDynamic;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 217
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder$1;->this$1:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;->access$300(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;)V

    .line 218
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder$1;->this$1:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;

    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter;->onPlayError()V

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 187
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder$1;->this$1:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;->access$800(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder$1;->this$1:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;

    invoke-static {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;->access$200(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/MediaController;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/MediaController;->onPause()V

    :cond_0
    return-void
.end method

.method public onProgressUpdate(JJ)V
    .locals 1

    .line 180
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder$1;->this$1:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;->access$800(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder$1;->this$1:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;

    invoke-static {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;->access$200(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/MediaController;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/MediaController;->onProgressUpdate(JJ)V

    :cond_0
    return-void
.end method

.method public onRenderingStart()V
    .locals 1

    .line 173
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder$1;->this$1:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;->access$800(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder$1;->this$1:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;

    invoke-static {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;->access$200(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/MediaController;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/MediaController;->onRenderingStart()V

    :cond_0
    return-void
.end method

.method public onReset()V
    .locals 1

    .line 159
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder$1;->this$1:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;->access$800(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder$1;->this$1:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;

    invoke-static {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;->access$200(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/MediaController;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/MediaController;->onReset()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 194
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder$1;->this$1:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;->access$800(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder$1;->this$1:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;

    invoke-static {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;->access$200(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$ViewHolder;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/MediaController;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/MediaController;->onStop()V

    :cond_0
    return-void
.end method

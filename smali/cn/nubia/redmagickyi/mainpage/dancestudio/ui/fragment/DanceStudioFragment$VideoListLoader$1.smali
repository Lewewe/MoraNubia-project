.class Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$VideoListLoader$1;
.super Ljava/lang/Object;
.source "DanceStudioFragment.java"

# interfaces
.implements Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListNetworkManager$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$VideoListLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$VideoListLoader;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$VideoListLoader;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 215
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$VideoListLoader$1;->this$1:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$VideoListLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method public onLoadError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V
    .locals 0

    .line 227
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$VideoListLoader$1;->this$1:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$VideoListLoader;

    iget-object p1, p1, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$VideoListLoader;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment;

    invoke-static {p1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment;->access$1000(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment;)Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$UIManager;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$VideoListLoader$1;->this$1:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$VideoListLoader;

    iget-object p1, p1, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$VideoListLoader;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment;

    invoke-static {p1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment;->access$1000(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment;)Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$UIManager;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$UIManager;->access$300(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$UIManager;)Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioMainAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$VideoListLoader$1;->this$1:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$VideoListLoader;

    iget-object p1, p1, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$VideoListLoader;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment;

    invoke-static {p1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment;->access$1000(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment;)Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$UIManager;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$UIManager;->access$300(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$UIManager;)Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioMainAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioMainAdapter;->getItemCount()I

    move-result p1

    if-gtz p1, :cond_1

    .line 228
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$VideoListLoader$1;->this$1:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$VideoListLoader;

    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$VideoListLoader;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment;->onLoadFailed()V

    :cond_1
    return-void
.end method

.method public onLoadSuccess(Lcn/nubia/redmagickyi/mainpage/dancestudio/network/model/VideoListLoadResponse;Z)V
    .locals 0

    .line 219
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$VideoListLoader$1;->this$1:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$VideoListLoader;

    iget-object p1, p1, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$VideoListLoader;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment;->onLoadComplete()V

    .line 220
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$VideoListLoader$1;->this$1:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$VideoListLoader;

    iget-object p1, p1, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$VideoListLoader;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment;

    invoke-static {p1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment;->access$1000(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment;)Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$UIManager;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$VideoListLoader$1;->this$1:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$VideoListLoader;

    iget-object p1, p1, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$VideoListLoader;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment;

    invoke-static {p1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment;->access$1000(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment;)Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$UIManager;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$UIManager;->access$300(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$UIManager;)Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioMainAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$VideoListLoader$1;->this$1:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$VideoListLoader;

    iget-object p1, p1, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$VideoListLoader;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment;

    invoke-static {p1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment;->access$1000(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment;)Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$UIManager;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$UIManager;->access$300(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$UIManager;)Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioMainAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioMainAdapter;->getItemCount()I

    move-result p1

    if-gtz p1, :cond_1

    .line 221
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$VideoListLoader$1;->this$1:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$VideoListLoader;

    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$VideoListLoader;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment;->onLoadFailed()V

    :cond_1
    return-void
.end method

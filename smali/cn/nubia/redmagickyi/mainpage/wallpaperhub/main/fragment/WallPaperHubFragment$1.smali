.class Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$1;
.super Ljava/lang/Object;
.source "WallPaperHubFragment.java"

# interfaces
.implements Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/inf/DataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;->initData(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 97
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$1;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadComplete()V
    .locals 1

    .line 100
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$1;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;->access$200(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/WallPaperControllerManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$1;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;->access$200(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/WallPaperControllerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/WallPaperControllerManager;->isLoadComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$1;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;->onLoadComplete()V

    :cond_0
    return-void
.end method

.method public onLoadFailed()V
    .locals 0

    .line 107
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$1;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;->onLoadFailed()V

    return-void
.end method

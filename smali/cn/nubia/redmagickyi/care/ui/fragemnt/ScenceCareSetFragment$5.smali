.class Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment$5;
.super Landroid/os/Handler;
.source "ScenceCareSetFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 378
    iput-object p1, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment$5;->this$0:Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 381
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 382
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 389
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment$5;->this$0:Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;

    invoke-static {p1}, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->access$500(Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;)Lcn/nubia/redmagickyi/util/VideoView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/util/VideoView;->setVisibility(I)V

    .line 390
    iget-object p1, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment$5;->this$0:Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;

    invoke-static {p1}, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->access$500(Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;)Lcn/nubia/redmagickyi/util/VideoView;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment$5;->this$0:Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;

    invoke-static {p1}, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->access$500(Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;)Lcn/nubia/redmagickyi/util/VideoView;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/util/VideoView;->isPause()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 391
    iget-object p0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment$5;->this$0:Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;

    invoke-static {p0}, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->access$500(Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;)Lcn/nubia/redmagickyi/util/VideoView;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/VideoView;->resume()V

    goto :goto_0

    .line 384
    :cond_1
    const-class p1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/InspiredFeature;

    invoke-static {p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;->getFeature(Ljava/lang/Class;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;

    move-result-object p1

    iget-object v1, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment$5;->this$0:Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->getContext()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;->HasSetUnityWallPaper(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 385
    const-class p1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/InspiredFeature;

    invoke-static {p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;->getFeature(Ljava/lang/Class;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;

    move-result-object p1

    iget-object p0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment$5;->this$0:Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->getContext()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p1, p0, v0, v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;->setLiveWallPaper(Landroid/content/Context;ZZ)V

    :cond_2
    :goto_0
    return-void
.end method

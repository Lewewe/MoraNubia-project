.class Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$NoticeBannerHandler;
.super Landroid/os/Handler;
.source "GameSpaceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NoticeBannerHandler"
.end annotation


# instance fields
.field private disableAutoScroll:Z

.field final synthetic this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1406
    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$NoticeBannerHandler;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1412
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0xfa0

    if-eq p1, v0, :cond_0

    goto :goto_1

    .line 1414
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$NoticeBannerHandler;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    iget-object p1, p1, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    check-cast p1, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_3

    .line 1415
    iget-boolean p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$NoticeBannerHandler;->disableAutoScroll:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$NoticeBannerHandler;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {p1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$500(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Lcn/nubia/redmagickyi/adapter/NoticeBannerAdapter;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$NoticeBannerHandler;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {p1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$900(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->getFragment()Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;

    move-result-object p1

    if-nez p1, :cond_2

    .line 1416
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$NoticeBannerHandler;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {p1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$400(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p1

    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$NoticeBannerHandler;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {v1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$500(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Lcn/nubia/redmagickyi/adapter/NoticeBannerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/adapter/NoticeBannerAdapter;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_1

    .line 1417
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$NoticeBannerHandler;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {p1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$600(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Lcn/nubia/redmagickyi/view/BannerLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/view/BannerLayout;->getView()Lcn/nubia/redmagickyi/view/BannerLayout$BannerRecyclerView;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcn/nubia/redmagickyi/view/BannerLayout$BannerRecyclerView;->scrollToPosition(I)V

    goto :goto_0

    .line 1419
    :cond_1
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$NoticeBannerHandler;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {p1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$600(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Lcn/nubia/redmagickyi/view/BannerLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/view/BannerLayout;->getView()Lcn/nubia/redmagickyi/view/BannerLayout$BannerRecyclerView;

    move-result-object p1

    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$NoticeBannerHandler;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {v1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$400(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Lcn/nubia/redmagickyi/view/BannerLayout$BannerRecyclerView;->smoothScrollToPosition(I)V

    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 1422
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$NoticeBannerHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const-wide/16 v1, 0x1388

    .line 1423
    invoke-virtual {p0, v0, v1, v2}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$NoticeBannerHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_3
    :goto_1
    return-void
.end method

.method public setDisableAutoScroll(Z)V
    .locals 0

    .line 1432
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$NoticeBannerHandler;->disableAutoScroll:Z

    return-void
.end method

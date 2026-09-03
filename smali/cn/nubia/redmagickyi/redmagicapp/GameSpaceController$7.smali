.class Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$7;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "GameSpaceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->initNoticeBanner()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
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

    .line 595
    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$7;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 2

    .line 610
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$7;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {p1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$500(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Lcn/nubia/redmagickyi/adapter/NoticeBannerAdapter;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 611
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$7;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {p1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$500(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Lcn/nubia/redmagickyi/adapter/NoticeBannerAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/adapter/NoticeBannerAdapter;->getSize()I

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 614
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$7;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {p1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$600(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Lcn/nubia/redmagickyi/view/BannerLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/view/BannerLayout;->onPageSelected()V

    .line 615
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$7;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {p1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$300(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$NoticeBannerHandler;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$NoticeBannerHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 616
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$7;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$300(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$NoticeBannerHandler;

    move-result-object p0

    const/16 p1, 0xfa0

    const-wide/16 v0, 0x1388

    invoke-virtual {p0, p1, v0, v1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$NoticeBannerHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void
.end method

.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    .line 599
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$7;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {p1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$300(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$NoticeBannerHandler;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$NoticeBannerHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    if-eqz p2, :cond_1

    const/4 p1, 0x2

    if-ne p2, p1, :cond_2

    .line 602
    :cond_1
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$7;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {p1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$400(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p1

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$7;->onPageSelected(I)V

    :cond_2
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    return-void
.end method

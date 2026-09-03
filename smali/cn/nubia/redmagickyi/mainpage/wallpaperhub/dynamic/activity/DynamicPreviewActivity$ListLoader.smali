.class Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$ListLoader;
.super Ljava/lang/Object;
.source "DynamicPreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ListLoader"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 532
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$ListLoader;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$ListLoader;)V
    .locals 0

    .line 532
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$ListLoader;->init()V

    return-void
.end method

.method static synthetic access$700(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$ListLoader;)Ljava/util/List;
    .locals 0

    .line 532
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$ListLoader;->getData()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/bean/DynamicBean;",
            ">;"
        }
    .end annotation

    .line 548
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$ListLoader;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 550
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$ListLoader;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;->onBackPressed()V

    .line 551
    new-instance p0, Ljava/util/Vector;

    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    return-object p0

    .line 553
    :cond_0
    const-string p0, "data"

    invoke-virtual {v0, p0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private init()V
    .locals 3

    .line 534
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$ListLoader;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;->access$200(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter;

    move-result-object v0

    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$ListLoader;->getData()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter;->updateData(Ljava/util/List;)V

    .line 535
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$ListLoader;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 537
    const-string v1, "position"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 538
    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$ListLoader;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;

    invoke-static {v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;->access$1600(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;)Lcn/nubia/redmagickyi/view/pageslider/PageRecyclerView;

    move-result-object v1

    new-instance v2, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$ListLoader$1;

    invoke-direct {v2, p0, v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$ListLoader$1;-><init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$ListLoader;I)V

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/view/pageslider/PageRecyclerView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

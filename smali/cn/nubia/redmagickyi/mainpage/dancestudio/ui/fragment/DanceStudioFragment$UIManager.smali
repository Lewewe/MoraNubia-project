.class Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$UIManager;
.super Ljava/lang/Object;
.source "DanceStudioFragment.java"

# interfaces
.implements Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioMainAdapter$OnItemCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UIManager"
.end annotation


# instance fields
.field private adapter:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioMainAdapter;

.field private itemSize:[I

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private spanCount:I

.field final synthetic this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment;


# direct methods
.method private constructor <init>(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 107
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$UIManager;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment;Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$1;)V
    .locals 0

    .line 107
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$UIManager;-><init>(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment;)V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$UIManager;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 107
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$UIManager;->initView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$UIManager;)Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioMainAdapter;
    .locals 0

    .line 107
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$UIManager;->adapter:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioMainAdapter;

    return-object p0
.end method

.method private createMaxSpanCount(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 5

    .line 146
    invoke-static {}, Lcn/nubia/redmagickyi/util/ScreenUtils;->getRealSize()[I

    move-result-object v0

    .line 147
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, 0x0

    .line 148
    aget v1, v0, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result p1

    sub-int/2addr v0, p1

    .line 149
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$UIManager;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_177_dp:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    .line 150
    new-instance v1, Ljava/math/BigDecimal;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    int-to-float v4, v0

    int-to-float p1, p1

    div-float/2addr v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, ""

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x4

    .line 151
    invoke-virtual {v1, v2, p1}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->intValue()I

    move-result p1

    iput p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$UIManager;->spanCount:I

    .line 153
    div-int/2addr v0, p1

    .line 154
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$UIManager;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_4_dp:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    sub-int p1, v0, p1

    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$UIManager;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_306_dp:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    mul-int/2addr p1, v1

    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$UIManager;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_177_dp:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iget-object v2, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$UIManager;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->ns_4_dp:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    sub-int/2addr v1, v2

    div-int/2addr p1, v1

    filled-new-array {v0, p1}, [I

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$UIManager;->itemSize:[I

    return-void
.end method

.method private initView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 3

    .line 114
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$UIManager;->adapter:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioMainAdapter;

    if-nez v0, :cond_0

    .line 115
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$UIManager;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 116
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 117
    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$UIManager;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_2_dp:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 118
    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$UIManager;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_6_dp:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 119
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$UIManager;->createMaxSpanCount(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 122
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$UIManager;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment;->getContext()Landroid/app/Activity;

    move-result-object v1

    iget v2, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$UIManager;->spanCount:I

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 123
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 124
    new-instance v0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$UIManager$1;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$UIManager$1;-><init>(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$UIManager;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 137
    new-instance v0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioMainAdapter;

    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$UIManager;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment;->getContext()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$UIManager;->itemSize:[I

    invoke-direct {v0, v1, v2, p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioMainAdapter;-><init>(Landroid/content/Context;[ILcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioMainAdapter$OnItemCallback;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$UIManager;->adapter:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioMainAdapter;

    .line 138
    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$UIManager;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment;

    invoke-static {v1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment;->access$600(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment;)Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$VideoListLoader;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$VideoListLoader;->access$700(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$VideoListLoader;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioMainAdapter;->updateData(Ljava/util/List;)V

    .line 139
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$UIManager;->adapter:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioMainAdapter;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_0

    .line 141
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$UIManager;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment;

    invoke-static {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment;->access$600(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment;)Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$VideoListLoader;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$VideoListLoader;->access$700(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$VideoListLoader;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioMainAdapter;->updateData(Ljava/util/List;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 2

    .line 164
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$UIManager;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment;

    invoke-static {p1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment;->access$600(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment;)Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$VideoListLoader;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$VideoListLoader;->access$700(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$VideoListLoader;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/bean/VideoListOnlineBean$Video;

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment;->markAsNotNewAdd(Lcn/nubia/redmagickyi/mainpage/dancestudio/network/bean/VideoListOnlineBean$Video;)Z

    .line 165
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$UIManager;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment;->access$902(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment;Z)Z

    .line 166
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$UIManager;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment;->getContext()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    .line 167
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$UIManager;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment;

    invoke-static {p1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;->setPreviewCallback(Lcn/nubia/redmagickyi/mainpage/dancestudio/inf/PreviewCallback;)V

    .line 168
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$UIManager;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment;->getContext()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 169
    const-string v0, "position"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 170
    iget-object p2, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$UIManager;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment;

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment;->getContext()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 171
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$UIManager;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment;->getContext()Landroid/app/Activity;

    move-result-object p1

    sget p2, Lcn/nubia/redmagickyi/main/R$anim;->default_activity_open_enter:I

    sget v0, Lcn/nubia/redmagickyi/main/R$anim;->default_activity_open_exit:I

    invoke-virtual {p1, p2, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 175
    :cond_0
    invoke-static {}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->getInstance()Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;

    move-result-object p1

    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$UIManager;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment;->getContext()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p2, "yes"

    const-string v0, "mora_Danceroom"

    invoke-virtual {p1, p0, v0, v0, p2}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public preloadMore()V
    .locals 1

    .line 159
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$UIManager;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment;

    invoke-static {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment;->access$600(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment;)Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$VideoListLoader;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$VideoListLoader;->access$800(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$VideoListLoader;Z)V

    return-void
.end method

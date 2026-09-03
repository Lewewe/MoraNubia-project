.class Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment$UIManager;
.super Ljava/lang/Object;
.source "WallPaperHubMoreFragment.java"

# interfaces
.implements Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter$ItemClickInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UIManager"
.end annotation


# instance fields
.field private adapter:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter;

.field private currentChildRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field final synthetic this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment;


# direct methods
.method private constructor <init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 174
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment$UIManager;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment;Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment$1;)V
    .locals 0

    .line 174
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment$UIManager;-><init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment;)V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment$UIManager;Landroid/view/View;)V
    .locals 0

    .line 174
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment$UIManager;->initAdapter(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment$UIManager;I)V
    .locals 0

    .line 174
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment$UIManager;->scrollToChildPosition(I)V

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment$UIManager;)V
    .locals 0

    .line 174
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment$UIManager;->notifyDataSetChanged()V

    return-void
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment$UIManager;)V
    .locals 0

    .line 174
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment$UIManager;->notifyItemChanged()V

    return-void
.end method

.method private initAdapter(Landroid/view/View;)V
    .locals 13

    .line 181
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->recyclerview:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment$UIManager;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 182
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment$UIManager;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment$UIManager;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v0, 0x1

    .line 183
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->setAutoMeasureEnabled(Z)V

    .line 184
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment$UIManager;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment$UIManager;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 185
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment$UIManager;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment$UIManager$1;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment$UIManager$1;-><init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment$UIManager;)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 192
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment$UIManager;->adapter:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter;

    if-nez p1, :cond_2

    .line 193
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment$UIManager;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment;

    invoke-static {p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment;->access$500(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment;)I

    move-result p1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 202
    new-instance p1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter;

    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment$UIManager;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment;->getContext()Landroid/app/Activity;

    move-result-object v2

    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment$UIManager;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment;->access$600(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment;)Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter;-><init>(Landroid/app/Activity;ZLjava/util/List;Ljava/util/List;Ljava/util/List;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment$UIManager;->adapter:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter;

    goto :goto_0

    .line 195
    :cond_0
    new-instance p1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter;

    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment$UIManager;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment;->getContext()Landroid/app/Activity;

    move-result-object v8

    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment$UIManager;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment;->access$600(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment;)Ljava/util/List;

    move-result-object v12

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v7, p1

    invoke-direct/range {v7 .. v12}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter;-><init>(Landroid/app/Activity;ZLjava/util/List;Ljava/util/List;Ljava/util/List;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment$UIManager;->adapter:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter;

    goto :goto_0

    .line 198
    :cond_1
    new-instance p1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter;

    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment$UIManager;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment;->getContext()Landroid/app/Activity;

    move-result-object v1

    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment$UIManager;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment;->access$600(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x1

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter;-><init>(Landroid/app/Activity;ZLjava/util/List;Ljava/util/List;Ljava/util/List;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment$UIManager;->adapter:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter;

    .line 205
    :goto_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment$UIManager;->adapter:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter;

    invoke-virtual {p1, p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter;->setChildActionItemOnclick(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter$ItemClickInterface;)V

    .line 206
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment$UIManager;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment$UIManager;->adapter:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_1

    .line 208
    :cond_2
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment$UIManager;->notifyDataSetChanged()V

    :goto_1
    return-void
.end method

.method private notifyDataSetChanged()V
    .locals 0

    .line 236
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment$UIManager;->adapter:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter;

    if-eqz p0, :cond_0

    .line 237
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method private notifyItemChanged()V
    .locals 0

    .line 242
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment$UIManager;->adapter:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter;

    if-eqz p0, :cond_0

    .line 243
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter;->notifyItemChanged()V

    :cond_0
    return-void
.end method

.method private scrollToChildPosition(I)V
    .locals 0

    .line 248
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment$UIManager;->currentChildRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_0

    .line 249
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onItemClick(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/bean/WallPaperBean;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 214
    iput-object p2, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment$UIManager;->currentChildRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 215
    iget-object p2, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment$UIManager;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment;

    invoke-virtual {p2, p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment;->markAsNotNewAdd(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/bean/WallPaperBean;)Z

    .line 216
    iget-object p2, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment$UIManager;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment;->access$702(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment;Z)Z

    .line 217
    iget-object p2, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment$UIManager;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment;

    invoke-static {p2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment;->access$800(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment$MyCallback;

    move-result-object p2

    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment$UIManager;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment;

    invoke-interface {p2, p1, p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment$MyCallback;->gotoPreview(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/bean/WallPaperBean;Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/inf/PreviewCallback;)V

    return-void
.end method

.method public onMoreClick(ILjava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/bean/WallPaperBean;",
            ">;)V"
        }
    .end annotation

    .line 232
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment$UIManager;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment;

    invoke-static {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment;->access$800(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment$MyCallback;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment$MyCallback;->onMoreClick(ILjava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public onSwitchCheckClick(Landroid/view/View;Z)V
    .locals 0

    .line 222
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment$UIManager;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment;

    invoke-static {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment;->access$800(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment$MyCallback;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment$MyCallback;->onSwitchCheckClick(Landroid/view/View;Z)V

    return-void
.end method

.method public onSwitchCheckTouch(Lcn/nubia/redmagickyi/guide/view/GuideSwitch;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 227
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment$UIManager;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment;

    invoke-static {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment;->access$800(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment$MyCallback;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment$MyCallback;->onSwitchCheckTouch(Lcn/nubia/redmagickyi/guide/view/GuideSwitch;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

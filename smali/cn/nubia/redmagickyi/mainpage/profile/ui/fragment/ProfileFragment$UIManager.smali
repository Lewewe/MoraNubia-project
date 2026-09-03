.class Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment$UIManager;
.super Ljava/lang/Object;
.source "ProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UIManager"
.end annotation


# instance fields
.field private adapter:Lcn/nubia/redmagickyi/mainpage/profile/ui/adapter/ProfileAdapter;

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field final synthetic this$0:Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment;


# direct methods
.method private constructor <init>(Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 121
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment$UIManager;->this$0:Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment;Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment$1;)V
    .locals 0

    .line 121
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment$UIManager;-><init>(Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment;)V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment$UIManager;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 121
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment$UIManager;->initView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method private initView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 4

    .line 126
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment$UIManager;->adapter:Lcn/nubia/redmagickyi/mainpage/profile/ui/adapter/ProfileAdapter;

    if-nez v0, :cond_0

    .line 127
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment$UIManager;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 128
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment$UIManager;->this$0:Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment;->getContext()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 129
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 130
    new-instance v0, Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment$UIManager$1;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment$UIManager$1;-><init>(Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment$UIManager;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 136
    new-instance v0, Lcn/nubia/redmagickyi/mainpage/profile/ui/adapter/ProfileAdapter;

    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment$UIManager;->this$0:Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment;->getContext()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/redmagickyi/mainpage/profile/ui/adapter/ProfileAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment$UIManager;->adapter:Lcn/nubia/redmagickyi/mainpage/profile/ui/adapter/ProfileAdapter;

    .line 137
    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment$UIManager;->this$0:Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment;

    invoke-static {v1}, Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment;->access$500(Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment;)Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment$DataLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment$DataLoader;->getList()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment$UIManager;->this$0:Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment;

    invoke-static {v2}, Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment;->access$500(Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment;)Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment$DataLoader;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment$DataLoader;->getFriendnessLevel()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcn/nubia/redmagickyi/mainpage/profile/ui/adapter/ProfileAdapter;->notifyDataSetChangedByLevel(Ljava/util/List;I)V

    .line 138
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment$UIManager;->adapter:Lcn/nubia/redmagickyi/mainpage/profile/ui/adapter/ProfileAdapter;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_0

    .line 140
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment$UIManager;->this$0:Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment;

    invoke-static {p1}, Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment;->access$500(Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment;)Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment$DataLoader;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment$DataLoader;->getList()Ljava/util/List;

    move-result-object p1

    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment$UIManager;->this$0:Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment;

    invoke-static {p0}, Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment;->access$500(Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment;)Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment$DataLoader;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment$DataLoader;->getFriendnessLevel()I

    move-result p0

    invoke-virtual {v0, p1, p0}, Lcn/nubia/redmagickyi/mainpage/profile/ui/adapter/ProfileAdapter;->notifyDataSetChangedByLevel(Ljava/util/List;I)V

    :goto_0
    return-void
.end method

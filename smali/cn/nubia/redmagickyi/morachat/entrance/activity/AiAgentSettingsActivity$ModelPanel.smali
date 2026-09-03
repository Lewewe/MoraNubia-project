.class Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$ModelPanel;
.super Ljava/lang/Object;
.source "AiAgentSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModelPanel"
.end annotation


# instance fields
.field private rvQuick:Landroidx/recyclerview/widget/RecyclerView;

.field private rvQuickMask:Landroid/view/View;

.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;


# direct methods
.method private constructor <init>(Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 139
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$ModelPanel;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$1;)V
    .locals 0

    .line 139
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$ModelPanel;-><init>(Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;)V

    return-void
.end method

.method static synthetic access$1300(Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$ModelPanel;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 139
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$ModelPanel;->rvQuick:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$500(Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$ModelPanel;)V
    .locals 0

    .line 139
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$ModelPanel;->initView()V

    return-void
.end method

.method static synthetic access$900(Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$ModelPanel;)V
    .locals 0

    .line 139
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$ModelPanel;->initData()V

    return-void
.end method

.method private initData()V
    .locals 0

    return-void
.end method

.method private initView()V
    .locals 5

    .line 144
    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/utils/ModelStyleManager;->getSkinIdList()Ljava/util/List;

    move-result-object v0

    .line 145
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$ModelPanel;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;

    sget v2, Lcn/nubia/redmagickyi/main/R$id;->recyclerview_mask:I

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$ModelPanel;->rvQuickMask:Landroid/view/View;

    .line 146
    new-instance v2, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$ModelPanel$1;

    invoke-direct {v2, p0}, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$ModelPanel$1;-><init>(Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$ModelPanel;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 152
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$ModelPanel;->rvQuickMask:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 153
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$ModelPanel;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;

    sget v2, Lcn/nubia/redmagickyi/main/R$id;->quick_recycleview:I

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$ModelPanel;->rvQuick:Landroidx/recyclerview/widget/RecyclerView;

    .line 154
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v3, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$ModelPanel;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;

    invoke-static {v3}, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;->access$1200(Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;)Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 155
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$ModelPanel;->rvQuick:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$ModelPanel$2;

    invoke-direct {v2, p0, v0}, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$ModelPanel$2;-><init>(Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$ModelPanel;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 167
    new-instance v1, Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter;

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$ModelPanel;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;

    invoke-static {v2}, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;->access$1200(Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$ModelPanel;->rvQuick:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {v1, v0, v2, v3}, Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter;-><init>(Ljava/util/List;Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 168
    new-instance v0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$ModelPanel$3;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$ModelPanel$3;-><init>(Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$ModelPanel;)V

    invoke-virtual {v1, v0}, Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter;->setClickInterface(Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter$ClickInterface;)V

    .line 182
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$ModelPanel;->rvQuick:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

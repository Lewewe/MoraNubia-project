.class public Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;
.super Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;
.source "EmailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcn/nubia/redmagickyi/adapter/EmailAdapter$EmailClickInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;,
        Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private allReadLayout:Landroid/widget/LinearLayout;

.field private back:Landroid/widget/ImageView;

.field private btnAllRead:Landroid/widget/TextView;

.field private btnContentNoNetwork:Landroid/widget/Button;

.field private btnDeleteRead:Landroid/widget/LinearLayout;

.field private btnDeleteThisRead:Landroid/widget/LinearLayout;

.field private dataLoadManager:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;

.field private emailAdapter:Lcn/nubia/redmagickyi/adapter/EmailAdapter;

.field private errorPanel:Landroid/view/ViewGroup;

.field private imgNoMail:Landroid/widget/ImageView;

.field private layoutBtn:Landroid/view/ViewGroup;

.field private layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private leftPanel:Landroid/view/ViewGroup;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/network/bean/EmailBean;",
            ">;"
        }
    .end annotation
.end field

.field private mEmailDetailClose:Landroid/widget/ImageView;

.field private mEmailDetailDialog:Landroid/app/Dialog;

.field private recyclerView:Lcn/nubia/redmagickyi/view/RecyclerViewEmptySupport;

.field private rootView:Landroid/view/ViewGroup;

.field private tvContentNoNetwork:Landroid/widget/TextView;

.field private tvMailTitle:Landroid/widget/TextView;

.field private tvTitle:Landroid/widget/TextView;

.field private tvViewEmailContent:Landroid/webkit/WebView;

.field private uiManager:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;

.field private webViewAgent:Lcn/nubia/redmagickyi/util/WebViewAgent;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;-><init>()V

    .line 61
    const-string v0, "EmailFragment"

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1400(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;)Ljava/util/List;
    .locals 0

    .line 60
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->list:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1402(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 60
    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->list:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1500(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;)Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;
    .locals 0

    .line 60
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->dataLoadManager:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;

    return-object p0
.end method

.method static synthetic access$1700(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->deleteCurrent()V

    return-void
.end method

.method static synthetic access$1800(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->deleteRead()V

    return-void
.end method

.method static synthetic access$1900(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;)Landroid/view/ViewGroup;
    .locals 0

    .line 60
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->leftPanel:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$2000(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;)Landroid/widget/LinearLayout;
    .locals 0

    .line 60
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->allReadLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$2100(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;)Landroid/widget/LinearLayout;
    .locals 0

    .line 60
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->btnDeleteRead:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$2200(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;)Landroid/view/ViewGroup;
    .locals 0

    .line 60
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->errorPanel:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$2300(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;)Landroid/widget/TextView;
    .locals 0

    .line 60
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->tvContentNoNetwork:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2400(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;)Landroid/widget/Button;
    .locals 0

    .line 60
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->btnContentNoNetwork:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$2500(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;)Landroid/widget/ImageView;
    .locals 0

    .line 60
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->imgNoMail:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$2700(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;)Lcn/nubia/redmagickyi/adapter/EmailAdapter;
    .locals 0

    .line 60
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->emailAdapter:Lcn/nubia/redmagickyi/adapter/EmailAdapter;

    return-object p0
.end method

.method static synthetic access$2800(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;)Landroid/widget/TextView;
    .locals 0

    .line 60
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->btnAllRead:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2900(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;)Lcn/nubia/redmagickyi/view/RecyclerViewEmptySupport;
    .locals 0

    .line 60
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->recyclerView:Lcn/nubia/redmagickyi/view/RecyclerViewEmptySupport;

    return-object p0
.end method

.method static synthetic access$3000(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;)Lcn/nubia/redmagickyi/util/WebViewAgent;
    .locals 0

    .line 60
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->webViewAgent:Lcn/nubia/redmagickyi/util/WebViewAgent;

    return-object p0
.end method

.method static synthetic access$3100(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;)Landroid/widget/TextView;
    .locals 0

    .line 60
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->tvMailTitle:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$3200(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;)Landroid/app/Dialog;
    .locals 0

    .line 60
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->mEmailDetailDialog:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic access$3400(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;)Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;
    .locals 0

    .line 60
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->uiManager:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;

    return-object p0
.end method

.method private allRead()V
    .locals 1

    .line 254
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->dataLoadManager:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;

    if-eqz v0, :cond_0

    .line 255
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->btnAllRead:Landroid/widget/TextView;

    invoke-static {v0, p0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;->access$1100(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private animRootView(Z)V
    .locals 5

    .line 163
    const-string v0, "always_visible"

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 164
    :goto_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-ge v1, p1, :cond_3

    .line 165
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 166
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sget v3, Lcn/nubia/redmagickyi/main/R$id;->layout_child_fragment:I

    if-eq v2, v3, :cond_0

    const/16 v2, 0x8

    .line 167
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 168
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 169
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->getContext()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/redmagickyi/util/NubiaAnimationUtil;->AlphaOut(Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object v2

    const-wide/16 v3, 0x64

    .line 170
    invoke-virtual {v2, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 171
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 172
    invoke-virtual {p1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move p1, v1

    .line 177
    :goto_1
    iget-object v2, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge p1, v2, :cond_3

    .line 178
    iget-object v2, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 179
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lcn/nubia/redmagickyi/main/R$id;->layout_child_fragment:I

    if-eq v3, v4, :cond_2

    .line 180
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 181
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 182
    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    .line 183
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->getContext()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcn/nubia/redmagickyi/util/NubiaAnimationUtil;->AlphaIn(Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private deleteCurrent()V
    .locals 3

    .line 244
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->dataLoadManager:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;

    if-eqz v0, :cond_0

    .line 245
    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->btnDeleteThisRead:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->list:Ljava/util/List;

    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->emailAdapter:Lcn/nubia/redmagickyi/adapter/EmailAdapter;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/adapter/EmailAdapter;->getSelectPosition()I

    move-result p0

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/network/bean/EmailBean;

    invoke-static {v0, v1, p0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;->access$900(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;Landroid/view/View;Lcn/nubia/redmagickyi/network/bean/EmailBean;)V

    :cond_0
    return-void
.end method

.method private deleteRead()V
    .locals 1

    .line 249
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->dataLoadManager:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;

    if-eqz v0, :cond_0

    .line 250
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->btnDeleteRead:Landroid/widget/LinearLayout;

    invoke-static {v0, p0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;->access$1000(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private initData()V
    .locals 2

    .line 146
    new-instance v0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;-><init>(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$1;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->dataLoadManager:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;

    .line 147
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->btnContentNoNetwork:Landroid/widget/Button;

    invoke-static {v0, p0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;->access$100(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public init(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 81
    invoke-super {p0, p1, p2}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->init(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 82
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->getContext()Landroid/app/Activity;

    move-result-object p1

    sget p2, Lcn/nubia/redmagickyi/main/R$id;->layout_gamespace:I

    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->rootView:Landroid/view/ViewGroup;

    return-void
.end method

.method public initAdapter()V
    .locals 3

    .line 151
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->emailAdapter:Lcn/nubia/redmagickyi/adapter/EmailAdapter;

    if-nez v0, :cond_0

    .line 152
    new-instance v0, Lcn/nubia/redmagickyi/adapter/EmailAdapter;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->getContext()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->list:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcn/nubia/redmagickyi/adapter/EmailAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->emailAdapter:Lcn/nubia/redmagickyi/adapter/EmailAdapter;

    const/4 v1, 0x1

    .line 153
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/adapter/EmailAdapter;->setHasStableIds(Z)V

    .line 154
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->emailAdapter:Lcn/nubia/redmagickyi/adapter/EmailAdapter;

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/adapter/EmailAdapter;->setEmailItemOnclick(Lcn/nubia/redmagickyi/adapter/EmailAdapter$EmailClickInterface;)V

    .line 156
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->recyclerView:Lcn/nubia/redmagickyi/view/RecyclerViewEmptySupport;

    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->emailAdapter:Lcn/nubia/redmagickyi/adapter/EmailAdapter;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/view/RecyclerViewEmptySupport;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 157
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->uiManager:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;

    if-eqz p0, :cond_1

    .line 158
    invoke-static {p0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;->access$200(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;)V

    :cond_1
    return-void
.end method

.method public initView(Landroid/view/View;)V
    .locals 7

    .line 95
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->model_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->tvTitle:Landroid/widget/TextView;

    .line 96
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->left_panel:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->leftPanel:Landroid/view/ViewGroup;

    .line 97
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->tv_content_not_network:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->tvContentNoNetwork:Landroid/widget/TextView;

    .line 98
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->btn_content_not_network:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->btnContentNoNetwork:Landroid/widget/Button;

    const/4 v1, 0x1

    .line 99
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 100
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->btnContentNoNetwork:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->btn_all_read_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->allReadLayout:Landroid/widget/LinearLayout;

    .line 102
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->btn_all_read:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->btnAllRead:Landroid/widget/TextView;

    .line 104
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 105
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->btn_delete_read:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->btnDeleteRead:Landroid/widget/LinearLayout;

    .line 106
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->getContext()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->mEmailDetailDialog:Landroid/app/Dialog;

    .line 108
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 109
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->mEmailDetailDialog:Landroid/app/Dialog;

    sget v2, Lcn/nubia/redmagickyi/main/R$layout;->dialog_email_detail:I

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setContentView(I)V

    .line 110
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->mEmailDetailDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 111
    sget v2, Lcn/nubia/redmagickyi/main/R$color;->transparent:I

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 112
    sget v2, Lcn/nubia/redmagickyi/main/R$id;->btn_delete_this_read:I

    invoke-virtual {v0, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->btnDeleteThisRead:Landroid/widget/LinearLayout;

    .line 113
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 114
    iget-object v2, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->btnDeleteThisRead:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    sget v2, Lcn/nubia/redmagickyi/main/R$id;->iv_achievement_bar_close:I

    invoke-virtual {v0, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->mEmailDetailClose:Landroid/widget/ImageView;

    .line 116
    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    sget v2, Lcn/nubia/redmagickyi/main/R$id;->back:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->back:Landroid/widget/ImageView;

    .line 118
    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    sget v2, Lcn/nubia/redmagickyi/main/R$id;->error_panel:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->errorPanel:Landroid/view/ViewGroup;

    .line 121
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v1, :cond_0

    .line 122
    iget-object v2, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->errorPanel:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 123
    invoke-static {}, Lcn/nubia/redmagickyi/util/ScreenUtils;->getRealSize()[I

    move-result-object v3

    aget v3, v3, v1

    int-to-double v3, v3

    const-wide v5, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v3, v5

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcn/nubia/redmagickyi/main/R$dimen;->ns_84_dp:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-double v5, v5

    sub-double/2addr v3, v5

    double-to-int v3, v3

    .line 124
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 125
    iget-object v3, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->errorPanel:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    :cond_0
    sget v2, Lcn/nubia/redmagickyi/main/R$id;->tv_mail_content:I

    invoke-virtual {v0, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    iput-object v2, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->tvViewEmailContent:Landroid/webkit/WebView;

    .line 128
    new-instance v2, Lcn/nubia/redmagickyi/util/WebViewAgent;

    iget-object v3, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->tvViewEmailContent:Landroid/webkit/WebView;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcn/nubia/redmagickyi/util/WebViewAgent;-><init>(Landroid/webkit/WebView;Landroid/view/View;)V

    iput-object v2, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->webViewAgent:Lcn/nubia/redmagickyi/util/WebViewAgent;

    .line 129
    sget v2, Lcn/nubia/redmagickyi/main/R$id;->tv_content_header_title:I

    invoke-virtual {v0, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->tvMailTitle:Landroid/widget/TextView;

    .line 130
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->img_not_mail:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->imgNoMail:Landroid/widget/ImageView;

    .line 131
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->recycle_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcn/nubia/redmagickyi/view/RecyclerViewEmptySupport;

    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->recyclerView:Lcn/nubia/redmagickyi/view/RecyclerViewEmptySupport;

    .line 132
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 133
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 134
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->recyclerView:Lcn/nubia/redmagickyi/view/RecyclerViewEmptySupport;

    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/view/RecyclerViewEmptySupport;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 135
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->recyclerView:Lcn/nubia/redmagickyi/view/RecyclerViewEmptySupport;

    new-instance v0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$1;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$1;-><init>(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;)V

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/view/RecyclerViewEmptySupport;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 142
    new-instance p1, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;

    invoke-direct {p1, p0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;-><init>(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->uiManager:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;

    return-void
.end method

.method public onBackPress()Z
    .locals 2

    .line 209
    const-string v0, "EmailFragment"

    const-string v1, "onBackPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->list:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->uiManager:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;->access$600(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 213
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->uiManager:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;->access$700(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;)V

    .line 214
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->dataLoadManager:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;->access$300(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;)V

    goto :goto_1

    .line 211
    :cond_1
    :goto_0
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->onBackPress()Z

    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 221
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 222
    sget v1, Lcn/nubia/redmagickyi/main/R$id;->back:I

    if-ne v0, v1, :cond_0

    .line 223
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->onHideFragment()V

    goto :goto_0

    .line 224
    :cond_0
    sget v1, Lcn/nubia/redmagickyi/main/R$id;->btn_content_not_network:I

    if-ne v0, v1, :cond_2

    .line 225
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->dataLoadManager:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;

    if-eqz v0, :cond_1

    .line 226
    invoke-static {v0, p1}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;->access$100(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;Landroid/view/View;)V

    .line 228
    :cond_1
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->uiManager:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;

    if-eqz p0, :cond_6

    .line 229
    invoke-static {p0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;->access$200(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;)V

    goto :goto_0

    .line 231
    :cond_2
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->btn_all_read_layout:I

    if-ne v0, p1, :cond_3

    .line 232
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->allRead()V

    goto :goto_0

    .line 233
    :cond_3
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->btn_delete_read:I

    const/4 v1, 0x0

    if-ne v0, p1, :cond_4

    .line 234
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->uiManager:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;

    new-array p1, v1, [Landroid/view/View;

    invoke-static {p0, v1, p1}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;->access$800(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;I[Landroid/view/View;)V

    goto :goto_0

    .line 235
    :cond_4
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->btn_delete_this_read:I

    if-ne v0, p1, :cond_5

    .line 236
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->uiManager:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;

    const/4 p1, 0x1

    new-array v0, v1, [Landroid/view/View;

    invoke-static {p0, p1, v0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;->access$800(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;I[Landroid/view/View;)V

    goto :goto_0

    .line 237
    :cond_5
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->iv_achievement_bar_close:I

    if-ne v0, p1, :cond_6

    .line 238
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->mEmailDetailDialog:Landroid/app/Dialog;

    if-eqz p0, :cond_6

    .line 239
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_6
    :goto_0
    return-void
.end method

.method public onCreatedView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 87
    sget p3, Lcn/nubia/redmagickyi/main/R$layout;->layout_email:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 88
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->initView(Landroid/view/View;)V

    .line 89
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->initData()V

    const/4 p2, 0x1

    .line 90
    invoke-direct {p0, p2}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->animRootView(Z)V

    return-object p1
.end method

.method public onEmailItemClick(Landroid/view/View;I)V
    .locals 1

    .line 261
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->dataLoadManager:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;

    if-eqz p1, :cond_0

    .line 262
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->btnContentNoNetwork:Landroid/widget/Button;

    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->list:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/network/bean/EmailBean;

    invoke-static {p1, v0, p0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;->access$1200(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;Landroid/view/View;Lcn/nubia/redmagickyi/network/bean/EmailBean;)V

    :cond_0
    return-void
.end method

.method public onHideFragment()V
    .locals 1

    .line 198
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->onHideFragment()V

    const/4 v0, 0x0

    .line 199
    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->animRootView(Z)V

    .line 200
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->dataLoadManager:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;

    if-eqz v0, :cond_0

    .line 201
    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;->access$300(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;)V

    .line 202
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->dataLoadManager:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;->access$400(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;)V

    .line 203
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->dataLoadManager:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;->access$500(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 192
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->onPause()V

    .line 193
    const-string p0, "EmailFragment"

    const-string v0, "onPause"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 268
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->onStop()V

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onStop, isRemoving = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->isRemoving()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isFinishing = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->getContext()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EmailFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->isRemoving()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 271
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->webViewAgent:Lcn/nubia/redmagickyi/util/WebViewAgent;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/WebViewAgent;->destroy()V

    .line 272
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->uiManager:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;

    if-eqz v0, :cond_1

    .line 273
    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;->access$1300(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;)V

    .line 274
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->uiManager:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;->access$700(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;)V

    :cond_1
    return-void
.end method

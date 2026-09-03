.class public Lcn/nubia/redmagickyi/view/RecyclerViewEmptySupport;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "RecyclerViewEmptySupport.java"


# static fields
.field private static final SCROLLBAR_FADE_DELAYED:I = 0x2ee

.field private static final TAG:Ljava/lang/String; = "RecyclerViewEmptySupport"


# instance fields
.field private emptyObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

.field private mEmptyView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    .line 25
    new-instance p1, Lcn/nubia/redmagickyi/view/RecyclerViewEmptySupport$1;

    invoke-direct {p1, p0}, Lcn/nubia/redmagickyi/view/RecyclerViewEmptySupport$1;-><init>(Lcn/nubia/redmagickyi/view/RecyclerViewEmptySupport;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/view/RecyclerViewEmptySupport;->emptyObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    new-instance p1, Lcn/nubia/redmagickyi/view/RecyclerViewEmptySupport$1;

    invoke-direct {p1, p0}, Lcn/nubia/redmagickyi/view/RecyclerViewEmptySupport$1;-><init>(Lcn/nubia/redmagickyi/view/RecyclerViewEmptySupport;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/view/RecyclerViewEmptySupport;->emptyObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    new-instance p1, Lcn/nubia/redmagickyi/view/RecyclerViewEmptySupport$1;

    invoke-direct {p1, p0}, Lcn/nubia/redmagickyi/view/RecyclerViewEmptySupport$1;-><init>(Lcn/nubia/redmagickyi/view/RecyclerViewEmptySupport;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/view/RecyclerViewEmptySupport;->emptyObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/view/RecyclerViewEmptySupport;)Landroid/view/View;
    .locals 0

    .line 12
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/RecyclerViewEmptySupport;->mEmptyView:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method protected awakenScrollBars()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected awakenScrollBars(IZ)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onScrolled(II)V
    .locals 0

    .line 92
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->onScrolled(II)V

    const/16 p1, 0x2ee

    const/4 p2, 0x1

    .line 93
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->awakenScrollBars(IZ)Z

    return-void
.end method

.method public setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 2

    .line 64
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setAdapter: adapter::"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecyclerViewEmptySupport"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 68
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/RecyclerViewEmptySupport;->emptyObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 70
    :catch_0
    const-string v0, "failed unregist AdapterDataObserver"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :goto_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/RecyclerViewEmptySupport;->emptyObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 74
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/RecyclerViewEmptySupport;->emptyObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onChanged()V

    return-void
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcn/nubia/redmagickyi/view/RecyclerViewEmptySupport;->mEmptyView:Landroid/view/View;

    return-void
.end method

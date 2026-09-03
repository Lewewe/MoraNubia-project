.class public Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "DanceStudioListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter$OnItemCallback;,
        Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/mainpage/dancestudio/network/bean/VideoListOnlineBean$Video;",
            ">;"
        }
    .end annotation
.end field

.field private onItemCallback:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter$OnItemCallback;

.field private final options:Lcom/bumptech/glide/request/RequestOptions;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter$OnItemCallback;)V
    .locals 3

    .line 36
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 32
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v2, -0x1000000

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 33
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 34
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->error(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter;->options:Lcom/bumptech/glide/request/RequestOptions;

    .line 37
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter;->mContext:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter;->onItemCallback:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter$OnItemCallback;

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter;)Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter$OnItemCallback;
    .locals 0

    .line 28
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter;->onItemCallback:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter$OnItemCallback;

    return-object p0
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter;)Ljava/util/List;
    .locals 0

    .line 28
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter;->mData:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 0

    .line 28
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter;->options:Lcom/bumptech/glide/request/RequestOptions;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 99
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter;->mData:Ljava/util/List;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    :goto_0
    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 28
    check-cast p1, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter;->onBindViewHolder(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter$ViewHolder;I)V
    .locals 1

    .line 77
    invoke-static {p1, p2}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter$ViewHolder;->access$000(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter$ViewHolder;I)V

    .line 78
    invoke-static {p1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter$ViewHolder;->access$100(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter$ViewHolder;)V

    .line 79
    iget-object p1, p1, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter$1;

    invoke-direct {v0, p0, p2}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter$1;-><init>(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 28
    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter$ViewHolder;
    .locals 2

    .line 71
    iget-object p2, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcn/nubia/redmagickyi/main/R$layout;->item_dance_studio_list:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 72
    new-instance p2, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter$ViewHolder;-><init>(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public bridge synthetic onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 28
    check-cast p1, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter$ViewHolder;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter;->onViewAttachedToWindow(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter$ViewHolder;)V

    return-void
.end method

.method public onViewAttachedToWindow(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter$ViewHolder;)V
    .locals 1

    .line 89
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 90
    invoke-static {p1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter$ViewHolder;->access$100(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter$ViewHolder;)V

    .line 91
    invoke-static {p1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter$ViewHolder;->access$300(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter$ViewHolder;)I

    move-result p1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter;->getItemCount()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    if-lt p1, v0, :cond_0

    .line 93
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter;->onItemCallback:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter$OnItemCallback;

    invoke-interface {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter$OnItemCallback;->preloadMore()V

    :cond_0
    return-void
.end method

.method public updateData(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/mainpage/dancestudio/network/bean/VideoListOnlineBean$Video;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 43
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter;->mData:Ljava/util/List;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter;->mData:Ljava/util/List;

    .line 46
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 47
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 48
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter;->notifyDataSetChanged()V

    goto :goto_2

    .line 50
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/bean/VideoListOnlineBean$Video;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/bean/VideoListOnlineBean$Video;->getPageNo()I

    move-result v0

    .line 53
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_3

    .line 54
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/bean/VideoListOnlineBean$Video;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/bean/VideoListOnlineBean$Video;->getPageNo()I

    move-result v2

    if-ne v2, v0, :cond_2

    add-int/lit8 v1, v1, 0x1

    .line 56
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    move v0, v1

    :goto_1
    if-lez v0, :cond_4

    .line 61
    iget-object v2, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter;->mData:Ljava/util/List;

    add-int v3, v1, v0

    invoke-interface {p1, v1, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 62
    invoke-virtual {p0, v1, v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter;->notifyItemRangeInserted(II)V

    :cond_4
    :goto_2
    return-void
.end method

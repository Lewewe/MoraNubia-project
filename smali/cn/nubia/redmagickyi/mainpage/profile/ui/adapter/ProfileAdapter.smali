.class public Lcn/nubia/redmagickyi/mainpage/profile/ui/adapter/ProfileAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ProfileAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcn/nubia/redmagickyi/mainpage/profile/ui/viewholder/ProfileViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private ITEM_VIEW_TYPE_NORMAL:I

.field private ITEM_VIEW_TYPE_PLACEHOLDER:I

.field private level:I

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/model/StoryBeans;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x1

    .line 19
    iput v0, p0, Lcn/nubia/redmagickyi/mainpage/profile/ui/adapter/ProfileAdapter;->ITEM_VIEW_TYPE_NORMAL:I

    const/4 v0, 0x2

    .line 20
    iput v0, p0, Lcn/nubia/redmagickyi/mainpage/profile/ui/adapter/ProfileAdapter;->ITEM_VIEW_TYPE_PLACEHOLDER:I

    const/4 v0, -0x1

    .line 23
    iput v0, p0, Lcn/nubia/redmagickyi/mainpage/profile/ui/adapter/ProfileAdapter;->level:I

    .line 26
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/profile/ui/adapter/ProfileAdapter;->mContext:Landroid/content/Context;

    .line 27
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/profile/ui/adapter/ProfileAdapter;->list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 80
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/profile/ui/adapter/ProfileAdapter;->list:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 85
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/profile/ui/adapter/ProfileAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/redmagickyi/model/StoryBeans;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/model/StoryBeans;->isPlaceHolder()Z

    move-result p1

    if-eqz p1, :cond_0

    iget p0, p0, Lcn/nubia/redmagickyi/mainpage/profile/ui/adapter/ProfileAdapter;->ITEM_VIEW_TYPE_PLACEHOLDER:I

    goto :goto_0

    :cond_0
    iget p0, p0, Lcn/nubia/redmagickyi/mainpage/profile/ui/adapter/ProfileAdapter;->ITEM_VIEW_TYPE_NORMAL:I

    :goto_0
    return p0
.end method

.method public notifyDataSetChangedByLevel(Ljava/util/List;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/model/StoryBeans;",
            ">;I)V"
        }
    .end annotation

    .line 31
    iget v0, p0, Lcn/nubia/redmagickyi/mainpage/profile/ui/adapter/ProfileAdapter;->level:I

    if-eq v0, p2, :cond_2

    .line 32
    iput p2, p0, Lcn/nubia/redmagickyi/mainpage/profile/ui/adapter/ProfileAdapter;->level:I

    .line 33
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/profile/ui/adapter/ProfileAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 34
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 35
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/model/StoryBeans;

    .line 36
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/model/StoryBeans;->getMinLevel()I

    move-result v2

    if-gt v2, p2, :cond_0

    .line 37
    iget-object v2, p0, Lcn/nubia/redmagickyi/mainpage/profile/ui/adapter/ProfileAdapter;->list:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 40
    :cond_0
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/model/StoryBeans;->getMinLevel()I

    move-result v1

    .line 41
    new-instance v2, Lcn/nubia/redmagickyi/model/StoryBeans;

    invoke-direct {v2}, Lcn/nubia/redmagickyi/model/StoryBeans;-><init>()V

    .line 42
    iget-object v3, p0, Lcn/nubia/redmagickyi/mainpage/profile/ui/adapter/ProfileAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcn/nubia/redmagickyi/main/R$string;->redmagic_skin_mora_story_title_lock:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/nubia/redmagickyi/model/StoryBeans;->setTitle(Ljava/lang/String;)V

    .line 43
    iget-object v3, p0, Lcn/nubia/redmagickyi/mainpage/profile/ui/adapter/ProfileAdapter;->mContext:Landroid/content/Context;

    sget v4, Lcn/nubia/redmagickyi/main/R$string;->model_story_describe_placeholder:I

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/nubia/redmagickyi/model/StoryBeans;->setDescribe(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v2, v1}, Lcn/nubia/redmagickyi/model/StoryBeans;->setMinLevel(I)V

    const/4 v1, 0x1

    .line 45
    invoke-virtual {v2, v1}, Lcn/nubia/redmagickyi/model/StoryBeans;->setPlaceHolder(Z)V

    .line 46
    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/profile/ui/adapter/ProfileAdapter;->list:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 49
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/profile/ui/adapter/ProfileAdapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
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

    .line 18
    check-cast p1, Lcn/nubia/redmagickyi/mainpage/profile/ui/viewholder/ProfileViewHolder;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/mainpage/profile/ui/adapter/ProfileAdapter;->onBindViewHolder(Lcn/nubia/redmagickyi/mainpage/profile/ui/viewholder/ProfileViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcn/nubia/redmagickyi/mainpage/profile/ui/viewholder/ProfileViewHolder;I)V
    .locals 2

    .line 67
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/profile/ui/adapter/ProfileAdapter;->list:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/model/StoryBeans;

    .line 68
    iget-object v0, p1, Lcn/nubia/redmagickyi/mainpage/profile/ui/viewholder/ProfileViewHolder;->describe:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/model/StoryBeans;->getDescribe()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v0, p1, Lcn/nubia/redmagickyi/mainpage/profile/ui/viewholder/ProfileViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/model/StoryBeans;->getTitle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 p2, p2, 0x1

    const/16 p0, 0x9

    if-le p2, p0, :cond_0

    .line 72
    iget-object p0, p1, Lcn/nubia/redmagickyi/mainpage/profile/ui/viewholder/ProfileViewHolder;->index:Landroid/widget/TextView;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 74
    :cond_0
    iget-object p0, p1, Lcn/nubia/redmagickyi/mainpage/profile/ui/viewholder/ProfileViewHolder;->index:Landroid/widget/TextView;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "0"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
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

    .line 18
    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/mainpage/profile/ui/adapter/ProfileAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/nubia/redmagickyi/mainpage/profile/ui/viewholder/ProfileViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/nubia/redmagickyi/mainpage/profile/ui/viewholder/ProfileViewHolder;
    .locals 1

    .line 57
    iget p0, p0, Lcn/nubia/redmagickyi/mainpage/profile/ui/adapter/ProfileAdapter;->ITEM_VIEW_TYPE_NORMAL:I

    const/4 v0, 0x0

    if-ne p2, p0, :cond_0

    .line 58
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget p2, Lcn/nubia/redmagickyi/main/R$layout;->profile_main_child_unlocked_item:I

    invoke-virtual {p0, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget p2, Lcn/nubia/redmagickyi/main/R$layout;->profile_main_child_locked_item:I

    invoke-virtual {p0, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 62
    :goto_0
    new-instance p1, Lcn/nubia/redmagickyi/mainpage/profile/ui/viewholder/ProfileViewHolder;

    invoke-direct {p1, p0}, Lcn/nubia/redmagickyi/mainpage/profile/ui/viewholder/ProfileViewHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

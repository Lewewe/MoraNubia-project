.class public Lcn/nubia/redmagickyi/skin/adapter/StoryAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "StoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/skin/adapter/StoryAdapter$StoryItemClickInterface;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcn/nubia/redmagickyi/skin/viewholder/StoryViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field ITEM_VIEW_TYPE_NORMAL:I

.field ITEM_VIEW_TYPE_PLACEHOLDER:I

.field public itemClickInterface:Lcn/nubia/redmagickyi/skin/adapter/StoryAdapter$StoryItemClickInterface;

.field level:I

.field list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/model/StoryBeans;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x1

    .line 20
    iput v0, p0, Lcn/nubia/redmagickyi/skin/adapter/StoryAdapter;->ITEM_VIEW_TYPE_NORMAL:I

    const/4 v0, 0x2

    .line 21
    iput v0, p0, Lcn/nubia/redmagickyi/skin/adapter/StoryAdapter;->ITEM_VIEW_TYPE_PLACEHOLDER:I

    const/4 v0, -0x1

    .line 24
    iput v0, p0, Lcn/nubia/redmagickyi/skin/adapter/StoryAdapter;->level:I

    .line 37
    iput-object p1, p0, Lcn/nubia/redmagickyi/skin/adapter/StoryAdapter;->mContext:Landroid/content/Context;

    .line 38
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/nubia/redmagickyi/skin/adapter/StoryAdapter;->list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 114
    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/adapter/StoryAdapter;->list:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 119
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/adapter/StoryAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/redmagickyi/model/StoryBeans;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/model/StoryBeans;->isPlaceHolder()Z

    move-result p1

    if-eqz p1, :cond_0

    iget p0, p0, Lcn/nubia/redmagickyi/skin/adapter/StoryAdapter;->ITEM_VIEW_TYPE_PLACEHOLDER:I

    goto :goto_0

    :cond_0
    iget p0, p0, Lcn/nubia/redmagickyi/skin/adapter/StoryAdapter;->ITEM_VIEW_TYPE_NORMAL:I

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

    .line 42
    iget v0, p0, Lcn/nubia/redmagickyi/skin/adapter/StoryAdapter;->level:I

    if-eq v0, p2, :cond_2

    .line 43
    iput p2, p0, Lcn/nubia/redmagickyi/skin/adapter/StoryAdapter;->level:I

    .line 44
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/adapter/StoryAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 45
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 46
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/model/StoryBeans;

    .line 47
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/model/StoryBeans;->getMinLevel()I

    move-result v2

    if-gt v2, p2, :cond_0

    .line 48
    iget-object v2, p0, Lcn/nubia/redmagickyi/skin/adapter/StoryAdapter;->list:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 51
    :cond_0
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/model/StoryBeans;->getMinLevel()I

    move-result v1

    .line 52
    new-instance v2, Lcn/nubia/redmagickyi/model/StoryBeans;

    invoke-direct {v2}, Lcn/nubia/redmagickyi/model/StoryBeans;-><init>()V

    .line 53
    iget-object v3, p0, Lcn/nubia/redmagickyi/skin/adapter/StoryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcn/nubia/redmagickyi/main/R$string;->redmagic_skin_mora_story_title_lock:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/nubia/redmagickyi/model/StoryBeans;->setTitle(Ljava/lang/String;)V

    .line 54
    iget-object v3, p0, Lcn/nubia/redmagickyi/skin/adapter/StoryAdapter;->mContext:Landroid/content/Context;

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

    .line 55
    invoke-virtual {v2, v1}, Lcn/nubia/redmagickyi/model/StoryBeans;->setMinLevel(I)V

    const/4 v1, 0x1

    .line 56
    invoke-virtual {v2, v1}, Lcn/nubia/redmagickyi/model/StoryBeans;->setPlaceHolder(Z)V

    .line 57
    iget-object v1, p0, Lcn/nubia/redmagickyi/skin/adapter/StoryAdapter;->list:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 60
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/skin/adapter/StoryAdapter;->notifyDataSetChanged()V

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

    .line 19
    check-cast p1, Lcn/nubia/redmagickyi/skin/viewholder/StoryViewHolder;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/skin/adapter/StoryAdapter;->onBindViewHolder(Lcn/nubia/redmagickyi/skin/viewholder/StoryViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcn/nubia/redmagickyi/skin/viewholder/StoryViewHolder;I)V
    .locals 5

    .line 78
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/adapter/StoryAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/model/StoryBeans;

    .line 79
    iget-object v1, p1, Lcn/nubia/redmagickyi/skin/viewholder/StoryViewHolder;->describe:Landroid/widget/TextView;

    iget-object v2, p0, Lcn/nubia/redmagickyi/skin/adapter/StoryAdapter;->list:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/redmagickyi/model/StoryBeans;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/model/StoryBeans;->getDescribe()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v1, p1, Lcn/nubia/redmagickyi/skin/viewholder/StoryViewHolder;->describe:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 81
    iget-object v1, p1, Lcn/nubia/redmagickyi/skin/viewholder/StoryViewHolder;->title:Landroid/widget/TextView;

    iget-object v2, p0, Lcn/nubia/redmagickyi/skin/adapter/StoryAdapter;->list:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/redmagickyi/model/StoryBeans;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/model/StoryBeans;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    invoke-virtual {p0, p2}, Lcn/nubia/redmagickyi/skin/adapter/StoryAdapter;->getItemViewType(I)I

    move-result v1

    iget v2, p0, Lcn/nubia/redmagickyi/skin/adapter/StoryAdapter;->ITEM_VIEW_TYPE_NORMAL:I

    if-ne v1, v2, :cond_1

    .line 83
    iget-object v1, p1, Lcn/nubia/redmagickyi/skin/viewholder/StoryViewHolder;->itemBg:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/model/StoryBeans;->isSelecte()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcn/nubia/redmagickyi/skin/adapter/StoryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/redmagickyi/main/R$drawable;->svg_pic_mojihuanzhuang_profilolist_selected:I

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcn/nubia/redmagickyi/skin/adapter/StoryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/redmagickyi/main/R$drawable;->svg_pic_mojihuanzhuang_profilolist:I

    :goto_0
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 85
    :cond_1
    iget-object v1, p1, Lcn/nubia/redmagickyi/skin/viewholder/StoryViewHolder;->itemBg:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcn/nubia/redmagickyi/skin/adapter/StoryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/redmagickyi/main/R$drawable;->svg_pic_mojihuanzhuang_profilolist_locked:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    add-int/lit8 v1, p2, 0x1

    const/16 v2, 0x9

    if-le v1, v2, :cond_2

    .line 89
    iget-object v2, p1, Lcn/nubia/redmagickyi/skin/viewholder/StoryViewHolder;->index:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 91
    :cond_2
    iget-object v2, p1, Lcn/nubia/redmagickyi/skin/viewholder/StoryViewHolder;->index:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "0"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    :goto_2
    iget-object v1, p1, Lcn/nubia/redmagickyi/skin/viewholder/StoryViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcn/nubia/redmagickyi/skin/adapter/StoryAdapter$1;

    invoke-direct {v2, p0, v0, p2, p1}, Lcn/nubia/redmagickyi/skin/adapter/StoryAdapter$1;-><init>(Lcn/nubia/redmagickyi/skin/adapter/StoryAdapter;Lcn/nubia/redmagickyi/model/StoryBeans;ILcn/nubia/redmagickyi/skin/viewholder/StoryViewHolder;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

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

    .line 19
    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/skin/adapter/StoryAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/nubia/redmagickyi/skin/viewholder/StoryViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/nubia/redmagickyi/skin/viewholder/StoryViewHolder;
    .locals 1

    .line 67
    iget p0, p0, Lcn/nubia/redmagickyi/skin/adapter/StoryAdapter;->ITEM_VIEW_TYPE_NORMAL:I

    const/4 v0, 0x0

    if-ne p2, p0, :cond_0

    .line 68
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget p2, Lcn/nubia/redmagickyi/main/R$layout;->story_item:I

    invoke-virtual {p0, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 69
    new-instance p1, Lcn/nubia/redmagickyi/skin/viewholder/StoryViewHolder;

    invoke-direct {p1, p0}, Lcn/nubia/redmagickyi/skin/viewholder/StoryViewHolder;-><init>(Landroid/view/View;)V

    return-object p1

    .line 71
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget p2, Lcn/nubia/redmagickyi/main/R$layout;->story_empty_item:I

    invoke-virtual {p0, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 72
    new-instance p1, Lcn/nubia/redmagickyi/skin/viewholder/StoryEmptyViewHolder;

    invoke-direct {p1, p0}, Lcn/nubia/redmagickyi/skin/viewholder/StoryEmptyViewHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public setOnStoryItemClickListener(Lcn/nubia/redmagickyi/skin/adapter/StoryAdapter$StoryItemClickInterface;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcn/nubia/redmagickyi/skin/adapter/StoryAdapter;->itemClickInterface:Lcn/nubia/redmagickyi/skin/adapter/StoryAdapter$StoryItemClickInterface;

    return-void
.end method

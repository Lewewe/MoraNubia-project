.class public Lcn/nubia/redmagickyi/achievement/adapter/AchievementAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "AchievementAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/achievement/adapter/AchievementAdapter$AchievementClickInterface;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcn/nubia/redmagickyi/achievement/viewholder/AchievementViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private clickInterface:Lcn/nubia/redmagickyi/achievement/adapter/AchievementAdapter$AchievementClickInterface;

.field list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field private selectedId:I

.field private selectedIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;",
            ">;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, -0x1

    .line 25
    iput v0, p0, Lcn/nubia/redmagickyi/achievement/adapter/AchievementAdapter;->selectedId:I

    iput v0, p0, Lcn/nubia/redmagickyi/achievement/adapter/AchievementAdapter;->selectedIndex:I

    .line 37
    iput-object p1, p0, Lcn/nubia/redmagickyi/achievement/adapter/AchievementAdapter;->mContext:Landroid/content/Context;

    .line 38
    invoke-virtual {p0, p2}, Lcn/nubia/redmagickyi/achievement/adapter/AchievementAdapter;->setData(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/achievement/adapter/AchievementAdapter;)I
    .locals 0

    .line 20
    iget p0, p0, Lcn/nubia/redmagickyi/achievement/adapter/AchievementAdapter;->selectedIndex:I

    return p0
.end method

.method static synthetic access$002(Lcn/nubia/redmagickyi/achievement/adapter/AchievementAdapter;I)I
    .locals 0

    .line 20
    iput p1, p0, Lcn/nubia/redmagickyi/achievement/adapter/AchievementAdapter;->selectedIndex:I

    return p1
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/achievement/adapter/AchievementAdapter;)I
    .locals 0

    .line 20
    iget p0, p0, Lcn/nubia/redmagickyi/achievement/adapter/AchievementAdapter;->selectedId:I

    return p0
.end method

.method static synthetic access$102(Lcn/nubia/redmagickyi/achievement/adapter/AchievementAdapter;I)I
    .locals 0

    .line 20
    iput p1, p0, Lcn/nubia/redmagickyi/achievement/adapter/AchievementAdapter;->selectedId:I

    return p1
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/achievement/adapter/AchievementAdapter;)Lcn/nubia/redmagickyi/achievement/adapter/AchievementAdapter$AchievementClickInterface;
    .locals 0

    .line 20
    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/adapter/AchievementAdapter;->clickInterface:Lcn/nubia/redmagickyi/achievement/adapter/AchievementAdapter$AchievementClickInterface;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 130
    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/adapter/AchievementAdapter;->list:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 20
    check-cast p1, Lcn/nubia/redmagickyi/achievement/viewholder/AchievementViewHolder;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/achievement/adapter/AchievementAdapter;->onBindViewHolder(Lcn/nubia/redmagickyi/achievement/viewholder/AchievementViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 20
    check-cast p1, Lcn/nubia/redmagickyi/achievement/viewholder/AchievementViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/achievement/adapter/AchievementAdapter;->onBindViewHolder(Lcn/nubia/redmagickyi/achievement/viewholder/AchievementViewHolder;ILjava/util/List;)V

    return-void
.end method

.method public onBindViewHolder(Lcn/nubia/redmagickyi/achievement/viewholder/AchievementViewHolder;I)V
    .locals 6

    .line 66
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/adapter/AchievementAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;

    .line 69
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->getReceiveState()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 70
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->getAchievementIconCompletePath()Ljava/lang/String;

    move-result-object v1

    .line 71
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->getCompleteColor()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 73
    :cond_0
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->getAchievementIconUndonePath()Ljava/lang/String;

    move-result-object v1

    .line 74
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->getUndoneColor()Ljava/lang/String;

    move-result-object v4

    .line 75
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->getAchievementLevel()I

    move-result v5

    if-gt v5, v3, :cond_1

    move v2, v3

    .line 76
    :cond_1
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->getReceiveState()I

    move-object v3, v4

    .line 79
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 80
    iget-object v4, p1, Lcn/nubia/redmagickyi/achievement/viewholder/AchievementViewHolder;->ivAchievementTaskIcon:Landroid/widget/ImageView;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    :cond_2
    if-eqz v2, :cond_3

    .line 83
    iget-object v1, p1, Lcn/nubia/redmagickyi/achievement/viewholder/AchievementViewHolder;->ivAchievementHeader:Landroid/widget/ImageView;

    iget-object v2, p0, Lcn/nubia/redmagickyi/achievement/adapter/AchievementAdapter;->mContext:Landroid/content/Context;

    sget v3, Lcn/nubia/redmagickyi/main/R$drawable;->svg_pic_yonghuchengjiu_achieve_nothaven:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 85
    :cond_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 86
    iget-object v1, p1, Lcn/nubia/redmagickyi/achievement/viewholder/AchievementViewHolder;->ivAchievementHeader:Landroid/widget/ImageView;

    iget-object v2, p0, Lcn/nubia/redmagickyi/achievement/adapter/AchievementAdapter;->mContext:Landroid/content/Context;

    sget v3, Lcn/nubia/redmagickyi/main/R$drawable;->svg_pic_yonghuchengjiu_achieve_nothaven:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 89
    :cond_4
    :try_start_0
    iget-object v1, p1, Lcn/nubia/redmagickyi/achievement/viewholder/AchievementViewHolder;->ivAchievementHeader:Landroid/widget/ImageView;

    iget-object v2, p0, Lcn/nubia/redmagickyi/achievement/adapter/AchievementAdapter;->mContext:Landroid/content/Context;

    sget v3, Lcn/nubia/redmagickyi/main/R$drawable;->svg_pic_yonghuchengjiu_achieve:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 91
    :catch_0
    iget-object v1, p1, Lcn/nubia/redmagickyi/achievement/viewholder/AchievementViewHolder;->ivAchievementHeader:Landroid/widget/ImageView;

    iget-object v2, p0, Lcn/nubia/redmagickyi/achievement/adapter/AchievementAdapter;->mContext:Landroid/content/Context;

    sget v3, Lcn/nubia/redmagickyi/main/R$drawable;->svg_pic_yonghuchengjiu_achieve_nothaven:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 95
    :goto_1
    iget-object v1, p1, Lcn/nubia/redmagickyi/achievement/viewholder/AchievementViewHolder;->progressBarAchievementTask:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->getProgressMax()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 96
    iget-object v1, p1, Lcn/nubia/redmagickyi/achievement/viewholder/AchievementViewHolder;->progressBarAchievementTask:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->getProgressNow()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 98
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->getAchievementLevel()I

    move-result v1

    if-nez v1, :cond_5

    .line 99
    iget-object v1, p1, Lcn/nubia/redmagickyi/achievement/viewholder/AchievementViewHolder;->tvAchievementTaskName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->getAchievementName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 101
    :cond_5
    iget-object v1, p1, Lcn/nubia/redmagickyi/achievement/viewholder/AchievementViewHolder;->tvAchievementTaskName:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->getAchievementName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/redmagickyi/achievement/adapter/AchievementAdapter;->mContext:Landroid/content/Context;

    sget v4, Lcn/nubia/redmagickyi/main/R$string;->achievement_name_level:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->getAchievementLevel()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    :goto_2
    iget-object p1, p1, Lcn/nubia/redmagickyi/achievement/viewholder/AchievementViewHolder;->ivMask:Landroid/widget/ImageView;

    new-instance v1, Lcn/nubia/redmagickyi/achievement/adapter/AchievementAdapter$1;

    invoke-direct {v1, p0, v0, p2}, Lcn/nubia/redmagickyi/achievement/adapter/AchievementAdapter$1;-><init>(Lcn/nubia/redmagickyi/achievement/adapter/AchievementAdapter;Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;I)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public onBindViewHolder(Lcn/nubia/redmagickyi/achievement/viewholder/AchievementViewHolder;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/redmagickyi/achievement/viewholder/AchievementViewHolder;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 59
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 60
    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/achievement/adapter/AchievementAdapter;->onBindViewHolder(Lcn/nubia/redmagickyi/achievement/viewholder/AchievementViewHolder;I)V

    :cond_0
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

    .line 20
    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/achievement/adapter/AchievementAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/nubia/redmagickyi/achievement/viewholder/AchievementViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/nubia/redmagickyi/achievement/viewholder/AchievementViewHolder;
    .locals 1

    .line 52
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget p2, Lcn/nubia/redmagickyi/main/R$layout;->achievement_badge_item:I

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 53
    new-instance p1, Lcn/nubia/redmagickyi/achievement/viewholder/AchievementViewHolder;

    invoke-direct {p1, p0}, Lcn/nubia/redmagickyi/achievement/viewholder/AchievementViewHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public setAchievementItemOnclick(Lcn/nubia/redmagickyi/achievement/adapter/AchievementAdapter$AchievementClickInterface;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcn/nubia/redmagickyi/achievement/adapter/AchievementAdapter;->clickInterface:Lcn/nubia/redmagickyi/achievement/adapter/AchievementAdapter$AchievementClickInterface;

    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;",
            ">;)V"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/adapter/AchievementAdapter;->list:Ljava/util/List;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/achievement/adapter/AchievementAdapter;->list:Ljava/util/List;

    .line 45
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/adapter/AchievementAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 46
    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/adapter/AchievementAdapter;->list:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.class public Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "WallPaperHubGroupAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter$ItemClickInterface;,
        Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter$ChildDecoration;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/BaseWallPaperHubGroupViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final ITEM_TYPE_DYNAMIC:I = 0x1

.field public static final ITEM_TYPE_INSPIRED:I = 0x3

.field public static final ITEM_TYPE_STATICS:I = 0x2


# instance fields
.field private clickInterface:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter$ItemClickInterface;

.field private dynamicData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/bean/DynamicBean;",
            ">;"
        }
    .end annotation
.end field

.field private inspiredData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/bean/InspiredBean;",
            ">;"
        }
    .end annotation
.end field

.field private isFromMore:Z

.field private mContext:Landroid/app/Activity;

.field private staticsData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/bean/StaticsBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;ZLjava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Z",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/bean/DynamicBean;",
            ">;",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/bean/StaticsBean;",
            ">;",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/bean/InspiredBean;",
            ">;)V"
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 63
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter;->mContext:Landroid/app/Activity;

    .line 64
    iput-boolean p2, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter;->isFromMore:Z

    .line 65
    iput-object p3, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter;->dynamicData:Ljava/util/List;

    .line 66
    iput-object p4, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter;->staticsData:Ljava/util/List;

    .line 67
    iput-object p5, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter;->inspiredData:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter$ItemClickInterface;
    .locals 0

    .line 37
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter;->clickInterface:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter$ItemClickInterface;

    return-object p0
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter;)Ljava/util/List;
    .locals 0

    .line 37
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter;->dynamicData:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter;)Ljava/util/List;
    .locals 0

    .line 37
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter;->staticsData:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter;)Landroid/app/Activity;
    .locals 0

    .line 37
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter;->mContext:Landroid/app/Activity;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 2

    .line 253
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter;->inspiredData:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x2

    .line 256
    :goto_1
    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter;->dynamicData:Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    add-int/lit8 v0, v0, -0x1

    .line 259
    :cond_3
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter;->staticsData:Ljava/util/List;

    if-eqz p0, :cond_4

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_5

    :cond_4
    add-int/lit8 v0, v0, -0x1

    :cond_5
    return v0
.end method

.method public getItemViewType(I)I
    .locals 4

    .line 221
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter;->inspiredData:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 222
    :goto_0
    iget-object v3, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter;->dynamicData:Ljava/util/List;

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    move v1, v2

    .line 223
    :cond_1
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter;->staticsData:Ljava/util/List;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    :cond_2
    const/4 p0, 0x2

    if-eqz p1, :cond_5

    if-eq p1, v2, :cond_3

    return p0

    :cond_3
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    return v2

    :cond_4
    return p0

    :cond_5
    if-eqz v0, :cond_6

    const/4 p0, 0x3

    return p0

    :cond_6
    if-eqz v1, :cond_7

    return v2

    :cond_7
    return p0
.end method

.method public notifyItemChanged()V
    .locals 3

    const/4 v0, 0x0

    .line 71
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 72
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter;->getItemViewType(I)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    goto :goto_1

    .line 75
    :cond_0
    const-string v1, "playing"

    invoke-virtual {p0, v0, v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter;->notifyItemChanged(ILjava/lang/Object;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
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

    .line 37
    check-cast p1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/BaseWallPaperHubGroupViewHolder;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter;->onBindViewHolder(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/BaseWallPaperHubGroupViewHolder;I)V

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

    .line 37
    check-cast p1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/BaseWallPaperHubGroupViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter;->onBindViewHolder(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/BaseWallPaperHubGroupViewHolder;ILjava/util/List;)V

    return-void
.end method

.method public onBindViewHolder(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/BaseWallPaperHubGroupViewHolder;I)V
    .locals 7

    .line 125
    iget-object v0, p1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/BaseWallPaperHubGroupViewHolder;->child_recyclerview:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    .line 126
    invoke-virtual {p0, p2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter;->getItemViewType(I)I

    move-result p2

    const/4 v1, 0x1

    .line 127
    const-string v2, ""

    const/4 v3, 0x0

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-eq p2, v1, :cond_6

    const/4 v1, 0x3

    if-eq p2, v1, :cond_2

    .line 191
    iget-object v1, p1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/BaseWallPaperHubGroupViewHolder;->title:Landroid/widget/TextView;

    sget v6, Lcn/nubia/redmagickyi/main/R$string;->wallpaper_hub_type_statics:I

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(I)V

    .line 192
    iget-object v1, p1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/BaseWallPaperHubGroupViewHolder;->cbSwitch:Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

    invoke-virtual {v1, v4}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->setVisibility(I)V

    if-nez v0, :cond_0

    .line 194
    iget-object v0, p1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/BaseWallPaperHubGroupViewHolder;->child_recyclerview:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter$ChildDecoration;

    invoke-direct {v1, p0, v3}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter$ChildDecoration;-><init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter;Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter$1;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 195
    new-instance v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/WallPaperHubStaticsAdapter;

    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter;->mContext:Landroid/app/Activity;

    iget-object v3, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter;->staticsData:Ljava/util/List;

    iget-object v6, p1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/BaseWallPaperHubGroupViewHolder;->child_recyclerview:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {v0, v1, v3, v6}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/WallPaperHubStaticsAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 196
    move-object v1, v0

    check-cast v1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/WallPaperHubStaticsAdapter;

    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter;->clickInterface:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter$ItemClickInterface;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/WallPaperHubStaticsAdapter;->setActionItemOnclick(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter$ItemClickInterface;)V

    .line 197
    iget-object v1, p1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/BaseWallPaperHubGroupViewHolder;->itemSize:[I

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/WallPaperHubStaticsAdapter;->setItemSize([I)V

    .line 198
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/BaseWallPaperHubGroupViewHolder;->getMaxItemCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/WallPaperHubStaticsAdapter;->setMaxItemCount(I)V

    .line 199
    iget-object v1, p1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/BaseWallPaperHubGroupViewHolder;->child_recyclerview:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_0

    .line 201
    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 203
    :goto_0
    iget-object v0, p1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/BaseWallPaperHubGroupViewHolder;->count:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter;->staticsData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter;->staticsData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/BaseWallPaperHubGroupViewHolder;->getMaxItemCount()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 205
    iget-object v0, p1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/BaseWallPaperHubGroupViewHolder;->seeMore:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 206
    iget-object v0, p1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/BaseWallPaperHubGroupViewHolder;->seeMore:Landroid/widget/TextView;

    new-instance v1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter$4;

    invoke-direct {v1, p0, p2, p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter$4;-><init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter;ILcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/BaseWallPaperHubGroupViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_4

    .line 213
    :cond_1
    iget-object p0, p1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/BaseWallPaperHubGroupViewHolder;->seeMore:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 129
    :cond_2
    iget-object p2, p1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/BaseWallPaperHubGroupViewHolder;->title:Landroid/widget/TextView;

    sget v1, Lcn/nubia/redmagickyi/main/R$string;->wallpaper_hub_type_inspired:I

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 130
    iget-object p2, p1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/BaseWallPaperHubGroupViewHolder;->cbSwitch:Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

    const-class v1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/InspiredFeature;

    invoke-static {v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;->getFeature(Ljava/lang/Class;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;

    move-result-object v1

    iget-object v6, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter;->mContext:Landroid/app/Activity;

    invoke-virtual {v1, v6}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;->HasSetUnityWallPaper(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {p2, v1}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->setChecked(Z)V

    .line 131
    iget-object p2, p1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/BaseWallPaperHubGroupViewHolder;->cbSwitch:Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

    invoke-virtual {p2, v5}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->setVisibility(I)V

    .line 132
    iget-object p2, p1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/BaseWallPaperHubGroupViewHolder;->cbSwitch:Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

    new-instance v1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter$1;

    invoke-direct {v1, p0, p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter$1;-><init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter;Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/BaseWallPaperHubGroupViewHolder;)V

    invoke-virtual {p2, v1}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    if-nez v0, :cond_4

    .line 142
    iget-object p2, p1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/BaseWallPaperHubGroupViewHolder;->child_recyclerview:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter$ChildDecoration;

    invoke-direct {v0, p0, v3}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter$ChildDecoration;-><init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter;Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter$1;)V

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 143
    iget-object p2, p1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/BaseWallPaperHubGroupViewHolder;->cbSwitch:Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->isChecked()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/skin/util/WallPaperSkinLocaleDataManager;->getWallPaperSkin(Landroid/content/Context;)I

    move-result v5

    .line 144
    :cond_3
    new-instance v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/adapter/WallPaperHubInspiredAdapter;

    iget-object p2, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter;->mContext:Landroid/app/Activity;

    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter;->inspiredData:Ljava/util/List;

    iget-object v3, p1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/BaseWallPaperHubGroupViewHolder;->child_recyclerview:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {v0, p2, v1, v3, v5}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/adapter/WallPaperHubInspiredAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 145
    move-object p2, v0

    check-cast p2, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/adapter/WallPaperHubInspiredAdapter;

    iget-object p2, p1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/BaseWallPaperHubGroupViewHolder;->itemSize:[I

    invoke-virtual {v0, p2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/adapter/WallPaperHubInspiredAdapter;->setItemSize([I)V

    .line 146
    iget-object p2, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter;->clickInterface:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter$ItemClickInterface;

    invoke-virtual {v0, p2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/adapter/WallPaperHubInspiredAdapter;->setActionItemOnclick(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter$ItemClickInterface;)V

    .line 147
    iget-object p2, p1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/BaseWallPaperHubGroupViewHolder;->child_recyclerview:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_2

    .line 149
    :cond_4
    move-object p2, v0

    check-cast p2, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/adapter/WallPaperHubInspiredAdapter;

    iget-object v1, p1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/BaseWallPaperHubGroupViewHolder;->cbSwitch:Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/skin/util/WallPaperSkinLocaleDataManager;->getWallPaperSkin(Landroid/content/Context;)I

    move-result v1

    goto :goto_1

    :cond_5
    move v1, v5

    :goto_1
    invoke-virtual {p2, v1, v5}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/adapter/WallPaperHubInspiredAdapter;->notifyCurrentSkinIdChanged(IZ)V

    .line 150
    invoke-virtual {p2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/adapter/WallPaperHubInspiredAdapter;->notifyDataSetChanged()V

    .line 153
    :goto_2
    iget-object p2, p1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/BaseWallPaperHubGroupViewHolder;->cbSwitch:Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

    new-instance v1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter$2;

    invoke-direct {v1, p0, v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter$2;-><init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {p2, v1}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 160
    iget-object p2, p1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/BaseWallPaperHubGroupViewHolder;->count:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter;->inspiredData:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    iget-object p0, p1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/BaseWallPaperHubGroupViewHolder;->seeMore:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 164
    :cond_6
    iget-object v1, p1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/BaseWallPaperHubGroupViewHolder;->title:Landroid/widget/TextView;

    sget v6, Lcn/nubia/redmagickyi/main/R$string;->wallpaper_hub_type_dynamic:I

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(I)V

    .line 165
    iget-object v1, p1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/BaseWallPaperHubGroupViewHolder;->cbSwitch:Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

    invoke-virtual {v1, v4}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->setVisibility(I)V

    if-nez v0, :cond_7

    .line 167
    iget-object v0, p1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/BaseWallPaperHubGroupViewHolder;->child_recyclerview:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter$ChildDecoration;

    invoke-direct {v1, p0, v3}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter$ChildDecoration;-><init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter;Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter$1;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 168
    new-instance v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/WallPaperHubDynamicAdapter;

    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter;->mContext:Landroid/app/Activity;

    iget-object v3, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter;->dynamicData:Ljava/util/List;

    iget-object v6, p1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/BaseWallPaperHubGroupViewHolder;->child_recyclerview:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {v0, v1, v3, v6}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/WallPaperHubDynamicAdapter;-><init>(Landroid/app/Activity;Ljava/util/List;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 169
    move-object v1, v0

    check-cast v1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/WallPaperHubDynamicAdapter;

    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter;->clickInterface:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter$ItemClickInterface;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/WallPaperHubDynamicAdapter;->setActionItemOnclick(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter$ItemClickInterface;)V

    .line 170
    iget-object v1, p1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/BaseWallPaperHubGroupViewHolder;->itemSize:[I

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/WallPaperHubDynamicAdapter;->setItemSize([I)V

    .line 171
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/BaseWallPaperHubGroupViewHolder;->getMaxItemCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/WallPaperHubDynamicAdapter;->setMaxItemCount(I)V

    .line 172
    iget-object v1, p1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/BaseWallPaperHubGroupViewHolder;->child_recyclerview:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_3

    .line 174
    :cond_7
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 176
    :goto_3
    iget-object v0, p1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/BaseWallPaperHubGroupViewHolder;->count:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter;->dynamicData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter;->dynamicData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/BaseWallPaperHubGroupViewHolder;->getMaxItemCount()I

    move-result v1

    if-le v0, v1, :cond_8

    .line 178
    iget-object v0, p1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/BaseWallPaperHubGroupViewHolder;->seeMore:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 179
    iget-object v0, p1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/BaseWallPaperHubGroupViewHolder;->seeMore:Landroid/widget/TextView;

    new-instance v1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter$3;

    invoke-direct {v1, p0, p2, p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter$3;-><init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter;ILcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/BaseWallPaperHubGroupViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4

    .line 186
    :cond_8
    iget-object p0, p1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/BaseWallPaperHubGroupViewHolder;->seeMore:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_4
    return-void
.end method

.method public onBindViewHolder(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/BaseWallPaperHubGroupViewHolder;ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/BaseWallPaperHubGroupViewHolder;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 99
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter;->onBindViewHolder(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/BaseWallPaperHubGroupViewHolder;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 102
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    .line 103
    const-string v1, "playing"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 104
    instance-of p3, p1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/BaseWallPaperHubGroupViewHolder;

    if-eqz p3, :cond_3

    .line 106
    iget-object p3, p1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/BaseWallPaperHubGroupViewHolder;->child_recyclerview:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p3

    .line 107
    invoke-virtual {p0, p2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter;->getItemViewType(I)I

    move-result p2

    const/4 v1, 0x3

    if-eq p2, v1, :cond_1

    goto :goto_0

    .line 110
    :cond_1
    iget-object p2, p1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/BaseWallPaperHubGroupViewHolder;->cbSwitch:Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

    const-class v1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/InspiredFeature;

    invoke-static {v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;->getFeature(Ljava/lang/Class;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;

    move-result-object v1

    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter;->mContext:Landroid/app/Activity;

    invoke-virtual {v1, p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;->HasSetUnityWallPaper(Landroid/content/Context;)Z

    move-result p0

    invoke-virtual {p2, p0}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->setChecked(Z)V

    if-eqz p3, :cond_3

    .line 112
    check-cast p3, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/adapter/WallPaperHubInspiredAdapter;

    iget-object p0, p1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/BaseWallPaperHubGroupViewHolder;->cbSwitch:Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/skin/util/WallPaperSkinLocaleDataManager;->getWallPaperSkin(Landroid/content/Context;)I

    move-result v0

    :cond_2
    const/4 p0, 0x1

    invoke-virtual {p3, v0, p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/adapter/WallPaperHubInspiredAdapter;->notifyCurrentSkinIdChanged(IZ)V

    :cond_3
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

    .line 37
    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/BaseWallPaperHubGroupViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/BaseWallPaperHubGroupViewHolder;
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    .line 93
    new-instance p2, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/viewholder/WallPaperHubStaticsGroupViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcn/nubia/redmagickyi/main/R$layout;->wallpaperhub_main_group_item:I

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-boolean p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter;->isFromMore:Z

    invoke-direct {p2, p1, p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/viewholder/WallPaperHubStaticsGroupViewHolder;-><init>(Landroid/view/View;Z)V

    return-object p2

    .line 90
    :cond_0
    new-instance p2, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/viewholder/WallPaperHubInspiredGroupViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcn/nubia/redmagickyi/main/R$layout;->wallpaperhub_main_group_item:I

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-boolean p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter;->isFromMore:Z

    invoke-direct {p2, p1, p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/viewholder/WallPaperHubInspiredGroupViewHolder;-><init>(Landroid/view/View;Z)V

    return-object p2

    .line 88
    :cond_1
    new-instance p2, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/viewholder/WallPaperHubDynamicGroupViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcn/nubia/redmagickyi/main/R$layout;->wallpaperhub_main_group_item:I

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-boolean p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter;->isFromMore:Z

    invoke-direct {p2, p1, p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/viewholder/WallPaperHubDynamicGroupViewHolder;-><init>(Landroid/view/View;Z)V

    return-object p2
.end method

.method public setChildActionItemOnclick(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter$ItemClickInterface;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter;->clickInterface:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter$ItemClickInterface;

    return-void
.end method

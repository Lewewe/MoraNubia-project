.class public Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/adapter/WallPaperHubInspiredAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "WallPaperHubInspiredAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/WallPaperHubViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private bgDrawables:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private clickInterface:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter$ItemClickInterface;

.field private currentSkinId:I

.field private datas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/bean/InspiredBean;",
            ">;"
        }
    .end annotation
.end field

.field private fgDrawables:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private itemSize:[I

.field private mContext:Landroid/content/Context;

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/bean/InspiredBean;",
            ">;",
            "Landroidx/recyclerview/widget/RecyclerView;",
            "I)V"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 36
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/adapter/WallPaperHubInspiredAdapter;->bgDrawables:Ljava/util/Map;

    .line 37
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/adapter/WallPaperHubInspiredAdapter;->fgDrawables:Ljava/util/Map;

    .line 48
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/adapter/WallPaperHubInspiredAdapter;->mContext:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/adapter/WallPaperHubInspiredAdapter;->datas:Ljava/util/List;

    .line 50
    iput-object p3, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/adapter/WallPaperHubInspiredAdapter;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 51
    iput p4, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/adapter/WallPaperHubInspiredAdapter;->currentSkinId:I

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/adapter/WallPaperHubInspiredAdapter;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter$ItemClickInterface;
    .locals 0

    .line 29
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/adapter/WallPaperHubInspiredAdapter;->clickInterface:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter$ItemClickInterface;

    return-object p0
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/adapter/WallPaperHubInspiredAdapter;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 29
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/adapter/WallPaperHubInspiredAdapter;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 142
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/adapter/WallPaperHubInspiredAdapter;->datas:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public notifyCurrentSkinIdChanged(IZ)V
    .locals 3

    .line 55
    iget v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/adapter/WallPaperHubInspiredAdapter;->currentSkinId:I

    if-eq v0, p1, :cond_2

    .line 57
    iput p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/adapter/WallPaperHubInspiredAdapter;->currentSkinId:I

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    .line 59
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/adapter/WallPaperHubInspiredAdapter;->getItemCount()I

    move-result v1

    if-ge p2, v1, :cond_2

    .line 60
    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/adapter/WallPaperHubInspiredAdapter;->datas:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/bean/InspiredBean;

    .line 61
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/bean/InspiredBean;->getSkinId()I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 62
    const-string v1, "unPlay"

    invoke-virtual {p0, p2, v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/adapter/WallPaperHubInspiredAdapter;->notifyItemChanged(ILjava/lang/Object;)V

    goto :goto_1

    .line 63
    :cond_0
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/bean/InspiredBean;->getSkinId()I

    move-result v1

    if-ne v1, p1, :cond_1

    .line 64
    const-string v1, "playing"

    invoke-virtual {p0, p2, v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/adapter/WallPaperHubInspiredAdapter;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_1
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return-void
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

    .line 29
    check-cast p1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/WallPaperHubViewHolder;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/adapter/WallPaperHubInspiredAdapter;->onBindViewHolder(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/WallPaperHubViewHolder;I)V

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

    .line 29
    check-cast p1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/WallPaperHubViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/adapter/WallPaperHubInspiredAdapter;->onBindViewHolder(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/WallPaperHubViewHolder;ILjava/util/List;)V

    return-void
.end method

.method public onBindViewHolder(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/WallPaperHubViewHolder;I)V
    .locals 6

    .line 95
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/adapter/WallPaperHubInspiredAdapter;->datas:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/bean/InspiredBean;

    .line 96
    iget-object v1, p1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/WallPaperHubViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/adapter/WallPaperHubInspiredAdapter$1;

    invoke-direct {v2, p0, v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/adapter/WallPaperHubInspiredAdapter$1;-><init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/adapter/WallPaperHubInspiredAdapter;Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/bean/InspiredBean;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-object v1, p1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/WallPaperHubViewHolder;->newAdd:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/bean/InspiredBean;->isNewAdd()Z

    move-result v2

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/bean/InspiredBean;->isLocked()Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 108
    iget-object v1, p1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/WallPaperHubViewHolder;->using:Landroid/view/View;

    iget v2, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/adapter/WallPaperHubInspiredAdapter;->currentSkinId:I

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/bean/InspiredBean;->getSkinId()I

    move-result v5

    if-ne v2, v5, :cond_1

    move v3, v4

    :cond_1
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 110
    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/adapter/WallPaperHubInspiredAdapter;->bgDrawables:Ljava/util/Map;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/bean/InspiredBean;->getSkinId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 111
    iget-object v1, p1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/WallPaperHubViewHolder;->bg:Landroid/widget/ImageView;

    iget-object v2, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/adapter/WallPaperHubInspiredAdapter;->bgDrawables:Ljava/util/Map;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/bean/InspiredBean;->getSkinId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 113
    :cond_2
    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/adapter/WallPaperHubInspiredAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/bean/InspiredBean;->getSkinId()I

    move-result v2

    invoke-static {v1, v2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/InspiredThumbnailManager;->getThumbnail(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_3

    .line 116
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    iget-object v2, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/adapter/WallPaperHubInspiredAdapter;->mContext:Landroid/content/Context;

    sget v3, Lcn/nubia/redmagickyi/main/R$color;->wallpaperhub_item_image_placeholder:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    goto :goto_1

    .line 117
    :cond_3
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/bean/InspiredBean;->isLocked()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 118
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-static {v2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/BitmapUtils;->getHuiduDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_1

    .line 120
    :cond_4
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    move-object v1, v2

    .line 122
    :goto_1
    iget-object v2, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/adapter/WallPaperHubInspiredAdapter;->bgDrawables:Ljava/util/Map;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/bean/InspiredBean;->getSkinId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object v2, p1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/WallPaperHubViewHolder;->bg:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 126
    :goto_2
    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/adapter/WallPaperHubInspiredAdapter;->fgDrawables:Ljava/util/Map;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/bean/InspiredBean;->getSkinId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 127
    iget-object p1, p1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/WallPaperHubViewHolder;->bg:Landroid/widget/ImageView;

    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/adapter/WallPaperHubInspiredAdapter;->fgDrawables:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 130
    :cond_5
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/bean/InspiredBean;->isLocked()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 131
    iget-object p2, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/adapter/WallPaperHubInspiredAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcn/nubia/redmagickyi/main/R$drawable;->svg_pic_mojizhuye_hudongluo_locked:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    goto :goto_3

    .line 133
    :cond_6
    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p2, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 135
    :goto_3
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/adapter/WallPaperHubInspiredAdapter;->fgDrawables:Ljava/util/Map;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/bean/InspiredBean;->getSkinId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object p0, p1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/WallPaperHubViewHolder;->bg:Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :goto_4
    return-void
.end method

.method public onBindViewHolder(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/WallPaperHubViewHolder;ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/WallPaperHubViewHolder;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 81
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/adapter/WallPaperHubInspiredAdapter;->onBindViewHolder(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/WallPaperHubViewHolder;I)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 84
    invoke-interface {p3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 85
    const-string p3, "playing"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 86
    iget-object p1, p1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/WallPaperHubViewHolder;->using:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 87
    :cond_1
    const-string p0, "unPlay"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 88
    iget-object p0, p1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/WallPaperHubViewHolder;->using:Landroid/view/View;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
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

    .line 29
    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/adapter/WallPaperHubInspiredAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/WallPaperHubViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/WallPaperHubViewHolder;
    .locals 2

    .line 74
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcn/nubia/redmagickyi/main/R$layout;->wallpaperhub_main_child_inspired_item:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 75
    new-instance p2, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/WallPaperHubViewHolder;

    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/adapter/WallPaperHubInspiredAdapter;->itemSize:[I

    invoke-direct {p2, p1, p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/WallPaperHubViewHolder;-><init>(Landroid/view/View;[I)V

    return-object p2
.end method

.method public setActionItemOnclick(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter$ItemClickInterface;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/adapter/WallPaperHubInspiredAdapter;->clickInterface:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter$ItemClickInterface;

    return-void
.end method

.method public setItemSize([I)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/adapter/WallPaperHubInspiredAdapter;->itemSize:[I

    return-void
.end method

.class public abstract Lcn/nubia/redmagickyi/skin/adapter/BaseSkinAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "BaseSkinAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/skin/adapter/BaseSkinAdapter$SkinItemClickInterface;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcn/nubia/redmagickyi/skin/viewholder/SkinViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field currentActivedSkinId:I

.field public itemClickInterface:Lcn/nubia/redmagickyi/skin/adapter/BaseSkinAdapter$SkinItemClickInterface;

.field list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field private preViewSkinId:I

.field private previewPos:I

.field private selectePos:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;",
            ">;)V"
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lcn/nubia/redmagickyi/skin/adapter/BaseSkinAdapter;->selectePos:I

    const/4 v1, -0x1

    .line 34
    iput v1, p0, Lcn/nubia/redmagickyi/skin/adapter/BaseSkinAdapter;->preViewSkinId:I

    .line 35
    iput v0, p0, Lcn/nubia/redmagickyi/skin/adapter/BaseSkinAdapter;->previewPos:I

    .line 71
    iput-object p1, p0, Lcn/nubia/redmagickyi/skin/adapter/BaseSkinAdapter;->mContext:Landroid/content/Context;

    .line 72
    invoke-virtual {p0, p2}, Lcn/nubia/redmagickyi/skin/adapter/BaseSkinAdapter;->setData(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public contain3DSkin()Z
    .locals 2

    .line 92
    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/adapter/BaseSkinAdapter;->list:Ljava/util/List;

    if-eqz p0, :cond_1

    .line 93
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;

    .line 94
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;->getSkinType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public abstract getCenterItemPosition()I
.end method

.method public getCurrentActivedSkinId()I
    .locals 0

    .line 193
    iget p0, p0, Lcn/nubia/redmagickyi/skin/adapter/BaseSkinAdapter;->currentActivedSkinId:I

    return p0
.end method

.method public getCurrentSelecetedSkin(I)Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;
    .locals 3

    .line 84
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/adapter/BaseSkinAdapter;->list:Ljava/util/List;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/skin/adapter/BaseSkinAdapter;->getRealItemCount()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/skin/adapter/BaseSkinAdapter;->getRealItemCount()I

    move-result p0

    rem-int/2addr p1, p0

    :goto_0
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;

    return-object p0
.end method

.method public getItemCount()I
    .locals 0

    .line 201
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/skin/adapter/BaseSkinAdapter;->getRealItemCount()I

    move-result p0

    return p0
.end method

.method public getPreViewSkinId()I
    .locals 0

    .line 38
    iget p0, p0, Lcn/nubia/redmagickyi/skin/adapter/BaseSkinAdapter;->preViewSkinId:I

    return p0
.end method

.method public getPreviewPos()I
    .locals 0

    .line 46
    iget p0, p0, Lcn/nubia/redmagickyi/skin/adapter/BaseSkinAdapter;->previewPos:I

    return p0
.end method

.method public getRealItemCount()I
    .locals 0

    .line 205
    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/adapter/BaseSkinAdapter;->list:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getSelectePos()I
    .locals 0

    .line 64
    iget p0, p0, Lcn/nubia/redmagickyi/skin/adapter/BaseSkinAdapter;->selectePos:I

    return p0
.end method

.method public notifyItemChanged(II)V
    .locals 1

    .line 209
    const-string v0, "playing"

    invoke-virtual {p0, p1, v0}, Lcn/nubia/redmagickyi/skin/adapter/BaseSkinAdapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 210
    invoke-virtual {p0, p2, v0}, Lcn/nubia/redmagickyi/skin/adapter/BaseSkinAdapter;->notifyItemChanged(ILjava/lang/Object;)V

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

    .line 29
    check-cast p1, Lcn/nubia/redmagickyi/skin/viewholder/SkinViewHolder;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/skin/adapter/BaseSkinAdapter;->onBindViewHolder(Lcn/nubia/redmagickyi/skin/viewholder/SkinViewHolder;I)V

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
    check-cast p1, Lcn/nubia/redmagickyi/skin/viewholder/SkinViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/skin/adapter/BaseSkinAdapter;->onBindViewHolder(Lcn/nubia/redmagickyi/skin/viewholder/SkinViewHolder;ILjava/util/List;)V

    return-void
.end method

.method public onBindViewHolder(Lcn/nubia/redmagickyi/skin/viewholder/SkinViewHolder;I)V
    .locals 7

    .line 134
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/skin/adapter/BaseSkinAdapter;->getRealItemCount()I

    move-result v0

    rem-int v0, p2, v0

    .line 135
    iget-object v1, p0, Lcn/nubia/redmagickyi/skin/adapter/BaseSkinAdapter;->list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;

    .line 137
    iget-object v1, p1, Lcn/nubia/redmagickyi/skin/viewholder/SkinViewHolder;->item2D:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;->getSkinType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    sget v2, Lcn/nubia/redmagickyi/main/R$string;->change_skin_item_2D:I

    goto :goto_0

    :cond_0
    sget v2, Lcn/nubia/redmagickyi/main/R$string;->change_skin_item_3D:I

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 138
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;->getSkinId()I

    move-result v1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/skin/adapter/BaseSkinAdapter;->getPreViewSkinId()I

    move-result v2

    const/4 v4, 0x0

    if-ne v1, v2, :cond_1

    .line 139
    iget-object v1, p1, Lcn/nubia/redmagickyi/skin/viewholder/SkinViewHolder;->ivThumbnail:Lcn/nubia/redmagickyi/skin/view/MaskImage;

    invoke-virtual {v1, v3}, Lcn/nubia/redmagickyi/skin/view/MaskImage;->setSelect(Z)V

    .line 140
    iget-object v1, p1, Lcn/nubia/redmagickyi/skin/viewholder/SkinViewHolder;->imgBg:Landroid/widget/ImageView;

    iget-object v2, p0, Lcn/nubia/redmagickyi/skin/adapter/BaseSkinAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v5, Lcn/nubia/redmagickyi/main/R$mipmap;->skin_item_select:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 142
    :cond_1
    iget-object v1, p1, Lcn/nubia/redmagickyi/skin/viewholder/SkinViewHolder;->ivThumbnail:Lcn/nubia/redmagickyi/skin/view/MaskImage;

    invoke-virtual {v1, v4}, Lcn/nubia/redmagickyi/skin/view/MaskImage;->setSelect(Z)V

    .line 143
    iget-object v1, p1, Lcn/nubia/redmagickyi/skin/viewholder/SkinViewHolder;->imgBg:Landroid/widget/ImageView;

    iget-object v2, p0, Lcn/nubia/redmagickyi/skin/adapter/BaseSkinAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v5, Lcn/nubia/redmagickyi/main/R$mipmap;->skin_item_normal:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 145
    :goto_1
    iget-object v1, p1, Lcn/nubia/redmagickyi/skin/viewholder/SkinViewHolder;->ivThumbnail:Lcn/nubia/redmagickyi/skin/view/MaskImage;

    invoke-virtual {v1, v4}, Lcn/nubia/redmagickyi/skin/view/MaskImage;->setGrayMode(Z)V

    .line 146
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;->getReceiveState()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v3, :cond_2

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;->getExchangeType()I

    move-result v1

    if-nez v1, :cond_2

    .line 148
    iget-object v1, p1, Lcn/nubia/redmagickyi/skin/viewholder/SkinViewHolder;->lock:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 149
    iget-object v1, p1, Lcn/nubia/redmagickyi/skin/viewholder/SkinViewHolder;->ivThumbnail:Lcn/nubia/redmagickyi/skin/view/MaskImage;

    invoke-virtual {v1, v4}, Lcn/nubia/redmagickyi/skin/view/MaskImage;->setGrayMode(Z)V

    goto :goto_2

    .line 151
    :cond_2
    iget-object v1, p1, Lcn/nubia/redmagickyi/skin/viewholder/SkinViewHolder;->lock:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 152
    iget-object v1, p1, Lcn/nubia/redmagickyi/skin/viewholder/SkinViewHolder;->ivThumbnail:Lcn/nubia/redmagickyi/skin/view/MaskImage;

    invoke-virtual {v1, v3}, Lcn/nubia/redmagickyi/skin/view/MaskImage;->setGrayMode(Z)V

    .line 155
    :goto_2
    invoke-static {}, Lcn/nubia/redmagickyi/skin/util/SkinLocaleDataManager;->isOfflineMode()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 156
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v5, Lcn/nubia/redmagickyi/skin/util/SkinConstant;->offlineSkinMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;->getSkinId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOffline;

    invoke-virtual {v5}, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOffline;->getThumbnailIconRes()I

    move-result v5

    invoke-static {v1, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_3

    .line 158
    :cond_3
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;->getThumbnailPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3}, Lcn/nubia/redmagickyi/util/DensityCustomer;->initBitmapOptionsDensity(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_3
    if-eqz v1, :cond_4

    .line 161
    iget-object v3, p1, Lcn/nubia/redmagickyi/skin/viewholder/SkinViewHolder;->ivThumbnail:Lcn/nubia/redmagickyi/skin/view/MaskImage;

    invoke-virtual {v3, v1}, Lcn/nubia/redmagickyi/skin/view/MaskImage;->setOriginal(Landroid/graphics/Bitmap;)V

    goto :goto_4

    .line 163
    :cond_4
    iget-object v1, p1, Lcn/nubia/redmagickyi/skin/viewholder/SkinViewHolder;->ivThumbnail:Lcn/nubia/redmagickyi/skin/view/MaskImage;

    iget-object v5, p0, Lcn/nubia/redmagickyi/skin/adapter/BaseSkinAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcn/nubia/redmagickyi/main/R$mipmap;->skin_default:I

    invoke-static {v3}, Lcn/nubia/redmagickyi/util/DensityCustomer;->initBitmapOptionsDensity(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v3

    invoke-static {v5, v6, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcn/nubia/redmagickyi/skin/view/MaskImage;->setOriginal(Landroid/graphics/Bitmap;)V

    .line 167
    :goto_4
    iget-object v1, p1, Lcn/nubia/redmagickyi/skin/viewholder/SkinViewHolder;->usedLayout:Landroid/widget/TextView;

    iget v3, p0, Lcn/nubia/redmagickyi/skin/adapter/BaseSkinAdapter;->currentActivedSkinId:I

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;->getSkinId()I

    move-result v0

    if-ne v3, v0, :cond_5

    goto :goto_5

    :cond_5
    move v4, v2

    :goto_5
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 171
    iget-object p1, p1, Lcn/nubia/redmagickyi/skin/viewholder/SkinViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcn/nubia/redmagickyi/skin/adapter/BaseSkinAdapter$1;

    invoke-direct {v0, p0, p2}, Lcn/nubia/redmagickyi/skin/adapter/BaseSkinAdapter$1;-><init>(Lcn/nubia/redmagickyi/skin/adapter/BaseSkinAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onBindViewHolder(Lcn/nubia/redmagickyi/skin/viewholder/SkinViewHolder;ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/redmagickyi/skin/viewholder/SkinViewHolder;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 113
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/skin/adapter/BaseSkinAdapter;->onBindViewHolder(Lcn/nubia/redmagickyi/skin/viewholder/SkinViewHolder;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 116
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    .line 117
    const-string v0, "playing"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 118
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/skin/adapter/BaseSkinAdapter;->getSelectePos()I

    move-result p3

    if-ne p2, p3, :cond_2

    .line 119
    invoke-virtual {p0, p2}, Lcn/nubia/redmagickyi/skin/adapter/BaseSkinAdapter;->getCurrentSelecetedSkin(I)Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 120
    invoke-virtual {p2}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;->getSkinId()I

    move-result p2

    iget p0, p0, Lcn/nubia/redmagickyi/skin/adapter/BaseSkinAdapter;->currentActivedSkinId:I

    if-ne p2, p0, :cond_1

    .line 121
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/skin/viewholder/SkinViewHolder;->stopLightAnim()V

    goto :goto_0

    .line 123
    :cond_1
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/skin/viewholder/SkinViewHolder;->startLightAnim()V

    goto :goto_0

    .line 126
    :cond_2
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/skin/viewholder/SkinViewHolder;->stopLightAnim()V

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

    .line 29
    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/skin/adapter/BaseSkinAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/nubia/redmagickyi/skin/viewholder/SkinViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/nubia/redmagickyi/skin/viewholder/SkinViewHolder;
    .locals 1

    .line 106
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget p2, Lcn/nubia/redmagickyi/main/R$layout;->item_change_skin:I

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 107
    new-instance p1, Lcn/nubia/redmagickyi/skin/viewholder/SkinViewHolder;

    invoke-direct {p1, p0}, Lcn/nubia/redmagickyi/skin/viewholder/SkinViewHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public setCurrentActivedSkinId(I)V
    .locals 0

    .line 184
    iput p1, p0, Lcn/nubia/redmagickyi/skin/adapter/BaseSkinAdapter;->currentActivedSkinId:I

    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;",
            ">;)V"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/adapter/BaseSkinAdapter;->list:Ljava/util/List;

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/skin/adapter/BaseSkinAdapter;->list:Ljava/util/List;

    .line 79
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/adapter/BaseSkinAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 80
    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/adapter/BaseSkinAdapter;->list:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public setOnSkinItemClickListener(Lcn/nubia/redmagickyi/skin/adapter/BaseSkinAdapter$SkinItemClickInterface;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcn/nubia/redmagickyi/skin/adapter/BaseSkinAdapter;->itemClickInterface:Lcn/nubia/redmagickyi/skin/adapter/BaseSkinAdapter$SkinItemClickInterface;

    return-void
.end method

.method public setPreViewSkinId(I)V
    .locals 0

    .line 42
    iput p1, p0, Lcn/nubia/redmagickyi/skin/adapter/BaseSkinAdapter;->preViewSkinId:I

    return-void
.end method

.method public setPreviewPos(I)V
    .locals 0

    .line 50
    iput p1, p0, Lcn/nubia/redmagickyi/skin/adapter/BaseSkinAdapter;->previewPos:I

    return-void
.end method

.method public setSelectePos(I)V
    .locals 0

    .line 68
    iput p1, p0, Lcn/nubia/redmagickyi/skin/adapter/BaseSkinAdapter;->selectePos:I

    return-void
.end method

.class public Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ARImageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$ClickInterface;,
        Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final NAMES_LENGHT:I = 0x3

.field private static final PARENT_DIR:Ljava/lang/String; = "LiveIcon"

.field private static final RED_SPOT_UNMARK:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ARImageAdapter"


# instance fields
.field private clickInterface:Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$ClickInterface;

.field private datas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;",
            ">;"
        }
    .end annotation
.end field

.field private isLiveMenu:Z

.field private isMoreImagesDialog:Z

.field isQuick:Z

.field private mContext:Landroid/content/Context;

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/content/Context;ZLandroidx/recyclerview/widget/RecyclerView;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;",
            ">;",
            "Landroid/content/Context;",
            "Z",
            "Landroidx/recyclerview/widget/RecyclerView;",
            "Z)V"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;->isMoreImagesDialog:Z

    .line 50
    iput-object p1, p0, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;->datas:Ljava/util/List;

    .line 51
    iput-object p2, p0, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;->mContext:Landroid/content/Context;

    .line 52
    iput-boolean p3, p0, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;->isQuick:Z

    .line 53
    iput-object p4, p0, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 54
    iput-boolean p5, p0, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;->isLiveMenu:Z

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;)Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$ClickInterface;
    .locals 0

    .line 29
    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;->clickInterface:Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$ClickInterface;

    return-object p0
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 29
    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;)Ljava/util/List;
    .locals 0

    .line 29
    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;->datas:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public getDatas()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;",
            ">;"
        }
    .end annotation

    .line 58
    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;->datas:Ljava/util/List;

    return-object p0
.end method

.method public getItemCount()I
    .locals 1

    .line 207
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;->isQuick:Z

    if-eqz v0, :cond_0

    .line 209
    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;->datas:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0

    .line 211
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;->datas:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItemNameByType(Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;)Ljava/lang/String;
    .locals 3

    .line 234
    const-string v0, ""

    if-nez p1, :cond_0

    return-object v0

    .line 237
    :cond_0
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->getType()Ljava/lang/String;

    move-result-object v1

    .line 238
    const-string v2, "camera"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 239
    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcn/nubia/redmagickyi/main/R$string;->image_name_camera:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 240
    :cond_1
    const-string v2, "image_half"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 241
    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcn/nubia/redmagickyi/main/R$string;->image_name_half:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 242
    :cond_2
    const-string v2, "image_2d_sleep"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 243
    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcn/nubia/redmagickyi/main/R$string;->chnage_skin_item_name_offline_xrmj:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 244
    :cond_3
    const-string v2, "image_2d_mecha"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 245
    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcn/nubia/redmagickyi/main/R$string;->chnage_skin_item_name_offline_jjsn:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 246
    :cond_4
    const-string v2, "image_2d_primery"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 247
    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcn/nubia/redmagickyi/main/R$string;->chnage_skin_item_name_offline_default:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 248
    :cond_5
    const-string v2, "image_face"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 249
    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcn/nubia/redmagickyi/main/R$string;->image_name_face:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 251
    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->getItemName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isMoreImagesDialog()Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;->isMoreImagesDialog:Z

    return p0
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
    check-cast p1, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;->onBindViewHolder(Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$ViewHolder;I)V

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
    check-cast p1, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;->onBindViewHolder(Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$ViewHolder;ILjava/util/List;)V

    return-void
.end method

.method public onBindViewHolder(Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$ViewHolder;I)V
    .locals 10

    .line 87
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;->datas:Ljava/util/List;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_a

    .line 88
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;->datas:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;

    .line 89
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;->isMoreImagesDialog()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->getFlag()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 90
    invoke-static {p1}, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$ViewHolder;->access$000(Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 92
    :cond_0
    invoke-static {p1}, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$ViewHolder;->access$000(Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 94
    :goto_0
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->getThumbnail_path()Ljava/lang/String;

    move-result-object v1

    const-string v3, "\\|"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 95
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->getThumbnail_path()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    array-length v3, v1

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;->mContext:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, v1, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "LiveIcon"

    invoke-static {v3, v6, v4}, Lcn/nubia/redmagickyi/unity/util/ResUtil;->getUnityResBitmap(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 96
    invoke-static {p1}, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$ViewHolder;->access$100(Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v3

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v7, p0, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-object v8, p0, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;->mContext:Landroid/content/Context;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, v1, v2

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v6, v1}, Lcn/nubia/redmagickyi/unity/util/ResUtil;->getUnityResBitmap(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v4, v7, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 98
    :cond_1
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v3, "camera"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 99
    invoke-static {p1}, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$ViewHolder;->access$100(Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    sget v3, Lcn/nubia/redmagickyi/main/R$drawable;->ar_camera_item_selector:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 100
    :cond_2
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v3, "image_half"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 101
    invoke-static {p1}, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$ViewHolder;->access$100(Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    sget v3, Lcn/nubia/redmagickyi/main/R$drawable;->ar_image_half_selector:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 102
    :cond_3
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v3, "image_2d_sleep"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 103
    invoke-static {p1}, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$ViewHolder;->access$100(Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    sget v3, Lcn/nubia/redmagickyi/main/R$drawable;->ar_image_2d_sleep_wear_selector:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 104
    :cond_4
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v3, "image_2d_mecha"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 105
    invoke-static {p1}, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$ViewHolder;->access$100(Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    sget v3, Lcn/nubia/redmagickyi/main/R$drawable;->ar_image_2d_mecha_selector:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 106
    :cond_5
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v3, "image_2d_primery"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 107
    invoke-static {p1}, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$ViewHolder;->access$100(Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    sget v3, Lcn/nubia/redmagickyi/main/R$drawable;->ar_image_2d_primery_selector:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 109
    :cond_6
    invoke-static {p1}, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$ViewHolder;->access$100(Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    sget v3, Lcn/nubia/redmagickyi/main/R$drawable;->ar_image_face_selector:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 112
    :goto_1
    iget-boolean v1, p0, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;->isLiveMenu:Z

    if-nez v1, :cond_8

    .line 113
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isInternalApp()Z

    move-result v1

    const-string v3, ""

    if-eqz v1, :cond_7

    .line 114
    iget-object v1, p1, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$ViewHolder;->name:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;->getItemNameByType(Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 116
    :cond_7
    iget-object v1, p1, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$ViewHolder;->name:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->getItemName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    :cond_8
    :goto_2
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->isHasCheck()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 120
    iget-object v0, p1, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$ViewHolder;->image_select:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 122
    :cond_9
    iget-object v0, p1, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$ViewHolder;->image_select:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 124
    :goto_3
    iget-object v0, p1, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$1;

    invoke-direct {v1, p0, p2}, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$1;-><init>(Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 183
    iget-object v0, p1, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$2;

    invoke-direct {v1, p0, p2, p1}, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$2;-><init>(Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;ILcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$ViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_a
    return-void
.end method

.method public onBindViewHolder(Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$ViewHolder;ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$ViewHolder;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 70
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;->onBindViewHolder(Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$ViewHolder;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 73
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    .line 74
    const-string v1, "playing"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 75
    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;->datas:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;

    .line 76
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->isHasCheck()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 77
    iget-object p0, p1, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$ViewHolder;->image_select:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 79
    :cond_1
    iget-object p0, p1, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$ViewHolder;->image_select:Landroid/widget/TextView;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

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
    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$ViewHolder;
    .locals 3

    .line 64
    iget-boolean p2, p0, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;->isLiveMenu:Z

    if-eqz p2, :cond_0

    sget p2, Lcn/nubia/redmagickyi/main/R$layout;->ar_image_item_menu:I

    goto :goto_0

    :cond_0
    sget p2, Lcn/nubia/redmagickyi/main/R$layout;->ar_image_item:I

    .line 65
    :goto_0
    new-instance v0, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$ViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p2, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$ViewHolder;-><init>(Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;Landroid/view/View;)V

    return-object v0
.end method

.method public setClickInterface(Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$ClickInterface;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;->clickInterface:Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$ClickInterface;

    return-void
.end method

.method public setMoreImagesDialog(Z)V
    .locals 0

    .line 46
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;->isMoreImagesDialog:Z

    return-void
.end method

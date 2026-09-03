.class public Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/WallPaperHubStaticsAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "WallPaperHubStaticsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/WallPaperHubViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private clickInterface:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter$ItemClickInterface;

.field private datas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/bean/StaticsBean;",
            ">;"
        }
    .end annotation
.end field

.field private downloadController:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/DownloadController;

.field private drawables:Ljava/util/Map;
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

.field private maxItemCount:I

.field private options:Lcom/bumptech/glide/request/RequestOptions;

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/bean/StaticsBean;",
            ">;",
            "Landroidx/recyclerview/widget/RecyclerView;",
            ")V"
        }
    .end annotation

    .line 63
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/WallPaperHubStaticsAdapter;->options:Lcom/bumptech/glide/request/RequestOptions;

    .line 51
    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/WallPaperHubStaticsAdapter;->downloadController:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/DownloadController;

    .line 52
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/WallPaperHubStaticsAdapter;->drawables:Ljava/util/Map;

    .line 64
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/WallPaperHubStaticsAdapter;->mContext:Landroid/content/Context;

    .line 65
    iput-object p2, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/WallPaperHubStaticsAdapter;->datas:Ljava/util/List;

    .line 66
    iput-object p3, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/WallPaperHubStaticsAdapter;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 67
    new-instance p2, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/DownloadController;

    invoke-direct {p2, p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/DownloadController;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/WallPaperHubStaticsAdapter;->downloadController:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/DownloadController;

    .line 68
    new-instance p1, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {p1}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    iget-object p3, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/WallPaperHubStaticsAdapter;->mContext:Landroid/content/Context;

    sget v0, Lcn/nubia/redmagickyi/main/R$color;->wallpaperhub_item_image_placeholder:I

    .line 69
    invoke-virtual {p3, v0}, Landroid/content/Context;->getColor(I)I

    move-result p3

    invoke-direct {p2, p3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/request/RequestOptions;

    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    iget-object p3, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/WallPaperHubStaticsAdapter;->mContext:Landroid/content/Context;

    sget v0, Lcn/nubia/redmagickyi/main/R$color;->wallpaperhub_item_image_placeholder:I

    .line 70
    invoke-virtual {p3, v0}, Landroid/content/Context;->getColor(I)I

    move-result p3

    invoke-direct {p2, p3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/request/RequestOptions;->error(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/request/RequestOptions;

    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/WallPaperHubStaticsAdapter;->options:Lcom/bumptech/glide/request/RequestOptions;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/WallPaperHubStaticsAdapter;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter$ItemClickInterface;
    .locals 0

    .line 44
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/WallPaperHubStaticsAdapter;->clickInterface:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter$ItemClickInterface;

    return-object p0
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/WallPaperHubStaticsAdapter;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 44
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/WallPaperHubStaticsAdapter;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/WallPaperHubStaticsAdapter;)Ljava/util/Map;
    .locals 0

    .line 44
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/WallPaperHubStaticsAdapter;->drawables:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 178
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/WallPaperHubStaticsAdapter;->datas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/WallPaperHubStaticsAdapter;->maxItemCount:I

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

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

    .line 44
    check-cast p1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/WallPaperHubViewHolder;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/WallPaperHubStaticsAdapter;->onBindViewHolder(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/WallPaperHubViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/WallPaperHubViewHolder;I)V
    .locals 8

    .line 83
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/WallPaperHubStaticsAdapter;->datas:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/bean/StaticsBean;

    .line 84
    iget-object v1, p1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/WallPaperHubViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/WallPaperHubStaticsAdapter$1;

    invoke-direct {v2, p0, v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/WallPaperHubStaticsAdapter$1;-><init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/WallPaperHubStaticsAdapter;Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/bean/StaticsBean;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iget-object v1, p1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/WallPaperHubViewHolder;->newAdd:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/bean/StaticsBean;->isNewAdd()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 94
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/bean/StaticsBean;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v1

    .line 95
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v4, 0x0

    if-nez v2, :cond_6

    .line 96
    const-string v2, "Assets://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_3

    .line 97
    :try_start_0
    iget-object p2, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/WallPaperHubStaticsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p2

    const-string v5, ""

    invoke-virtual {v1, v2, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :try_start_1
    invoke-static {v4}, Lcn/nubia/redmagickyi/util/DensityCustomer;->initBitmapOptionsDensity(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    invoke-static {p2, v4, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 100
    iget-object v2, p1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/WallPaperHubViewHolder;->bg:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 102
    :try_start_2
    invoke-static {}, Lcn/nubia/redmagickyi/util/imageloader/NeoImageLoader;->getInstance()Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;

    move-result-object v1

    iget-object v2, p1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/WallPaperHubViewHolder;->bg:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;->cancelDisplayTask(Landroid/view/View;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v3, v6

    goto :goto_1

    :catchall_0
    move-exception v1

    move v3, v6

    goto :goto_2

    :cond_1
    :goto_1
    if-eqz p2, :cond_6

    .line 104
    :try_start_3
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_5

    :catchall_1
    move-exception v1

    :goto_2
    if-eqz p2, :cond_2

    .line 97
    :try_start_4
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p2

    :try_start_5
    invoke-virtual {v1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_3
    throw v1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p2

    .line 105
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 108
    :cond_3
    iget-object v2, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/WallPaperHubStaticsAdapter;->drawables:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 109
    iget-object v1, p1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/WallPaperHubViewHolder;->bg:Landroid/widget/ImageView;

    iget-object v2, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/WallPaperHubStaticsAdapter;->drawables:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 111
    :cond_4
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isPadApp()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 112
    invoke-static {}, Lcn/nubia/redmagickyi/util/imageloader/NeoImageLoader;->getInstance()Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/WallPaperHubStaticsAdapter;->options:Lcom/bumptech/glide/request/RequestOptions;

    new-instance v5, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/WallPaperHubStaticsAdapter$2;

    invoke-direct {v5, p0, p1, p2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/WallPaperHubStaticsAdapter$2;-><init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/WallPaperHubStaticsAdapter;Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/WallPaperHubViewHolder;I)V

    invoke-virtual {v2, v1, v3, v5}, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;->loadImage(Ljava/lang/String;Lcom/bumptech/glide/request/RequestOptions;Lcn/nubia/redmagickyi/util/imageloader/ImageLoadingListener;)V

    goto :goto_4

    .line 146
    :cond_5
    invoke-static {}, Lcn/nubia/redmagickyi/util/imageloader/NeoImageLoader;->getInstance()Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;

    move-result-object v2

    iget-object v3, p1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/WallPaperHubViewHolder;->bg:Landroid/widget/ImageView;

    iget-object v5, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/WallPaperHubStaticsAdapter;->options:Lcom/bumptech/glide/request/RequestOptions;

    new-instance v7, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/WallPaperHubStaticsAdapter$3;

    invoke-direct {v7, p0, p2, p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/WallPaperHubStaticsAdapter$3;-><init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/WallPaperHubStaticsAdapter;ILcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/WallPaperHubViewHolder;)V

    invoke-virtual {v2, v1, v3, v5, v7}, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/bumptech/glide/request/RequestOptions;Lcn/nubia/redmagickyi/util/imageloader/ImageLoadingListener;)V

    :goto_4
    move v3, v6

    :cond_6
    :goto_5
    if-nez v3, :cond_7

    .line 167
    iget-object p1, p1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/WallPaperHubViewHolder;->bg:Landroid/widget/ImageView;

    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/WallPaperHubStaticsAdapter;->mContext:Landroid/content/Context;

    sget v2, Lcn/nubia/redmagickyi/main/R$color;->wallpaperhub_item_image_placeholder:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-direct {p2, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 170
    :cond_7
    new-instance p1, Ljava/io/File;

    iget-object p2, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/WallPaperHubStaticsAdapter;->downloadController:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/DownloadController;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/bean/StaticsBean;->getFileUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/bean/StaticsBean;->getFileMd5()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/DownloadController;->getDownLoadFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/WallPaperHubStaticsAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcn/nubia/redmagickyi/view/videoplayer/util/NetworkUtil;->isMobileNetworkConnected(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_8

    sget-boolean p1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;->isFirstTimePlay:Z

    if-nez p1, :cond_9

    .line 172
    :cond_8
    invoke-static {}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/manager/StaticsPreviewImageLoader;->getInstance()Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;

    move-result-object p1

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/bean/StaticsBean;->getFileUrl()Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/WallPaperHubStaticsAdapter;->options:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {p1, p2, p0, v4}, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;->loadImage(Ljava/lang/String;Lcom/bumptech/glide/request/RequestOptions;Lcn/nubia/redmagickyi/util/imageloader/ImageLoadingListener;)V

    :cond_9
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

    .line 44
    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/WallPaperHubStaticsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/WallPaperHubViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/WallPaperHubViewHolder;
    .locals 2

    .line 76
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcn/nubia/redmagickyi/main/R$layout;->wallpaperhub_main_child_default_item:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 77
    new-instance p2, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/WallPaperHubViewHolder;

    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/WallPaperHubStaticsAdapter;->itemSize:[I

    invoke-direct {p2, p1, p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/WallPaperHubViewHolder;-><init>(Landroid/view/View;[I)V

    return-object p2
.end method

.method public setActionItemOnclick(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter$ItemClickInterface;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/WallPaperHubStaticsAdapter;->clickInterface:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter$ItemClickInterface;

    return-void
.end method

.method public setItemSize([I)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/WallPaperHubStaticsAdapter;->itemSize:[I

    return-void
.end method

.method public setMaxItemCount(I)V
    .locals 0

    .line 182
    iput p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/WallPaperHubStaticsAdapter;->maxItemCount:I

    return-void
.end method

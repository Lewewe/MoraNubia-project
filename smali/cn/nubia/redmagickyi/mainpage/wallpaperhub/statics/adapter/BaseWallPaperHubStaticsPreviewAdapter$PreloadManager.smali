.class Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter$PreloadManager;
.super Ljava/lang/Object;
.source "BaseWallPaperHubStaticsPreviewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreloadManager"
.end annotation


# static fields
.field private static final PRELOAD_COUNT:I = 0x6


# instance fields
.field private final options:Lcom/bumptech/glide/request/RequestOptions;

.field final synthetic this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter;


# direct methods
.method private constructor <init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 157
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter$PreloadManager;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    new-instance p1, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {p1}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v1, -0x1000000

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 161
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/request/RequestOptions;

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 162
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/request/RequestOptions;->error(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/request/RequestOptions;

    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter$PreloadManager;->options:Lcom/bumptech/glide/request/RequestOptions;

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter;Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter$1;)V
    .locals 0

    .line 157
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter$PreloadManager;-><init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter;)V

    return-void
.end method

.method static synthetic access$700(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter$PreloadManager;Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter$ViewHolder;)Z
    .locals 0

    .line 157
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter$PreloadManager;->loadImageResource(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter$ViewHolder;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter$PreloadManager;I)V
    .locals 0

    .line 157
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter$PreloadManager;->preloadResource(I)V

    return-void
.end method

.method private loadImageResource(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter$ViewHolder;)Z
    .locals 2

    .line 196
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter$PreloadManager;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter;->getPlayUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 197
    invoke-static {p2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter;->isFileUri(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 199
    invoke-static {}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/manager/StaticsPreviewImageLoader;->getInstance()Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;

    move-result-object p4

    invoke-virtual {p4, p3}, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;->cancelDisplayTask(Landroid/view/View;)V

    .line 200
    new-instance p4, Ljava/io/File;

    invoke-direct {p4, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 201
    invoke-static {}, Lcn/nubia/redmagickyi/util/imageloader/NeoImageLoader;->getInstance()Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;->cancelDisplayTask(Landroid/view/View;)V

    .line 202
    iget-object p2, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter$PreloadManager;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter;

    invoke-static {p2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter;->access$900(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Bitmap;

    if-eqz p2, :cond_0

    .line 203
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 204
    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 206
    :cond_0
    invoke-virtual {p4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    const/4 p4, 0x0

    invoke-static {p4}, Lcn/nubia/redmagickyi/util/DensityCustomer;->initBitmapOptionsDensity(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/BitmapFactory$Options;

    move-result-object p4

    invoke-static {p2, p4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 207
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter$PreloadManager;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter;

    invoke-static {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter;->access$900(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    :goto_0
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isPadApp()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 210
    sget-object p0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p3, p0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_1

    .line 212
    :cond_1
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    if-lt p0, p1, :cond_2

    .line 213
    sget-object p0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p3, p0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_1

    .line 215
    :cond_2
    sget-object p0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p3, p0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :goto_1
    const/4 p0, 0x0

    return p0

    .line 220
    :cond_3
    invoke-static {}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/manager/StaticsPreviewImageLoader;->getInstance()Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;

    move-result-object p2

    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter$PreloadManager;->options:Lcom/bumptech/glide/request/RequestOptions;

    new-instance v1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter$PreloadManager$1;

    invoke-direct {v1, p0, p4, p3}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter$PreloadManager$1;-><init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter$PreloadManager;Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter$ViewHolder;Landroid/widget/ImageView;)V

    invoke-virtual {p2, p1, p3, v0, v1}, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/bumptech/glide/request/RequestOptions;Lcn/nubia/redmagickyi/util/imageloader/ImageLoadingListener;)V

    const/4 p0, 0x1

    return p0
.end method

.method private preloadImageResource(I)V
    .locals 6

    add-int/lit8 v0, p1, -0x3

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x6

    if-lt v1, v2, :cond_0

    return-void

    :cond_0
    if-ltz v0, :cond_4

    .line 174
    iget-object v2, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter$PreloadManager;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter;

    invoke-static {v2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter;->access$300(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    goto :goto_1

    :cond_1
    if-ne v0, p1, :cond_2

    goto :goto_2

    .line 180
    :cond_2
    iget-object v2, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter$PreloadManager;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter;

    invoke-static {v2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter;->access$300(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/bean/StaticsBean;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/bean/StaticsBean;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v2

    .line 181
    invoke-static {}, Lcn/nubia/redmagickyi/util/imageloader/NeoImageLoader;->self()Lcn/nubia/redmagickyi/util/imageloader/NeoImageLoader;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcn/nubia/redmagickyi/util/imageloader/NeoImageLoader;->getCachedFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_3

    .line 183
    invoke-static {}, Lcn/nubia/redmagickyi/util/imageloader/NeoImageLoader;->getInstance()Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;

    move-result-object v3

    iget-object v5, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter$PreloadManager;->options:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v3, v2, v5, v4}, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;->loadImage(Ljava/lang/String;Lcom/bumptech/glide/request/RequestOptions;Lcn/nubia/redmagickyi/util/imageloader/ImageLoadingListener;)V

    .line 186
    :cond_3
    iget-object v2, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter$PreloadManager;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter;

    invoke-static {v2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter;->access$300(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/bean/StaticsBean;

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/bean/StaticsBean;->getFileUrl()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter$PreloadManager;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter;

    invoke-static {v5}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter;->access$300(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/bean/StaticsBean;

    invoke-virtual {v5}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/bean/StaticsBean;->getFileMd5()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter;->getPlayUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 187
    invoke-static {v2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter;->isFileUri(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 188
    invoke-static {}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/manager/StaticsPreviewImageLoader;->getInstance()Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter$PreloadManager;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter;

    invoke-static {v3}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter;->access$300(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/bean/StaticsBean;

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/bean/StaticsBean;->getFileUrl()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter$PreloadManager;->options:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v2, v3, v5, v4}, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;->loadImage(Ljava/lang/String;Lcom/bumptech/glide/request/RequestOptions;Lcn/nubia/redmagickyi/util/imageloader/ImageLoadingListener;)V

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    :cond_5
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method private preloadResource(I)V
    .locals 0

    .line 165
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter$PreloadManager;->preloadImageResource(I)V

    return-void
.end method

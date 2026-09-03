.class Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$PreloadManager;
.super Ljava/lang/Object;
.source "BaseWallPaperHubDynamicPreviewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreloadManager"
.end annotation


# static fields
.field private static final PRELOAD_COUNT_THUMBNAIL:I = 0x8

.field private static final PRELOAD_COUNT_VIDEO_URL:I = 0x4


# instance fields
.field private final options:Lcom/bumptech/glide/request/RequestOptions;

.field final synthetic this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter;


# direct methods
.method private constructor <init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 274
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$PreloadManager;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    new-instance p1, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {p1}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v1, -0x1000000

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 279
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/request/RequestOptions;

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 280
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/request/RequestOptions;->error(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/request/RequestOptions;

    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$PreloadManager;->options:Lcom/bumptech/glide/request/RequestOptions;

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter;Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$1;)V
    .locals 0

    .line 274
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$PreloadManager;-><init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter;)V

    return-void
.end method

.method static synthetic access$1100(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$PreloadManager;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 0

    .line 274
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$PreloadManager;->loadThumbnail(Ljava/lang/String;Landroid/widget/ImageView;)V

    return-void
.end method

.method static synthetic access$700(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$PreloadManager;ILcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/factory/VideoPlayerDynamic;)V
    .locals 0

    .line 274
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$PreloadManager;->preloadResource(ILcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/factory/VideoPlayerDynamic;)V

    return-void
.end method

.method private loadThumbnail(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 3

    .line 330
    invoke-static {}, Lcn/nubia/redmagickyi/util/imageloader/NeoImageLoader;->getInstance()Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$PreloadManager;->options:Lcom/bumptech/glide/request/RequestOptions;

    new-instance v2, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$PreloadManager$1;

    invoke-direct {v2, p0, p2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$PreloadManager$1;-><init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$PreloadManager;Landroid/widget/ImageView;)V

    invoke-virtual {v0, p1, p2, v1, v2}, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/bumptech/glide/request/RequestOptions;Lcn/nubia/redmagickyi/util/imageloader/ImageLoadingListener;)V

    return-void
.end method

.method private preloadResource(ILcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/factory/VideoPlayerDynamic;)V
    .locals 0

    .line 283
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$PreloadManager;->preloadVideoUrls(ILcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/factory/VideoPlayerDynamic;)V

    add-int/lit8 p1, p1, 0x1

    .line 284
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$PreloadManager;->preloadThumbnail(I)V

    return-void
.end method

.method private preloadThumbnail(I)V
    .locals 6

    add-int/lit8 v0, p1, -0x4

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    return-void

    :cond_0
    if-ltz v0, :cond_3

    .line 317
    iget-object v2, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$PreloadManager;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter;

    invoke-static {v2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter;->access$500(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    goto :goto_1

    :cond_1
    if-ne v0, p1, :cond_2

    goto :goto_2

    .line 323
    :cond_2
    invoke-static {}, Lcn/nubia/redmagickyi/util/imageloader/NeoImageLoader;->getInstance()Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$PreloadManager;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter;

    invoke-static {v3}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter;->access$500(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/bean/DynamicBean;

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/bean/DynamicBean;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$PreloadManager;->options:Lcom/bumptech/glide/request/RequestOptions;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;->loadImage(Ljava/lang/String;Lcom/bumptech/glide/request/RequestOptions;Lcn/nubia/redmagickyi/util/imageloader/ImageLoadingListener;)V

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private preloadVideoUrls(ILcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/factory/VideoPlayerDynamic;)V
    .locals 7

    const/4 v0, 0x4

    .line 289
    new-array v1, v0, [Ljava/lang/String;

    add-int/lit8 v2, p1, -0x2

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v0, :cond_0

    .line 307
    invoke-virtual {p2, v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/factory/VideoPlayerDynamic;->preload([Ljava/lang/String;)V

    return-void

    :cond_0
    if-ltz v2, :cond_3

    .line 295
    iget-object v4, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$PreloadManager;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter;

    invoke-static {v4}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter;->access$500(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v2, v4, :cond_1

    goto :goto_1

    :cond_1
    if-ne v2, p1, :cond_2

    goto :goto_2

    .line 301
    :cond_2
    iget-object v4, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$PreloadManager;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter;

    invoke-static {v4}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter;->access$500(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/bean/DynamicBean;

    invoke-virtual {v5}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/bean/DynamicBean;->getFileUrl()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$PreloadManager;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter;

    invoke-static {v6}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter;->access$500(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/bean/DynamicBean;

    invoke-virtual {v6}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/bean/DynamicBean;->getFileMd5()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter;->getPlayUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 302
    invoke-static {v4}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/factory/VideoPlayerDynamic;->isFileUri(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    add-int/lit8 v5, v3, 0x1

    .line 303
    aput-object v4, v1, v3

    move v3, v5

    goto :goto_2

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

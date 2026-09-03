.class public Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;
.super Ljava/lang/Object;
.source "ChatRoomImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader;,
        Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$Type;
    }
.end annotation


# static fields
.field private static final CACHE_NAME:Ljava/lang/String; = "cachePic/chatroom"

.field public static final PREVIEW:I = 0x1

.field public static final THUMBNAIL:I

.field private static instance:Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mImageLoader:Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;

.field private mPreviewImageLoader:Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader;

.field private mPreviewImageSize:Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatImageSize;

.field private mPreviewMemoryCache:Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/LRULimitedMemoryCache;

.field private mPreviewPropertyFile:Ljava/io/File;

.field private mPreviewProps:Ljava/util/Properties;

.field private mThumbnailImageLoader:Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader;

.field private mThumbnailImageSize:Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatImageSize;

.field private mThumbnailMemoryCache:Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/LRULimitedMemoryCache;

.field private mThumbnailPropertyFile:Ljava/io/File;

.field private mThumbnailProps:Ljava/util/Properties;


# direct methods
.method private constructor <init>()V
    .locals 4

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;->mContext:Landroid/content/Context;

    .line 50
    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;->initLoaderConfiguration(Landroid/content/Context;)V

    .line 51
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "cachePic/chatroom"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v2, "thumbnail_image_mapper"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;->mThumbnailPropertyFile:Ljava/io/File;

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;->initProperties(Ljava/io/File;)Ljava/util/Properties;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;->mThumbnailProps:Ljava/util/Properties;

    .line 52
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v2, "preview_image_mapper"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;->mPreviewPropertyFile:Ljava/io/File;

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;->initProperties(Ljava/io/File;)Ljava/util/Properties;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;->mPreviewProps:Ljava/util/Properties;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 0

    .line 33
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;->getOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;)Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatImageSize;
    .locals 0

    .line 33
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;->mThumbnailImageSize:Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatImageSize;

    return-object p0
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;)Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatImageSize;
    .locals 0

    .line 33
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;->mPreviewImageSize:Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatImageSize;

    return-object p0
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;)Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/LRULimitedMemoryCache;
    .locals 0

    .line 33
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;->mThumbnailMemoryCache:Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/LRULimitedMemoryCache;

    return-object p0
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;)Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/LRULimitedMemoryCache;
    .locals 0

    .line 33
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;->mPreviewMemoryCache:Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/LRULimitedMemoryCache;

    return-object p0
.end method

.method static synthetic access$500(Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;)Ljava/util/Properties;
    .locals 0

    .line 33
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;->mThumbnailProps:Ljava/util/Properties;

    return-object p0
.end method

.method static synthetic access$600(Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;)Ljava/util/Properties;
    .locals 0

    .line 33
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;->mPreviewProps:Ljava/util/Properties;

    return-object p0
.end method

.method static synthetic access$700(Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;)Ljava/io/File;
    .locals 0

    .line 33
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;->mThumbnailPropertyFile:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$800(Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;)Ljava/io/File;
    .locals 0

    .line 33
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;->mPreviewPropertyFile:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$900(Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;)Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;
    .locals 0

    .line 33
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;->mImageLoader:Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;

    return-object p0
.end method

.method public static declared-synchronized destroy()V
    .locals 3

    const-class v0, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;

    monitor-enter v0

    .line 135
    :try_start_0
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;->getInstance()Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;

    move-result-object v1

    iget-object v1, v1, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;->mThumbnailImageLoader:Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 136
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;->getInstance()Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;

    move-result-object v1

    iget-object v1, v1, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;->mThumbnailImageLoader:Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader;->destroy()V

    .line 137
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;->getInstance()Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;

    move-result-object v1

    iput-object v2, v1, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;->mThumbnailImageLoader:Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader;

    .line 139
    :cond_0
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;->getInstance()Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;

    move-result-object v1

    iget-object v1, v1, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;->mPreviewImageLoader:Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader;

    if-eqz v1, :cond_1

    .line 140
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;->getInstance()Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;

    move-result-object v1

    iget-object v1, v1, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;->mPreviewImageLoader:Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader;->destroy()V

    .line 141
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;->getInstance()Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;

    move-result-object v1

    iput-object v2, v1, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;->mPreviewImageLoader:Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static getInstance()Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;
    .locals 2

    .line 56
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;->instance:Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;

    if-nez v0, :cond_1

    .line 57
    const-class v0, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;

    monitor-enter v0

    .line 58
    :try_start_0
    sget-object v1, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;->instance:Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;

    if-nez v1, :cond_0

    .line 59
    new-instance v1, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;

    invoke-direct {v1}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;-><init>()V

    sput-object v1, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;->instance:Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;

    .line 61
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 63
    :cond_1
    :goto_0
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;->instance:Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;

    return-object v0
.end method

.method private getOptions()Lcom/bumptech/glide/request/RequestOptions;
    .locals 1

    .line 126
    new-instance p0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {p0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    const/4 v0, 0x1

    .line 127
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/request/RequestOptions;->skipMemoryCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/request/RequestOptions;

    sget-object v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->DATA:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 128
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/request/RequestOptions;

    sget-object v0, Lcn/nubia/redmagickyi/util/imageloader/options/ImageScaleType;->NONE:Lcn/nubia/redmagickyi/util/imageloader/options/ImageScaleType;

    .line 129
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/imageloader/options/ImageScaleType;->getValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/request/RequestOptions;->override(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/request/RequestOptions;

    const/16 v0, 0x64

    .line 130
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/request/RequestOptions;->encodeQuality(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/request/RequestOptions;

    sget-object v0, Lcom/bumptech/glide/load/DecodeFormat;->PREFER_ARGB_8888:Lcom/bumptech/glide/load/DecodeFormat;

    .line 131
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/request/RequestOptions;->format(Lcom/bumptech/glide/load/DecodeFormat;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/request/RequestOptions;

    return-object p0
.end method

.method private initLoaderConfiguration(Landroid/content/Context;)V
    .locals 6

    .line 83
    new-instance v0, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$1;

    new-instance v1, Lcn/nubia/redmagickyi/util/imageloader/configuration/cache/FolderObjectKey;

    const-string v2, "cachePic/chatroom"

    invoke-direct {v1, v2}, Lcn/nubia/redmagickyi/util/imageloader/configuration/cache/FolderObjectKey;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, p0, p1, v1}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$1;-><init>(Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;Landroid/content/Context;Lcn/nubia/redmagickyi/util/imageloader/configuration/cache/FolderObjectKey;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;->mImageLoader:Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;

    .line 89
    new-instance v0, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/LRULimitedMemoryCache;

    const/high16 v1, 0x2800000

    invoke-direct {v0, v1}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/LRULimitedMemoryCache;-><init>(I)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;->mThumbnailMemoryCache:Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/LRULimitedMemoryCache;

    .line 90
    new-instance v0, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/LRULimitedMemoryCache;

    const/high16 v1, 0x6400000

    invoke-direct {v0, v1}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/LRULimitedMemoryCache;-><init>(I)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;->mPreviewMemoryCache:Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/LRULimitedMemoryCache;

    .line 91
    new-instance v0, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatImageSize;

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->morachat_fs_chat_image_thumbnail_max:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->morachat_fs_chat_image_thumbnail_max:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcn/nubia/redmagickyi/main/R$dimen;->morachat_fs_chat_image_thumbnail_min:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcn/nubia/redmagickyi/main/R$dimen;->morachat_fs_chat_image_thumbnail_min:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatImageSize;-><init>(IIII)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;->mThumbnailImageSize:Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatImageSize;

    .line 96
    new-instance v0, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatImageSize;

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->morachat_fs_chat_image_preview_max:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->morachat_fs_chat_image_preview_max:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-direct {v0, v1, p1}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatImageSize;-><init>(II)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;->mPreviewImageSize:Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatImageSize;

    return-void
.end method

.method private initProperties(Ljava/io/File;)Ljava/util/Properties;
    .locals 2

    .line 102
    new-instance p0, Ljava/util/Properties;

    invoke-direct {p0}, Ljava/util/Properties;-><init>()V

    const/4 v0, 0x0

    .line 105
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 106
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 107
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 109
    :cond_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 110
    :try_start_1
    invoke-virtual {p0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 111
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->sync()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p0

    :goto_0
    if-eqz v0, :cond_1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 121
    :catch_0
    :cond_1
    throw p0

    :catch_1
    move-object v1, v0

    :catch_2
    if-eqz v1, :cond_2

    .line 117
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    :cond_2
    move-object p0, v0

    :catch_4
    :goto_1
    return-object p0
.end method

.method public static isBitmapValid(Landroid/graphics/Bitmap;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 155
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static declared-synchronized of(I)Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader;
    .locals 4

    const-class v0, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;

    monitor-enter v0

    if-eqz p0, :cond_1

    .line 75
    :try_start_0
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;->getInstance()Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;

    move-result-object p0

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;->mPreviewImageLoader:Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader;

    if-nez p0, :cond_0

    .line 76
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;->getInstance()Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;

    move-result-object p0

    new-instance v1, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader;

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;->getInstance()Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader;-><init>(Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;I)V

    iput-object v1, p0, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;->mPreviewImageLoader:Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader;

    .line 78
    :cond_0
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;->getInstance()Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;

    move-result-object p0

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;->mPreviewImageLoader:Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 69
    :cond_1
    :try_start_1
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;->getInstance()Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;

    move-result-object p0

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;->mThumbnailImageLoader:Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader;

    if-nez p0, :cond_2

    .line 70
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;->getInstance()Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;

    move-result-object p0

    new-instance v1, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader;

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;->getInstance()Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader;-><init>(Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;I)V

    iput-object v1, p0, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;->mThumbnailImageLoader:Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader;

    .line 72
    :cond_2
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;->getInstance()Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;

    move-result-object p0

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;->mThumbnailImageLoader:Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized recycleCache(Ljava/lang/String;)V
    .locals 2

    const-class v0, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;

    monitor-enter v0

    .line 146
    :try_start_0
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;->getInstance()Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;

    move-result-object v1

    iget-object v1, v1, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;->mThumbnailImageLoader:Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader;

    if-eqz v1, :cond_0

    .line 147
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;->getInstance()Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;

    move-result-object v1

    iget-object v1, v1, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;->mThumbnailImageLoader:Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader;

    invoke-virtual {v1, p0}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader;->recycleCache(Ljava/lang/String;)V

    .line 149
    :cond_0
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;->getInstance()Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;

    move-result-object v1

    iget-object v1, v1, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;->mPreviewImageLoader:Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader;

    if-eqz v1, :cond_1

    .line 150
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;->getInstance()Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;

    move-result-object v1

    iget-object v1, v1, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;->mPreviewImageLoader:Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader;

    invoke-virtual {v1, p0}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader;->recycleCache(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

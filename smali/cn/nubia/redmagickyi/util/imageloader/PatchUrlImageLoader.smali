.class public abstract Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;
.super Ljava/lang/Object;
.source "PatchUrlImageLoader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PatchUrlImageLoader"


# instance fields
.field private asyncTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/util/imageloader/task/AsyncTask;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private destroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private signature:Lcn/nubia/redmagickyi/util/imageloader/configuration/cache/FolderObjectKey;

.field private syncTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/util/imageloader/task/SyncTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/nubia/redmagickyi/util/imageloader/configuration/cache/FolderObjectKey;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;->asyncTasks:Ljava/util/List;

    .line 41
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;->syncTasks:Ljava/util/List;

    .line 42
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;->destroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 45
    iput-object p1, p0, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;->context:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;->signature:Lcn/nubia/redmagickyi/util/imageloader/configuration/cache/FolderObjectKey;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 36
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;->destroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;)Ljava/util/List;
    .locals 0

    .line 36
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;->asyncTasks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;Landroid/graphics/Bitmap;Landroid/view/View;Lcom/bumptech/glide/request/RequestOptions;)Landroid/graphics/Bitmap;
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;->decorateBitmap(Landroid/graphics/Bitmap;Landroid/view/View;Lcom/bumptech/glide/request/RequestOptions;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private decorateBitmap(Landroid/graphics/Bitmap;Landroid/view/View;Lcom/bumptech/glide/request/RequestOptions;)Landroid/graphics/Bitmap;
    .locals 1

    .line 288
    invoke-virtual {p3}, Lcom/bumptech/glide/request/RequestOptions;->getOverrideWidth()I

    move-result p0

    sget-object v0, Lcn/nubia/redmagickyi/util/imageloader/options/ImageScaleType;->NONE:Lcn/nubia/redmagickyi/util/imageloader/options/ImageScaleType;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/imageloader/options/ImageScaleType;->getValue()I

    move-result v0

    if-ne p0, v0, :cond_0

    invoke-virtual {p3}, Lcom/bumptech/glide/request/RequestOptions;->getOverrideHeight()I

    move-result p0

    sget-object v0, Lcn/nubia/redmagickyi/util/imageloader/options/ImageScaleType;->NONE:Lcn/nubia/redmagickyi/util/imageloader/options/ImageScaleType;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/imageloader/options/ImageScaleType;->getValue()I

    move-result v0

    if-ne p0, v0, :cond_0

    return-object p1

    .line 291
    :cond_0
    invoke-virtual {p3}, Lcom/bumptech/glide/request/RequestOptions;->getOverrideWidth()I

    move-result p0

    sget-object v0, Lcn/nubia/redmagickyi/util/imageloader/options/ImageScaleType;->IN_SAMPLE_POWER_OF_2:Lcn/nubia/redmagickyi/util/imageloader/options/ImageScaleType;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/imageloader/options/ImageScaleType;->getValue()I

    move-result v0

    if-ne p0, v0, :cond_2

    invoke-virtual {p3}, Lcom/bumptech/glide/request/RequestOptions;->getOverrideHeight()I

    move-result p0

    sget-object v0, Lcn/nubia/redmagickyi/util/imageloader/options/ImageScaleType;->IN_SAMPLE_POWER_OF_2:Lcn/nubia/redmagickyi/util/imageloader/options/ImageScaleType;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/imageloader/options/ImageScaleType;->getValue()I

    move-result v0

    if-ne p0, v0, :cond_2

    if-eqz p2, :cond_1

    .line 295
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p0

    .line 296
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    move p2, p0

    :goto_0
    const/4 v0, 0x2

    .line 298
    invoke-static {p1, p0, p2, v0}, Lcn/nubia/redmagickyi/util/BitmapUtils;->simpleSizeBitmap(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 299
    invoke-virtual {p3}, Lcom/bumptech/glide/request/RequestOptions;->isSkipMemoryCacheSet()Z

    move-result p2

    if-eqz p2, :cond_4

    if-eq p0, p1, :cond_3

    .line 302
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    .line 307
    :cond_2
    invoke-virtual {p3}, Lcom/bumptech/glide/request/RequestOptions;->getOverrideWidth()I

    move-result p0

    if-lez p0, :cond_4

    invoke-virtual {p3}, Lcom/bumptech/glide/request/RequestOptions;->getOverrideHeight()I

    move-result p0

    if-lez p0, :cond_4

    .line 309
    invoke-virtual {p3}, Lcom/bumptech/glide/request/RequestOptions;->getOverrideWidth()I

    move-result p0

    invoke-virtual {p3}, Lcom/bumptech/glide/request/RequestOptions;->getOverrideHeight()I

    move-result p2

    invoke-static {p1, p0, p2}, Lcn/nubia/redmagickyi/util/BitmapUtils;->scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 310
    invoke-virtual {p3}, Lcom/bumptech/glide/request/RequestOptions;->isSkipMemoryCacheSet()Z

    move-result p2

    if-eqz p2, :cond_4

    if-eq p0, p1, :cond_3

    .line 313
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    :goto_1
    move-object p1, p0

    :cond_4
    return-object p1
.end method

.method private decorateRequestOptions(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 0

    .line 266
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;->getDefaultOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p0

    if-eqz p1, :cond_0

    .line 268
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/request/RequestOptions;

    .line 270
    :cond_0
    invoke-virtual {p0}, Lcom/bumptech/glide/request/RequestOptions;->getErrorPlaceholder()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/bumptech/glide/request/RequestOptions;->getErrorId()I

    move-result p1

    if-nez p1, :cond_2

    .line 271
    invoke-virtual {p0}, Lcom/bumptech/glide/request/RequestOptions;->getPlaceholderDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 272
    invoke-virtual {p0}, Lcom/bumptech/glide/request/RequestOptions;->getPlaceholderDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->error(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;

    goto :goto_0

    .line 273
    :cond_1
    invoke-virtual {p0}, Lcom/bumptech/glide/request/RequestOptions;->getPlaceholderId()I

    move-result p1

    if-eqz p1, :cond_2

    .line 274
    invoke-virtual {p0}, Lcom/bumptech/glide/request/RequestOptions;->getPlaceholderId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 277
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/bumptech/glide/request/RequestOptions;->getFallbackDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lcom/bumptech/glide/request/RequestOptions;->getFallbackId()I

    move-result p1

    if-nez p1, :cond_4

    .line 278
    invoke-virtual {p0}, Lcom/bumptech/glide/request/RequestOptions;->getErrorPlaceholder()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 279
    invoke-virtual {p0}, Lcom/bumptech/glide/request/RequestOptions;->getErrorPlaceholder()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->fallback(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;

    goto :goto_1

    .line 280
    :cond_3
    invoke-virtual {p0}, Lcom/bumptech/glide/request/RequestOptions;->getErrorId()I

    move-result p1

    if-eqz p1, :cond_4

    .line 281
    invoke-virtual {p0}, Lcom/bumptech/glide/request/RequestOptions;->getErrorId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->fallback(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    :cond_4
    :goto_1
    return-object p0
.end method


# virtual methods
.method public cancelDisplayTask(Landroid/view/View;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 229
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;->asyncTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/util/imageloader/task/AsyncTask;

    .line 230
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/util/imageloader/task/AsyncTask;->getDisplayView()Landroid/view/View;

    move-result-object v2

    if-ne p1, v2, :cond_0

    .line 231
    iget-object v2, p0, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/bumptech/glide/RequestManager;->clear(Lcom/bumptech/glide/request/target/Target;)V

    .line 232
    iget-object v2, p0, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;->asyncTasks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public decorateUrl(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 257
    const-string p0, "content://"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 258
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    .line 259
    :cond_0
    const-string p0, "/"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 260
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "file://"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public destroy()V
    .locals 4

    .line 239
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;->destroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "destroy asyncTasks begin, size: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;->asyncTasks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PatchUrlImageLoader"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;->asyncTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/redmagickyi/util/imageloader/task/AsyncTask;

    .line 243
    iget-object v3, p0, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/bumptech/glide/RequestManager;->clear(Lcom/bumptech/glide/request/target/Target;)V

    goto :goto_0

    .line 245
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;->asyncTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 246
    const-string v0, "destroy asyncTasks end"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "destroy syncTasks begin, size: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;->syncTasks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;->syncTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/redmagickyi/util/imageloader/task/SyncTask;

    .line 250
    invoke-virtual {v2}, Lcn/nubia/redmagickyi/util/imageloader/task/SyncTask;->release()V

    goto :goto_1

    .line 252
    :cond_1
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;->syncTasks:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 253
    const-string p0, "destroy syncTasks end"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 72
    invoke-virtual/range {v0 .. v5}, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/bumptech/glide/request/RequestOptions;Lcn/nubia/redmagickyi/util/imageloader/ImageLoadingListener;Lcn/nubia/redmagickyi/util/imageloader/progress/ProgressListener;)V

    return-void
.end method

.method public displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcn/nubia/redmagickyi/util/imageloader/ImageLoadingListener;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    .line 76
    invoke-virtual/range {v0 .. v5}, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/bumptech/glide/request/RequestOptions;Lcn/nubia/redmagickyi/util/imageloader/ImageLoadingListener;Lcn/nubia/redmagickyi/util/imageloader/progress/ProgressListener;)V

    return-void
.end method

.method public displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/bumptech/glide/request/RequestOptions;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 80
    invoke-virtual/range {v0 .. v5}, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/bumptech/glide/request/RequestOptions;Lcn/nubia/redmagickyi/util/imageloader/ImageLoadingListener;Lcn/nubia/redmagickyi/util/imageloader/progress/ProgressListener;)V

    return-void
.end method

.method public displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/bumptech/glide/request/RequestOptions;Lcn/nubia/redmagickyi/util/imageloader/ImageLoadingListener;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 84
    invoke-virtual/range {v0 .. v5}, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/bumptech/glide/request/RequestOptions;Lcn/nubia/redmagickyi/util/imageloader/ImageLoadingListener;Lcn/nubia/redmagickyi/util/imageloader/progress/ProgressListener;)V

    return-void
.end method

.method public displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/bumptech/glide/request/RequestOptions;Lcn/nubia/redmagickyi/util/imageloader/ImageLoadingListener;Lcn/nubia/redmagickyi/util/imageloader/progress/ProgressListener;)V
    .locals 15

    move-object v10, p0

    .line 88
    new-instance v11, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    invoke-direct {v11, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    move-object/from16 v12, p3

    .line 89
    invoke-direct {p0, v12}, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;->decorateRequestOptions(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v13

    .line 90
    new-instance v14, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader$1;

    move-object v0, v14

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v4, v13

    move-object/from16 v5, p1

    move-object/from16 v6, p5

    move-object/from16 v7, p2

    move-object/from16 v8, p4

    move-object v9, v11

    invoke-direct/range {v0 .. v9}, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader$1;-><init>(Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;Ljava/lang/String;Landroid/view/View;Lcom/bumptech/glide/request/RequestOptions;Ljava/lang/String;Lcn/nubia/redmagickyi/util/imageloader/progress/ProgressListener;Landroid/widget/ImageView;Lcn/nubia/redmagickyi/util/imageloader/ImageLoadingListener;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 181
    :try_start_0
    invoke-virtual {v14}, Lcn/nubia/redmagickyi/util/imageloader/task/AsyncTask;->onLoadStarted()V

    .line 182
    iget-object v0, v10, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;->destroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {v13}, Lcom/bumptech/glide/request/RequestOptions;->getPlaceholderDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcn/nubia/redmagickyi/util/imageloader/task/AsyncTask;->onLoadCleared(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 186
    :cond_0
    iget-object v0, v10, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual/range {p0 .. p1}, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;->decorateUrl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, v10, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;->signature:Lcn/nubia/redmagickyi/util/imageloader/configuration/cache/FolderObjectKey;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    .line 188
    sget-object v1, Lcn/nubia/redmagickyi/util/imageloader/options/ImageScaleType;->NONE:Lcn/nubia/redmagickyi/util/imageloader/options/ImageScaleType;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/util/imageloader/options/ImageScaleType;->getValue()I

    move-result v1

    invoke-virtual {v13, v1}, Lcom/bumptech/glide/request/RequestOptions;->override(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    .line 189
    new-instance v1, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader$2;

    invoke-direct {v1, p0, v11}, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader$2;-><init>(Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    .line 201
    invoke-virtual {v0, v14}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 203
    :catch_0
    invoke-virtual/range {p3 .. p3}, Lcom/bumptech/glide/request/RequestOptions;->getErrorPlaceholder()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcn/nubia/redmagickyi/util/imageloader/task/AsyncTask;->onLoadFailed(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public abstract getDefaultOptions()Lcom/bumptech/glide/request/RequestOptions;
.end method

.method public loadImage(Ljava/lang/String;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 52
    invoke-virtual/range {v0 .. v5}, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/bumptech/glide/request/RequestOptions;Lcn/nubia/redmagickyi/util/imageloader/ImageLoadingListener;Lcn/nubia/redmagickyi/util/imageloader/progress/ProgressListener;)V

    return-void
.end method

.method public loadImage(Ljava/lang/String;Lcn/nubia/redmagickyi/util/imageloader/ImageLoadingListener;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    .line 56
    invoke-virtual/range {v0 .. v5}, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/bumptech/glide/request/RequestOptions;Lcn/nubia/redmagickyi/util/imageloader/ImageLoadingListener;Lcn/nubia/redmagickyi/util/imageloader/progress/ProgressListener;)V

    return-void
.end method

.method public loadImage(Ljava/lang/String;Lcom/bumptech/glide/request/RequestOptions;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    .line 60
    invoke-virtual/range {v0 .. v5}, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/bumptech/glide/request/RequestOptions;Lcn/nubia/redmagickyi/util/imageloader/ImageLoadingListener;Lcn/nubia/redmagickyi/util/imageloader/progress/ProgressListener;)V

    return-void
.end method

.method public loadImage(Ljava/lang/String;Lcom/bumptech/glide/request/RequestOptions;Lcn/nubia/redmagickyi/util/imageloader/ImageLoadingListener;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    .line 64
    invoke-virtual/range {v0 .. v5}, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/bumptech/glide/request/RequestOptions;Lcn/nubia/redmagickyi/util/imageloader/ImageLoadingListener;Lcn/nubia/redmagickyi/util/imageloader/progress/ProgressListener;)V

    return-void
.end method

.method public loadImage(Ljava/lang/String;Lcom/bumptech/glide/request/RequestOptions;Lcn/nubia/redmagickyi/util/imageloader/ImageLoadingListener;Lcn/nubia/redmagickyi/util/imageloader/progress/ProgressListener;)V
    .locals 6

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 68
    invoke-virtual/range {v0 .. v5}, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/bumptech/glide/request/RequestOptions;Lcn/nubia/redmagickyi/util/imageloader/ImageLoadingListener;Lcn/nubia/redmagickyi/util/imageloader/progress/ProgressListener;)V

    return-void
.end method

.method public loadImageSync(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    .line 208
    invoke-virtual {p0, p1, v0}, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;->loadImageSync(Ljava/lang/String;Lcom/bumptech/glide/request/RequestOptions;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public loadImageSync(Ljava/lang/String;Lcom/bumptech/glide/request/RequestOptions;)Landroid/graphics/Bitmap;
    .locals 3

    .line 212
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;->destroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 215
    :cond_0
    new-instance v0, Lcn/nubia/redmagickyi/util/imageloader/task/SyncTask;

    invoke-direct {v0, p1}, Lcn/nubia/redmagickyi/util/imageloader/task/SyncTask;-><init>(Ljava/lang/String;)V

    .line 216
    iget-object v2, p0, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;->syncTasks:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    iget-object v2, p0, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;->decorateUrl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object v2, p0, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;->signature:Lcn/nubia/redmagickyi/util/imageloader/configuration/cache/FolderObjectKey;

    invoke-virtual {p1, v2}, Lcom/bumptech/glide/RequestBuilder;->signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    .line 219
    invoke-direct {p0, p2}, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;->decorateRequestOptions(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p2

    .line 220
    sget-object v2, Lcn/nubia/redmagickyi/util/imageloader/options/ImageScaleType;->NONE:Lcn/nubia/redmagickyi/util/imageloader/options/ImageScaleType;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/util/imageloader/options/ImageScaleType;->getValue()I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/bumptech/glide/request/RequestOptions;->override(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    .line 221
    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/util/imageloader/task/SyncTask;->submit(Lcom/bumptech/glide/RequestBuilder;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {p0, p1, v1, p2}, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;->decorateBitmap(Landroid/graphics/Bitmap;Landroid/view/View;Lcom/bumptech/glide/request/RequestOptions;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 222
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;->syncTasks:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-object p1
.end method

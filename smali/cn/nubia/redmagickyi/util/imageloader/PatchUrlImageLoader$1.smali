.class Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader$1;
.super Lcn/nubia/redmagickyi/util/imageloader/task/AsyncTask;
.source "PatchUrlImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/bumptech/glide/request/RequestOptions;Lcn/nubia/redmagickyi/util/imageloader/ImageLoadingListener;Lcn/nubia/redmagickyi/util/imageloader/progress/ProgressListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/nubia/redmagickyi/util/imageloader/task/AsyncTask<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;

.field final synthetic val$exception:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic val$imageView:Landroid/widget/ImageView;

.field final synthetic val$listener:Lcn/nubia/redmagickyi/util/imageloader/ImageLoadingListener;

.field final synthetic val$progressListener:Lcn/nubia/redmagickyi/util/imageloader/progress/ProgressListener;

.field final synthetic val$targetOptions:Lcom/bumptech/glide/request/RequestOptions;

.field final synthetic val$uri:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;Ljava/lang/String;Landroid/view/View;Lcom/bumptech/glide/request/RequestOptions;Ljava/lang/String;Lcn/nubia/redmagickyi/util/imageloader/progress/ProgressListener;Landroid/widget/ImageView;Lcn/nubia/redmagickyi/util/imageloader/ImageLoadingListener;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 90
    iput-object p1, p0, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader$1;->this$0:Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;

    iput-object p4, p0, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader$1;->val$targetOptions:Lcom/bumptech/glide/request/RequestOptions;

    iput-object p5, p0, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader$1;->val$uri:Ljava/lang/String;

    iput-object p6, p0, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader$1;->val$progressListener:Lcn/nubia/redmagickyi/util/imageloader/progress/ProgressListener;

    iput-object p7, p0, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader$1;->val$imageView:Landroid/widget/ImageView;

    iput-object p8, p0, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader$1;->val$listener:Lcn/nubia/redmagickyi/util/imageloader/ImageLoadingListener;

    iput-object p9, p0, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader$1;->val$exception:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0, p2, p3}, Lcn/nubia/redmagickyi/util/imageloader/task/AsyncTask;-><init>(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onLoadCleared(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .line 140
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader$1;->this$0:Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;->access$100(Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 141
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader$1;->val$uri:Ljava/lang/String;

    iget-object v1, p0, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader$1;->val$progressListener:Lcn/nubia/redmagickyi/util/imageloader/progress/ProgressListener;

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/util/imageloader/progress/ProgressInterceptor;->removeListener(Ljava/lang/String;Lcn/nubia/redmagickyi/util/imageloader/progress/ProgressListener;)V

    .line 142
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader$1;->val$progressListener:Lcn/nubia/redmagickyi/util/imageloader/progress/ProgressListener;

    if-eqz v0, :cond_0

    .line 143
    iget-object v1, p0, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader$1;->val$uri:Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v3, 0x64

    invoke-interface {v0, v1, v2, v3}, Lcn/nubia/redmagickyi/util/imageloader/progress/ProgressListener;->onProgressUpdate(Ljava/lang/String;II)V

    .line 145
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader$1;->val$imageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 146
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 148
    :cond_1
    iget-object p1, p0, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader$1;->val$listener:Lcn/nubia/redmagickyi/util/imageloader/ImageLoadingListener;

    if-eqz p1, :cond_2

    .line 149
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader$1;->val$uri:Ljava/lang/String;

    iget-object p0, p0, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader$1;->val$imageView:Landroid/widget/ImageView;

    invoke-interface {p1, v0, p0}, Lcn/nubia/redmagickyi/util/imageloader/ImageLoadingListener;->onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public onLoadFailed(Landroid/graphics/drawable/Drawable;)V
    .locals 5

    .line 155
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader$1;->this$0:Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;->access$000(Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    iget-object p1, p0, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader$1;->val$targetOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {p1}, Lcom/bumptech/glide/request/RequestOptions;->getPlaceholderDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader$1;->onLoadCleared(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 159
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader$1;->this$0:Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;->access$100(Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 161
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader$1;->val$exception:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 162
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader$1;->val$exception:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/GlideException;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/GlideException;->getRootCauses()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 163
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 164
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 167
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader$1;->val$uri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " load failed, size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader$1;->this$0:Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;

    invoke-static {v3}, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;->access$100(Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v0, :cond_2

    const-string v0, ""

    goto :goto_1

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ", reason: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PatchUrlImageLoader"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader$1;->val$uri:Ljava/lang/String;

    iget-object v2, p0, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader$1;->val$progressListener:Lcn/nubia/redmagickyi/util/imageloader/progress/ProgressListener;

    invoke-static {v0, v2}, Lcn/nubia/redmagickyi/util/imageloader/progress/ProgressInterceptor;->removeListener(Ljava/lang/String;Lcn/nubia/redmagickyi/util/imageloader/progress/ProgressListener;)V

    .line 169
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader$1;->val$progressListener:Lcn/nubia/redmagickyi/util/imageloader/progress/ProgressListener;

    if-eqz v0, :cond_3

    .line 170
    iget-object v2, p0, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader$1;->val$uri:Ljava/lang/String;

    const/16 v3, 0x64

    invoke-interface {v0, v2, v1, v3}, Lcn/nubia/redmagickyi/util/imageloader/progress/ProgressListener;->onProgressUpdate(Ljava/lang/String;II)V

    .line 172
    :cond_3
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader$1;->val$imageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    .line 173
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 175
    :cond_4
    iget-object p1, p0, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader$1;->val$listener:Lcn/nubia/redmagickyi/util/imageloader/ImageLoadingListener;

    if-eqz p1, :cond_5

    .line 176
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader$1;->val$uri:Ljava/lang/String;

    iget-object v1, p0, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader$1;->val$imageView:Landroid/widget/ImageView;

    iget-object p0, p0, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader$1;->val$exception:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    invoke-interface {p1, v0, v1, p0}, Lcn/nubia/redmagickyi/util/imageloader/ImageLoadingListener;->onLoadingFailed(Ljava/lang/String;Landroid/view/View;Ljava/lang/Throwable;)V

    :cond_5
    return-void
.end method

.method public onLoadStarted()V
    .locals 3

    .line 126
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader$1;->this$0:Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;->access$100(Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader$1;->val$listener:Lcn/nubia/redmagickyi/util/imageloader/ImageLoadingListener;

    if-eqz v0, :cond_0

    .line 128
    iget-object v1, p0, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader$1;->val$uri:Ljava/lang/String;

    iget-object v2, p0, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader$1;->val$imageView:Landroid/widget/ImageView;

    invoke-interface {v0, v1, v2}, Lcn/nubia/redmagickyi/util/imageloader/ImageLoadingListener;->onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V

    .line 130
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader$1;->val$progressListener:Lcn/nubia/redmagickyi/util/imageloader/progress/ProgressListener;

    if-eqz v0, :cond_3

    .line 131
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader$1;->val$uri:Ljava/lang/String;

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader$1;->val$uri:Ljava/lang/String;

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 132
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader$1;->val$uri:Ljava/lang/String;

    iget-object v1, p0, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader$1;->val$progressListener:Lcn/nubia/redmagickyi/util/imageloader/progress/ProgressListener;

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/util/imageloader/progress/ProgressInterceptor;->addListener(Ljava/lang/String;Lcn/nubia/redmagickyi/util/imageloader/progress/ProgressListener;)V

    .line 134
    :cond_2
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader$1;->val$progressListener:Lcn/nubia/redmagickyi/util/imageloader/progress/ProgressListener;

    iget-object p0, p0, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader$1;->val$uri:Ljava/lang/String;

    const/4 v1, 0x0

    const/16 v2, 0x64

    invoke-interface {v0, p0, v1, v2}, Lcn/nubia/redmagickyi/util/imageloader/progress/ProgressListener;->onProgressUpdate(Ljava/lang/String;II)V

    :cond_3
    return-void
.end method

.method public onLoadStarted(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 115
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader$1;->this$0:Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;->access$000(Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    iget-object p1, p0, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader$1;->val$targetOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {p1}, Lcom/bumptech/glide/request/RequestOptions;->getPlaceholderDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader$1;->onLoadCleared(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 119
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader$1;->val$imageView:Landroid/widget/ImageView;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 120
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lcom/bumptech/glide/request/transition/Transition<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 93
    iget-object p2, p0, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader$1;->this$0:Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;

    invoke-static {p2}, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;->access$000(Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 94
    iget-object p1, p0, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader$1;->val$targetOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {p1}, Lcom/bumptech/glide/request/RequestOptions;->getPlaceholderDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader$1;->onLoadCleared(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 97
    :cond_0
    iget-object p2, p0, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader$1;->this$0:Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;

    invoke-static {p2}, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;->access$100(Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 98
    iget-object p2, p0, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader$1;->val$uri:Ljava/lang/String;

    iget-object v0, p0, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader$1;->val$progressListener:Lcn/nubia/redmagickyi/util/imageloader/progress/ProgressListener;

    invoke-static {p2, v0}, Lcn/nubia/redmagickyi/util/imageloader/progress/ProgressInterceptor;->removeListener(Ljava/lang/String;Lcn/nubia/redmagickyi/util/imageloader/progress/ProgressListener;)V

    .line 99
    iget-object p2, p0, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader$1;->val$progressListener:Lcn/nubia/redmagickyi/util/imageloader/progress/ProgressListener;

    if-eqz p2, :cond_1

    .line 100
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader$1;->val$uri:Ljava/lang/String;

    const/16 v1, 0x64

    invoke-interface {p2, v0, v1, v1}, Lcn/nubia/redmagickyi/util/imageloader/progress/ProgressListener;->onProgressUpdate(Ljava/lang/String;II)V

    :cond_1
    if-eqz p1, :cond_2

    .line 102
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p2

    if-nez p2, :cond_2

    .line 103
    iget-object p2, p0, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader$1;->this$0:Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;

    iget-object v0, p0, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader$1;->val$imageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader$1;->val$targetOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-static {p2, p1, v0, v1}, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;->access$200(Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;Landroid/graphics/Bitmap;Landroid/view/View;Lcom/bumptech/glide/request/RequestOptions;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 105
    :cond_2
    iget-object p2, p0, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader$1;->val$imageView:Landroid/widget/ImageView;

    if-eqz p2, :cond_3

    .line 106
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 108
    :cond_3
    iget-object p2, p0, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader$1;->val$listener:Lcn/nubia/redmagickyi/util/imageloader/ImageLoadingListener;

    if-eqz p2, :cond_4

    .line 109
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader$1;->val$uri:Ljava/lang/String;

    iget-object p0, p0, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader$1;->val$imageView:Landroid/widget/ImageView;

    invoke-interface {p2, v0, p0, p1}, Lcn/nubia/redmagickyi/util/imageloader/ImageLoadingListener;->onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V

    :cond_4
    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/Transition;)V
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

    .line 90
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader$1;->onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/transition/Transition;)V

    return-void
.end method

.class Lorg/libpag/PAGView$PAGRendererHandler;
.super Landroid/os/Handler;
.source "PAGView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/libpag/PAGView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PAGRendererHandler"
.end annotation


# instance fields
.field private final lock:Ljava/lang/Object;

.field private needsUpdateViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/libpag/PAGView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .line 127
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 123
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/libpag/PAGView$PAGRendererHandler;->lock:Ljava/lang/Object;

    .line 124
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/libpag/PAGView$PAGRendererHandler;->needsUpdateViews:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 143
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 144
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 p1, 0x2

    if-eq v0, p1, :cond_0

    goto :goto_1

    .line 172
    :cond_0
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lorg/libpag/PAGView$PAGRendererHandler$1;

    invoke-direct {v0, p0}, Lorg/libpag/PAGView$PAGRendererHandler$1;-><init>(Lorg/libpag/PAGView$PAGRendererHandler;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 165
    :cond_1
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of p0, p0, Landroid/graphics/SurfaceTexture;

    if-nez p0, :cond_2

    return-void

    .line 168
    :cond_2
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/SurfaceTexture;

    .line 169
    invoke-virtual {p0}, Landroid/graphics/SurfaceTexture;->release()V

    goto :goto_1

    .line 147
    :cond_3
    iget-object p1, p0, Lorg/libpag/PAGView$PAGRendererHandler;->lock:Ljava/lang/Object;

    monitor-enter p1

    .line 148
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/libpag/PAGView$PAGRendererHandler;->needsUpdateViews:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 149
    iget-object p0, p0, Lorg/libpag/PAGView$PAGRendererHandler;->needsUpdateViews:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 150
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 152
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 153
    instance-of v1, v0, Lorg/libpag/PAGView;

    if-nez v1, :cond_4

    goto :goto_0

    .line 156
    :cond_4
    check-cast v0, Lorg/libpag/PAGView;

    .line 157
    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_0

    .line 160
    :cond_5
    invoke-static {v0}, Lorg/libpag/PAGView;->access$000(Lorg/libpag/PAGView;)V

    .line 161
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    :goto_1
    return-void

    :catchall_0
    move-exception p0

    .line 150
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method needsUpdateView(Lorg/libpag/PAGView;)V
    .locals 3

    .line 131
    iget-object v0, p0, Lorg/libpag/PAGView$PAGRendererHandler;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 132
    :try_start_0
    iget-object v1, p0, Lorg/libpag/PAGView$PAGRendererHandler;->needsUpdateViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    invoke-virtual {p0}, Lorg/libpag/PAGView$PAGRendererHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x0

    .line 134
    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 135
    invoke-virtual {p0, v1}, Lorg/libpag/PAGView$PAGRendererHandler;->sendMessage(Landroid/os/Message;)Z

    .line 137
    :cond_0
    iget-object p0, p0, Lorg/libpag/PAGView$PAGRendererHandler;->needsUpdateViews:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
